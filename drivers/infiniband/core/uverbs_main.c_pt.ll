; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_main.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_uverbs_get_ucontext_file\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_uverbs_get_ucontext_file\09\09\09\09"
module asm "\09.long\09__crc_ib_uverbs_get_ucontext_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_uverbs_get_ucontext_file:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_uverbs_get_ucontext_file\22\09\09\09\09\09"
module asm "__kstrtabns_ib_uverbs_get_ucontext_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.128 }
%union.anon.128 = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class_attribute_string = type { %struct.class_attribute, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.ib_uverbs_file = type { %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.xarray }
%struct.kref = type { %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ib_uverbs_device = type { %struct.refcount_struct, i32, %struct.completion, %struct.device, [2 x ptr], ptr, i32, %struct.cdev, %struct.rb_root, %struct.mutex, %struct.srcu_struct, %struct.mutex, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rb_root = type { ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.ib_mw = type { ptr, ptr, ptr, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.182, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.182 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.173 }
%struct.anon.173 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_uverbs_completion_event_file = type { %struct.ib_uobject, %struct.ib_uverbs_event_queue }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.ib_uverbs_event_queue = type { %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.list_head }
%struct.ib_ucq_object = type { %struct.ib_uevent_object, %struct.list_head, i32 }
%struct.ib_uevent_object = type { %struct.ib_uobject, ptr, %struct.list_head, i32 }
%struct.ib_uverbs_async_event_file = type { %struct.ib_uobject, %struct.ib_uverbs_event_queue, %struct.ib_event_handler }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ib_uqp_object = type { %struct.ib_uevent_object, %struct.mutex, %struct.list_head, ptr }
%struct.ib_uverbs_mcast_entry = type { %struct.list_head, %union.ib_gid, i16 }
%union.ib_gid = type { %struct.anon.169 }
%struct.anon.169 = type { i64, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.150, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.150 = type { %struct.work_struct }
%struct.ib_uverbs_event = type { %union.anon.187, %struct.list_head, %struct.list_head, ptr }
%union.anon.187 = type { %struct.ib_uverbs_async_event_desc }
%struct.ib_uverbs_async_event_desc = type { i64, i32, i32 }
%struct.ib_event = type { ptr, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.ib_wq = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.141, %struct.rdma_restrack_entry }
%struct.anon.141 = type { ptr, %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ib_client_nl_info = type { ptr, ptr, i32, i64 }
%struct.ib_uverbs_ex_cmd_hdr = type { i64, i16, i16, i32 }
%struct.ib_uverbs_cmd_hdr = type { i32, i16, i16 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.129 }
%union.anon.129 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.130, i16, i16, i8 }
%union.anon.130 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.111 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.uverbs_api = type { %struct.xarray, i32, i32, i32, %struct.uverbs_api_write_method, ptr, ptr }
%struct.uverbs_api_write_method = type { ptr, i8, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.144, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.145, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.146, ptr, %struct.address_space, %struct.list_head, %union.anon.147, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.144 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.145 = type { %struct.callback_head }
%union.anon.146 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.147 = type { ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rdma_umap_priv = type { ptr, %struct.list_head, ptr }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%union.anon.14 = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.126, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.126 = type { %struct.atomic_t }

@__UNIQUE_ID_author507 = internal constant [31 x i8] c"ib_uverbs.author=Roland Dreier\00", section ".modinfo", align 1
@__UNIQUE_ID_description508 = internal constant [56 x i8] c"ib_uverbs.description=InfiniBand userspace verbs access\00", section ".modinfo", align 1
@__UNIQUE_ID_file509 = internal constant [49 x i8] c"ib_uverbs.file=drivers/infiniband/core/ib_uverbs\00", section ".modinfo", align 1
@__UNIQUE_ID_license510 = internal constant [31 x i8] c"ib_uverbs.license=Dual BSD/GPL\00", section ".modinfo", align 1
@ib_uverbs_get_ucontext_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/infiniband/core/uverbs_main.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_ib_uverbs_get_ucontext_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_uverbs_get_ucontext_file = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_uverbs_get_ucontext_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_uverbs_get_ucontext_file to i32), ptr @__kstrtab_ib_uverbs_get_ucontext_file, ptr @__kstrtabns_ib_uverbs_get_ucontext_file }, section "___ksymtab+ib_uverbs_get_ucontext_file", align 4
@ib_uverbs_release_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@uverbs_event_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @ib_uverbs_comp_event_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ib_uverbs_comp_event_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @uverbs_uobject_fd_release, ptr null, ptr @ib_uverbs_comp_event_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uverbs_async_event_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @ib_uverbs_async_event_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ib_uverbs_async_event_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @uverbs_async_event_release, ptr null, ptr @ib_uverbs_async_event_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ib_uverbs_init_event_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ev_queue->lock\00", [16 x i8] zeroinitializer }, align 32
@ib_uverbs_init_event_queue.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ev_queue->poll_wait\00", [43 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__UNIQUE_ID_alias521 = internal constant [35 x i8] c"ib_uverbs.alias=rdma-client-uverbs\00", section ".modinfo", align 1
@uverbs_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.9, ptr @ib_uverbs_add_one, ptr @ib_uverbs_remove_one, ptr null, ptr @ib_uverbs_get_nl_info, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@uverbs_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dynamic_uverbs_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_ib_uverbs__529_1316_ib_uverbs_init6 = internal global ptr @ib_uverbs_init, section ".initcall6.init", align 4
@__exitcall_ib_uverbs_cleanup = internal global ptr @ib_uverbs_cleanup, section ".exitcall.exit", align 4
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uverbs\00", [25 x i8] zeroinitializer }, align 32
@ib_uverbs_add_one.__srcu_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&uverbs_dev->disassociate_srcu\00", [33 x i8] zeroinitializer }, align 32
@dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ib_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_add_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&uverbs_dev->xrcd_tree_mutex\00", [35 x i8] zeroinitializer }, align 32
@ib_uverbs_add_one.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&uverbs_dev->lists_mutex\00", [39 x i8] zeroinitializer }, align 32
@uverbs_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uverbs%d\00", [23 x i8] zeroinitializer }, align 32
@uverbs_mmap_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @ib_uverbs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ib_uverbs_ioctl, ptr null, ptr @ib_uverbs_mmap, i32 0, ptr @ib_uverbs_open, ptr null, ptr @ib_uverbs_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uverbs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @ib_uverbs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ib_uverbs_ioctl, ptr null, ptr null, i32 0, ptr @ib_uverbs_open, ptr null, ptr @ib_uverbs_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ib_dev_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_abi_version, ptr @dev_attr_ibdev, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_abi_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @abi_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ibdev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ibdev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"abi_version\00", [20 x i8] zeroinitializer }, align 32
@abi_version_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ibdev\00", [26 x i8] zeroinitializer }, align 32
@ibdev_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uverbs_ida.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@ib_uverbs_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ib_uverbs_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\013uverbs_write: process %d (%s) changed security contexts after opening file descriptor, this is not allowed.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ib_uverbs_write\00", [16 x i8] zeroinitializer }, align 32
@ib_uverbs_write._entry_ptr = internal global ptr @ib_uverbs_write._entry, section ".printk_index", align 4
@rdma_umap_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @rdma_umap_open, ptr @rdma_umap_close, ptr null, ptr null, ptr null, ptr @rdma_umap_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@ib_uverbs_open.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ib_uverbs_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&file->ucontext_lock\00", [43 x i8] zeroinitializer }, align 32
@ib_uverbs_open.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&file->uobjects_lock\00", [43 x i8] zeroinitializer }, align 32
@ib_uverbs_open.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&file->hw_destroy_rwsem\00", [40 x i8] zeroinitializer }, align 32
@ib_uverbs_open.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&file->umap_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infiniband_verbs\00", [47 x i8] zeroinitializer }, align 32
@ib_uverbs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013user_verbs: couldn't register device number\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ib_uverbs_init\00", [17 x i8] zeroinitializer }, align 32
@ib_uverbs_init._entry_ptr = internal global ptr @ib_uverbs_init._entry, section ".printk_index", align 4
@ib_uverbs_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013couldn't register dynamic device number\0A\00", [53 x i8] zeroinitializer }, align 32
@ib_uverbs_init._entry_ptr.37 = internal global ptr @ib_uverbs_init._entry.35, section ".printk_index", align 4
@ib_uverbs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ib_uverbs_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013user_verbs: couldn't create class infiniband_verbs\0A\00", [42 x i8] zeroinitializer }, align 32
@ib_uverbs_init._entry_ptr.40 = internal global ptr @ib_uverbs_init._entry.38, section ".printk_index", align 4
@class_attr_abi_version = internal global { %struct.class_attribute_string, [32 x i8] } { %struct.class_attribute_string { %struct.class_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_class_attr_string, ptr null }, ptr @.str.48 }, [32 x i8] zeroinitializer }, align 32
@ib_uverbs_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str, i32 1278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013user_verbs: couldn't create abi_version attribute\0A\00", [43 x i8] zeroinitializer }, align 32
@ib_uverbs_init._entry_ptr.43 = internal global ptr @ib_uverbs_init._entry.41, section ".printk_index", align 4
@ib_uverbs_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013user_verbs: couldn't register client\0A\00", [56 x i8] zeroinitializer }, align 32
@ib_uverbs_init._entry_ptr.46 = internal global ptr @ib_uverbs_init._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infiniband/%s\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 94, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"uverbs_event_fops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 341, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"uverbs_async_event_fops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 350, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 473, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 475, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"uverbs_client\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1028, i32 25 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"uverbs_class\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 75, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"dynamic_uverbs_dev\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 74, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 189, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 230, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 214, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 174, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1029, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [11 x i8] c"__srcu_key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1115, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"dev_attr_group\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1081, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1130, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1131, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [11 x i8] c"uverbs_ida\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1153, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"uverbs_mmap_fops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 990, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"uverbs_fops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 980, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"ib_dev_attrs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1075, i32 26 }
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"dev_attr_abi_version\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"dev_attr_ibdev\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1073, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1068, i32 25 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1054, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1049, i32 25 }
@___asan_gen_.155 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 87, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 77, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 574, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [14 x i8] c"rdma_umap_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 805, i32 42 }
@___asan_gen_.173 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1160, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 935, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 937, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 939, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 940, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1253, i32 10 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1255, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1263, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1267, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1270, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [23 x i8] c"class_attr_abi_version\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1278, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1284, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1244, i32 31 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [41 x i8] c"../drivers/infiniband/core/uverbs_main.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1085, i32 8 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_alias521, ptr @__UNIQUE_ID_author507, ptr @__UNIQUE_ID_description508, ptr @__UNIQUE_ID_file509, ptr @__UNIQUE_ID_license510, ptr @__exitcall_ib_uverbs_cleanup, ptr @__initcall__kmod_ib_uverbs__529_1316_ib_uverbs_init6, ptr @__ksymtab_ib_uverbs_get_ucontext_file, ptr @ib_uverbs_cleanup, ptr @ib_uverbs_init._entry, ptr @ib_uverbs_init._entry.35, ptr @ib_uverbs_init._entry.38, ptr @ib_uverbs_init._entry.41, ptr @ib_uverbs_init._entry.44, ptr @ib_uverbs_init._entry_ptr, ptr @ib_uverbs_init._entry_ptr.37, ptr @ib_uverbs_init._entry_ptr.40, ptr @ib_uverbs_init._entry_ptr.43, ptr @ib_uverbs_init._entry_ptr.46, ptr @ib_uverbs_write._entry, ptr @ib_uverbs_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @uverbs_event_fops, ptr @uverbs_async_event_fops, ptr @ib_uverbs_init_event_queue.__key, ptr @.str.2, ptr @ib_uverbs_init_event_queue.__key.3, ptr @.str.4, ptr @uverbs_client, ptr @uverbs_class, ptr @dynamic_uverbs_dev, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ib_uverbs_add_one.__srcu_key, ptr @.str.10, ptr @dev_attr_group, ptr @ib_uverbs_add_one.__key, ptr @.str.11, ptr @ib_uverbs_add_one.__key.12, ptr @.str.13, ptr @uverbs_ida, ptr @.str.14, ptr @uverbs_mmap_fops, ptr @uverbs_fops, ptr @ib_dev_attrs, ptr @dev_attr_abi_version, ptr @dev_attr_ibdev, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @rdma_umap_ops, ptr @.str.23, ptr @ib_uverbs_open.__key, ptr @.str.25, ptr @ib_uverbs_open.__key.26, ptr @.str.27, ptr @ib_uverbs_open.__key.28, ptr @.str.29, ptr @ib_uverbs_open.__key.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @ib_uverbs_init.__key, ptr @.str.39, ptr @class_attr_abi_version, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_event_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_async_event_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_init_event_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_init_event_queue.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_uverbs_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_add_one.__srcu_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_add_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_add_one.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_mmap_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_dev_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_abi_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ibdev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_umap_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_open.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_open.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_open.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_abi_version to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_uverbs_get_ucontext_file(ptr noundef %ufile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ucontext1 = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 3
  %0 = ptrtoint ptr %ucontext1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ucontext1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !156
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %ib_dev = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ib_dev, align 8
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.end17_crit_edge, label %srcu_read_lock_held.exit

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

srcu_read_lock_held.exit:                         ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 10, i32 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end17_crit_edge

srcu_read_lock_held.exit.do.end17_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true14

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b30 = load i1, ptr @ib_uverbs_get_ucontext_file.__warned, align 1
  br i1 %.b30, label %land.lhs.true14.do.end17_crit_edge, label %if.then

land.lhs.true14.do.end17_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

if.then:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_uverbs_get_ucontext_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 95, ptr noundef nonnull @.str.1) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then, %land.lhs.true14.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %srcu_read_lock_held.exit.do.end17_crit_edge, %entry.do.end17_crit_edge
  %tobool19.not = icmp eq ptr %5, null
  %tobool23.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool23.not, ptr inttoptr (i32 -22 to ptr), ptr %1
  %retval.0 = select i1 %tobool19.not, ptr inttoptr (i32 -5 to ptr), ptr %spec.select
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uverbs_dealloc_mw(ptr noundef %mw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.ib_mw, ptr %mw, i32 0, i32 1
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %2 = ptrtoint ptr %mw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mw, align 4
  %dealloc_mw = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 65
  %4 = ptrtoint ptr %dealloc_mw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dealloc_mw, align 4
  %call = tail call i32 %5(ptr noundef %mw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #9, !srcloc !157
  tail call void @kfree(ptr noundef %mw) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_release_ucq(ptr noundef %ev_file, ptr noundef readonly %uobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ev_file, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %ev_file, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %ev_queue) #9
  %comp_list = getelementptr inbounds %struct.ib_ucq_object, ptr %uobj, i32 0, i32 1
  %0 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp_list, align 8
  %cmp.not27 = icmp eq ptr %1, %comp_list
  br i1 %cmp.not27, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn.in28 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %if.then.for.body_crit_edge ]
  %evt.0 = getelementptr i8, ptr %.pn.in28, i32 -24
  %2 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in28, align 8
  %list = getelementptr i8, ptr %.pn.in28, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %.pn.in28, i32 -4
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %.pn.in28, i32 -4
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %evt.0) #9
  %cmp.not = icmp eq ptr %.pn, %comp_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ev_queue) #9
  tail call void @uverbs_uobject_put(ptr noundef nonnull %ev_file) #9
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %event_file.i = getelementptr inbounds %struct.ib_uevent_object, ptr %uobj, i32 0, i32 1
  %11 = ptrtoint ptr %event_file.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %event_file.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.ib_uverbs_release_uevent.exit_crit_edge, label %if.end.i

if.end.ib_uverbs_release_uevent.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_uverbs_release_uevent.exit

if.end.i:                                         ; preds = %if.end
  %ev_queue.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %12, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %ev_queue.i) #9
  %event_list.i = getelementptr inbounds %struct.ib_uevent_object, ptr %uobj, i32 0, i32 2
  %13 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %event_list.i, align 4
  %cmp.not28.i = icmp eq ptr %14, %event_list.i
  br i1 %cmp.not28.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in29.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %14, %if.end.i.for.body.i_crit_edge ]
  %evt.0.i = getelementptr i8, ptr %.pn.in29.i, i32 -24
  %15 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn.in29.i, align 8
  %list.i = getelementptr i8, ptr %.pn.in29.i, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %.pn.in29.i, i32 -4
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i26 = getelementptr i8, ptr %.pn.in29.i, i32 -4
  %23 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i26, align 4
  tail call void @kfree(ptr noundef %evt.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %event_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ev_queue.i) #9
  tail call void @uverbs_uobject_put(ptr noundef nonnull %12) #9
  br label %ib_uverbs_release_uevent.exit

ib_uverbs_release_uevent.exit:                    ; preds = %for.end.i, %if.end.ib_uverbs_release_uevent.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_uobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_release_uevent(ptr noundef readonly %uobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %event_file = getelementptr inbounds %struct.ib_uevent_object, ptr %uobj, i32 0, i32 1
  %0 = ptrtoint ptr %event_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_file, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %ev_queue) #9
  %event_list = getelementptr inbounds %struct.ib_uevent_object, ptr %uobj, i32 0, i32 2
  %2 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event_list, align 4
  %cmp.not28 = icmp eq ptr %3, %event_list
  br i1 %cmp.not28, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in29 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %evt.0 = getelementptr i8, ptr %.pn.in29, i32 -24
  %4 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in29, align 8
  %list = getelementptr i8, ptr %.pn.in29, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %.pn.in29, i32 -4
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %.pn.in29, i32 -4
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %evt.0) #9
  %cmp.not = icmp eq ptr %.pn, %event_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ev_queue) #9
  tail call void @uverbs_uobject_put(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_detach_umcast(ptr noundef %qp, ptr noundef readonly %uobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mcast_list = getelementptr inbounds %struct.ib_uqp_object, ptr %uobj, i32 0, i32 2
  %0 = ptrtoint ptr %mcast_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcast_list, align 4
  %cmp.not21 = icmp eq ptr %1, %mcast_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %mcast.022 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mcast.022 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %mcast.022, align 8
  %gid = getelementptr inbounds %struct.ib_uverbs_mcast_entry, ptr %mcast.022, i32 0, i32 1
  %lid = getelementptr inbounds %struct.ib_uverbs_mcast_entry, ptr %mcast.022, i32 0, i32 2
  %3 = ptrtoint ptr %lid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %lid, align 8
  %call = tail call i32 @ib_detach_mcast(ptr noundef %qp, ptr noundef %gid, i16 noundef zeroext %4) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mcast.022) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mcast.022, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %mcast.022 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mcast.022, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %mcast.022 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %mcast.022, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mcast.022, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %mcast.022) #9
  %cmp.not = icmp eq ptr %tmp.0, %mcast_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_detach_mcast(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_release_file(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @release_ufile_idr_uobject(ptr noundef %ref) #9
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %ref, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %disassociate_srcu = getelementptr inbounds %struct.ib_uverbs_device, ptr %1, i32 0, i32 10
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %disassociate_srcu) #9
  %dep_map.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %1, i32 0, i32 10, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #9
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %ib_dev3 = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ib_dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ib_dev3, align 8
  %call.i56 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i, label %entry.do.end13_crit_edge, label %srcu_read_lock_held.exit

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

srcu_read_lock_held.exit:                         ; preds = %entry
  %dep_map.i57 = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 10, i32 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i57, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end13_crit_edge

srcu_read_lock_held.exit.do.end13_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b55 = load i1, ptr @ib_uverbs_release_file.__warned, align 1
  br i1 %.b55, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_uverbs_release_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %srcu_read_lock_held.exit.do.end13_crit_edge, %entry.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %do.end13.if.end20_crit_edge, label %land.lhs.true16

do.end13.if.end20_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true16:                                  ; preds = %do.end13
  %disassociate_ucontext = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 34
  %6 = ptrtoint ptr %disassociate_ucontext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disassociate_ucontext, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true16.if.end20_crit_edge

land.lhs.true16.if.end20_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  %ops = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  tail call void @module_put(ptr noundef %9) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true16.if.end20_crit_edge, %do.end13.if.end20_crit_edge
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %disassociate_srcu22 = getelementptr inbounds %struct.ib_uverbs_device, ptr %11, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i58 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i58, label %if.end20.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.end20.srcu_read_unlock.exit_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.end20
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !158

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #9
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.end20.srcu_read_unlock.exit_crit_edge
  %dep_map.i59 = getelementptr inbounds %struct.ib_uverbs_device, ptr %11, i32 0, i32 10, i32 16
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i59) #9
  tail call void @__srcu_read_unlock(ptr noundef %disassociate_srcu22, i32 noundef %call.i) #9
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #9, !srcloc !160
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then25, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %srcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end27_crit_edge, label %if.then10.i.i.i, !prof !158

if.end5.i.i.i.if.end27_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #9
  br label %if.end27

if.then25:                                        ; preds = %srcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %comp.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %16, i32 0, i32 2
  tail call void @complete(ptr noundef %comp.i) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then10.i.i.i, %if.end5.i.i.i.if.end27_crit_edge
  %default_async_file = getelementptr inbounds %struct.ib_uverbs_file, ptr %ref, i32 0, i32 4
  %17 = ptrtoint ptr %default_async_file to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %default_async_file, align 4
  %tobool28.not = icmp eq ptr %18, null
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uverbs_uobject_put(ptr noundef nonnull %18) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.ib_uverbs_device, ptr %20, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev) #9
  %disassociate_page = getelementptr inbounds %struct.ib_uverbs_file, ptr %ref, i32 0, i32 11
  %21 = ptrtoint ptr %disassociate_page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %disassociate_page, align 4
  %tobool33.not = icmp eq ptr %22, null
  br i1 %tobool33.not, label %if.end31.if.end36_crit_edge, label %if.then34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__free_pages(ptr noundef nonnull %22, i32 noundef 0) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %umap_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %ref, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %umap_lock) #9
  %ucontext_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %ref, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %ucontext_lock) #9
  tail call void @kfree(ptr noundef %ref) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_ufile_idr_uobject(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srcu_read_unlock(ptr noundef %ssp, i32 noundef %idx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %idx)
  %tobool.not = icmp ult i32 %idx, 2
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b40 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !158

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %dep_map = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 16
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map)
  tail call void @__srcu_read_unlock(ptr noundef %ssp, i32 noundef %idx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_comp_event_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %1, i32 0, i32 1
  %call = tail call fastcc i32 @ib_uverbs_event_read(ptr noundef %ev_queue, ptr noundef %filp, ptr noundef %buf, i32 noundef %count, i32 noundef 8)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_comp_event_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %1, i32 0, i32 1
  %poll_wait.i = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %1, i32 0, i32 1, i32 2
  %tobool.not.i.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i.i, label %entry.poll_wait.exit.i_crit_edge, label %land.lhs.true.i.i

entry.poll_wait.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.poll_wait.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.poll_wait.exit.i_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %poll_wait.i, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit.i

poll_wait.exit.i:                                 ; preds = %if.then.i.i, %land.lhs.true.i.i.poll_wait.exit.i_crit_edge, %entry.poll_wait.exit.i_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %ev_queue) #9
  %event_list.i = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %1, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %event_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %event_list.i
  br i1 %cmp.i.not.i, label %if.else.i, label %poll_wait.exit.i.ib_uverbs_event_poll.exit_crit_edge

poll_wait.exit.i.ib_uverbs_event_poll.exit_crit_edge: ; preds = %poll_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_uverbs_event_poll.exit

if.else.i:                                        ; preds = %poll_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_closed.i = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %is_closed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_closed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 0, i32 8
  br label %ib_uverbs_event_poll.exit

ib_uverbs_event_poll.exit:                        ; preds = %if.else.i, %poll_wait.exit.i.ib_uverbs_event_poll.exit_crit_edge
  %pollflags.0.i = phi i32 [ 65, %poll_wait.exit.i.ib_uverbs_event_poll.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %ev_queue) #9
  ret i32 %pollflags.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_uobject_fd_release(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_comp_event_fasync(i32 noundef %fd, ptr noundef %filp, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %async_queue = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %1, i32 0, i32 1, i32 3
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filp, i32 noundef %on, ptr noundef %async_queue) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_async_event_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %1, i32 0, i32 1
  %call = tail call fastcc i32 @ib_uverbs_event_read(ptr noundef %ev_queue, ptr noundef %filp, ptr noundef %buf, i32 noundef %count, i32 noundef 16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_async_event_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %1, i32 0, i32 1
  %poll_wait.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %1, i32 0, i32 1, i32 2
  %tobool.not.i.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i.i, label %entry.poll_wait.exit.i_crit_edge, label %land.lhs.true.i.i

entry.poll_wait.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.poll_wait.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.poll_wait.exit.i_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %poll_wait.i, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit.i

poll_wait.exit.i:                                 ; preds = %if.then.i.i, %land.lhs.true.i.i.poll_wait.exit.i_crit_edge, %entry.poll_wait.exit.i_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %ev_queue) #9
  %event_list.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %1, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %event_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %event_list.i
  br i1 %cmp.i.not.i, label %if.else.i, label %poll_wait.exit.i.ib_uverbs_event_poll.exit_crit_edge

poll_wait.exit.i.ib_uverbs_event_poll.exit_crit_edge: ; preds = %poll_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_uverbs_event_poll.exit

if.else.i:                                        ; preds = %poll_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_closed.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %is_closed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_closed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 0, i32 8
  br label %ib_uverbs_event_poll.exit

ib_uverbs_event_poll.exit:                        ; preds = %if.else.i, %poll_wait.exit.i.ib_uverbs_event_poll.exit_crit_edge
  %pollflags.0.i = phi i32 [ 65, %poll_wait.exit.i.ib_uverbs_event_poll.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %ev_queue) #9
  ret i32 %pollflags.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_async_event_release(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_async_event_fasync(i32 noundef %fd, ptr noundef %filp, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %async_queue = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %1, i32 0, i32 1, i32 3
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filp, i32 noundef %on, ptr noundef %async_queue) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_comp_handler(ptr nocapture noundef readonly %cq, ptr noundef %cq_context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cq_context, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %cq_context) #9
  %is_closed = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %cq_context, i32 0, i32 1
  %0 = ptrtoint ptr %is_closed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_closed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %cq_context, i32 noundef %call3) #9
  br label %cleanup

if.end9:                                          ; preds = %do.body2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 40) #12
  %tobool11.not = icmp eq ptr %call7.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %cq_context, i32 noundef %call3) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %uobject = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 1
  %3 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %uobject, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %call7.i, align 8
  %comp_events_reported = getelementptr inbounds %struct.ib_ucq_object, ptr %4, i32 0, i32 2
  %counter = getelementptr inbounds %struct.ib_uverbs_event, ptr %call7.i, i32 0, i32 3
  %8 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %comp_events_reported, ptr %counter, align 8
  %list = getelementptr inbounds %struct.ib_uverbs_event, ptr %call7.i, i32 0, i32 1
  %event_list = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %cq_context, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %cq_context, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %10, ptr noundef %event_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add_tail.exit_crit_edge

if.end14.list_add_tail.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %event_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.ib_uverbs_event, ptr %call7.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end14.list_add_tail.exit_crit_edge
  %obj_list = getelementptr inbounds %struct.ib_uverbs_event, ptr %call7.i, i32 0, i32 2
  %comp_list = getelementptr inbounds %struct.ib_ucq_object, ptr %4, i32 0, i32 1
  %prev.i37 = getelementptr inbounds %struct.ib_ucq_object, ptr %4, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i37, align 4
  %call.i.i38 = tail call zeroext i1 @__list_add_valid(ptr noundef %obj_list, ptr noundef %16, ptr noundef %comp_list) #9
  br i1 %call.i.i38, label %if.end.i.i40, label %list_add_tail.exit.list_add_tail.exit41_crit_edge

list_add_tail.exit.list_add_tail.exit41_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit41

if.end.i.i40:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %obj_list, ptr %prev.i37, align 4
  %18 = ptrtoint ptr %obj_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %comp_list, ptr %obj_list, align 8
  %prev3.i.i39 = getelementptr inbounds %struct.ib_uverbs_event, ptr %call7.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev3.i.i39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i39, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %obj_list, ptr %16, align 4
  br label %list_add_tail.exit41

list_add_tail.exit41:                             ; preds = %if.end.i.i40, %list_add_tail.exit.list_add_tail.exit41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %cq_context, i32 noundef %call3) #9
  %poll_wait = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %cq_context, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %async_queue = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %cq_context, i32 0, i32 3
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit41, %if.then12, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_async_handler(ptr noundef %async_file, i64 noundef %element, i64 noundef %event, ptr noundef %obj_list, ptr noundef %counter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %async_file, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ev_queue) #9
  %is_closed = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %is_closed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_closed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ev_queue, i32 noundef %call3) #9
  br label %cleanup

if.end11:                                         ; preds = %do.body2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 40) #12
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ev_queue, i32 noundef %call3) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %element, ptr %call7.i, align 8
  %conv19 = trunc i64 %event to i32
  %event_type = getelementptr inbounds %struct.ib_uverbs_async_event_desc, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %event_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv19, ptr %event_type, align 8
  %reserved = getelementptr inbounds %struct.ib_uverbs_async_event_desc, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reserved, align 4
  %counter22 = getelementptr inbounds %struct.ib_uverbs_event, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %counter22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %counter, ptr %counter22, align 8
  %list = getelementptr inbounds %struct.ib_uverbs_event, ptr %call7.i, i32 0, i32 1
  %event_list = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1, i32 4
  %prev.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %8, ptr noundef %event_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.list_add_tail.exit_crit_edge

if.end17.list_add_tail.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %event_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.ib_uverbs_event, ptr %call7.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end17.list_add_tail.exit_crit_edge
  %tobool24.not = icmp eq ptr %obj_list, null
  br i1 %tobool24.not, label %list_add_tail.exit.if.end27_crit_edge, label %if.then25

list_add_tail.exit.if.end27_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %list_add_tail.exit
  %obj_list26 = getelementptr inbounds %struct.ib_uverbs_event, ptr %call7.i, i32 0, i32 2
  %prev.i50 = getelementptr inbounds %struct.list_head, ptr %obj_list, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i50, align 4
  %call.i.i51 = tail call zeroext i1 @__list_add_valid(ptr noundef %obj_list26, ptr noundef %14, ptr noundef nonnull %obj_list) #9
  br i1 %call.i.i51, label %if.end.i.i53, label %if.then25.if.end27_crit_edge

if.then25.if.end27_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i.i53:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %obj_list26, ptr %prev.i50, align 4
  %16 = ptrtoint ptr %obj_list26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %obj_list, ptr %obj_list26, align 8
  %prev3.i.i52 = getelementptr inbounds %struct.ib_uverbs_event, ptr %call7.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i52 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i52, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %obj_list26, ptr %14, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i.i53, %if.then25.if.end27_crit_edge, %list_add_tail.exit.if.end27_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ev_queue, i32 noundef %call3) #9
  %poll_wait = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1, i32 2
  tail call void @__wake_up(ptr noundef %poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %async_queue = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1, i32 3
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then14, %if.then8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_cq_event_handler(ptr nocapture noundef readonly %event, ptr nocapture noundef readnone %context_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %element = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %0 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %element, align 4
  %uobject = getelementptr inbounds %struct.ib_cq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uobject, align 4
  %event_file.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %event_file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_file.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  %event1.i = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %8 = ptrtoint ptr %event1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event1.i, align 4
  %conv.i = zext i32 %9 to i64
  %event_list.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 2
  %events_reported.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 3
  tail call void @ib_uverbs_async_handler(ptr noundef %5, i64 noundef %7, i64 noundef %conv.i, ptr noundef %event_list.i, ptr noundef %events_reported.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_qp_event_handler(ptr nocapture noundef readonly %event, ptr nocapture noundef readnone %context_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %element = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %0 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %element, align 4
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uobject, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %event_file.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %event_file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_file.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  %event1.i = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %8 = ptrtoint ptr %event1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event1.i, align 4
  %conv.i = zext i32 %9 to i64
  %event_list.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 2
  %events_reported.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 3
  tail call void @ib_uverbs_async_handler(ptr noundef %5, i64 noundef %7, i64 noundef %conv.i, ptr noundef %event_list.i, ptr noundef %events_reported.i) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_wq_event_handler(ptr nocapture noundef readonly %event, ptr nocapture noundef readnone %context_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %element = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %0 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %element, align 4
  %uobject = getelementptr inbounds %struct.ib_wq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uobject, align 4
  %event_file.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %event_file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_file.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  %event1.i = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %8 = ptrtoint ptr %event1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event1.i, align 4
  %conv.i = zext i32 %9 to i64
  %event_list.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 2
  %events_reported.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 3
  tail call void @ib_uverbs_async_handler(ptr noundef %5, i64 noundef %7, i64 noundef %conv.i, ptr noundef %event_list.i, ptr noundef %events_reported.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_srq_event_handler(ptr nocapture noundef readonly %event, ptr nocapture noundef readnone %context_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %element = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %0 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %element, align 4
  %uobject = getelementptr inbounds %struct.ib_srq, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uobject, align 4
  %event_file.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %event_file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_file.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  %event1.i = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %8 = ptrtoint ptr %event1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event1.i, align 4
  %conv.i = zext i32 %9 to i64
  %event_list.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 2
  %events_reported.i = getelementptr inbounds %struct.ib_uevent_object, ptr %3, i32 0, i32 3
  tail call void @ib_uverbs_async_handler(ptr noundef %5, i64 noundef %7, i64 noundef %conv.i, ptr noundef %event_list.i, ptr noundef %events_reported.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_init_event_queue(ptr noundef %ev_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %ev_queue, ptr noundef nonnull @.str.2, ptr noundef nonnull @ib_uverbs_init_event_queue.__key, i16 noundef signext 3) #9
  %event_list = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %ev_queue, i32 0, i32 4
  %0 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %ev_queue, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %event_list, ptr %prev.i, align 4
  %poll_wait = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %ev_queue, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %poll_wait, ptr noundef nonnull @.str.4, ptr noundef nonnull @ib_uverbs_init_event_queue.__key.3) #9
  %is_closed = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %ev_queue, i32 0, i32 1
  %2 = ptrtoint ptr %is_closed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %is_closed, align 4
  %async_queue = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %ev_queue, i32 0, i32 3
  %3 = ptrtoint ptr %async_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %async_queue, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_init_async_event_file(ptr noundef %async_file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile = getelementptr inbounds %struct.ib_uobject, ptr %async_file, i32 0, i32 1
  %0 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile, align 8
  %context = getelementptr inbounds %struct.ib_uobject, ptr %async_file, i32 0, i32 2
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ev_queue, ptr noundef nonnull @.str.2, ptr noundef nonnull @ib_uverbs_init_event_queue.__key, i16 noundef signext 3) #9
  %event_list.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %event_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %event_list.i, ptr %event_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %event_list.i, ptr %prev.i.i, align 4
  %poll_wait.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %poll_wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @ib_uverbs_init_event_queue.__key.3) #9
  %is_closed.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %is_closed.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %is_closed.i, align 4
  %async_queue.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %async_queue.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %async_queue.i, align 4
  %ucontext_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %ucontext_lock, i32 noundef 0) #9
  %default_async_file = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %default_async_file to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %default_async_file, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %async_file, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #9, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !163

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !158

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uverbs_uobject_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %uverbs_uobject_get.exit

uverbs_uobject_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !164
  %14 = ptrtoint ptr %default_async_file to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %async_file, ptr %default_async_file, align 4
  br label %if.end

if.end:                                           ; preds = %uverbs_uobject_get.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ucontext_lock) #9
  %event_handler = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 2
  %15 = ptrtoint ptr %event_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %event_handler, align 8
  %handler = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ib_uverbs_event_handler, ptr %handler, align 4
  %list = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ib_uverbs_async_event_file, ptr %async_file, i32 0, i32 2, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %prev.i, align 4
  tail call void @ib_register_event_handler(ptr noundef %event_handler) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_uverbs_event_handler(ptr noundef %handler, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %handler, i32 -168
  %element = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %0 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %element, align 4
  %conv = zext i32 %1 to i64
  %event1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %2 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event1, align 4
  %conv2 = zext i32 %3 to i64
  tail call void @ib_uverbs_async_handler(ptr noundef %add.ptr, i64 noundef %conv, i64 noundef %conv2, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_register_event_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uverbs_user_mmap_disassociate(ptr noundef %ufile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 6, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !163

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 815, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %umap_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %umap_lock, i32 noundef 0) #9
  %umaps = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 10
  %1 = ptrtoint ptr %umaps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %umaps, align 4
  %cmp.i.not141148 = icmp eq ptr %2, %umaps
  br i1 %cmp.i.not141148, label %if.end.while.end.thread_crit_edge, label %if.end.while.body29_crit_edge

if.end.while.body29_crit_edge:                    ; preds = %if.end
  br label %while.body29

if.end.while.end.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.thread

while.end.thread:                                 ; preds = %mmap_read_unlock.exit.while.end.thread_crit_edge, %cleanup.while.end.thread_crit_edge, %if.end.while.end.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %umap_lock) #9
  br label %cleanup89

while.body29:                                     ; preds = %while.body29.backedge, %if.end.while.body29_crit_edge
  %3 = phi ptr [ %.be, %while.body29.backedge ], [ %2, %if.end.while.body29_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_mm, align 4
  %mm_users.i = getelementptr inbounds %struct.anon.10, ptr %7, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #9, !srcloc !166
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then34, label %while.end

if.then34:                                        ; preds = %while.body29
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.list_del_init.exit_crit_edge

if.then34.list_del_init.exit_crit_edge:           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then34.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %prev.i3.i, align 4
  %entry35 = getelementptr i8, ptr %3, i32 8
  %17 = ptrtoint ptr %entry35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entry35, align 4
  %tobool36.not = icmp eq ptr %18, null
  br i1 %tobool36.not, label %list_del_init.exit.cleanup_crit_edge, label %if.then37

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rdma_user_mmap_entry_put(ptr noundef nonnull %18) #9
  %19 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %entry35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %list_del_init.exit.cleanup_crit_edge
  %20 = ptrtoint ptr %umaps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %umaps, align 4
  %cmp.i.not = icmp eq ptr %21, %umaps
  br i1 %cmp.i.not, label %cleanup.while.end.thread_crit_edge, label %cleanup.while.body29.backedge_crit_edge

cleanup.while.body29.backedge_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body29.backedge

cleanup.while.end.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.thread

while.body29.backedge:                            ; preds = %mmap_read_unlock.exit.while.body29.backedge_crit_edge, %cleanup.while.body29.backedge_crit_edge
  %.be = phi ptr [ %21, %cleanup.while.body29.backedge_crit_edge ], [ %45, %mmap_read_unlock.exit.while.body29.backedge_crit_edge ]
  br label %while.body29

while.end:                                        ; preds = %while.body29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @mutex_unlock(ptr noundef %umap_lock) #9
  %tobool43.not = icmp eq ptr %7, null
  br i1 %tobool43.not, label %while.end.cleanup89_crit_edge, label %if.end45

while.end.cleanup89_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup89

if.end45:                                         ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@uverbs_user_mmap_disassociate, %if.then.i.i)) #9
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !168

if.then.i.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %7, i1 noundef zeroext false) #9
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end45
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %7, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@uverbs_user_mmap_disassociate, %if.then.i3.i)) #9
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !168

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %7, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  tail call void @mutex_lock_nested(ptr noundef %umap_lock, i32 noundef 0) #9
  %22 = ptrtoint ptr %umaps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %umaps, align 4
  %cmp59.not144 = icmp eq ptr %23, %umaps
  br i1 %cmp59.not144, label %mmap_read_lock.exit.for.end_crit_edge, label %mmap_read_lock.exit.for.body_crit_edge

mmap_read_lock.exit.for.body_crit_edge:           ; preds = %mmap_read_lock.exit
  br label %for.body

mmap_read_lock.exit.for.end_crit_edge:            ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup78.for.body_crit_edge, %mmap_read_lock.exit.for.body_crit_edge
  %.pn.in145 = phi ptr [ %.pn147, %cleanup78.for.body_crit_edge ], [ %23, %mmap_read_lock.exit.for.body_crit_edge ]
  %24 = ptrtoint ptr %.pn.in145 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn147 = load ptr, ptr %.pn.in145, align 4
  %priv.0 = getelementptr i8, ptr %.pn.in145, i32 -4
  %25 = ptrtoint ptr %priv.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.0, align 4
  %vm_mm65 = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %vm_mm65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vm_mm65, align 4
  %cmp66.not = icmp eq ptr %28, %7
  br i1 %cmp66.not, label %if.end69, label %for.body.cleanup78_crit_edge

for.body.cleanup78_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup78

if.end69:                                         ; preds = %for.body
  %call.i.i124 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in145) #9
  br i1 %call.i.i124, label %if.end.i.i127, label %if.end69.list_del_init.exit129_crit_edge

if.end69.list_del_init.exit129_crit_edge:         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit129

if.end.i.i127:                                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i125 = getelementptr inbounds %struct.list_head, ptr %.pn.in145, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i125 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i125, align 4
  %31 = ptrtoint ptr %.pn.in145 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn.in145, align 4
  %prev1.i.i.i126 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i126, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit129

list_del_init.exit129:                            ; preds = %if.end.i.i127, %if.end69.list_del_init.exit129_crit_edge
  %35 = ptrtoint ptr %.pn.in145 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %.pn.in145, ptr %.pn.in145, align 4
  %prev.i3.i128 = getelementptr inbounds %struct.list_head, ptr %.pn.in145, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i128 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %.pn.in145, ptr %prev.i3.i128, align 4
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %26, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 1
  %39 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %40, %38
  tail call void @zap_vma_ptes(ptr noundef %26, i32 noundef %38, i32 noundef %sub) #9
  %entry72 = getelementptr i8, ptr %.pn.in145, i32 8
  %41 = ptrtoint ptr %entry72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %entry72, align 4
  %tobool73.not = icmp eq ptr %42, null
  br i1 %tobool73.not, label %list_del_init.exit129.cleanup78_crit_edge, label %if.then74

list_del_init.exit129.cleanup78_crit_edge:        ; preds = %list_del_init.exit129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup78

if.then74:                                        ; preds = %list_del_init.exit129
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rdma_user_mmap_entry_put(ptr noundef nonnull %42) #9
  %43 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %entry72, align 4
  br label %cleanup78

cleanup78:                                        ; preds = %if.then74, %list_del_init.exit129.cleanup78_crit_edge, %for.body.cleanup78_crit_edge
  %cmp59.not = icmp eq ptr %.pn147, %umaps
  br i1 %cmp59.not, label %cleanup78.for.end_crit_edge, label %cleanup78.for.body_crit_edge

cleanup78.for.body_crit_edge:                     ; preds = %cleanup78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup78.for.end_crit_edge:                      ; preds = %cleanup78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup78.for.end_crit_edge, %mmap_read_lock.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %umap_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@uverbs_user_mmap_disassociate, %if.then.i.i130)) #9
          to label %mmap_read_unlock.exit [label %if.then.i.i130], !srcloc !168

if.then.i.i130:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %7, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i130, %for.end
  tail call void @up_read(ptr noundef %mmap_lock.i) #9
  tail call void @mmput(ptr noundef nonnull %7) #9
  tail call void @mutex_lock_nested(ptr noundef %umap_lock, i32 noundef 0) #9
  %44 = ptrtoint ptr %umaps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %umaps, align 4
  %cmp.i.not141 = icmp eq ptr %45, %umaps
  br i1 %cmp.i.not141, label %mmap_read_unlock.exit.while.end.thread_crit_edge, label %mmap_read_unlock.exit.while.body29.backedge_crit_edge

mmap_read_unlock.exit.while.body29.backedge_crit_edge: ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body29.backedge

mmap_read_unlock.exit.while.end.thread_crit_edge: ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.thread

cleanup89:                                        ; preds = %while.end.cleanup89_crit_edge, %while.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_user_mmap_entry_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zap_vma_ptes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ib_uverbs_cleanup() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ib_unregister_client(ptr noundef nonnull @uverbs_client) #9
  %0 = load ptr, ptr @uverbs_class, align 4
  tail call void @class_destroy(ptr noundef %0) #9
  tail call void @unregister_chrdev_region(i32 noundef 242221248, i32 noundef 32) #9
  %1 = load i32, ptr @dynamic_uverbs_dev, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 8160) #9
  tail call void @mmu_notifier_synchronize() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmu_notifier_synchronize() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_chrdev_region(i32 noundef 242221248, i32 noundef 32, ptr noundef nonnull @.str.32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @dynamic_uverbs_dev, i32 noundef 0, i32 noundef 8160, ptr noundef nonnull @.str.32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  br label %out_alloc

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @ib_uverbs_init.__key) #9
  store ptr %call12, ptr @uverbs_class, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call12 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #13
  br label %out_chrdev

if.end21:                                         ; preds = %if.end10
  %devnode = getelementptr inbounds %struct.class, ptr %call12, i32 0, i32 6
  %1 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @uverbs_devnode, ptr %devnode, align 4
  %call.i = tail call i32 @class_create_file_ns(ptr noundef %call12, ptr noundef nonnull @class_attr_abi_version, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end30, label %if.end21.out_class_crit_edge

if.end21.out_class_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_class

if.end30:                                         ; preds = %if.end21
  %call31 = tail call i32 @ib_register_client(ptr noundef nonnull @uverbs_client) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.end30.out_class_crit_edge

if.end30.out_class_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_class

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_class:                                        ; preds = %if.end30.out_class_crit_edge, %if.end21.out_class_crit_edge
  %.str.45.sink = phi ptr [ @.str.42, %if.end21.out_class_crit_edge ], [ @.str.45, %if.end30.out_class_crit_edge ]
  %ret.0 = phi i32 [ %call.i, %if.end21.out_class_crit_edge ], [ %call31, %if.end30.out_class_crit_edge ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.45.sink) #13
  %2 = load ptr, ptr @uverbs_class, align 4
  tail call void @class_destroy(ptr noundef %2) #9
  br label %out_chrdev

out_chrdev:                                       ; preds = %out_class, %if.then14
  %ret.1 = phi i32 [ %0, %if.then14 ], [ %ret.0, %out_class ]
  %3 = load i32, ptr @dynamic_uverbs_dev, align 4
  tail call void @unregister_chrdev_region(i32 noundef %3, i32 noundef 8160) #9
  br label %out_alloc

out_alloc:                                        ; preds = %out_chrdev, %do.end7
  %ret.2 = phi i32 [ %call2, %do.end7 ], [ %ret.1, %out_chrdev ]
  tail call void @unregister_chrdev_region(i32 noundef 242221248, i32 noundef 32) #9
  br label %cleanup

cleanup:                                          ; preds = %out_alloc, %if.end30.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end30.cleanup_crit_edge ], [ %call, %do.end ], [ %ret.2, %out_alloc ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_uverbs_event_read(ptr noundef %ev_queue, ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, i32 noundef %eventsz) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %ev_queue) #9
  %event_list = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %ev_queue, i32 0, i32 4
  %0 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not39 = icmp eq ptr %1, %event_list
  br i1 %cmp.i.not39, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %is_closed = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %ev_queue, i32 0, i32 1
  %poll_wait = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %ev_queue, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  call void @_raw_spin_unlock_irq(ptr noundef %ev_queue) #9
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %while.body.cleanup58_crit_edge

while.body.cleanup58_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

if.end:                                           ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 232) #9
  %4 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %event_list, align 4
  %cmp.i1.not = icmp eq ptr %5, %event_list
  br i1 %cmp.i1.not, label %lor.lhs.false, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %is_closed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_closed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.then10, label %lor.lhs.false.if.end29_crit_edge

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then10:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call1235 = call i32 @prepare_to_wait_event(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %9 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %event_list, align 4
  %cmp.i3.not36 = icmp eq ptr %10, %event_list
  br i1 %cmp.i3.not36, label %if.then10.lor.lhs.false16_crit_edge, label %if.then10.if.end25.thread24_crit_edge

if.then10.if.end25.thread24_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.thread24

if.then10.lor.lhs.false16_crit_edge:              ; preds = %if.then10
  br label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %cleanup.lor.lhs.false16_crit_edge, %if.then10.lor.lhs.false16_crit_edge
  %call1237 = phi i32 [ %call12, %cleanup.lor.lhs.false16_crit_edge ], [ %call1235, %if.then10.lor.lhs.false16_crit_edge ]
  %11 = ptrtoint ptr %is_closed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %is_closed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false16.if.end25.thread24_crit_edge

lor.lhs.false16.if.end25.thread24_crit_edge:      ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.thread24

if.end20:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1237)
  %tobool21.not = icmp eq i32 %call1237, 0
  br i1 %tobool21.not, label %cleanup, label %if.end25

cleanup:                                          ; preds = %if.end20
  call void @schedule() #9
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %13 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %event_list, align 4
  %cmp.i3.not = icmp eq ptr %14, %event_list
  br i1 %cmp.i3.not, label %cleanup.lor.lhs.false16_crit_edge, label %cleanup.if.end25.thread24_crit_edge

cleanup.if.end25.thread24_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.thread24

cleanup.lor.lhs.false16_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false16

if.end25.thread24:                                ; preds = %cleanup.if.end25.thread24_crit_edge, %lor.lhs.false16.if.end25.thread24_crit_edge, %if.then10.if.end25.thread24_crit_edge
  call void @finish_wait(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end29

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %cleanup58

if.end29:                                         ; preds = %if.end25.thread24, %lor.lhs.false.if.end29_crit_edge, %if.end.if.end29_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %ev_queue) #9
  %15 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %event_list, align 4
  %cmp.i5.not = icmp eq ptr %16, %event_list
  br i1 %cmp.i5.not, label %land.lhs.true, label %if.end29.if.end38_crit_edge

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end29
  %17 = ptrtoint ptr %is_closed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %is_closed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool35.not = icmp eq i32 %18, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end38_crit_edge, label %if.then36

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irq(ptr noundef %ev_queue) #9
  br label %cleanup58

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %19 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not = icmp eq ptr %20, %event_list
  br i1 %cmp.i.not, label %if.end38.while.body_crit_edge, label %if.end38.while.end_crit_edge

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa = phi ptr [ %1, %entry.while.end_crit_edge ], [ %20, %if.end38.while.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %.lcssa, i32 -16
  call void @__sanitizer_cov_trace_cmp4(i32 %eventsz, i32 %count)
  %cmp = icmp ugt i32 %eventsz, %count
  br i1 %cmp, label %if.end48.thread, label %if.else

if.end48.thread:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irq(ptr noundef %ev_queue) #9
  br label %if.end57

if.else:                                          ; preds = %while.end
  %call.i.i7 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa) #9
  br i1 %call.i.i7, label %if.end.i.i8, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i8:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.lcssa, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i8, %if.else.list_del.exit_crit_edge
  %27 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %counter = getelementptr i8, ptr %.lcssa, i32 16
  %29 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %counter, align 8
  %tobool44.not = icmp eq ptr %30, null
  br i1 %tobool44.not, label %list_del.exit.if.end48_crit_edge, label %if.then45

list_del.exit.if.end48_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then45:                                        ; preds = %list_del.exit
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %30, align 4
  %obj_list = getelementptr i8, ptr %.lcssa, i32 8
  %call.i.i9 = call zeroext i1 @__list_del_entry_valid(ptr noundef %obj_list) #9
  br i1 %call.i.i9, label %if.end.i.i12, label %if.then45.list_del.exit14_crit_edge

if.then45.list_del.exit14_crit_edge:              ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit14

if.end.i.i12:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i10 = getelementptr i8, ptr %.lcssa, i32 12
  %33 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i10, align 4
  %35 = ptrtoint ptr %obj_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %obj_list, align 4
  %prev1.i.i.i11 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i11, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit14

list_del.exit14:                                  ; preds = %if.end.i.i12, %if.then45.list_del.exit14_crit_edge
  %39 = ptrtoint ptr %obj_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %obj_list, align 4
  %prev.i13 = getelementptr i8, ptr %.lcssa, i32 12
  %40 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i13, align 4
  br label %if.end48

if.end48:                                         ; preds = %list_del.exit14, %list_del.exit.if.end48_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %ev_queue) #9
  %tobool50.not = icmp eq ptr %add.ptr, null
  br i1 %tobool50.not, label %if.end48.if.end57_crit_edge, label %if.then.i.i.i

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then.i.i.i:                                    ; preds = %if.end48
  call void @__check_object_size(ptr noundef nonnull %add.ptr, i32 noundef %eventsz, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %eventsz, i32 -1226833920) #14, !srcloc !169
  %asmresult.i.i = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr, i32 noundef %eventsz) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %add.ptr, i32 noundef %eventsz) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %eventsz, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %eventsz, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool53.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool53.not, i32 %eventsz, i32 -14
  br label %if.end57

if.end57:                                         ; preds = %copy_to_user.exit, %if.end48.if.end57_crit_edge, %if.end48.thread
  %event.030 = phi ptr [ null, %if.end48.if.end57_crit_edge ], [ null, %if.end48.thread ], [ %add.ptr, %copy_to_user.exit ]
  %ret.1 = phi i32 [ 0, %if.end48.if.end57_crit_edge ], [ -22, %if.end48.thread ], [ %spec.select, %copy_to_user.exit ]
  call void @kfree(ptr noundef %event.030) #9
  br label %cleanup58

cleanup58:                                        ; preds = %if.end57, %if.then36, %if.end25, %while.body.cleanup58_crit_edge
  %retval.0 = phi i32 [ -5, %if.then36 ], [ %ret.1, %if.end57 ], [ -512, %if.end25 ], [ -11, %while.body.cleanup58_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_add_one(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_ucontext = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 30
  %0 = ptrtoint ptr %alloc_ucontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alloc_ucontext, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2192) #12
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %disassociate_srcu = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 10
  %call4 = tail call i32 @__init_srcu_struct(ptr noundef %disassociate_srcu, ptr noundef nonnull @.str.10, ptr noundef nonnull @ib_uverbs_add_one.__srcu_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @device_initialize(ptr noundef %dev) #9
  %3 = load ptr, ptr @uverbs_class, align 4
  %class = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 3, i32 33
  %4 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %class, align 4
  %parent = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %parent10 = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %parent10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent10, align 8
  %release = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 3, i32 35
  %8 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ib_uverbs_release_dev, ptr %release, align 4
  %groups = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dev_attr_group, ptr %groups, align 8
  %groups14 = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 3, i32 34
  %10 = ptrtoint ptr %groups14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %groups, ptr %groups14, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %call7.i.i, align 8
  %comp = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %comp, align 8
  %wait.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #9
  %xrcd_tree = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %xrcd_tree to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %xrcd_tree, align 8
  %xrcd_tree_mutex = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %xrcd_tree_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @ib_uverbs_add_one.__key) #9
  %lists_mutex = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lists_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @ib_uverbs_add_one.__key.12) #9
  %uverbs_file_list = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 12
  %14 = ptrtoint ptr %uverbs_file_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %uverbs_file_list, ptr %uverbs_file_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %uverbs_file_list, ptr %prev.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !170
  %ib_dev42 = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %ib_dev42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %device, ptr %ib_dev42, align 8
  %num_comp_vectors = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 12
  %17 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_comp_vectors, align 4
  %num_comp_vectors54 = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %num_comp_vectors54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_comp_vectors54, align 4
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @uverbs_ida, i32 noundef 0, i32 noundef 8191, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp56 = icmp slt i32 %call.i, 0
  br i1 %cmp56, label %if.end7.err_crit_edge, label %if.end58

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end58:                                         ; preds = %if.end7
  %devnum59 = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %devnum59 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %devnum59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call.i)
  %cmp60 = icmp ugt i32 %call.i, 31
  br i1 %cmp60, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %21 = load i32, ptr @dynamic_uverbs_dev, align 4
  %add = add nsw i32 %call.i, -32
  %sub = add i32 %add, %21
  br label %if.end64

if.else62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %add63 = add nuw nsw i32 %call.i, 242221248
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.then61
  %base.0 = phi i32 [ %sub, %if.then61 ], [ %add63, %if.else62 ]
  %call.i136 = tail call ptr @uverbs_alloc_api(ptr noundef %device) #9
  %cmp.i.i = icmp ugt ptr %call.i136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ib_uverbs_create_uapi.exit, label %ib_uverbs_create_uapi.exit.thread

ib_uverbs_create_uapi.exit.thread:                ; preds = %if.end64
  %uapi3.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %uapi3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i136, ptr %uapi3.i, align 4
  %devt = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 3, i32 29
  %23 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %base.0, ptr %devt, align 8
  %24 = ptrtoint ptr %devnum59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devnum59, align 4
  %call72 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %25) #9
  %cdev = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 7
  %mmap = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 32
  %26 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmap, align 4
  %tobool74.not = icmp eq ptr %27, null
  %cond = select i1 %tobool74.not, ptr @uverbs_fops, ptr @uverbs_mmap_fops
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull %cond) #9
  %owner = getelementptr inbounds %struct.ib_uverbs_device, ptr %call7.i.i, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %owner, align 8
  %call78 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %ib_uverbs_create_uapi.exit.thread.err_uapi_crit_edge

ib_uverbs_create_uapi.exit.thread.err_uapi_crit_edge: ; preds = %ib_uverbs_create_uapi.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_uapi

ib_uverbs_create_uapi.exit:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call.i136 to i32
  br label %err_uapi

if.end81:                                         ; preds = %ib_uverbs_create_uapi.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ib_set_client_data(ptr noundef %device, ptr noundef nonnull @uverbs_client, ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

err_uapi:                                         ; preds = %ib_uverbs_create_uapi.exit, %ib_uverbs_create_uapi.exit.thread.err_uapi_crit_edge
  %ret.0 = phi i32 [ %29, %ib_uverbs_create_uapi.exit ], [ %call78, %ib_uverbs_create_uapi.exit.thread.err_uapi_crit_edge ]
  tail call void @ida_free(ptr noundef nonnull @uverbs_ida, i32 noundef %call.i) #9
  br label %err

err:                                              ; preds = %err_uapi, %if.end7.err_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_uapi ], [ -12, %if.end7.err_crit_edge ]
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i, ptr nonnull %call7.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i) #9, !srcloc !160
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then84, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end85_crit_edge, label %if.then10.i.i.i, !prof !158

if.end5.i.i.i.if.end85_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i, i32 noundef 3) #9
  br label %if.end85

if.then84:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @complete(ptr noundef %comp) #9
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.then10.i.i.i, %if.end5.i.i.i.if.end85_crit_edge
  tail call void @wait_for_completion(ptr noundef %comp) #9
  tail call void @put_device(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end81, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6 ], [ %ret.1, %if.end85 ], [ 0, %if.end81 ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_uverbs_remove_one(ptr nocapture noundef readonly %device, ptr noundef %client_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.ib_uverbs_device, ptr %client_data, i32 0, i32 7
  %dev = getelementptr inbounds %struct.ib_uverbs_device, ptr %client_data, i32 0, i32 3
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #9
  %devnum = getelementptr inbounds %struct.ib_uverbs_device, ptr %client_data, i32 0, i32 6
  %0 = ptrtoint ptr %devnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devnum, align 4
  tail call void @ida_free(ptr noundef nonnull @uverbs_ida, i32 noundef %1) #9
  %disassociate_ucontext = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 34
  %2 = ptrtoint ptr %disassociate_ucontext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disassociate_ucontext, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @uverbs_disassociate_api_pre(ptr noundef %client_data) #9
  %lists_mutex.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %client_data, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lists_mutex.i, i32 noundef 0) #9
  %uverbs_file_list.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %client_data, i32 0, i32 12
  %4 = ptrtoint ptr %uverbs_file_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %uverbs_file_list.i, align 4
  %cmp.i.not3.i = icmp eq ptr %5, %uverbs_file_list.i
  br i1 %cmp.i.not3.i, label %if.then.ib_uverbs_free_hw_resources.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.ib_uverbs_free_hw_resources.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_uverbs_free_hw_resources.exit

while.body.i:                                     ; preds = %kref_put.exit.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %6 = phi ptr [ %19, %kref_put.exit.i.while.body.i_crit_edge ], [ %5, %if.then.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %6, i32 -108
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
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
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i3.i.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #9, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %list_del_init.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !163

list_del_init.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %list_del_init.exit.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !158

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %list_del_init.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %list_del_init.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lists_mutex.i) #9
  tail call void @uverbs_destroy_ufile_hw(ptr noundef %add.ptr.i, i32 noundef 2) #9
  %call.i.i.i.i.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #9, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i2.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i2.i, label %if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !158

if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 3) #9
  br label %kref_put.exit.i

if.then.i.i:                                      ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @ib_uverbs_release_file(ptr noundef %add.ptr.i) #9
  br label %kref_put.exit.i

kref_put.exit.i:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lists_mutex.i, i32 noundef 0) #9
  %18 = ptrtoint ptr %uverbs_file_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %uverbs_file_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %uverbs_file_list.i
  br i1 %cmp.i.not.i, label %kref_put.exit.i.ib_uverbs_free_hw_resources.exit_crit_edge, label %kref_put.exit.i.while.body.i_crit_edge

kref_put.exit.i.while.body.i_crit_edge:           ; preds = %kref_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

kref_put.exit.i.ib_uverbs_free_hw_resources.exit_crit_edge: ; preds = %kref_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_uverbs_free_hw_resources.exit

ib_uverbs_free_hw_resources.exit:                 ; preds = %kref_put.exit.i.ib_uverbs_free_hw_resources.exit_crit_edge, %if.then.ib_uverbs_free_hw_resources.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lists_mutex.i) #9
  %uapi.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %client_data, i32 0, i32 13
  %20 = ptrtoint ptr %uapi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uapi.i, align 4
  tail call void @uverbs_disassociate_api(ptr noundef %21) #9
  br label %if.end

if.end:                                           ; preds = %ib_uverbs_free_hw_resources.exit, %entry.if.end_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %client_data, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr %client_data, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %client_data, ptr %client_data, i32 1, ptr elementtype(i32) %client_data) #9, !srcloc !160
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then1, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end2_crit_edge, label %if.then10.i.i.i, !prof !158

if.end5.i.i.i.if.end2_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %client_data, i32 noundef 3) #9
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  %comp.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %client_data, i32 0, i32 2
  tail call void @complete(ptr noundef %comp.i) #9
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.then10.i.i.i, %if.end5.i.i.i.if.end2_crit_edge
  br i1 %tobool.not, label %if.then4, label %if.end2.if.end5_crit_edge

if.end2.if.end5_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %comp = getelementptr inbounds %struct.ib_uverbs_device, ptr %client_data, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %comp) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2.if.end5_crit_edge
  tail call void @put_device(ptr noundef %dev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_get_nl_info(ptr nocapture noundef readonly %ibdev, ptr noundef %client_data, ptr nocapture noundef %res) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %uverbs_abi_ver = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %uverbs_abi_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uverbs_abi_ver, align 4
  %conv = zext i32 %3 to i64
  %abi = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 3
  %4 = ptrtoint ptr %abi to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %abi, align 8
  %dev = getelementptr inbounds %struct.ib_uverbs_device, ptr %client_data, i32 0, i32 3
  %cdev = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 1
  %5 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %cdev, align 4
  %uverbs_no_driver_id_binding = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %uverbs_no_driver_id_binding to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %uverbs_no_driver_id_binding, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res, align 8
  %driver_id = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %driver_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %8, i32 noundef 73, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__init_srcu_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_uverbs_release_dev(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -64
  %uapi = getelementptr i8, ptr %device, i32 2124
  %0 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uapi, align 4
  tail call void @uverbs_destroy_api(ptr noundef %1) #9
  %disassociate_srcu = getelementptr i8, ptr %device, i32 1200
  tail call void @cleanup_srcu_struct(ptr noundef %disassociate_srcu) #9
  %lists_mutex = getelementptr i8, ptr %device, i32 2024
  tail call void @mutex_destroy(ptr noundef %lists_mutex) #9
  %xrcd_tree_mutex = getelementptr i8, ptr %device, i32 1108
  tail call void @mutex_destroy(ptr noundef %xrcd_tree_mutex) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_client_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_destroy_api(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_srcu_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abi_version_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disassociate_srcu = getelementptr i8, ptr %device, i32 1200
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %disassociate_srcu) #9
  %dep_map.i = getelementptr i8, ptr %device, i32 1996
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #9
  %ib_dev2 = getelementptr i8, ptr %device, i32 936
  %0 = ptrtoint ptr %ib_dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ib_dev2, align 8
  %call.i23 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i, label %entry.do.end11_crit_edge, label %srcu_read_lock_held.exit

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

srcu_read_lock_held.exit:                         ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end11_crit_edge

srcu_read_lock_held.exit.do.end11_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @abi_version_show.__warned, align 1
  br i1 %.b22, label %land.lhs.true8.do.end11_crit_edge, label %if.then

land.lhs.true8.do.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @abi_version_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1066, ptr noundef nonnull @.str.1) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then, %land.lhs.true8.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %srcu_read_lock_held.exit.do.end11_crit_edge, %entry.do.end11_crit_edge
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %do.end11.if.end16_crit_edge, label %if.then14

do.end11.if.end16_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  %uverbs_abi_ver = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %uverbs_abi_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uverbs_abi_ver, align 4
  %call15 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.end11.if.end16_crit_edge
  %ret.0 = phi i32 [ %call15, %if.then14 ], [ -19, %do.end11.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i25 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i25, label %if.end16.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.end16.srcu_read_unlock.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.end16
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !158

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #9
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.end16.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #9
  tail call void @__srcu_read_unlock(ptr noundef %disassociate_srcu, i32 noundef %call.i) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibdev_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disassociate_srcu = getelementptr i8, ptr %device, i32 1200
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %disassociate_srcu) #9
  %dep_map.i = getelementptr i8, ptr %device, i32 1996
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #9
  %ib_dev2 = getelementptr i8, ptr %device, i32 936
  %0 = ptrtoint ptr %ib_dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ib_dev2, align 8
  %call.i24 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i, label %entry.do.end11_crit_edge, label %srcu_read_lock_held.exit

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

srcu_read_lock_held.exit:                         ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end11_crit_edge

srcu_read_lock_held.exit.do.end11_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @ibdev_show.__warned, align 1
  br i1 %.b23, label %land.lhs.true8.do.end11_crit_edge, label %if.then

land.lhs.true8.do.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ibdev_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1047, ptr noundef nonnull @.str.1) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then, %land.lhs.true8.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %srcu_read_lock_held.exit.do.end11_crit_edge, %entry.do.end11_crit_edge
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %do.end11.if.end17_crit_edge, label %if.then14

do.end11.if.end17_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %do.end11
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i26 = icmp eq ptr %3, null
  br i1 %tobool.not.i26, label %if.end.i27, label %if.then14.dev_name.exit_crit_edge

if.then14.dev_name.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i27:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i27, %if.then14.dev_name.exit_crit_edge
  %retval.0.i28 = phi ptr [ %6, %if.end.i27 ], [ %3, %if.then14.dev_name.exit_crit_edge ]
  %call16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i28) #9
  br label %if.end17

if.end17:                                         ; preds = %dev_name.exit, %do.end11.if.end17_crit_edge
  %ret.0 = phi i32 [ %call16, %dev_name.exit ], [ -19, %do.end11.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i29 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i29, label %if.end17.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.end17.srcu_read_unlock.exit_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.end17
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !158

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #9
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.end17.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #9
  tail call void @__srcu_read_unlock(ptr noundef %disassociate_srcu, i32 noundef %call.i) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uverbs_alloc_api(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %ex_hdr = alloca %struct.ib_uverbs_ex_cmd_hdr, align 8
  %hdr = alloca %struct.ib_uverbs_cmd_hdr, align 8
  %bundle = alloca %struct.uverbs_attr_bundle, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %uapi1 = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %uapi1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uapi1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ex_hdr) #9
  %6 = getelementptr inbounds %struct.ib_uverbs_ex_cmd_hdr, ptr %ex_hdr, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ib_uverbs_ex_cmd_hdr, ptr %ex_hdr, i32 0, i32 2
  %8 = getelementptr inbounds %struct.ib_uverbs_ex_cmd_hdr, ptr %ex_hdr, i32 0, i32 3
  %9 = call ptr @memset(ptr %ex_hdr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hdr) #9
  %10 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, ptr %hdr, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, ptr %hdr, i32 0, i32 2
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %hdr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %bundle) #9
  %13 = call ptr @memset(ptr %bundle, i32 255, i32 56)
  %f_cred.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 12
  %14 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_cred.i, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !146) #9
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 99
  %20 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred.i, align 16
  %cmp.i = icmp eq ptr %15, %21
  br i1 %cmp.i, label %if.end19, label %land.end

land.end:                                         ; preds = %entry
  %.b226 = load i1, ptr @ib_uverbs_write.__already_done, align 1
  br i1 %.b226, label %land.end.cleanup181_crit_edge, label %if.then6, !prof !158

land.end.cleanup181_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_uverbs_write.__already_done, align 1
  %22 = tail call i32 @llvm.read_register.i32(metadata !146) #9
  %and.i253 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i253 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %25, i32 noundef 1, ptr noundef null) #9
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call.i, ptr noundef %comm) #13
  br label %cleanup181

if.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp = icmp ult i32 %count, 8
  br i1 %cmp, label %if.end19.cleanup181_crit_edge, label %if.end59.i.i

if.end19.cleanup181_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end59.i.i:                                     ; preds = %if.end19
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 8, i32 -1226833920) #14, !srcloc !171
  %asmresult.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !158

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr, i32 noundef 8) #9
  %29 = call i32 @llvm.read_register.i32(metadata !146) #9
  %and.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !172
  %and.i.i.i.i = and i32 %31, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr, ptr noundef %buf, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #9, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end25, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !158

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i278 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i278
  %add.ptr.i.i = getelementptr i8, ptr %hdr, i32 %sub.i.i
  %32 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i278)
  br label %cleanup181

if.end25:                                         ; preds = %if.end.i.i
  %33 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hdr, align 8
  %and.i254 = and i32 %34, 255
  %and1.i = and i32 %34, 2147483392
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.if.then28_crit_edge

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool3.not.i = icmp sgt i32 %34, -1
  br i1 %tobool3.not.i, label %if.end8.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %num_write_ex.i = getelementptr inbounds %struct.uverbs_api, ptr %5, i32 0, i32 3
  %35 = ptrtoint ptr %num_write_ex.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_write_ex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i254, i32 %36)
  %cmp.not.i = icmp ult i32 %and.i254, %36
  br i1 %cmp.not.i, label %if.end7.i, label %if.then4.i.if.then28_crit_edge

if.then4.i.if.then28_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end7.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %write_ex_methods.i = getelementptr inbounds %struct.uverbs_api, ptr %5, i32 0, i32 6
  br label %uapi_get_method.exit

if.end8.i:                                        ; preds = %if.end.i
  %num_write.i = getelementptr inbounds %struct.uverbs_api, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %num_write.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_write.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i254, i32 %38)
  %cmp9.not.i = icmp ult i32 %and.i254, %38
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end8.i.if.then28_crit_edge

if.end8.i.if.then28_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %write_methods.i = getelementptr inbounds %struct.uverbs_api, ptr %5, i32 0, i32 5
  br label %uapi_get_method.exit

uapi_get_method.exit:                             ; preds = %if.end12.i, %if.end7.i
  %write_methods.sink.i = phi ptr [ %write_methods.i, %if.end12.i ], [ %write_ex_methods.i, %if.end7.i ]
  %39 = ptrtoint ptr %write_methods.sink.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_methods.sink.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %40, i32 %and.i254
  %41 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx13.i, align 4
  %cmp.i255 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %uapi_get_method.exit.if.then28_crit_edge, label %if.end30

uapi_get_method.exit.if.then28_crit_edge:         ; preds = %uapi_get_method.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then28:                                        ; preds = %uapi_get_method.exit.if.then28_crit_edge, %if.end8.i.if.then28_crit_edge, %if.then4.i.if.then28_crit_edge, %if.end25.if.then28_crit_edge
  %retval.0.i283 = phi ptr [ %42, %uapi_get_method.exit.if.then28_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end8.i.if.then28_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.then4.i.if.then28_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end25.if.then28_crit_edge ]
  %43 = ptrtoint ptr %retval.0.i283 to i32
  br label %cleanup181

if.end30:                                         ; preds = %uapi_get_method.exit
  %is_ex = getelementptr inbounds %struct.uverbs_api_write_method, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %is_ex to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %is_ex, align 4
  %45 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool31.not = icmp eq i8 %45, 0
  br i1 %tobool31.not, label %if.end30.if.end40_crit_edge, label %if.then32

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %count)
  %cmp33 = icmp ult i32 %count, 24
  br i1 %cmp33, label %if.then32.cleanup181_crit_edge, label %if.end35

if.then32.cleanup181_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end35:                                         ; preds = %if.then32
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #9
  %call.i.i234 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i234, label %if.end35.if.then11.i.i250_crit_edge, label %land.lhs.true.i.i237

if.end35.if.then11.i.i250_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i250

land.lhs.true.i.i237:                             ; preds = %if.end35
  %46 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 16, i32 -1226833920) #14, !srcloc !171
  %asmresult.i.i235 = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i235)
  %cmp.i6.i236 = icmp eq i32 %asmresult.i.i235, 0
  br i1 %cmp.i6.i236, label %if.end.i.i247, label %land.lhs.true.i.i237.if.then11.i.i250_crit_edge, !prof !158

land.lhs.true.i.i237.if.then11.i.i250_crit_edge:  ; preds = %land.lhs.true.i.i237
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i250

if.end.i.i247:                                    ; preds = %land.lhs.true.i.i237
  %call.i.i.i238 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ex_hdr, i32 noundef 16) #9
  %47 = call i32 @llvm.read_register.i32(metadata !146) #9
  %and.i.i.i.i.i.i239 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i239 to ptr
  %cpu_domain.i.i.i.i.i240 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i240) #8, !srcloc !172
  %and.i.i.i.i241 = and i32 %49, -13
  %or.i.i.i.i242 = or i32 %and.i.i.i.i241, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i242) #9, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  %call1.i.i.i243 = call i32 @arm_copy_from_user(ptr noundef nonnull %ex_hdr, ptr noundef %add.ptr, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #9, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i243)
  %tobool4.not.i.i246 = icmp eq i32 %call1.i.i.i243, 0
  br i1 %tobool4.not.i.i246, label %if.end.i.i247.if.end40_crit_edge, label %if.end.i.i247.if.then11.i.i250_crit_edge, !prof !158

if.end.i.i247.if.then11.i.i250_crit_edge:         ; preds = %if.end.i.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i250

if.end.i.i247.if.end40_crit_edge:                 ; preds = %if.end.i.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then11.i.i250:                                 ; preds = %if.end.i.i247.if.then11.i.i250_crit_edge, %land.lhs.true.i.i237.if.then11.i.i250_crit_edge, %if.end35.if.then11.i.i250_crit_edge
  %res.0.i.i245286 = phi i32 [ %call1.i.i.i243, %if.end.i.i247.if.then11.i.i250_crit_edge ], [ 16, %if.end35.if.then11.i.i250_crit_edge ], [ 16, %land.lhs.true.i.i237.if.then11.i.i250_crit_edge ]
  %sub.i.i248 = sub i32 16, %res.0.i.i245286
  %add.ptr.i.i249 = getelementptr i8, ptr %ex_hdr, i32 %sub.i.i248
  %50 = call ptr @memset(ptr %add.ptr.i.i249, i32 0, i32 %res.0.i.i245286)
  br label %cleanup181

if.end40:                                         ; preds = %if.end.i.i247.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  %51 = ptrtoint ptr %is_ex to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %is_ex, align 4
  %52 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i256 = icmp eq i8 %52, 0
  br i1 %tobool.not.i256, label %if.end55.i, label %if.then.i

if.then.i:                                        ; preds = %if.end40
  %sub.i = add i32 %count, -24
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %10, align 4
  %conv.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %6, align 8
  %conv1.i = zext i16 %56 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  %mul.i = shl nuw nsw i32 %add.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub.i)
  %cmp.not.i257 = icmp eq i32 %mul.i, %sub.i
  br i1 %cmp.not.i257, label %if.end.i258, label %if.then.i.cleanup181_crit_edge

if.then.i.cleanup181_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end.i258:                                      ; preds = %if.then.i
  %mul6.i = shl nuw nsw i32 %conv.i, 3
  %req_size.i = getelementptr inbounds %struct.uverbs_api_write_method, ptr %42, i32 0, i32 2
  %57 = ptrtoint ptr %req_size.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %req_size.i, align 1
  %conv7.i = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul6.i, i32 %conv7.i)
  %cmp8.i = icmp ult i32 %mul6.i, %conv7.i
  br i1 %cmp8.i, label %if.end.i258.cleanup181_crit_edge, label %if.end11.i

if.end.i258.cleanup181_crit_edge:                 ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end11.i:                                       ; preds = %if.end.i258
  %59 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool12.not.i = icmp eq i32 %60, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end11.i.cleanup181_crit_edge

if.end11.i.cleanup181_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end14.i:                                       ; preds = %if.end11.i
  %61 = ptrtoint ptr %ex_hdr to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ex_hdr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %tobool15.not.i = icmp eq i64 %62, 0
  %63 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool48.not.i = icmp eq i16 %64, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  br i1 %tobool48.not.i, label %land.lhs.true.i, label %if.then16.i.if.end20.i_crit_edge

if.then16.i.if.end20.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.then16.i
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool18.not.i = icmp eq i16 %66, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.cleanup181_crit_edge, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true.i.cleanup181_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end20.i:                                       ; preds = %land.lhs.true.i.if.end20.i_crit_edge, %if.then16.i.if.end20.i_crit_edge
  %conv22.i = zext i16 %64 to i32
  %mul23.i = shl nuw nsw i32 %conv22.i, 3
  %resp_size.i = getelementptr inbounds %struct.uverbs_api_write_method, ptr %42, i32 0, i32 3
  %67 = ptrtoint ptr %resp_size.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %resp_size.i, align 2
  %conv24.i = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul23.i, i32 %conv24.i)
  %cmp25.i = icmp ult i32 %mul23.i, %conv24.i
  br i1 %cmp25.i, label %if.end20.i.cleanup181_crit_edge, label %if.end28.i

if.end20.i.cleanup181_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end28.i:                                       ; preds = %if.end20.i
  %conv33.i = trunc i64 %62 to i32
  %69 = inttoptr i32 %conv33.i to ptr
  %70 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %7, align 2
  %conv37.i = zext i16 %71 to i32
  %add38.i = add nuw nsw i32 %conv37.i, %conv22.i
  %mul39.i = shl nuw nsw i32 %add38.i, 3
  %72 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %69, i32 %mul39.i, i32 -1226833920) #14, !srcloc !175
  %asmresult.i = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp42.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp42.i, label %if.end28.i.if.end44_crit_edge, label %if.end28.i.cleanup181_crit_edge

if.end28.i.cleanup181_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end28.i.if.end44_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.else.i:                                        ; preds = %if.end14.i
  br i1 %tobool48.not.i, label %lor.lhs.false.i, label %if.else.i.cleanup181_crit_edge

if.else.i.cleanup181_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

lor.lhs.false.i:                                  ; preds = %if.else.i
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool51.not.i = icmp eq i16 %74, 0
  br i1 %tobool51.not.i, label %lor.lhs.false.i.if.end44_crit_edge, label %lor.lhs.false.i.cleanup181_crit_edge

lor.lhs.false.i.cleanup181_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

lor.lhs.false.i.if.end44_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.end55.i:                                       ; preds = %if.end40
  %75 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %10, align 4
  %conv57.i = zext i16 %76 to i32
  %mul58.i = shl nuw nsw i32 %conv57.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul58.i, i32 %count)
  %cmp59.not.i = icmp eq i32 %mul58.i, %count
  br i1 %cmp59.not.i, label %if.end62.i, label %if.end55.i.cleanup181_crit_edge

if.end55.i.cleanup181_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end62.i:                                       ; preds = %if.end55.i
  %req_size63.i = getelementptr inbounds %struct.uverbs_api_write_method, ptr %42, i32 0, i32 2
  %77 = ptrtoint ptr %req_size63.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %req_size63.i, align 1
  %conv64.i = zext i8 %78 to i32
  %add65.i = add nuw nsw i32 %conv64.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add65.i, i32 %count)
  %cmp66.i = icmp ugt i32 %add65.i, %count
  br i1 %cmp66.i, label %if.then68.i, label %if.end77.i

if.then68.i:                                      ; preds = %if.end62.i
  %79 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hdr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %80)
  %cmp69.i = icmp eq i32 %80, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp72.i = icmp eq i32 %count, 16
  %or.cond.i = and i1 %cmp72.i, %cmp69.i
  br i1 %or.cond.i, label %if.then74.i, label %if.then68.i.cleanup181_crit_edge

if.then68.i.cleanup181_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.then74.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 6, ptr %10, align 4
  br label %if.end44

if.end77.i:                                       ; preds = %if.end62.i
  %82 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %11, align 2
  %conv79.i = zext i16 %83 to i32
  %mul80.i = shl nuw nsw i32 %conv79.i, 2
  %resp_size81.i = getelementptr inbounds %struct.uverbs_api_write_method, ptr %42, i32 0, i32 3
  %84 = ptrtoint ptr %resp_size81.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %resp_size81.i, align 2
  %conv82.i = zext i8 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul80.i, i32 %conv82.i)
  %cmp83.i = icmp ult i32 %mul80.i, %conv82.i
  br i1 %cmp83.i, label %if.end77.i.cleanup181_crit_edge, label %if.end77.i.if.end44_crit_edge

if.end77.i.if.end44_crit_edge:                    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.end77.i.cleanup181_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end44:                                         ; preds = %if.end77.i.if.end44_crit_edge, %if.then74.i, %lor.lhs.false.i.if.end44_crit_edge, %if.end28.i.if.end44_crit_edge
  %86 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device, align 4
  %disassociate_srcu = getelementptr inbounds %struct.ib_uverbs_device, ptr %87, i32 0, i32 10
  %call.i260 = call i32 @__srcu_read_lock(ptr noundef %disassociate_srcu) #9
  %dep_map.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %87, i32 0, i32 10, i32 16
  call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #9
  %add.ptr47 = getelementptr i8, ptr %buf, i32 8
  %attr_present = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 5
  %88 = ptrtoint ptr %attr_present to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 0, ptr %attr_present, align 4
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 2
  %89 = ptrtoint ptr %ufile to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %1, ptr %ufile, align 8
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 3
  %90 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %context, align 4
  %uobject = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 4
  %91 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %uobject, align 8
  %92 = ptrtoint ptr %is_ex to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load50 = load i8, ptr %is_ex, align 4
  %93 = and i8 %bf.load50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool53.not = icmp eq i8 %93, 0
  br i1 %tobool53.not, label %if.then54, label %if.else132

if.then54:                                        ; preds = %if.end44
  %94 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %10, align 4
  %conv = zext i16 %95 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %sub = add nsw i32 %mul, -8
  %96 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %11, align 2
  %conv55 = zext i16 %97 to i32
  %mul56 = shl nuw nsw i32 %conv55, 2
  %98 = and i8 %bf.load50, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool60.not = icmp eq i8 %98, 0
  br i1 %tobool60.not, label %if.else75, label %if.then61

if.then61:                                        ; preds = %if.then54
  %req_size = getelementptr inbounds %struct.uverbs_api_write_method, ptr %42, i32 0, i32 2
  %99 = ptrtoint ptr %req_size to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %req_size, align 1
  %conv62 = zext i8 %100 to i32
  %sub63 = sub nsw i32 %sub, %conv62
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %bundle, i32 0, i32 2
  %101 = ptrtoint ptr %inlen to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %sub63, ptr %inlen, align 8
  %102 = load i8, ptr %req_size, align 1
  %conv65 = zext i8 %102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv62)
  %tobool68.not = icmp eq i32 %sub, %conv62
  br i1 %tobool68.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr70 = getelementptr i8, ptr %add.ptr47, i32 %conv65
  %103 = ptrtoint ptr %bundle to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %add.ptr70, ptr %bundle, align 8
  br label %if.end77

if.else:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %bundle to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %bundle, align 8
  br label %if.end77

if.else75:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %105 = call ptr @memset(ptr %bundle, i32 0, i32 16)
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.else, %if.then69
  %in_len.0 = phi i32 [ %conv65, %if.then69 ], [ %conv65, %if.else ], [ %sub, %if.else75 ]
  %106 = ptrtoint ptr %is_ex to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load78 = load i8, ptr %is_ex, align 4
  %107 = and i8 %bf.load78, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool81.not = icmp eq i8 %107, 0
  br i1 %tobool81.not, label %if.else117, label %if.then82

if.then82:                                        ; preds = %if.end77
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 632) #9
  %108 = call i32 @llvm.read_register.i32(metadata !146) #9
  %and.i.i.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 4
  %110 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !172
  %and.i = and i32 %110, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  %111 = call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_8", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr47, i32 -1226833921) #9, !srcloc !176
  %asmresult = extractvalue { i32, i64 } %111, 0
  %asmresult85 = extractvalue { i32, i64 } %111, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #9, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool87.not = icmp eq i32 %asmresult, 0
  br i1 %tobool87.not, label %if.end89, label %if.then82.out_unlock_crit_edge

if.then82.out_unlock_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end89:                                         ; preds = %if.then82
  %112 = ptrtoint ptr %is_ex to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load91 = load i8, ptr %is_ex, align 4
  %113 = and i8 %bf.load91, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool94.not = icmp eq i8 %113, 0
  %extract.t228 = trunc i64 %asmresult85 to i32
  br i1 %tobool94.not, label %if.end89.cleanup.thread_crit_edge, label %if.then95

if.end89.cleanup.thread_crit_edge:                ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then95:                                        ; preds = %if.end89
  %resp_size = getelementptr inbounds %struct.uverbs_api_write_method, ptr %42, i32 0, i32 3
  %114 = ptrtoint ptr %resp_size to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %resp_size, align 2
  %conv96 = zext i8 %115 to i32
  %sub97 = sub nsw i32 %mul56, %conv96
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %bundle, i32 0, i32 3
  %116 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub97, ptr %outlen, align 4
  %117 = load i8, ptr %resp_size, align 2
  %conv100 = zext i8 %117 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul56, i32 %conv96)
  %tobool103.not = icmp eq i32 %mul56, %conv96
  br i1 %tobool103.not, label %if.then95.cleanup.thread.sink.split_crit_edge, label %if.then104

if.then95.cleanup.thread.sink.split_crit_edge:    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.sink.split

if.then104:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  %conv109 = zext i8 %117 to i64
  %add = add i64 %asmresult85, %conv109
  %conv110 = trunc i64 %add to i32
  %118 = inttoptr i32 %conv110 to ptr
  br label %cleanup.thread.sink.split

if.else117:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %outlen119 = getelementptr inbounds %struct.ib_udata, ptr %bundle, i32 0, i32 3
  %119 = ptrtoint ptr %outlen119 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %outlen119, align 4
  br label %cleanup.thread.sink.split

cleanup.thread.sink.split:                        ; preds = %if.else117, %if.then104, %if.then95.cleanup.thread.sink.split_crit_edge
  %.sink = phi ptr [ null, %if.else117 ], [ %118, %if.then104 ], [ null, %if.then95.cleanup.thread.sink.split_crit_edge ]
  %response.0.off0.ph = phi i32 [ 0, %if.else117 ], [ %extract.t228, %if.then104 ], [ %extract.t228, %if.then95.cleanup.thread.sink.split_crit_edge ]
  %out_len.0.ph = phi i32 [ %mul56, %if.else117 ], [ %conv100, %if.then104 ], [ %conv100, %if.then95.cleanup.thread.sink.split_crit_edge ]
  %outbuf121 = getelementptr inbounds %struct.ib_udata, ptr %bundle, i32 0, i32 1
  %120 = ptrtoint ptr %outbuf121 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %.sink, ptr %outbuf121, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end89.cleanup.thread_crit_edge
  %response.0.off0 = phi i32 [ %extract.t228, %if.end89.cleanup.thread_crit_edge ], [ %response.0.off0.ph, %cleanup.thread.sink.split ]
  %out_len.0 = phi i32 [ %mul56, %if.end89.cleanup.thread_crit_edge ], [ %out_len.0.ph, %cleanup.thread.sink.split ]
  %ucore = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 1
  %121 = inttoptr i32 %response.0.off0 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_len.0)
  %tobool.not.i261 = icmp eq i32 %in_len.0, 0
  %spec.select.i = select i1 %tobool.not.i261, ptr null, ptr %add.ptr47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_len.0)
  %tobool1.not.i = icmp eq i32 %out_len.0, 0
  %cond5.i = select i1 %tobool1.not.i, ptr null, ptr %121
  %122 = ptrtoint ptr %ucore to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %spec.select.i, ptr %ucore, align 8
  %outbuf.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 1, i32 1
  %123 = ptrtoint ptr %outbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %cond5.i, ptr %outbuf.i.i, align 4
  %inlen.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 1, i32 2
  %124 = ptrtoint ptr %inlen.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %in_len.0, ptr %inlen.i.i, align 8
  %outlen.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 1, i32 3
  %125 = ptrtoint ptr %outlen.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %out_len.0, ptr %outlen.i.i, align 4
  br label %if.end168

if.else132:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr133 = getelementptr i8, ptr %buf, i32 24
  %ucore134 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 1
  %126 = ptrtoint ptr %ex_hdr to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %ex_hdr, align 8
  %conv142 = trunc i64 %127 to i32
  %128 = inttoptr i32 %conv142 to ptr
  %129 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %10, align 4
  %conv144 = zext i16 %130 to i32
  %mul145 = shl nuw nsw i32 %conv144, 3
  %131 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %11, align 2
  %conv147 = zext i16 %132 to i32
  %mul148 = shl nuw nsw i32 %conv147, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool.not.i262 = icmp eq i16 %130, 0
  %spec.select.i263 = select i1 %tobool.not.i262, ptr null, ptr %add.ptr133
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool1.not.i264 = icmp eq i16 %132, 0
  %cond5.i265 = select i1 %tobool1.not.i264, ptr null, ptr %128
  %133 = ptrtoint ptr %ucore134 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %spec.select.i263, ptr %ucore134, align 8
  %outbuf.i.i266 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 1, i32 1
  %134 = ptrtoint ptr %outbuf.i.i266 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %cond5.i265, ptr %outbuf.i.i266, align 4
  %inlen.i.i267 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 1, i32 2
  %135 = ptrtoint ptr %inlen.i.i267 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %mul145, ptr %inlen.i.i267, align 8
  %outlen.i.i268 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %bundle, i32 0, i32 1, i32 3
  %136 = ptrtoint ptr %outlen.i.i268 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %mul148, ptr %outlen.i.i268, align 4
  %add.ptr152 = getelementptr i8, ptr %add.ptr133, i32 %mul145
  %add.ptr163 = getelementptr i8, ptr %128, i32 %mul148
  %137 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %6, align 8
  %conv164 = zext i16 %138 to i32
  %mul165 = shl nuw nsw i32 %conv164, 3
  %139 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %7, align 2
  %conv166 = zext i16 %140 to i32
  %mul167 = shl nuw nsw i32 %conv166, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool.not.i269 = icmp eq i16 %138, 0
  %spec.select.i270 = select i1 %tobool.not.i269, ptr null, ptr %add.ptr152
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool1.not.i271 = icmp eq i16 %140, 0
  %cond5.i272 = select i1 %tobool1.not.i271, ptr null, ptr %add.ptr163
  %141 = ptrtoint ptr %bundle to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %spec.select.i270, ptr %bundle, align 8
  %outbuf.i.i273 = getelementptr inbounds %struct.ib_udata, ptr %bundle, i32 0, i32 1
  %142 = ptrtoint ptr %outbuf.i.i273 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %cond5.i272, ptr %outbuf.i.i273, align 4
  %inlen.i.i274 = getelementptr inbounds %struct.ib_udata, ptr %bundle, i32 0, i32 2
  %143 = ptrtoint ptr %inlen.i.i274 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %mul165, ptr %inlen.i.i274, align 8
  %outlen.i.i275 = getelementptr inbounds %struct.ib_udata, ptr %bundle, i32 0, i32 3
  %144 = ptrtoint ptr %outlen.i.i275 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %mul167, ptr %outlen.i.i275, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.else132, %cleanup.thread
  %145 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %42, align 4
  %call169 = call i32 %146(ptr noundef nonnull %bundle) #9
  %147 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %uobject, align 8
  %tobool171.not = icmp eq ptr %148, null
  br i1 %tobool171.not, label %if.end168.out_unlock_crit_edge, label %if.then172

if.end168.out_unlock_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then172:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool174.not = icmp eq i32 %call169, 0
  call void @uverbs_finalize_object(ptr noundef nonnull %148, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext %tobool174.not, ptr noundef nonnull %bundle) #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.then172, %if.end168.out_unlock_crit_edge, %if.then82.out_unlock_crit_edge
  %ret.2 = phi i32 [ %call169, %if.then172 ], [ %call169, %if.end168.out_unlock_crit_edge ], [ %asmresult, %if.then82.out_unlock_crit_edge ]
  %149 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %device, align 4
  %disassociate_srcu179 = getelementptr inbounds %struct.ib_uverbs_device, ptr %150, i32 0, i32 10
  call fastcc void @srcu_read_unlock(ptr noundef %disassociate_srcu179, i32 noundef %call.i260)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool180.not = icmp eq i32 %ret.2, 0
  %spec.select = select i1 %tobool180.not, i32 %count, i32 %ret.2
  br label %cleanup181

cleanup181:                                       ; preds = %out_unlock, %if.end77.i.cleanup181_crit_edge, %if.then68.i.cleanup181_crit_edge, %if.end55.i.cleanup181_crit_edge, %lor.lhs.false.i.cleanup181_crit_edge, %if.else.i.cleanup181_crit_edge, %if.end28.i.cleanup181_crit_edge, %if.end20.i.cleanup181_crit_edge, %land.lhs.true.i.cleanup181_crit_edge, %if.end11.i.cleanup181_crit_edge, %if.end.i258.cleanup181_crit_edge, %if.then.i.cleanup181_crit_edge, %if.then11.i.i250, %if.then32.cleanup181_crit_edge, %if.then28, %if.then11.i.i, %if.end19.cleanup181_crit_edge, %if.then6, %land.end.cleanup181_crit_edge
  %retval.0 = phi i32 [ %43, %if.then28 ], [ %spec.select, %out_unlock ], [ -13, %if.then6 ], [ -13, %land.end.cleanup181_crit_edge ], [ -22, %if.end19.cleanup181_crit_edge ], [ -22, %if.then32.cleanup181_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i250 ], [ -28, %if.then68.i.cleanup181_crit_edge ], [ -22, %if.end55.i.cleanup181_crit_edge ], [ -22, %if.else.i.cleanup181_crit_edge ], [ -22, %lor.lhs.false.i.cleanup181_crit_edge ], [ -14, %if.end28.i.cleanup181_crit_edge ], [ -28, %if.end20.i.cleanup181_crit_edge ], [ -22, %land.lhs.true.i.cleanup181_crit_edge ], [ -22, %if.end11.i.cleanup181_crit_edge ], [ -28, %if.end.i258.cleanup181_crit_edge ], [ -22, %if.then.i.cleanup181_crit_edge ], [ -28, %if.end77.i.cleanup181_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %bundle) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hdr) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ex_hdr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_uverbs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_mmap(ptr nocapture noundef readonly %filp, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %disassociate_srcu = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 10
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %disassociate_srcu) #9
  %dep_map.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 10, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #9
  %ucontext1.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ucontext1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ucontext1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !156
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %ib_dev.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ib_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ib_dev.i, align 8
  %call.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.ib_uverbs_get_ucontext_file.exit_crit_edge, label %srcu_read_lock_held.exit.i

entry.ib_uverbs_get_ucontext_file.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_uverbs_get_ucontext_file.exit

srcu_read_lock_held.exit.i:                       ; preds = %entry
  %dep_map.i.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 10, i32 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %srcu_read_lock_held.exit.i.ib_uverbs_get_ucontext_file.exit_crit_edge

srcu_read_lock_held.exit.i.ib_uverbs_get_ucontext_file.exit_crit_edge: ; preds = %srcu_read_lock_held.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_uverbs_get_ucontext_file.exit

land.lhs.true.i:                                  ; preds = %srcu_read_lock_held.exit.i
  %call12.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.ib_uverbs_get_ucontext_file.exit_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.ib_uverbs_get_ucontext_file.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_uverbs_get_ucontext_file.exit

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %.b30.i = load i1, ptr @ib_uverbs_get_ucontext_file.__warned, align 1
  br i1 %.b30.i, label %land.lhs.true14.i.ib_uverbs_get_ucontext_file.exit_crit_edge, label %if.then.i

land.lhs.true14.i.ib_uverbs_get_ucontext_file.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_uverbs_get_ucontext_file.exit

if.then.i:                                        ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_uverbs_get_ucontext_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 95, ptr noundef nonnull @.str.1) #9
  br label %ib_uverbs_get_ucontext_file.exit

ib_uverbs_get_ucontext_file.exit:                 ; preds = %if.then.i, %land.lhs.true14.i.ib_uverbs_get_ucontext_file.exit_crit_edge, %land.lhs.true.i.ib_uverbs_get_ucontext_file.exit_crit_edge, %srcu_read_lock_held.exit.i.ib_uverbs_get_ucontext_file.exit_crit_edge, %entry.ib_uverbs_get_ucontext_file.exit_crit_edge
  %tobool19.not.i = icmp eq ptr %9, null
  %tobool23.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool23.not.i, ptr inttoptr (i32 -22 to ptr), ptr %5
  %retval.0.i = select i1 %tobool19.not.i, ptr inttoptr (i32 -5 to ptr), ptr %spec.select.i
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %ib_uverbs_get_ucontext_file.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %retval.0.i to i32
  br label %out

if.end:                                           ; preds = %ib_uverbs_get_ucontext_file.exit
  call void @__sanitizer_cov_trace_pc() #11
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %11 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rdma_umap_ops, ptr %vm_ops, align 4
  %12 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %retval.0.i, align 4
  %mmap = getelementptr inbounds %struct.ib_device, ptr %13, i32 0, i32 1, i32 32
  %14 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmap, align 4
  %call5 = tail call i32 %15(ptr noundef %retval.0.i, ptr noundef %vma) #9
  br label %out

out:                                              ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ %10, %if.then ], [ %call5, %if.end ]
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i14 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i14, label %out.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

out.srcu_read_unlock.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %out
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i15, !prof !158

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #9
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i15, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %out.srcu_read_unlock.exit_crit_edge
  %disassociate_srcu7 = getelementptr inbounds %struct.ib_uverbs_device, ptr %17, i32 0, i32 10
  %dep_map.i16 = getelementptr inbounds %struct.ib_uverbs_device, ptr %17, i32 0, i32 10, i32 16
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i16) #9
  tail call void @__srcu_read_unlock(ptr noundef %disassociate_srcu7, i32 noundef %call.i) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -1008
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #9
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %add.ptr, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %5 = phi i32 [ %4, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %5, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #9
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %9 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 %8, i32 %add.i.i.i, ptr elementtype(i32) %add.ptr) #9, !srcloc !177
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %8
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !158

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %11, 1
  %12 = or i32 %add5.i.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !158

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 0) #9
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %14 = phi i32 [ %11, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.i.i.i.not = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #9
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.cleanup_crit_edge, label %if.end

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %refcount_inc_not_zero.exit
  %dev1 = getelementptr i8, ptr %2, i32 -944
  %call2 = call ptr @get_device(ptr noundef %dev1) #9
  %disassociate_srcu = getelementptr i8, ptr %2, i32 256
  %call.i = call i32 @__srcu_read_lock(ptr noundef %disassociate_srcu) #9
  %dep_map.i = getelementptr i8, ptr %2, i32 1052
  call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #9
  %lists_mutex = getelementptr i8, ptr %2, i32 1080
  call void @mutex_lock_nested(ptr noundef %lists_mutex, i32 noundef 0) #9
  %ib_dev5 = getelementptr i8, ptr %2, i32 -8
  %15 = ptrtoint ptr %ib_dev5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ib_dev5, align 8
  %call.i104 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i, label %if.end.do.end16_crit_edge, label %srcu_read_lock_held.exit

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

srcu_read_lock_held.exit:                         ; preds = %if.end
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end16_crit_edge

srcu_read_lock_held.exit.do.end16_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call9 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b103 = load i1, ptr @ib_uverbs_open.__warned, align 1
  br i1 %.b103, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_uverbs_open.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 901, ptr noundef nonnull @.str.1) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %srcu_read_lock_held.exit.do.end16_crit_edge, %if.end.do.end16_crit_edge
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %do.end16.err_crit_edge, label %if.end20

do.end16.err_crit_edge:                           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end20:                                         ; preds = %do.end16
  %17 = call i32 @llvm.read_register.i32(metadata !146) #9
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 110
  %21 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_ns, align 4
  %call22 = call zeroext i1 @rdma_dev_access_netns(ptr noundef nonnull %16, ptr noundef %24) #9
  br i1 %call22, label %if.end24, label %if.end20.err_crit_edge

if.end20.err_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end24:                                         ; preds = %if.end20
  %ops = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 1
  %disassociate_ucontext = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 1, i32 34
  %25 = ptrtoint ptr %disassociate_ucontext to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disassociate_ucontext, align 4
  %tobool25.not = icmp eq ptr %26, null
  br i1 %tobool25.not, label %if.then27, label %if.end32.thread

if.then27:                                        ; preds = %if.end24
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %call29 = call zeroext i1 @try_module_get(ptr noundef %28) #9
  br i1 %call29, label %if.end32, label %if.then27.err_crit_edge

if.then27.err_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end32:                                         ; preds = %if.then27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 420) #12
  %tobool34.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool34.not, label %err_module, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end32.thread:                                  ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i123 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 420) #12
  %tobool34.not124 = icmp eq ptr %call7.i.i123, null
  br i1 %tobool34.not124, label %if.end32.thread.err_crit_edge, label %if.end32.thread.if.end39_crit_edge

if.end32.thread.if.end39_crit_edge:               ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end32.thread.err_crit_edge:                    ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end39:                                         ; preds = %if.end32.thread.if.end39_crit_edge, %if.end32.if.end39_crit_edge
  %call7.i.i125 = phi ptr [ %call7.i.i123, %if.end32.thread.if.end39_crit_edge ], [ %call7.i.i, %if.end32.if.end39_crit_edge ]
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 1
  %31 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr, ptr %device, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i125, i32 noundef 4) #9
  %32 = ptrtoint ptr %call7.i.i125 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %call7.i.i125, align 8
  %ucontext_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 2
  call void @__mutex_init(ptr noundef %ucontext_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @ib_uverbs_open.__key) #9
  %uobjects_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %uobjects_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @ib_uverbs_open.__key.26, i16 noundef signext 3) #9
  %uobjects = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 8
  %33 = ptrtoint ptr %uobjects to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %uobjects, ptr %uobjects, align 8
  %prev.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %uobjects, ptr %prev.i, align 4
  %hw_destroy_rwsem = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 6
  call void @__init_rwsem(ptr noundef %hw_destroy_rwsem, ptr noundef nonnull @.str.29, ptr noundef nonnull @ib_uverbs_open.__key.28) #9
  %umap_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 9
  call void @__mutex_init(ptr noundef %umap_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @ib_uverbs_open.__key.30) #9
  %umaps = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 10
  %35 = ptrtoint ptr %umaps to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %umaps, ptr %umaps, align 4
  %prev.i106 = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %umaps, ptr %prev.i106, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %37 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i125, ptr %private_data, align 4
  %list = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 5
  %uverbs_file_list = getelementptr i8, ptr %2, i32 1172
  %prev.i107 = getelementptr i8, ptr %2, i32 1176
  %38 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i107, align 4
  %call.i.i108 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %39, ptr noundef %uverbs_file_list) #9
  br i1 %call.i.i108, label %if.end.i.i, label %if.end39.list_add_tail.exit_crit_edge

if.end39.list_add_tail.exit_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list, ptr %prev.i107, align 4
  %41 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %uverbs_file_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %call7.i.i125, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i, align 8
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list, ptr %39, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end39.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lists_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i109 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i109, label %list_add_tail.exit.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

list_add_tail.exit.srcu_read_unlock.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %list_add_tail.exit
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !158

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #9
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %list_add_tail.exit.srcu_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #9
  call void @__srcu_read_unlock(ptr noundef %disassociate_srcu, i32 noundef %call.i) #9
  call void @setup_ufile_idr_uobject(ptr noundef nonnull %call7.i.i125) #9
  %call55 = call i32 @stream_open(ptr noundef %inode, ptr noundef %filp) #9
  br label %cleanup

err_module:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  call void @module_put(ptr noundef %45) #9
  br label %err

err:                                              ; preds = %err_module, %if.end32.thread.err_crit_edge, %if.then27.err_crit_edge, %if.end20.err_crit_edge, %do.end16.err_crit_edge
  %ret.0 = phi i32 [ -12, %err_module ], [ -5, %do.end16.err_crit_edge ], [ -1, %if.end20.err_crit_edge ], [ -19, %if.then27.err_crit_edge ], [ -12, %if.end32.thread.err_crit_edge ]
  call void @mutex_unlock(ptr noundef %lists_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i111 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i111, label %err.srcu_read_unlock.exit116_crit_edge, label %land.rhs.i113

err.srcu_read_unlock.exit116_crit_edge:           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit116

land.rhs.i113:                                    ; preds = %err
  %.b40.i112 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i112, label %land.rhs.i113.srcu_read_unlock.exit116_crit_edge, label %if.then.i114, !prof !158

land.rhs.i113.srcu_read_unlock.exit116_crit_edge: ; preds = %land.rhs.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %srcu_read_unlock.exit116

if.then.i114:                                     ; preds = %land.rhs.i113
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #9
  br label %srcu_read_unlock.exit116

srcu_read_unlock.exit116:                         ; preds = %if.then.i114, %land.rhs.i113.srcu_read_unlock.exit116_crit_edge, %err.srcu_read_unlock.exit116_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #9
  call void @__srcu_read_unlock(ptr noundef %disassociate_srcu, i32 noundef %call.i) #9
  %call.i.i.i.i.i117 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !159
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #9
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #9, !srcloc !160
  %asmresult.i.i.i.i.i.i118 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i118)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i118, 1
  br i1 %cmp.i.i.i, label %if.then62, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %srcu_read_unlock.exit116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i118)
  %.not.i.i.i119 = icmp sgt i32 %asmresult.i.i.i.i.i.i118, 0
  br i1 %.not.i.i.i119, label %if.end5.i.i.i.if.end63_crit_edge, label %if.then10.i.i.i120, !prof !158

if.end5.i.i.i.if.end63_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then10.i.i.i120:                               ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #9
  br label %if.end63

if.then62:                                        ; preds = %srcu_read_unlock.exit116
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  %comp.i = getelementptr i8, ptr %2, i32 -1000
  call void @complete(ptr noundef %comp.i) #9
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then10.i.i.i120, %if.end5.i.i.i.if.end63_crit_edge
  call void @put_device(ptr noundef %dev1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %srcu_read_unlock.exit, %refcount_inc_not_zero.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55, %srcu_read_unlock.exit ], [ %ret.0, %if.end63 ], [ -6, %refcount_inc_not_zero.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @uverbs_destroy_ufile_hw(ptr noundef %1, i32 noundef 1) #9
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %lists_mutex = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lists_mutex, i32 noundef 0) #9
  %list = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %lists_mutex2 = getelementptr inbounds %struct.ib_uverbs_device, ptr %13, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %lists_mutex2) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #9, !srcloc !160
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !158

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @ib_uverbs_release_file(ptr noundef %1) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_finalize_object(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdma_umap_open(ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %4 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_private_data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_destroy_rwsem = getelementptr inbounds %struct.ib_uverbs_file, ptr %3, i32 0, i32 6
  %call = tail call i32 @down_read_trylock(ptr noundef %hw_destroy_rwsem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.out_zap_crit_edge, label %if.end3

if.end.out_zap_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_zap

if.end3:                                          ; preds = %if.end
  %ucontext = getelementptr inbounds %struct.ib_uverbs_file, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ucontext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ucontext, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end3.out_unlock_crit_edge, label %if.end6

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end6:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #12
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.out_unlock_crit_edge, label %if.end10

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %entry11 = getelementptr inbounds %struct.rdma_umap_priv, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %entry11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry11, align 4
  tail call void @rdma_umap_priv_init(ptr noundef nonnull %call7.i.i, ptr noundef %vma, ptr noundef %10) #9
  tail call void @up_read(ptr noundef %hw_destroy_rwsem) #9
  br label %cleanup

out_unlock:                                       ; preds = %if.end6.out_unlock_crit_edge, %if.end3.out_unlock_crit_edge
  tail call void @up_read(ptr noundef %hw_destroy_rwsem) #9
  br label %out_zap

out_zap:                                          ; preds = %out_unlock, %if.end.out_zap_crit_edge
  %11 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %vm_private_data, align 4
  %12 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %14 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %15, %13
  tail call void @zap_vma_ptes(ptr noundef %vma, i32 noundef %13, i32 noundef %sub) #9
  br label %cleanup

cleanup:                                          ; preds = %out_zap, %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdma_umap_close(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %umap_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %umap_lock, i32 noundef 0) #9
  %entry1 = getelementptr inbounds %struct.rdma_umap_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry1, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rdma_user_mmap_entry_put(ptr noundef nonnull %7) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %list = getelementptr inbounds %struct.rdma_umap_priv, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_del.exit_crit_edge

if.end5.list_del.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.rdma_umap_priv, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end5.list_del.exit_crit_edge
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.rdma_umap_priv, ptr %1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %umap_lock) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_umap_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_private_data, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %and = and i32 %9, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %10 = load ptr, ptr @empty_zero_page, align 4
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %11 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %page, align 4
  %12 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !158

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %10 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %17 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %18, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !163

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.23) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !178
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@rdma_umap_fault, %if.then.i.i.i.i)) #9
          to label %cleanup [label %if.then.i.i.i.i], !srcloc !168

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %16, i32 noundef 1) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %umap_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %umap_lock, i32 noundef 0) #9
  %disassociate_page = getelementptr inbounds %struct.ib_uverbs_file, ptr %5, i32 0, i32 11
  %20 = ptrtoint ptr %disassociate_page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disassociate_page, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %if.end10, label %if.end6.if.then13_crit_edge

if.end6.if.then13_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end10:                                         ; preds = %if.end6
  %gfp_mask = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 1
  %22 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gfp_mask, align 4
  %or = or i32 %23, 256
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %24 = ptrtoint ptr %disassociate_page to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call38.i.i.i, ptr %disassociate_page, align 4
  %tobool12.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.end10.if.then13_crit_edge

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %if.end10.if.then13_crit_edge, %if.end6.if.then13_crit_edge
  %25 = phi ptr [ %call38.i.i.i, %if.end10.if.then13_crit_edge ], [ %21, %if.end6.if.then13_crit_edge ]
  %page15 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %26 = ptrtoint ptr %page15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %page15, align 4
  %27 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i33 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33)
  %tobool.not.i.i34 = icmp eq i32 %and.i.i33, 0
  br i1 %tobool.not.i.i34, label %if.end.i.i37, label %if.then.i.i36, !prof !158

if.then.i.i36:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i35 = add i32 %29, -1
  br label %_compound_head.exit.i43

if.end.i.i37:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i43

_compound_head.exit.i43:                          ; preds = %if.end.i.i37, %if.then.i.i36
  %retval.0.i.i38 = phi i32 [ %sub.i.i35, %if.then.i.i36 ], [ %30, %if.end.i.i37 ]
  %31 = inttoptr i32 %retval.0.i.i38 to ptr
  %_refcount.i.i.i.i39 = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i39, i32 noundef 4) #9
  %32 = ptrtoint ptr %_refcount.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i39, align 4
  %add.i.i41 = add i32 %33, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i41)
  %cmp.i.i42 = icmp ult i32 %add.i.i41, 128
  br i1 %cmp.i.i42, label %if.then.i1.i44, label %do.end5.i.i46, !prof !163

if.then.i1.i44:                                   ; preds = %_compound_head.exit.i43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.23) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !178
  unreachable

do.end5.i.i46:                                    ; preds = %_compound_head.exit.i43
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i9.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i39, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i39, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i39, ptr %_refcount.i.i.i.i39, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i39) #9, !srcloc !179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@rdma_umap_fault, %if.then.i.i.i.i47)) #9
          to label %if.end17 [label %if.then.i.i.i.i47], !srcloc !168

if.then.i.i.i.i47:                                ; preds = %do.end5.i.i46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %31, i32 noundef 1) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then.i.i.i.i47, %do.end5.i.i46, %if.end10.if.end17_crit_edge
  %ret.0 = phi i32 [ 2, %if.end10.if.end17_crit_edge ], [ 0, %do.end5.i.i46 ], [ 0, %if.then.i.i.i.i47 ]
  tail call void @mutex_unlock(ptr noundef %umap_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then.i.i.i.i, %do.end5.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end17 ], [ 2, %entry.cleanup_crit_edge ], [ 0, %do.end5.i.i ], [ 0, %if.then.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_umap_priv_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rdma_dev_access_netns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_ufile_idr_uobject(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_destroy_ufile_hw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_disassociate_api_pre(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_disassociate_api(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @uverbs_devnode(ptr nocapture noundef readonly %dev, ptr noundef writeonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mode, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 438, ptr %mode, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %if.end.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.47, ptr noundef %retval.0.i) #9
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @show_class_attr_string(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !52, !54, !55, !57, !58, !60, !62, !64, !66, !67, !69, !71, !73, !74, !76, !78, !80, !81, !83, !84, !86, !88, !89, !90, !91, !92, !94, !96, !98, !100, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145}
!llvm.named.register.sp = !{!146}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__UNIQUE_ID_author507, !1, !"__UNIQUE_ID_author507", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_description508, !3, !"__UNIQUE_ID_description508", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 61, i32 1}
!4 = !{ptr @__UNIQUE_ID_file509, !5, !"__UNIQUE_ID_file509", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 62, i32 1}
!6 = !{ptr @__UNIQUE_ID_license510, !5, !"__UNIQUE_ID_license510", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 94, i32 7}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_ib_uverbs_get_ucontext_file, !12, !"__ksymtab_ib_uverbs_get_ucontext_file", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 103, i32 1}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 194, i32 11}
!15 = !{ptr @uverbs_event_fops, !16, !"uverbs_event_fops", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 341, i32 30}
!17 = !{ptr @uverbs_async_event_fops, !18, !"uverbs_async_event_fops", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 350, i32 30}
!19 = !{ptr @ib_uverbs_init_event_queue.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 473, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ib_uverbs_init_event_queue.__key.3, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 475, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_alias521, !26, !"__UNIQUE_ID_alias521", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1035, i32 1}
!27 = !{ptr @__initcall__kmod_ib_uverbs__529_1316_ib_uverbs_init6, !28, !"__initcall__kmod_ib_uverbs__529_1316_ib_uverbs_init6", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1316, i32 1}
!29 = !{ptr @__exitcall_ib_uverbs_cleanup, !30, !"__exitcall_ib_uverbs_cleanup", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1317, i32 1}
!31 = !{ptr @dynamic_uverbs_dev, !32, !"dynamic_uverbs_dev", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 74, i32 14}
!33 = !{ptr @uverbs_class, !34, !"uverbs_class", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 75, i32 22}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!37 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1029, i32 12}
!47 = !{ptr @uverbs_client, !48, !"uverbs_client", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1028, i32 25}
!49 = !{ptr @ib_uverbs_add_one.__srcu_key, !50, !"__srcu_key", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1115, i32 8}
!51 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ib_uverbs_add_one.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1130, i32 2}
!54 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ib_uverbs_add_one.__key.12, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1131, i32 2}
!57 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1153, i32 33}
!60 = !{ptr @dev_attr_group, !61, !"dev_attr_group", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1081, i32 37}
!62 = !{ptr @ib_dev_attrs, !63, !"ib_dev_attrs", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1075, i32 26}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1073, i32 8}
!66 = !{ptr @dev_attr_abi_version, !65, !"dev_attr_abi_version", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1066, i32 11}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1068, i32 25}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1054, i32 8}
!73 = !{ptr @dev_attr_ibdev, !72, !"dev_attr_ibdev", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1047, i32 11}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1049, i32 25}
!78 = !{ptr @init_completion.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/completion.h", i32 87, i32 2}
!80 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 77, i32 8}
!83 = !{ptr @uverbs_ida, !82, !"uverbs_ida", i1 false, i1 false}
!84 = !{ptr @uverbs_mmap_fops, !85, !"uverbs_mmap_fops", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 990, i32 37}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 574, i32 3}
!88 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ib_uverbs_write._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @ib_uverbs_write._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/rdma/ib.h", i32 78, i32 25}
!94 = !{ptr @rdma_umap_ops, !95, !"rdma_umap_ops", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 805, i32 42}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 900, i32 11}
!102 = !{ptr @ib_uverbs_open.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 935, i32 2}
!104 = !{ptr @.str.25, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ib_uverbs_open.__key.26, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 937, i32 2}
!107 = !{ptr @.str.27, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ib_uverbs_open.__key.28, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 939, i32 2}
!110 = !{ptr @.str.29, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ib_uverbs_open.__key.30, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 940, i32 2}
!113 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @uverbs_fops, !115, !"uverbs_fops", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 980, i32 37}
!116 = !{ptr @.str.32, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1253, i32 10}
!118 = !{ptr @.str.33, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1255, i32 3}
!120 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ib_uverbs_init._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @ib_uverbs_init._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.36, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1263, i32 3}
!125 = !{ptr @ib_uverbs_init._entry.35, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ib_uverbs_init._entry_ptr.37, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @ib_uverbs_init.__key, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1267, i32 17}
!129 = !{ptr @.str.39, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1270, i32 3}
!131 = !{ptr @ib_uverbs_init._entry.38, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ib_uverbs_init._entry_ptr.40, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1278, i32 3}
!135 = !{ptr @ib_uverbs_init._entry.41, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @ib_uverbs_init._entry_ptr.43, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1284, i32 3}
!139 = !{ptr @ib_uverbs_init._entry.44, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @ib_uverbs_init._entry_ptr.46, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1244, i32 31}
!143 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/infiniband/core/uverbs_main.c", i32 1085, i32 8}
!145 = !{ptr @class_attr_abi_version, !144, !"class_attr_abi_version", i1 false, i1 false}
!146 = !{!"sp"}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{i64 2158051051}
!157 = !{i64 2148375795, i64 2148375821, i64 2148375850, i64 2148375884, i64 2148375915, i64 2148375938}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{i64 2148462885}
!160 = !{i64 2148377325, i64 2148377357, i64 2148377386, i64 2148377420, i64 2148377451, i64 2148377474}
!161 = !{i64 2149338999}
!162 = !{i64 2148374860, i64 2148374892, i64 2148374921, i64 2148374955, i64 2148374986, i64 2148375009}
!163 = !{!"branch_weights", i32 1, i32 2000}
!164 = !{i64 2158088343}
!165 = !{i64 2148372749}
!166 = !{i64 858369, i64 858394, i64 858416, i64 858432, i64 858444, i64 858464, i64 858488, i64 858504, i64 858516}
!167 = !{i64 2148372937}
!168 = !{i64 2148986707, i64 2148986712, i64 2148986725, i64 2148986769, i64 2148986803, i64 2148986824}
!169 = !{i64 2152677302, i64 2152677327}
!170 = !{i64 2158148930}
!171 = !{i64 2152676621, i64 2152676646}
!172 = !{i64 5172176}
!173 = !{i64 5172373}
!174 = !{i64 2152657606}
!175 = !{i64 2158091877, i64 2158091902}
!176 = !{i64 2158107789, i64 2158108069, i64 2158108403, i64 2158108737}
!177 = !{i64 857863, i64 857887, i64 857908, i64 857925, i64 857942}
!178 = !{i64 2154245937, i64 2154246421, i64 2154245974, i64 2154246030, i64 2154246064, i64 2154246088, i64 2154246129, i64 2154246150, i64 2154246178, i64 2154246212}
!179 = !{i64 2148373330, i64 2148373356, i64 2148373385, i64 2148373419, i64 2148373450, i64 2148373473}
