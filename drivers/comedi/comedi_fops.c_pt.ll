; ModuleID = '/llk/IR_all_yes/drivers/comedi/comedi_fops.c_pt.bc'
source_filename = "../drivers/comedi/comedi_fops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+comedi_dev_put\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_dev_put\09\09\09\09"
module asm "\09.long\09__crc_comedi_dev_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_dev_put\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+comedi_dev_get_from_minor\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_dev_get_from_minor\09\09\09\09"
module asm "\09.long\09__crc_comedi_dev_get_from_minor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_dev_get_from_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_dev_get_from_minor\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_dev_get_from_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+comedi_is_subdevice_running\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_is_subdevice_running\09\09\09\09"
module asm "\09.long\09__crc_comedi_is_subdevice_running\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_is_subdevice_running:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_is_subdevice_running\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_is_subdevice_running:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+comedi_set_spriv_auto_free\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_set_spriv_auto_free\09\09\09\09"
module asm "\09.long\09__crc_comedi_set_spriv_auto_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_set_spriv_auto_free:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_set_spriv_auto_free\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_set_spriv_auto_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+comedi_alloc_spriv\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_alloc_spriv\09\09\09\09"
module asm "\09.long\09__crc_comedi_alloc_spriv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_alloc_spriv:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_alloc_spriv\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_alloc_spriv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+comedi_event\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_event\09\09\09\09"
module asm "\09.long\09__crc_comedi_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_event:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_event\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.comedi_file = type { ptr, ptr, ptr, i32, i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.comedi_chaninfo = type { i32, ptr, ptr, ptr, [4 x i32] }
%struct.comedi_rangeinfo = type { i32, ptr }
%struct.comedi_insnlist = type { i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.73 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.comedi_buf_map = type { ptr, ptr, i32, i32, %struct.kref }
%struct.comedi_buf_page = type { ptr, i32 }
%struct.comedi_bufconfig = type { i32, i32, i32, i32, [4 x i32] }
%struct.comedi_devinfo = type { i32, i32, [20 x i8], [20 x i8], i32, i32, [30 x i32] }
%struct.comedi_subdinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.comedi_bufinfo = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__param_str_comedi_num_legacy_minors = internal constant [32 x i8] c"comedi.comedi_num_legacy_minors\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@comedi_num_legacy_minors = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_comedi_num_legacy_minors = internal constant %struct.kernel_param { ptr @__param_str_comedi_num_legacy_minors, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @comedi_num_legacy_minors } }, section "__param", align 4
@__UNIQUE_ID_comedi_num_legacy_minorstype232 = internal constant [48 x i8] c"comedi.parmtype=comedi_num_legacy_minors:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_comedi_num_legacy_minors233 = internal constant [123 x i8] c"comedi.parm=comedi_num_legacy_minors:number of comedi minor devices to reserve for non-auto-configured devices (default 0)\00", section ".modinfo", align 1
@comedi_default_buf_size_kb = dso_local global { i32, [28 x i8] } { i32 2048, [28 x i8] zeroinitializer }, align 32
@__param_str_comedi_default_buf_size_kb = internal constant [34 x i8] c"comedi.comedi_default_buf_size_kb\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_comedi_default_buf_size_kb = internal constant %struct.kernel_param { ptr @__param_str_comedi_default_buf_size_kb, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @comedi_default_buf_size_kb } }, section "__param", align 4
@__UNIQUE_ID_comedi_default_buf_size_kbtype234 = internal constant [48 x i8] c"comedi.parmtype=comedi_default_buf_size_kb:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_comedi_default_buf_size_kb235 = internal constant [94 x i8] c"comedi.parm=comedi_default_buf_size_kb:default asynchronous buffer size in KiB (default 2048)\00", section ".modinfo", align 1
@comedi_default_buf_maxsize_kb = dso_local global { i32, [28 x i8] } { i32 20480, [28 x i8] zeroinitializer }, align 32
@__param_str_comedi_default_buf_maxsize_kb = internal constant [37 x i8] c"comedi.comedi_default_buf_maxsize_kb\00", align 1
@__param_comedi_default_buf_maxsize_kb = internal constant %struct.kernel_param { ptr @__param_str_comedi_default_buf_maxsize_kb, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @comedi_default_buf_maxsize_kb } }, section "__param", align 4
@__UNIQUE_ID_comedi_default_buf_maxsize_kbtype236 = internal constant [51 x i8] c"comedi.parmtype=comedi_default_buf_maxsize_kb:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_comedi_default_buf_maxsize_kb237 = internal constant [109 x i8] c"comedi.parm=comedi_default_buf_maxsize_kb:default maximum size of asynchronous buffer in KiB (default 20480)\00", section ".modinfo", align 1
@__kstrtab_comedi_dev_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_dev_put = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_dev_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_dev_put to i32), ptr @__kstrtab_comedi_dev_put, ptr @__kstrtabns_comedi_dev_put }, section "___ksymtab_gpl+comedi_dev_put", align 4
@__kstrtab_comedi_dev_get_from_minor = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_dev_get_from_minor = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_dev_get_from_minor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_dev_get_from_minor to i32), ptr @__kstrtab_comedi_dev_get_from_minor, ptr @__kstrtabns_comedi_dev_get_from_minor }, section "___ksymtab_gpl+comedi_dev_get_from_minor", align 4
@__kstrtab_comedi_is_subdevice_running = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_is_subdevice_running = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_is_subdevice_running = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_is_subdevice_running to i32), ptr @__kstrtab_comedi_is_subdevice_running, ptr @__kstrtabns_comedi_is_subdevice_running }, section "___ksymtab_gpl+comedi_is_subdevice_running", align 4
@__kstrtab_comedi_set_spriv_auto_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_set_spriv_auto_free = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_set_spriv_auto_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_set_spriv_auto_free to i32), ptr @__kstrtab_comedi_set_spriv_auto_free, ptr @__kstrtabns_comedi_set_spriv_auto_free }, section "___ksymtab_gpl+comedi_set_spriv_auto_free", align 4
@__kstrtab_comedi_alloc_spriv = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_alloc_spriv = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_alloc_spriv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_alloc_spriv to i32), ptr @__kstrtab_comedi_alloc_spriv, ptr @__kstrtabns_comedi_alloc_spriv }, section "___ksymtab_gpl+comedi_alloc_spriv", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/comedi/comedi_fops.c\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_comedi_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_event = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_event to i32), ptr @__kstrtab_comedi_event, ptr @__kstrtabns_comedi_event }, section "___ksymtab_gpl+comedi_event", align 4
@comedi_board_minor_table_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @comedi_board_minor_table_lock, i64 52), ptr getelementptr (i8, ptr @comedi_board_minor_table_lock, i64 52) }, ptr @comedi_board_minor_table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@comedi_board_minor_table = internal global { [48 x ptr], [32 x i8] } zeroinitializer, align 32
@comedi_alloc_board_minor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 3261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ran out of minor numbers for board device files\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"comedi_alloc_board_minor\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@comedi_alloc_board_minor._entry_ptr = internal global ptr @comedi_alloc_board_minor._entry, section ".printk_index", align 4
@comedi_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"comedi%i\00", [23 x i8] zeroinitializer }, align 32
@comedi_subdevice_minor_table_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @comedi_subdevice_minor_table_lock, i64 52), ptr getelementptr (i8, ptr @comedi_subdevice_minor_table_lock, i64 52) }, ptr @comedi_subdevice_minor_table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@comedi_subdevice_minor_table = internal global { [208 x ptr], [192 x i8] } zeroinitializer, align 32
@comedi_alloc_subdevice_minor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 3309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ran out of minor numbers for subdevice files\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"comedi_alloc_subdevice_minor\00", [35 x i8] zeroinitializer }, align 32
@comedi_alloc_subdevice_minor._entry_ptr = internal global ptr @comedi_alloc_subdevice_minor._entry, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"comedi%i_subd%i\00", [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_comedi__297_3422_comedi_init6 = internal global ptr @comedi_init, section ".initcall6.init", align 4
@comedi_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@__exitcall_comedi_cleanup = internal global ptr @comedi_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [37 x i8] c"comedi.author=https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [38 x i8] c"comedi.description=Comedi core module\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [34 x i8] c"comedi.file=drivers/comedi/comedi\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [19 x i8] c"comedi.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@do_become_nonbusy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 747, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BUG: (?) %s called with async=NULL\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_become_nonbusy\00", [46 x i8] zeroinitializer }, align 32
@do_become_nonbusy._entry_ptr = internal global ptr @do_become_nonbusy._entry, section ".printk_index", align 4
@comedi_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->spinlock\00", [17 x i8] zeroinitializer }, align 32
@comedi_device_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@comedi_device_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->attach_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"comedi_board_minor_table_lock.wait_lock\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"comedi_board_minor_table_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"comedi_subdevice_minor_table_lock.wait_lock\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"comedi_subdevice_minor_table_lock\00", [62 x i8] zeroinitializer }, align 32
@comedi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 3360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016comedi: version 0.7.76 - http://www.comedi.org\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comedi_init\00", [20 x i8] zeroinitializer }, align 32
@comedi_init._entry_ptr = internal global ptr @comedi_init._entry, section ".printk_index", align 4
@comedi_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str, i32 3364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\013comedi: invalid value for module parameter \22comedi_num_legacy_minors\22.  Valid values are 0 through %i.\0A\00", [54 x i8] zeroinitializer }, align 32
@comedi_init._entry_ptr.24 = internal global ptr @comedi_init._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"comedi\00", [25 x i8] zeroinitializer }, align 32
@comedi_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @comedi_read, ptr @comedi_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @comedi_poll, ptr @comedi_unlocked_ioctl, ptr null, ptr @comedi_mmap, i32 0, ptr @comedi_open, ptr null, ptr @comedi_close, ptr null, ptr @comedi_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@comedi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@comedi_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str, i32 3388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013comedi: failed to create class\0A\00", [62 x i8] zeroinitializer }, align 32
@comedi_init._entry_ptr.28 = internal global ptr @comedi_init._entry.26, section ".printk_index", align 4
@comedi_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @comedi_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@comedi_read.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.29, ptr @.str, ptr @.str.30, i8 2, i8 -114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comedi_read\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no driver attached\0A\00", [44 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@comedi_write.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.36, ptr @.str, ptr @.str.30, i8 2, i8 108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"comedi_write\00", [19 x i8] zeroinitializer }, align 32
@comedi_poll.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.39, ptr @.str, ptr @.str.30, i8 2, i8 95, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comedi_poll\00", [20 x i8] zeroinitializer }, align 32
@comedi_unlocked_ioctl.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.40, ptr @.str, ptr @.str.30, i8 2, i8 25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"comedi_unlocked_ioctl\00", [42 x i8] zeroinitializer }, align 32
@do_devconfig_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str, i32 842, ptr @.str.43, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"comedi_config --init_data is deprecated\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_devconfig_ioctl\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@do_devconfig_ioctl._entry_ptr = internal global ptr @do_devconfig_ioctl._entry, section ".printk_index", align 4
@do_bufconfig_ioctl.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.44, ptr @.str, ptr @.str.45, i8 0, i8 -35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_bufconfig_ioctl\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"subdevice does not have async capability\0A\00", [54 x i8] zeroinitializer }, align 32
@resize_async_buffer.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.46, ptr @.str, ptr @.str.47, i8 0, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resize_async_buffer\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"subdevice is busy, cannot resize buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@resize_async_buffer.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.46, ptr @.str, ptr @.str.48, i8 0, i8 89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"subdevice is mmapped, cannot resize buffer\0A\00", [52 x i8] zeroinitializer }, align 32
@resize_async_buffer.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.46, ptr @.str, ptr @.str.49, i8 0, i8 93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"subd %d buffer resized to %i bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@do_cmd_ioctl.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.50, ptr @.str, ptr @.str.51, i8 1, i8 -71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_cmd_ioctl\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"subdevice locked\0A\00", [46 x i8] zeroinitializer }, align 32
@do_cmd_ioctl.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.50, ptr @.str, ptr @.str.52, i8 1, i8 -69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"subdevice busy\0A\00", [16 x i8] zeroinitializer }, align 32
@do_cmd_ioctl.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.50, ptr @.str, ptr @.str.53, i8 1, i8 -68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"channel/gain list too short %u < 1\0A\00", [60 x i8] zeroinitializer }, align 32
@do_cmd_ioctl.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.50, ptr @.str, ptr @.str.54, i8 1, i8 -64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test returned %d\0A\00", [46 x i8] zeroinitializer }, align 32
@do_cmd_ioctl.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.50, ptr @.str, ptr @.str.55, i8 1, i8 -61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no buffer (?)\0A\00", [17 x i8] zeroinitializer }, align 32
@__comedi_get_user_cmd.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.56, ptr @.str, ptr @.str.57, i8 1, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__comedi_get_user_cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%d no such subdevice\0A\00", [42 x i8] zeroinitializer }, align 32
@__comedi_get_user_cmd.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.56, ptr @.str, ptr @.str.58, i8 1, i8 -96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%d not valid subdevice\0A\00", [40 x i8] zeroinitializer }, align 32
@__comedi_get_user_cmd.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.56, ptr @.str, ptr @.str.59, i8 1, i8 -94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"subdevice %d does not support commands\0A\00", [56 x i8] zeroinitializer }, align 32
@__comedi_get_user_cmd.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.56, ptr @.str, ptr @.str.60, i8 1, i8 -92, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"channel/gain list too long %d > %d\0A\00", [60 x i8] zeroinitializer }, align 32
@do_insnlist_ioctl.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.61, ptr @.str, ptr @.str.62, i8 1, i8 -128, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_insnlist_ioctl\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"number of samples too large\0A\00", [35 x i8] zeroinitializer }, align 32
@do_insnlist_ioctl.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.61, ptr @.str, ptr @.str.63, i8 1, i8 -123, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"copy_from_user failed\0A\00", [41 x i8] zeroinitializer }, align 32
@do_insnlist_ioctl.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.61, ptr @.str, ptr @.str.64, i8 1, i8 -120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"copy_to_user failed\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@parse_insn.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.66, i8 1, i8 81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parse_insn\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d not usable subdevice\0A\00", [39 x i8] zeroinitializer }, align 32
@parse_insn.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.67, i8 1, i8 82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no async\0A\00", [22 x i8] zeroinitializer }, align 32
@parse_insn.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.68, i8 1, i8 84, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no inttrig\0A\00", [20 x i8] zeroinitializer }, align 32
@parse_insn.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.69, i8 1, i8 90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid insn\0A\00", [18 x i8] zeroinitializer }, align 32
@parse_insn.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.70, i8 1, i8 93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"subdevice %d out of range\0A\00", [37 x i8] zeroinitializer }, align 32
@parse_insn.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.66, i8 1, i8 95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@parse_insn.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.71, i8 1, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device locked\0A\00", [17 x i8] zeroinitializer }, align 32
@parse_insn.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.72, i8 1, i8 99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad chanspec\0A\00", [18 x i8] zeroinitializer }, align 32
@parse_insn.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.73, i8 1, i8 103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"subdevice %d read instruction timed out\0A\00", [55 x i8] zeroinitializer }, align 32
@parse_insn.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.74, i8 1, i8 105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad data value(s)\0A\00", [45 x i8] zeroinitializer }, align 32
@parse_insn.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.65, ptr @.str, ptr @.str.75, i8 1, i8 108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"subdevice %d write instruction timed out\0A\00", [54 x i8] zeroinitializer }, align 32
@check_insn_config_length._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014comedi: No check for data length of config insn id %i is implemented\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_insn_config_length\00", [39 x i8] zeroinitializer }, align 32
@check_insn_config_length._entry_ptr = internal global ptr @check_insn_config_length._entry, section ".printk_index", align 4
@check_insn_config_length._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str, i32 1245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014comedi: Add a check to %s in %s\0A\00", [61 x i8] zeroinitializer }, align 32
@check_insn_config_length._entry_ptr.80 = internal global ptr @check_insn_config_length._entry.78, section ".printk_index", align 4
@check_insn_config_length._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014comedi: Assuming n=%i is correct\0A\00", [60 x i8] zeroinitializer }, align 32
@check_insn_config_length._entry_ptr.83 = internal global ptr @check_insn_config_length._entry.81, section ".printk_index", align 4
@comedi_mmap.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.84, ptr @.str, ptr @.str.30, i8 2, i8 73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comedi_mmap\00", [20 x i8] zeroinitializer }, align 32
@comedi_mmap.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.84, ptr @.str, ptr @.str.85, i8 2, i8 78, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mmap() offset must be 0.\0A\00", [38 x i8] zeroinitializer }, align 32
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_user = external dso_local local_unnamed_addr global i32, align 4
@comedi_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @comedi_vm_open, ptr @comedi_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @comedi_vm_access, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@comedi_open.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.86, ptr @.str, ptr @.str.87, i8 2, i8 -83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comedi_open\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid minor number\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"comedi: invalid minor number\0A\00", [34 x i8] zeroinitializer }, align 32
@comedi_open.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.86, ptr @.str, ptr @.str.89, i8 2, i8 -79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not attached and not CAP_SYS_ADMIN\0A\00", [60 x i8] zeroinitializer }, align 32
@comedi_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @comedi_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@comedi_dev_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_max_read_buffer_kb, ptr @dev_attr_read_buffer_kb, ptr @dev_attr_max_write_buffer_kb, ptr @dev_attr_write_buffer_kb, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_max_read_buffer_kb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_read_buffer_kb_show, ptr @max_read_buffer_kb_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_buffer_kb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_buffer_kb_show, ptr @read_buffer_kb_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_write_buffer_kb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_write_buffer_kb_show, ptr @max_write_buffer_kb_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_write_buffer_kb = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_buffer_kb_show, ptr @write_buffer_kb_store }, [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_read_buffer_kb\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read_buffer_kb\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_write_buffer_kb\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"write_buffer_kb\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 25605, i64 25606, i64 25607, i64 25615, i64 25616, i64 25617, i64 2148033544, i64 2148033547, i64 2149606403, i64 2149606412, i64 2149606413, i64 2151703561, i64 2151703562, i64 2152227842, i64 2159043585, i64 3224134670]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 100663300, i64 167772165, i64 167772166, i64 234881027]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 67108864, i64 134217729, i64 201326594, i64 201326595]
@__sancov_gen_cov_switch_values.99 = internal global [34 x i64] [i64 32, i64 32, i64 0, i64 1, i64 16, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 27, i64 28, i64 29, i64 31, i64 32, i64 33, i64 34, i64 2001, i64 2002, i64 2003, i64 2004, i64 2005, i64 2006, i64 4097, i64 4098, i64 4099, i64 4109, i64 5000, i64 5001, i64 5002, i64 5003, i64 5004, i64 5005]
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"comedi_num_legacy_minors\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 72, i32 23 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"comedi_default_buf_size_kb\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 78, i32 14 }
@___asan_gen_.106 = private unnamed_addr constant [30 x i8] c"comedi_default_buf_maxsize_kb\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 84, i32 14 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 770, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"comedi_board_minor_table_lock\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [25 x i8] c"comedi_board_minor_table\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 93, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3260, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"comedi_class\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 100, i32 22 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3266, i32 40 }
@___asan_gen_.139 = private unnamed_addr constant [34 x i8] c"comedi_subdevice_minor_table_lock\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [29 x i8] c"comedi_subdevice_minor_table\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 98, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3308, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3315, i32 40 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"comedi_cdev\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 101, i32 20 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 746, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 106, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 107, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 108, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 91, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 95, i32 8 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3360, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3363, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3369, i32 25 }
@___asan_gen_.217 = private unnamed_addr constant [12 x i8] c"comedi_fops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3171, i32 37 }
@___asan_gen_.220 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3385, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 3388, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [18 x i8] c"comedi_dev_groups\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2618, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 230, i32 6 }
@___asan_gen_.242 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 214, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 174, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2482, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2430, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2151, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 841, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 886, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 350, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 355, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 373, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1766, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1772, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1778, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1794, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1806, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1658, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1665, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1671, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1679, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1537, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1557, i32 5 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1569, i32 5 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1347, i32 5 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1355, i32 5 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1360, i32 5 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1387, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1396, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1412, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1420, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1434, i32 5 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1446, i32 6 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1454, i32 6 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1243, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1245, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 1246, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2340, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2361, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant [14 x i8] c"comedi_vm_ops\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2310, i32 42 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2742, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 2756, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant [17 x i8] c"comedi_dev_group\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 612, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"comedi_dev_attrs\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 605, i32 26 }
@___asan_gen_.412 = private unnamed_addr constant [28 x i8] c"dev_attr_max_read_buffer_kb\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [24 x i8] c"dev_attr_read_buffer_kb\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [29 x i8] c"dev_attr_max_write_buffer_kb\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [25 x i8] c"dev_attr_write_buffer_kb\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 434, i32 8 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 399, i32 34 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 490, i32 8 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 547, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.437 = private constant [32 x i8] c"../drivers/comedi/comedi_fops.c\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 603, i32 8 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_comedi_default_buf_maxsize_kb237, ptr @__UNIQUE_ID_comedi_default_buf_maxsize_kbtype236, ptr @__UNIQUE_ID_comedi_default_buf_size_kb235, ptr @__UNIQUE_ID_comedi_default_buf_size_kbtype234, ptr @__UNIQUE_ID_comedi_num_legacy_minors233, ptr @__UNIQUE_ID_comedi_num_legacy_minorstype232, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_comedi_cleanup, ptr @__initcall__kmod_comedi__297_3422_comedi_init6, ptr @__ksymtab_comedi_alloc_spriv, ptr @__ksymtab_comedi_dev_get_from_minor, ptr @__ksymtab_comedi_dev_put, ptr @__ksymtab_comedi_event, ptr @__ksymtab_comedi_is_subdevice_running, ptr @__ksymtab_comedi_set_spriv_auto_free, ptr @__param_comedi_default_buf_maxsize_kb, ptr @__param_comedi_default_buf_size_kb, ptr @__param_comedi_num_legacy_minors, ptr @check_insn_config_length._entry, ptr @check_insn_config_length._entry.78, ptr @check_insn_config_length._entry.81, ptr @check_insn_config_length._entry_ptr, ptr @check_insn_config_length._entry_ptr.80, ptr @check_insn_config_length._entry_ptr.83, ptr @comedi_alloc_board_minor._entry, ptr @comedi_alloc_board_minor._entry_ptr, ptr @comedi_alloc_subdevice_minor._entry, ptr @comedi_alloc_subdevice_minor._entry_ptr, ptr @comedi_cleanup, ptr @comedi_init._entry, ptr @comedi_init._entry.22, ptr @comedi_init._entry.26, ptr @comedi_init._entry_ptr, ptr @comedi_init._entry_ptr.24, ptr @comedi_init._entry_ptr.28, ptr @do_become_nonbusy._entry, ptr @do_become_nonbusy._entry_ptr, ptr @do_devconfig_ioctl._entry, ptr @do_devconfig_ioctl._entry_ptr, ptr @comedi_num_legacy_minors, ptr @comedi_default_buf_size_kb, ptr @comedi_default_buf_maxsize_kb, ptr @.str, ptr @comedi_board_minor_table_lock, ptr @comedi_board_minor_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @comedi_class, ptr @.str.5, ptr @comedi_subdevice_minor_table_lock, ptr @comedi_subdevice_minor_table, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @comedi_cdev, ptr @.str.9, ptr @.str.10, ptr @comedi_device_init.__key, ptr @.str.11, ptr @comedi_device_init.__key.12, ptr @.str.13, ptr @comedi_device_init.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @comedi_fops, ptr @comedi_init.__key, ptr @.str.27, ptr @comedi_dev_groups, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @comedi_vm_ops, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @comedi_dev_group, ptr @comedi_dev_attrs, ptr @dev_attr_max_read_buffer_kb, ptr @dev_attr_read_buffer_kb, ptr @dev_attr_max_write_buffer_kb, ptr @dev_attr_write_buffer_kb, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_num_legacy_minors to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_default_buf_size_kb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_default_buf_maxsize_kb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_board_minor_table_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_board_minor_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_alloc_board_minor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_subdevice_minor_table_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_subdevice_minor_table to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_alloc_subdevice_minor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_become_nonbusy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_device_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_device_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_devconfig_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insn_config_length._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insn_config_length._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insn_config_length._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_dev_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_read_buffer_kb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_buffer_kb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_write_buffer_kb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write_buffer_kb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @comedi_dev_put(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !297
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !298

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #13
  br label %return

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !299
  %mutex.i.i = getelementptr %struct.comedi_device, ptr %dev, i32 0, i32 12
  tail call void @mutex_destroy(ptr noundef %mutex.i.i) #13
  %class_dev.i.i = getelementptr %struct.comedi_device, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %class_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %class_dev.i.i, align 4
  tail call void @put_device(ptr noundef %2) #13
  tail call void @kfree(ptr noundef nonnull %dev) #13
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 1, %if.then.i ], [ 0, %if.end5.i.i.i.i.return_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @comedi_dev_get_from_minor(i32 noundef %minor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %minor)
  %cmp = icmp ult i32 %minor, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_board_minor_table_lock, i32 noundef 0) #13
  %arrayidx.i = getelementptr [48 x ptr], ptr @comedi_board_minor_table, i32 0, i32 %minor
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then.return_crit_edge, label %if.then.i.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i.i:                                      ; preds = %if.then
  %refcount.i.i = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 14
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #13, !srcloc !300
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !301

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !298

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.return_crit_edge:             ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %return

if.end:                                           ; preds = %entry
  %sub.i = add i32 %minor, -48
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_subdevice_minor_table_lock, i32 noundef 0) #13
  %arrayidx.i4 = getelementptr [208 x ptr], ptr @comedi_subdevice_minor_table, i32 0, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i4, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %cond.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cond.end.i:                                       ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i.i5 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i5, label %cond.end.i.return_crit_edge, label %if.then.i.i10

cond.end.i.return_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i.i10:                                    ; preds = %cond.end.i
  %refcount.i.i6 = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 14
  %call.i.i.i.i.i.i.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i6, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i6, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i6, ptr %refcount.i.i6, i32 1, ptr elementtype(i32) %refcount.i.i6) #13, !srcloc !300
  %asmresult.i.i.i.i.i.i.i.i8 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i8)
  %tobool1.not.i.i.i.i.i.i9 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i8, 0
  br i1 %tobool1.not.i.i.i.i.i.i9, label %if.then.i.i10.if.end15.sink.split.i.i.i.i.i.i15_crit_edge, label %if.else.i.i.i.i.i.i13, !prof !301

if.then.i.i10.if.end15.sink.split.i.i.i.i.i.i15_crit_edge: ; preds = %if.then.i.i10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i15

if.else.i.i.i.i.i.i13:                            ; preds = %if.then.i.i10
  %add.i.i.i.i.i.i11 = add i32 %asmresult.i.i.i.i.i.i.i.i8, 1
  %9 = or i32 %add.i.i.i.i.i.i11, %asmresult.i.i.i.i.i.i.i.i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i.i12 = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i.i12, label %if.else.i.i.i.i.i.i13.return_crit_edge, label %if.else.i.i.i.i.i.i13.if.end15.sink.split.i.i.i.i.i.i15_crit_edge, !prof !298

if.else.i.i.i.i.i.i13.if.end15.sink.split.i.i.i.i.i.i15_crit_edge: ; preds = %if.else.i.i.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i15

if.else.i.i.i.i.i.i13.return_crit_edge:           ; preds = %if.else.i.i.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end15.sink.split.i.i.i.i.i.i15:                ; preds = %if.else.i.i.i.i.i.i13.if.end15.sink.split.i.i.i.i.i.i15_crit_edge, %if.then.i.i10.if.end15.sink.split.i.i.i.i.i.i15_crit_edge
  %.sink.i.i.i.i.i.i14 = phi i32 [ 2, %if.then.i.i10.if.end15.sink.split.i.i.i.i.i.i15_crit_edge ], [ 1, %if.else.i.i.i.i.i.i13.if.end15.sink.split.i.i.i.i.i.i15_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i6, i32 noundef %.sink.i.i.i.i.i.i14) #13
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i.i15, %if.else.i.i.i.i.i.i13.return_crit_edge, %cond.end.i.return_crit_edge, %if.end.return_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.return_crit_edge, %if.then.return_crit_edge
  %comedi_subdevice_minor_table_lock.sink = phi ptr [ @comedi_board_minor_table_lock, %if.then.return_crit_edge ], [ @comedi_board_minor_table_lock, %if.else.i.i.i.i.i.i.return_crit_edge ], [ @comedi_board_minor_table_lock, %if.end15.sink.split.i.i.i.i.i.i ], [ @comedi_subdevice_minor_table_lock, %if.end.return_crit_edge ], [ @comedi_subdevice_minor_table_lock, %cond.end.i.return_crit_edge ], [ @comedi_subdevice_minor_table_lock, %if.else.i.i.i.i.i.i13.return_crit_edge ], [ @comedi_subdevice_minor_table_lock, %if.end15.sink.split.i.i.i.i.i.i15 ]
  %retval.0 = phi ptr [ %1, %if.then.return_crit_edge ], [ %1, %if.else.i.i.i.i.i.i.return_crit_edge ], [ %1, %if.end15.sink.split.i.i.i.i.i.i ], [ null, %if.end.return_crit_edge ], [ null, %cond.end.i.return_crit_edge ], [ %7, %if.else.i.i.i.i.i.i13.return_crit_edge ], [ %7, %if.end15.sink.split.i.i.i.i.i.i15 ]
  tail call void @mutex_unlock(ptr noundef nonnull %comedi_subdevice_minor_table_lock.sink) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @comedi_is_subdevice_running(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %spin_lock.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #13
  %runflags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %runflags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runflags.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i, i32 noundef %call2.i) #13
  %and.i = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  ret i1 %tobool.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @comedi_can_auto_free_spriv(ptr nocapture noundef readonly %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runflags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %runflags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runflags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp slt i32 %1, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @comedi_set_spriv_auto_free(ptr nocapture noundef %s) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runflags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %runflags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runflags.i, align 4
  %or.i = or i32 %1, -2147483648
  store i32 %or.i, ptr %runflags.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @comedi_alloc_spriv(ptr nocapture noundef %s, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3520) #16
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i.i, ptr %private, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %runflags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 10
  %1 = ptrtoint ptr %runflags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %runflags.i.i, align 4
  %or.i.i = or i32 %2, -2147483648
  store i32 %or.i.i, ptr %runflags.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval.1.i.i10 = phi ptr [ %call9.i.i, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %retval.1.i.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @comedi_device_cancel_all(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 770, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %attached = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool24.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2741 = icmp sgt i32 %3, 0
  br i1 %cmp2741, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subdevices, align 4
  %async = getelementptr %struct.comedi_subdevice, ptr %5, i32 %i.042, i32 7
  %6 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async, align 4
  %tobool28.not = icmp eq ptr %7, null
  br i1 %tobool28.not, label %for.body.for.inc_crit_edge, label %if.then29

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %5, i32 %i.042
  %call30 = tail call fastcc i32 @do_cancel(ptr noundef %dev, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %8 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_subdevices, align 4
  %cmp27 = icmp slt i32 %inc, %9
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_cancel(ptr noundef %dev, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %spin_lock.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i) #13
  %runflags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 10
  %1 = ptrtoint ptr %runflags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %runflags.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i.i, i32 noundef %call2.i.i) #13
  %and.i.i = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end.if.end29_crit_edge, label %land.lhs.true

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 25
  %3 = ptrtoint ptr %cancel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cancel, align 4
  %tobool25.not = icmp eq ptr %4, null
  br i1 %tobool25.not, label %land.lhs.true.if.end29_crit_edge, label %if.then26

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 %4(ptr noundef %dev, ptr noundef %s) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %ret.0 = phi i32 [ %call28, %if.then26 ], [ 0, %land.lhs.true.if.end29_crit_edge ], [ 0, %if.end.if.end29_crit_edge ]
  tail call fastcc void @do_become_nonbusy(ptr noundef %dev, ptr noundef %s)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @comedi_event(ptr noundef %dev, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async1, align 4
  %spin_lock = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock) #13
  %events6 = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %events6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %events6, align 4
  store i32 0, ptr %events6, align 4
  %runflags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 10
  %4 = ptrtoint ptr %runflags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runflags.i.i, align 4
  %and.i.i = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock, i32 noundef %call3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %and.i = and i32 %5, -134217729
  %6 = ptrtoint ptr %runflags.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i, ptr %runflags.i.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %and12 = and i32 %3, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %runflags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runflags.i.i, align 4
  %or.i = or i32 %8, 4
  store i32 %or.i, ptr %runflags.i.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %cb_mask = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %cb_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb_mask, align 4
  %and16 = and i32 %10, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end22.thread, label %if.end22

if.end22.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock, i32 noundef %call3) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %wait_head = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %wait_head, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  %flags19 = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags19, align 4
  %and20 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond = select i1 %tobool21.not, i32 1, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock, i32 noundef %call3) #13
  %async_queue = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 23
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef %cond) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end22.thread, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @comedi_alloc_board_minor(ptr noundef %hardware_device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 332) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.comedi_device, ptr %call7.i.i, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  %1 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcount.i, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @comedi_device_init.__key, i16 noundef signext 3) #13
  %mutex.i = getelementptr inbounds %struct.comedi_device, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @comedi_device_init.__key.12) #13
  %attach_lock.i = getelementptr inbounds %struct.comedi_device, ptr %call7.i.i, i32 0, i32 13
  tail call void @__init_rwsem(ptr noundef %attach_lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @comedi_device_init.__key.14) #13
  %minor.i = getelementptr inbounds %struct.comedi_device, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %minor.i, align 4
  %call2 = tail call i32 @comedi_set_hw_dev(ptr noundef nonnull %call7.i.i, ptr noundef %hardware_device) #13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_board_minor_table_lock, i32 noundef 0) #13
  %tobool3.not = icmp eq ptr %hardware_device, null
  br i1 %tobool3.not, label %if.end.for.body.preheader_crit_edge, label %cond.end

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

cond.end:                                         ; preds = %if.end
  %3 = load i16, ptr @comedi_num_legacy_minors, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %3)
  %cmp48 = icmp ult i16 %3, 48
  br i1 %cmp48, label %cond.end.for.body.preheader_crit_edge, label %for.end

cond.end.for.body.preheader_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

for.body.preheader:                               ; preds = %cond.end.for.body.preheader_crit_edge, %if.end.for.body.preheader_crit_edge
  %i.049.ph = phi i32 [ 0, %if.end.for.body.preheader_crit_edge ], [ %conv, %cond.end.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.049 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %i.049.ph, %for.body.preheader ]
  %arrayidx = getelementptr [48 x ptr], ptr @comedi_board_minor_table, i32 0, i32 %i.049
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %for.end.thread, label %for.inc

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_board_minor_table_lock) #13
  br label %if.end15

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.end.thread55, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.thread55:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_board_minor_table_lock) #13
  br label %if.end.i

for.end:                                          ; preds = %cond.end
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_board_minor_table_lock) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %3)
  %cmp9 = icmp eq i16 %3, 48
  br i1 %cmp9, label %for.end.if.end.i_crit_edge, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.if.end.i_crit_edge, %for.end.thread55
  tail call void @mutex_unlock(ptr noundef %mutex.i) #13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #13
  %attached.i = getelementptr inbounds %struct.comedi_device, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %attached.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %attached.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %if.end3.thread.i, label %if.end3.i

if.end3.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @comedi_device_detach(ptr noundef nonnull %call7.i.i) #13
  br label %comedi_device_cleanup.exit

if.end3.i:                                        ; preds = %if.end.i
  %driver.i = getelementptr inbounds %struct.comedi_device, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver.i, align 4
  %module.i = getelementptr inbounds %struct.comedi_driver, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %module.i, align 4
  tail call void @comedi_device_detach(ptr noundef nonnull %call7.i.i) #13
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %if.end3.i.comedi_device_cleanup.exit_crit_edge, label %land.lhs.true.i

if.end3.i.comedi_device_cleanup.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_device_cleanup.exit

land.lhs.true.i:                                  ; preds = %if.end3.i
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i = icmp eq i32 %13, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.comedi_device_cleanup.exit_crit_edge, label %if.then6.i

land.lhs.true.i.comedi_device_cleanup.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_device_cleanup.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @module_put(ptr noundef nonnull %11) #13
  br label %comedi_device_cleanup.exit

comedi_device_cleanup.exit:                       ; preds = %if.then6.i, %land.lhs.true.i.comedi_device_cleanup.exit_crit_edge, %if.end3.i.comedi_device_cleanup.exit_crit_edge, %if.end3.thread.i
  tail call void @mutex_unlock(ptr noundef %mutex.i) #13
  %call13 = tail call i32 @comedi_dev_put(ptr noundef nonnull %call7.i.i)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hardware_device, ptr noundef nonnull @.str.1) #18
  br label %cleanup

if.end15:                                         ; preds = %for.end.if.end15_crit_edge, %for.end.thread
  %i.047 = phi i32 [ %i.049, %for.end.thread ], [ %conv, %for.end.if.end15_crit_edge ]
  %14 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.047, ptr %minor.i, align 4
  %15 = load ptr, ptr @comedi_class, align 4
  %or = or i32 %i.047, 102760448
  %call16 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %15, ptr noundef %hardware_device, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %i.047) #13
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call ptr @get_device(ptr noundef %call16) #13
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call19, ptr %class_dev, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %comedi_device_cleanup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %comedi_device_cleanup.exit ], [ %call7.i.i, %if.then18 ], [ %call7.i.i, %if.end15.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_set_hw_dev(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @comedi_release_hardware_device(ptr noundef readnone %hardware_device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @comedi_num_legacy_minors, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %0)
  %cmp10 = icmp ult i16 %0, 48
  br i1 %cmp10, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %conv = zext i16 %0 to i32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %minor.011 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_board_minor_table_lock, i32 noundef 0) #13
  %arrayidx = getelementptr [48 x ptr], ptr @comedi_board_minor_table, i32 0, i32 %minor.011
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %hw_dev = getelementptr inbounds %struct.comedi_device, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %hw_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_dev, align 4
  %cmp2 = icmp eq ptr %4, %hardware_device
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_board_minor_table_lock) #13
  tail call fastcc void @comedi_free_board_dev(ptr noundef nonnull %2)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_board_minor_table_lock) #13
  %inc = add nuw nsw i32 %minor.011, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @comedi_free_board_dev(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.end.i

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.end.i:                                         ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #13
  %attached.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %attached.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %attached.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %if.end3.thread.i, label %if.end3.i

if.end3.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @comedi_device_detach(ptr noundef nonnull %dev) #13
  br label %comedi_device_cleanup.exit

if.end3.i:                                        ; preds = %if.end.i
  %driver.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver.i, align 4
  %module.i = getelementptr inbounds %struct.comedi_driver, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module.i, align 4
  tail call void @comedi_device_detach(ptr noundef nonnull %dev) #13
  %tobool4.not.i = icmp eq ptr %4, null
  br i1 %tobool4.not.i, label %if.end3.i.comedi_device_cleanup.exit_crit_edge, label %land.lhs.true.i

if.end3.i.comedi_device_cleanup.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_device_cleanup.exit

land.lhs.true.i:                                  ; preds = %if.end3.i
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not.i = icmp eq i32 %6, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.comedi_device_cleanup.exit_crit_edge, label %if.then6.i

land.lhs.true.i.comedi_device_cleanup.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_device_cleanup.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @module_put(ptr noundef nonnull %4) #13
  br label %comedi_device_cleanup.exit

comedi_device_cleanup.exit:                       ; preds = %if.then6.i, %land.lhs.true.i.comedi_device_cleanup.exit_crit_edge, %if.end3.i.comedi_device_cleanup.exit_crit_edge, %if.end3.thread.i
  tail call void @mutex_unlock(ptr noundef %mutex.i) #13
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %comedi_device_cleanup.exit.if.end_crit_edge, label %if.then2

comedi_device_cleanup.exit.if.end_crit_edge:      ; preds = %comedi_device_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %comedi_device_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = load ptr, ptr @comedi_class, align 4
  %minor = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor, align 4
  %or = or i32 %11, 102760448
  tail call void @device_destroy(ptr noundef %9, i32 noundef %or) #13
  br label %if.end

if.end:                                           ; preds = %if.then2, %comedi_device_cleanup.exit.if.end_crit_edge
  %call = tail call i32 @comedi_dev_put(ptr noundef nonnull %dev)
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @comedi_alloc_subdevice_minor(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_subdevice_minor_table_lock, i32 noundef 0) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [208 x ptr], ptr @comedi_subdevice_minor_table, i32 0, i32 %i.030
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end4, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 208
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_subdevice_minor_table_lock) #13
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #18
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %s, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_subdevice_minor_table_lock) #13
  %add = add nuw i32 %i.030, 48
  %minor = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 31
  %7 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %minor, align 4
  %8 = load ptr, ptr @comedi_class, align 4
  %class_dev5 = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %class_dev5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev5, align 4
  %or = or i32 %add, 102760448
  %minor6 = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %minor6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor6, align 4
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %call = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %8, ptr noundef %10, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef %12, i32 noundef %14) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %if.then8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev9 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 30
  %15 = ptrtoint ptr %class_dev9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %class_dev9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.then8 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @comedi_free_subdevice_minor(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %minor = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 31
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  %2 = add i32 %1, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -208, i32 %2)
  %3 = icmp ult i32 %2, -208
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sub = add nsw i32 %1, -48
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_subdevice_minor_table_lock, i32 noundef 0) #13
  %arrayidx = getelementptr [208 x ptr], ptr @comedi_subdevice_minor_table, i32 0, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp6 = icmp eq ptr %5, %s
  br i1 %cmp6, label %if.then7, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_subdevice_minor_table_lock) #13
  %class_dev = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 30
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %9 = load ptr, ptr @comedi_class, align 4
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor, align 4
  %or = or i32 %11, 102760448
  tail call void @device_destroy(ptr noundef %9, i32 noundef %or) #13
  %12 = ptrtoint ptr %class_dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %class_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #18
  %0 = load i16, ptr @comedi_num_legacy_minors, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %0)
  %cmp = icmp ugt i16 %0, 48
  br i1 %cmp, label %do.end5, label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 48) #18
  br label %cleanup72

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @register_chrdev_region(i32 noundef 102760448, i32 noundef 256, ptr noundef nonnull @.str.25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup72_crit_edge

if.end.cleanup72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

if.end10:                                         ; preds = %if.end
  tail call void @cdev_init(ptr noundef nonnull @comedi_cdev, ptr noundef nonnull @comedi_fops) #13
  store ptr null, ptr getelementptr inbounds (%struct.cdev, ptr @comedi_cdev, i32 0, i32 1), align 4
  %call11 = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef nonnull @comedi_cdev, ptr noundef nonnull @.str.25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_unregister_chrdev_region_crit_edge

if.end10.out_unregister_chrdev_region_crit_edge:  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unregister_chrdev_region

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @cdev_add(ptr noundef nonnull @comedi_cdev, i32 noundef 102760448, i32 noundef 256) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_unregister_chrdev_region_crit_edge

if.end14.out_unregister_chrdev_region_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unregister_chrdev_region

if.end18:                                         ; preds = %if.end14
  %call20 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @comedi_init.__key) #13
  store ptr %call20, ptr @comedi_class, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #18
  br label %out_cdev_del

if.end29:                                         ; preds = %if.end18
  %dev_groups = getelementptr inbounds %struct.class, ptr %call20, i32 0, i32 3
  %1 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @comedi_dev_groups, ptr %dev_groups, align 4
  %2 = load i16, ptr @comedi_num_legacy_minors, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp3188.not = icmp eq i16 %2, 0
  br i1 %cmp3188.not, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %i.089 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %call33 = tail call ptr @comedi_alloc_board_minor(ptr noundef null)
  %cmp.i83 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %out_cleanup_board_minors, label %do.body38

do.body38:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool39.not = icmp eq i32 %3, 0
  br i1 %tobool39.not, label %do.body38.for.inc_crit_edge, label %land.rhs

do.body38.for.inc_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs:                                         ; preds = %do.body38
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %call33, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp41.not = icmp eq i32 %call.i, 0
  br i1 %cmp41.not, label %do.end55, label %land.rhs.for.inc_crit_edge, !prof !301

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end55:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3404, i32 noundef 9, ptr noundef null) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end55, %land.rhs.for.inc_crit_edge, %do.body38.for.inc_crit_edge
  %mutex71 = getelementptr inbounds %struct.comedi_device, ptr %call33, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %mutex71) #13
  %inc = add nuw nsw i32 %i.089, 1
  %4 = load i16, ptr @comedi_num_legacy_minors, align 2
  %conv30 = zext i16 %4 to i32
  %cmp31 = icmp ult i32 %inc, %conv30
  br i1 %cmp31, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  tail call void @comedi_proc_init() #13
  br label %cleanup72

out_cleanup_board_minors:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @comedi_cleanup_board_minors()
  %5 = load ptr, ptr @comedi_class, align 4
  tail call void @class_destroy(ptr noundef %5) #13
  br label %out_cdev_del

out_cdev_del:                                     ; preds = %out_cleanup_board_minors, %if.then22
  %retval1.2.in = phi ptr [ %call20, %if.then22 ], [ %call33, %out_cleanup_board_minors ]
  %retval1.2 = ptrtoint ptr %retval1.2.in to i32
  tail call void @cdev_del(ptr noundef nonnull @comedi_cdev) #13
  br label %out_unregister_chrdev_region

out_unregister_chrdev_region:                     ; preds = %out_cdev_del, %if.end14.out_unregister_chrdev_region_crit_edge, %if.end10.out_unregister_chrdev_region_crit_edge
  %retval1.3 = phi i32 [ %call11, %if.end10.out_unregister_chrdev_region_crit_edge ], [ %call15, %if.end14.out_unregister_chrdev_region_crit_edge ], [ %retval1.2, %out_cdev_del ]
  tail call void @unregister_chrdev_region(i32 noundef 102760448, i32 noundef 256) #13
  br label %cleanup72

cleanup72:                                        ; preds = %out_unregister_chrdev_region, %for.end, %if.end.cleanup72_crit_edge, %do.end5
  %retval.0 = phi i32 [ -22, %do.end5 ], [ %retval1.3, %out_unregister_chrdev_region ], [ 0, %for.end ], [ %call8, %if.end.cleanup72_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @comedi_cleanup() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @comedi_cleanup_board_minors()
  %0 = load ptr, ptr @comedi_class, align 4
  tail call void @class_destroy(ptr noundef %0) #13
  tail call void @cdev_del(ptr noundef nonnull @comedi_cdev) #13
  tail call void @unregister_chrdev_region(i32 noundef 102760448, i32 noundef 256) #13
  tail call void @comedi_proc_cleanup() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @comedi_cleanup_board_minors() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_board_minor_table_lock, i32 noundef 0) #13
  %arrayidx.i = getelementptr [48 x ptr], ptr @comedi_board_minor_table, i32 0, i32 %i.03
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_board_minor_table_lock) #13
  tail call fastcc void @comedi_free_board_dev(ptr noundef %1)
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_proc_cleanup() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_become_nonbusy(ptr noundef %dev, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 736, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %spin_lock.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #13
  %runflags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 10
  %3 = ptrtoint ptr %runflags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %runflags.i.i, align 4
  %and.i.i = and i32 %4, -134217729
  store i32 %and.i.i, ptr %runflags.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i, i32 noundef %call2.i) #13
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %do.end31, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @comedi_buf_reset(ptr noundef %s) #13
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %inttrig, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 12
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  tail call void @kfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %chanlist to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %chanlist, align 4
  %busy = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 9
  %9 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %busy, align 4
  %wait_head = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %wait_head, i32 noundef 1, i32 noundef 0, ptr noundef null) #13
  br label %if.end33

do.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #18
  %busy32 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 9
  %12 = ptrtoint ptr %busy32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %busy32, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %if.then26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @comedi_update_subdevice_runflags(ptr noundef %s, i32 noundef %mask, i32 noundef %bits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %spin_lock = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock) #13
  %neg.i = xor i32 %mask, -1
  %runflags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %runflags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runflags.i, align 4
  %and.i = and i32 %1, %neg.i
  %and = and i32 %bits, %mask
  %or.i = or i32 %and.i, %and
  store i32 %or.i, ptr %runflags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_buf_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_device_detach(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_proc_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_read(ptr noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %attach_lock = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 13
  tail call void @down_read(ptr noundef %attach_lock) #13
  %detach_count = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %detach_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %detach_count, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 10
  %19 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comedi_read.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@comedi_read, %if.end370.thread547)) #13
          to label %if.then9 [label %if.end370.thread547], !srcloc !302

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @comedi_read.__UNIQUE_ID_ddebug287, ptr noundef %21, ptr noundef nonnull @.str.30) #13
  br label %if.end370.thread547

if.end10:                                         ; preds = %entry
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_data, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %last_attached.i.i = getelementptr inbounds %struct.comedi_file, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %last_attached.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i = load i8, ptr %last_attached.i.i, align 4
  %attached.i.i = getelementptr inbounds %struct.comedi_device, ptr %25, i32 0, i32 10
  %27 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load2.i.i = load i8, ptr %attached.i.i, align 4
  %cmp.not.unshifted.i.i = xor i8 %bf.load2.i.i, %bf.load.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i.i)
  %cmp.not.i.i = icmp sgt i8 %cmp.not.unshifted.i.i, -1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end10.if.then.i.i508_crit_edge

if.end10.if.then.i.i508_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i508

lor.lhs.false.i.i:                                ; preds = %if.end10
  %last_detach_count.i.i = getelementptr inbounds %struct.comedi_file, ptr %23, i32 0, i32 3
  %28 = ptrtoint ptr %last_detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_detach_count.i.i, align 4
  %detach_count.i.i = getelementptr inbounds %struct.comedi_device, ptr %25, i32 0, i32 6
  %30 = ptrtoint ptr %detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %detach_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp5.not.i.i = icmp eq i32 %29, %31
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge, label %lor.lhs.false.i.i.if.then.i.i508_crit_edge

lor.lhs.false.i.i.if.then.i.i508_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i508

lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_read_subdevice.exit

if.then.i.i508:                                   ; preds = %lor.lhs.false.i.i.if.then.i.i508_crit_edge, %if.end10.if.then.i.i508_crit_edge
  tail call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_read_subdevice.exit

comedi_file_read_subdevice.exit:                  ; preds = %if.then.i.i508, %lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge
  %read_subdev.i = getelementptr inbounds %struct.comedi_file, ptr %23, i32 0, i32 1
  %32 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %read_subdev.i, align 4
  %tobool12.not = icmp eq ptr %33, null
  br i1 %tobool12.not, label %comedi_file_read_subdevice.exit.if.end370.thread547_crit_edge, label %lor.lhs.false

comedi_file_read_subdevice.exit.if.end370.thread547_crit_edge: ; preds = %comedi_file_read_subdevice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread547

lor.lhs.false:                                    ; preds = %comedi_file_read_subdevice.exit
  %async13 = getelementptr inbounds %struct.comedi_subdevice, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %async13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %async13, align 4
  %tobool14.not = icmp eq ptr %35, null
  br i1 %tobool14.not, label %lor.lhs.false.if.end370.thread547_crit_edge, label %if.end16

lor.lhs.false.if.end370.thread547_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread547

if.end16:                                         ; preds = %lor.lhs.false
  %busy = getelementptr inbounds %struct.comedi_subdevice, ptr %33, i32 0, i32 9
  %36 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %busy, align 4
  %cmp.not = icmp eq ptr %37, %file
  br i1 %cmp.not, label %lor.lhs.false18, label %if.end16.if.end370.thread547_crit_edge

if.end16.if.end370.thread547_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread547

lor.lhs.false18:                                  ; preds = %if.end16
  %flags19 = getelementptr inbounds %struct.comedi_async, ptr %35, i32 0, i32 17, i32 1
  %38 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags19, align 4
  %and = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false18.if.end370.thread547_crit_edge

lor.lhs.false18.if.end370.thread547_crit_edge:    ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread547

if.end22:                                         ; preds = %lor.lhs.false18
  %wait_head = getelementptr inbounds %struct.comedi_async, ptr %35, i32 0, i32 18
  call void @add_wait_queue(ptr noundef %wait_head, ptr noundef nonnull %wait) #13
  %buf_read_ptr = getelementptr inbounds %struct.comedi_async, ptr %35, i32 0, i32 9
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, ptr %35, i32 0, i32 1
  %spin_lock.i = getelementptr inbounds %struct.comedi_subdevice, ptr %33, i32 0, i32 11
  %runflags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %33, i32 0, i32 10
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  br label %__here

__here:                                           ; preds = %cleanup248.__here_crit_edge, %if.end22
  %buf.addr.0570 = phi ptr [ %buf, %if.end22 ], [ %buf.addr.1, %cleanup248.__here_crit_edge ]
  %nbytes.addr.0569 = phi i32 [ %nbytes, %if.end22 ], [ %nbytes.addr.1, %cleanup248.__here_crit_edge ]
  %count.0568 = phi i32 [ 0, %if.end22 ], [ %count.1, %cleanup248.__here_crit_edge ]
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 212
  %42 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 ptrtoint (ptr blockaddress(@comedi_read, %__here) to i32), ptr %task_state_change, align 4
  %43 = load ptr, ptr %task, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %43, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !303
  %call102 = call i32 @comedi_buf_read_n_available(ptr noundef nonnull %33) #13
  %45 = call i32 @llvm.umin.i32(i32 %call102, i32 %nbytes.addr.0569)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp105 = icmp eq i32 %45, 0
  br i1 %cmp105, label %if.then106, label %__here192

if.then106:                                       ; preds = %__here
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #13
  %46 = ptrtoint ptr %runflags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %runflags.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i, i32 noundef %call2.i) #13
  %and.i509 = and i32 %47, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i509)
  %tobool.i.not = icmp eq i32 %and.i509, 0
  br i1 %tobool.i.not, label %if.then109, label %if.end118

if.then109:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  %and.i510 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i510)
  %tobool.i511.not = icmp eq i32 %and.i510, 0
  %spec.select = select i1 %tobool.i511.not, i32 0, i32 -32
  %not.tobool.i511.not = xor i1 %tobool.i511.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.0569)
  %tobool115.not = icmp ne i32 %nbytes.addr.0569, 0
  %or.cond = select i1 %not.tobool.i511.not, i1 true, i1 %tobool115.not
  br label %while.end

if.end118:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.0569)
  %cmp119 = icmp eq i32 %nbytes.addr.0569, 0
  br i1 %cmp119, label %if.end118.while.end_crit_edge, label %if.end121

if.end118.while.end_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end121:                                        ; preds = %if.end118
  %48 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %f_flags, align 4
  %and122 = and i32 %49, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end121.while.end_crit_edge

if.end121.while.end_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end125:                                        ; preds = %if.end121
  call void @schedule() #13
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stack.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %56 = and i32 %55, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end125.while.end_crit_edge, !prof !298

if.end125.while.end_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

signal_pending.exit:                              ; preds = %if.end125
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %53, align 4
  %and1.i.i.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool129.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool129.not, label %if.end131, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end131:                                        ; preds = %signal_pending.exit
  %59 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %busy, align 4
  %cmp133.not = icmp eq ptr %60, %file
  br i1 %cmp133.not, label %lor.lhs.false134, label %if.end131.while.end_crit_edge

if.end131.while.end_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

lor.lhs.false134:                                 ; preds = %if.end131
  %61 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags19, align 4
  %and137 = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %lor.lhs.false134.cleanup248_crit_edge, label %lor.lhs.false134.while.end_crit_edge

lor.lhs.false134.while.end_crit_edge:             ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

lor.lhs.false134.cleanup248_crit_edge:            ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup248

__here192:                                        ; preds = %__here
  %63 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task, align 8
  %task_state_change196 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 212
  %65 = ptrtoint ptr %task_state_change196 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 ptrtoint (ptr blockaddress(@comedi_read, %__here192) to i32), ptr %task_state_change196, align 4
  %66 = load ptr, ptr %task, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %66, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !304
  %68 = ptrtoint ptr %buf_read_ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf_read_ptr, align 4
  %70 = ptrtoint ptr %prealloc_bufsz to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %prealloc_bufsz, align 4
  %sub = sub i32 %71, %69
  %72 = call i32 @llvm.umin.i32(i32 %45, i32 %sub)
  %sub228 = sub i32 %45, %72
  %73 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %35, align 4
  %add.ptr = getelementptr i8, ptr %74, i32 %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp9.i.i = icmp slt i32 %72, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %__here192
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then231_crit_edge, label %if.then27.i.i, !prof !298

land.rhs16.i.i.if.then231_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then231

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.then231

if.then.i.i.i:                                    ; preds = %__here192
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %72, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %75 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0570, i32 %72, i32 -1226833920) #19, !srcloc !305
  %asmresult.i.i = extractvalue { i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %72) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0570, ptr noundef %add.ptr, i32 noundef %72) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %72, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %72, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool230.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool230.not, label %if.else, label %copy_to_user.exit.if.then231_crit_edge

copy_to_user.exit.if.then231_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then231

if.then231:                                       ; preds = %copy_to_user.exit.if.then231_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then231_crit_edge
  %n.addr.0.i518 = phi i32 [ %n.addr.0.i, %copy_to_user.exit.if.then231_crit_edge ], [ %72, %if.then27.i.i ], [ %72, %land.rhs16.i.i.if.then231_crit_edge ]
  %add = add i32 %n.addr.0.i518, %sub228
  br label %if.end238

if.else:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %sub)
  %tobool232.not.not = icmp ugt i32 %45, %sub
  br i1 %tobool232.not.not, label %if.then233, label %if.else.if.end238.thread523_crit_edge

if.else.if.end238.thread523_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end238.thread523

if.then233:                                       ; preds = %if.else
  %add.ptr234 = getelementptr i8, ptr %buf.addr.0570, i32 %72
  %76 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub228)
  %cmp9.i.i491 = icmp slt i32 %sub228, 0
  br i1 %cmp9.i.i491, label %land.rhs16.i.i494, label %if.then.i.i.i497

land.rhs16.i.i494:                                ; preds = %if.then233
  %.b71.i.i493 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i493, label %land.rhs16.i.i494.if.end238.thread_crit_edge, label %if.then27.i.i495, !prof !298

land.rhs16.i.i494.if.end238.thread_crit_edge:     ; preds = %land.rhs16.i.i494
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end238.thread

if.then27.i.i495:                                 ; preds = %land.rhs16.i.i494
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.end238.thread

if.then.i.i.i497:                                 ; preds = %if.then233
  call void @__check_object_size(ptr noundef %77, i32 noundef %sub228, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i498 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i498, label %if.then.i.i.i497.if.end238_crit_edge, label %if.end.i.i502

if.then.i.i.i497.if.end238_crit_edge:             ; preds = %if.then.i.i.i497
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end238

if.end.i.i502:                                    ; preds = %if.then.i.i.i497
  %78 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr234, i32 %sub228, i32 -1226833920) #19, !srcloc !305
  %asmresult.i.i500 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i500)
  %cmp.i6.i501 = icmp eq i32 %asmresult.i.i500, 0
  br i1 %cmp.i6.i501, label %if.then2.i.i505, label %if.end.i.i502.if.end238_crit_edge

if.end.i.i502.if.end238_crit_edge:                ; preds = %if.end.i.i502
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end238

if.then2.i.i505:                                  ; preds = %if.end.i.i502
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i503 = call zeroext i1 @__kasan_check_read(ptr noundef %77, i32 noundef %sub228) #13
  %call.i12.i.i504 = call i32 @arm_copy_to_user(ptr noundef %add.ptr234, ptr noundef %77, i32 noundef %sub228) #13
  br label %if.end238

if.end238:                                        ; preds = %if.then2.i.i505, %if.end.i.i502.if.end238_crit_edge, %if.then.i.i.i497.if.end238_crit_edge, %if.then231
  %m.0 = phi i32 [ %add, %if.then231 ], [ %sub228, %if.then.i.i.i497.if.end238_crit_edge ], [ %call.i12.i.i504, %if.then2.i.i505 ], [ %sub228, %if.end.i.i502.if.end238_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %m.0)
  %tobool239.not = icmp eq i32 %m.0, 0
  %sub241 = sub i32 %45, %m.0
  br i1 %tobool239.not, label %if.end238.if.end238.thread523_crit_edge, label %if.end238.if.end238.thread_crit_edge

if.end238.if.end238.thread_crit_edge:             ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end238.thread

if.end238.if.end238.thread523_crit_edge:          ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end238.thread523

if.end238.thread523:                              ; preds = %if.end238.if.end238.thread523_crit_edge, %if.else.if.end238.thread523_crit_edge
  %sub241527 = phi i32 [ %sub241, %if.end238.if.end238.thread523_crit_edge ], [ %45, %if.else.if.end238.thread523_crit_edge ]
  br label %if.end238.thread

if.end238.thread:                                 ; preds = %if.end238.thread523, %if.end238.if.end238.thread_crit_edge, %if.then27.i.i495, %land.rhs16.i.i494.if.end238.thread_crit_edge
  %sub241522 = phi i32 [ %sub241527, %if.end238.thread523 ], [ %sub241, %if.end238.if.end238.thread_crit_edge ], [ %72, %if.then27.i.i495 ], [ %72, %land.rhs16.i.i494.if.end238.thread_crit_edge ]
  %79 = phi i32 [ 0, %if.end238.thread523 ], [ -14, %if.end238.if.end238.thread_crit_edge ], [ -14, %if.then27.i.i495 ], [ -14, %land.rhs16.i.i494.if.end238.thread_crit_edge ]
  %call243 = call i32 @comedi_buf_read_alloc(ptr noundef nonnull %33, i32 noundef %sub241522) #13
  %call244 = call i32 @comedi_buf_read_free(ptr noundef nonnull %33, i32 noundef %sub241522) #13
  %sub246 = sub i32 %nbytes.addr.0569, %sub241522
  %add.ptr247 = getelementptr i8, ptr %buf.addr.0570, i32 %sub241522
  br label %cleanup248

cleanup248:                                       ; preds = %if.end238.thread, %lor.lhs.false134.cleanup248_crit_edge
  %retval1.4 = phi i32 [ %79, %if.end238.thread ], [ 0, %lor.lhs.false134.cleanup248_crit_edge ]
  %count.1 = phi i32 [ %sub241522, %if.end238.thread ], [ 0, %lor.lhs.false134.cleanup248_crit_edge ]
  %nbytes.addr.1 = phi i32 [ %sub246, %if.end238.thread ], [ %nbytes.addr.0569, %lor.lhs.false134.cleanup248_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr247, %if.end238.thread ], [ %buf.addr.0570, %lor.lhs.false134.cleanup248_crit_edge ]
  %80 = or i32 %count.1, %retval1.4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %cleanup248.__here_crit_edge, label %cleanup248.while.end_crit_edge

cleanup248.while.end_crit_edge:                   ; preds = %cleanup248
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup248.__here_crit_edge:                      ; preds = %cleanup248
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

while.end:                                        ; preds = %cleanup248.while.end_crit_edge, %lor.lhs.false134.while.end_crit_edge, %if.end131.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end125.while.end_crit_edge, %if.end121.while.end_crit_edge, %if.end118.while.end_crit_edge, %if.then109
  %count.0567 = phi i32 [ %count.0568, %if.then109 ], [ %count.0568, %lor.lhs.false134.while.end_crit_edge ], [ %count.0568, %if.end125.while.end_crit_edge ], [ %count.0568, %if.end131.while.end_crit_edge ], [ %count.0568, %signal_pending.exit.while.end_crit_edge ], [ %count.0568, %if.end121.while.end_crit_edge ], [ %count.0568, %if.end118.while.end_crit_edge ], [ %count.1, %cleanup248.while.end_crit_edge ]
  %become_nonbusy.4.off0 = phi i1 [ %or.cond, %if.then109 ], [ false, %cleanup248.while.end_crit_edge ], [ false, %if.end118.while.end_crit_edge ], [ false, %if.end121.while.end_crit_edge ], [ false, %signal_pending.exit.while.end_crit_edge ], [ false, %if.end131.while.end_crit_edge ], [ false, %if.end125.while.end_crit_edge ], [ false, %lor.lhs.false134.while.end_crit_edge ]
  %retval1.5 = phi i32 [ %spec.select, %if.then109 ], [ -22, %lor.lhs.false134.while.end_crit_edge ], [ -512, %if.end125.while.end_crit_edge ], [ -22, %if.end131.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -11, %if.end121.while.end_crit_edge ], [ 0, %if.end118.while.end_crit_edge ], [ %retval1.4, %cleanup248.while.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %wait_head, ptr noundef nonnull %wait) #13
  br label %__here302

__here302:                                        ; preds = %while.end
  %82 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task, align 8
  %task_state_change306 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 212
  %84 = ptrtoint ptr %task_state_change306 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 ptrtoint (ptr blockaddress(@comedi_read, %__here302) to i32), ptr %task_state_change306, align 4
  %85 = load ptr, ptr %task, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 0, ptr %85, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0567)
  %cmp333 = icmp eq i32 %count.0567, 0
  %or.cond480 = and i1 %become_nonbusy.4.off0, %cmp333
  call void @up_read(ptr noundef %attach_lock) #13
  br i1 %or.cond480, label %if.then334, label %if.end370

if.then334:                                       ; preds = %__here302
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call336 = call fastcc ptr @comedi_file_read_subdevice(ptr noundef %file)
  %87 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load338 = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load338)
  %tobool341.not = icmp sgt i8 %bf.load338, -1
  br i1 %tobool341.not, label %if.then334.if.end370.thread_crit_edge, label %land.lhs.true342

if.then334.if.end370.thread_crit_edge:            ; preds = %if.then334
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread

land.lhs.true342:                                 ; preds = %if.then334
  %88 = ptrtoint ptr %detach_count to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %detach_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %89)
  %cmp344 = icmp eq i32 %18, %89
  %cmp346 = icmp eq ptr %33, %call336
  %or.cond481 = select i1 %cmp344, i1 %cmp346, i1 false
  br i1 %or.cond481, label %land.lhs.true347, label %land.lhs.true342.if.end370.thread_crit_edge

land.lhs.true342.if.end370.thread_crit_edge:      ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread

land.lhs.true347:                                 ; preds = %land.lhs.true342
  %90 = ptrtoint ptr %async13 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %async13, align 4
  %cmp349 = icmp eq ptr %91, %35
  br i1 %cmp349, label %land.lhs.true350, label %land.lhs.true347.if.end370.thread_crit_edge

land.lhs.true347.if.end370.thread_crit_edge:      ; preds = %land.lhs.true347
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread

land.lhs.true350:                                 ; preds = %land.lhs.true347
  %92 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %busy, align 4
  %cmp352 = icmp eq ptr %93, %file
  br i1 %cmp352, label %land.lhs.true353, label %land.lhs.true350.if.end370.thread_crit_edge

land.lhs.true350.if.end370.thread_crit_edge:      ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread

land.lhs.true353:                                 ; preds = %land.lhs.true350
  %94 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags19, align 4
  %and356 = and i32 %95, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and356)
  %tobool357.not = icmp eq i32 %and356, 0
  br i1 %tobool357.not, label %land.lhs.true358, label %land.lhs.true353.if.end370.thread_crit_edge

land.lhs.true353.if.end370.thread_crit_edge:      ; preds = %land.lhs.true353
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread

land.lhs.true358:                                 ; preds = %land.lhs.true353
  %call359 = call zeroext i1 @comedi_is_subdevice_running(ptr noundef nonnull %33)
  br i1 %call359, label %land.lhs.true358.if.end370.thread_crit_edge, label %land.lhs.true360

land.lhs.true358.if.end370.thread_crit_edge:      ; preds = %land.lhs.true358
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread

land.lhs.true360:                                 ; preds = %land.lhs.true358
  %call361 = call i32 @comedi_buf_read_n_available(ptr noundef nonnull %33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %cmp362 = icmp eq i32 %call361, 0
  br i1 %cmp362, label %if.then363, label %land.lhs.true360.if.end370.thread_crit_edge

land.lhs.true360.if.end370.thread_crit_edge:      ; preds = %land.lhs.true360
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end370.thread

if.then363:                                       ; preds = %land.lhs.true360
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @do_become_nonbusy(ptr noundef %16, ptr noundef nonnull %33)
  br label %if.end370.thread

if.end370.thread:                                 ; preds = %if.then363, %land.lhs.true360.if.end370.thread_crit_edge, %land.lhs.true358.if.end370.thread_crit_edge, %land.lhs.true353.if.end370.thread_crit_edge, %land.lhs.true350.if.end370.thread_crit_edge, %land.lhs.true347.if.end370.thread_crit_edge, %land.lhs.true342.if.end370.thread_crit_edge, %if.then334.if.end370.thread_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #13
  br label %96

if.end370.thread547:                              ; preds = %lor.lhs.false18.if.end370.thread547_crit_edge, %if.end16.if.end370.thread547_crit_edge, %lor.lhs.false.if.end370.thread547_crit_edge, %comedi_file_read_subdevice.exit.if.end370.thread547_crit_edge, %if.then9, %do.body
  %retval1.6.ph.ph = phi i32 [ -19, %if.then9 ], [ -5, %lor.lhs.false.if.end370.thread547_crit_edge ], [ -5, %comedi_file_read_subdevice.exit.if.end370.thread547_crit_edge ], [ -22, %lor.lhs.false18.if.end370.thread547_crit_edge ], [ -22, %if.end16.if.end370.thread547_crit_edge ], [ -19, %do.body ]
  tail call void @up_read(ptr noundef %attach_lock) #13
  br label %96

if.end370:                                        ; preds = %__here302
  br i1 %cmp333, label %if.end370._crit_edge, label %if.end370._crit_edge580

if.end370._crit_edge580:                          ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #15
  br label %97

if.end370._crit_edge:                             ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #15
  br label %96

96:                                               ; preds = %if.end370._crit_edge, %if.end370.thread547, %if.end370.thread
  %retval1.6539546 = phi i32 [ %retval1.5, %if.end370.thread ], [ %retval1.5, %if.end370._crit_edge ], [ %retval1.6.ph.ph, %if.end370.thread547 ]
  br label %97

97:                                               ; preds = %96, %if.end370._crit_edge580
  %98 = phi i32 [ %retval1.6539546, %96 ], [ %count.0567, %if.end370._crit_edge580 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_write(ptr noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %attach_lock = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 13
  tail call void @down_read(ptr noundef %attach_lock) #13
  %detach_count = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %detach_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %detach_count, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 10
  %19 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comedi_write.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@comedi_write, %if.end368.thread554)) #13
          to label %if.then9 [label %if.end368.thread554], !srcloc !302

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @comedi_write.__UNIQUE_ID_ddebug279, ptr noundef %21, ptr noundef nonnull @.str.30) #13
  br label %if.end368.thread554

if.end10:                                         ; preds = %entry
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_data, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %last_attached.i.i = getelementptr inbounds %struct.comedi_file, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %last_attached.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i = load i8, ptr %last_attached.i.i, align 4
  %attached.i.i = getelementptr inbounds %struct.comedi_device, ptr %25, i32 0, i32 10
  %27 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load2.i.i = load i8, ptr %attached.i.i, align 4
  %cmp.not.unshifted.i.i = xor i8 %bf.load2.i.i, %bf.load.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i.i)
  %cmp.not.i.i = icmp sgt i8 %cmp.not.unshifted.i.i, -1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end10.if.then.i.i514_crit_edge

if.end10.if.then.i.i514_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i514

lor.lhs.false.i.i:                                ; preds = %if.end10
  %last_detach_count.i.i = getelementptr inbounds %struct.comedi_file, ptr %23, i32 0, i32 3
  %28 = ptrtoint ptr %last_detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_detach_count.i.i, align 4
  %detach_count.i.i = getelementptr inbounds %struct.comedi_device, ptr %25, i32 0, i32 6
  %30 = ptrtoint ptr %detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %detach_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp5.not.i.i = icmp eq i32 %29, %31
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i.i.comedi_file_write_subdevice.exit_crit_edge, label %lor.lhs.false.i.i.if.then.i.i514_crit_edge

lor.lhs.false.i.i.if.then.i.i514_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i514

lor.lhs.false.i.i.comedi_file_write_subdevice.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_write_subdevice.exit

if.then.i.i514:                                   ; preds = %lor.lhs.false.i.i.if.then.i.i514_crit_edge, %if.end10.if.then.i.i514_crit_edge
  tail call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_write_subdevice.exit

comedi_file_write_subdevice.exit:                 ; preds = %if.then.i.i514, %lor.lhs.false.i.i.comedi_file_write_subdevice.exit_crit_edge
  %write_subdev.i = getelementptr inbounds %struct.comedi_file, ptr %23, i32 0, i32 2
  %32 = ptrtoint ptr %write_subdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %write_subdev.i, align 4
  %tobool12.not = icmp eq ptr %33, null
  br i1 %tobool12.not, label %comedi_file_write_subdevice.exit.if.end368.thread554_crit_edge, label %lor.lhs.false

comedi_file_write_subdevice.exit.if.end368.thread554_crit_edge: ; preds = %comedi_file_write_subdevice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.thread554

lor.lhs.false:                                    ; preds = %comedi_file_write_subdevice.exit
  %async13 = getelementptr inbounds %struct.comedi_subdevice, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %async13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %async13, align 4
  %tobool14.not = icmp eq ptr %35, null
  br i1 %tobool14.not, label %lor.lhs.false.if.end368.thread554_crit_edge, label %if.end16

lor.lhs.false.if.end368.thread554_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.thread554

if.end16:                                         ; preds = %lor.lhs.false
  %busy = getelementptr inbounds %struct.comedi_subdevice, ptr %33, i32 0, i32 9
  %36 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %busy, align 4
  %cmp.not = icmp eq ptr %37, %file
  br i1 %cmp.not, label %lor.lhs.false18, label %if.end16.if.end368.thread554_crit_edge

if.end16.if.end368.thread554_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.thread554

lor.lhs.false18:                                  ; preds = %if.end16
  %flags19 = getelementptr inbounds %struct.comedi_async, ptr %35, i32 0, i32 17, i32 1
  %38 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags19, align 4
  %and = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %lor.lhs.false18.if.end368.thread554_crit_edge, label %if.end22

lor.lhs.false18.if.end368.thread554_crit_edge:    ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.thread554

if.end22:                                         ; preds = %lor.lhs.false18
  %wait_head = getelementptr inbounds %struct.comedi_async, ptr %35, i32 0, i32 18
  call void @add_wait_queue(ptr noundef %wait_head, ptr noundef nonnull %wait) #13
  %spin_lock.i = getelementptr inbounds %struct.comedi_subdevice, ptr %33, i32 0, i32 11
  %runflags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %33, i32 0, i32 10
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, ptr %35, i32 0, i32 1
  %buf_write_ptr = getelementptr inbounds %struct.comedi_async, ptr %35, i32 0, i32 8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  br label %__here

__here:                                           ; preds = %cleanup.__here_crit_edge, %if.end22
  %buf.addr.0577 = phi ptr [ %buf, %if.end22 ], [ %buf.addr.1, %cleanup.__here_crit_edge ]
  %nbytes.addr.0576 = phi i32 [ %nbytes, %if.end22 ], [ %nbytes.addr.1, %cleanup.__here_crit_edge ]
  %count.0575 = phi i32 [ 0, %if.end22 ], [ %count.1, %cleanup.__here_crit_edge ]
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 212
  %42 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 ptrtoint (ptr blockaddress(@comedi_write, %__here) to i32), ptr %task_state_change, align 4
  %43 = load ptr, ptr %task, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %43, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !307
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #13
  %45 = ptrtoint ptr %runflags.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %runflags.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i, i32 noundef %call2.i) #13
  %and.i515 = and i32 %46, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i515)
  %tobool.i.not = icmp eq i32 %and.i515, 0
  br i1 %tobool.i.not, label %if.then104, label %if.end113

if.then104:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %and.i516 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i516)
  %tobool.i517.not = icmp eq i32 %and.i516, 0
  %spec.select = select i1 %tobool.i517.not, i32 0, i32 -32
  %not.tobool.i517.not = xor i1 %tobool.i517.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.0576)
  %tobool110.not = icmp ne i32 %nbytes.addr.0576, 0
  %or.cond = select i1 %not.tobool.i517.not, i1 true, i1 %tobool110.not
  br label %while.end

if.end113:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.0576)
  %cmp114 = icmp eq i32 %nbytes.addr.0576, 0
  br i1 %cmp114, label %if.end113.while.end_crit_edge, label %if.end116

if.end113.while.end_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end116:                                        ; preds = %if.end113
  %47 = ptrtoint ptr %prealloc_bufsz to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %prealloc_bufsz, align 4
  %call117 = call i32 @comedi_buf_write_alloc(ptr noundef nonnull %33, i32 noundef %48) #13
  %call118 = call i32 @comedi_buf_write_n_allocated(ptr noundef nonnull %33) #13
  %49 = call i32 @llvm.umin.i32(i32 %call118, i32 %nbytes.addr.0576)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp121 = icmp eq i32 %49, 0
  br i1 %cmp121, label %if.then122, label %__here193

if.then122:                                       ; preds = %if.end116
  %50 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %f_flags, align 4
  %and123 = and i32 %51, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end126, label %if.then122.while.end_crit_edge

if.then122.while.end_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end126:                                        ; preds = %if.then122
  call void @schedule() #13
  %52 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stack.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %58 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end126.while.end_crit_edge, !prof !298

if.end126.while.end_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

signal_pending.exit:                              ; preds = %if.end126
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %55, align 4
  %and1.i.i.i.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool130.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool130.not, label %if.end132, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end132:                                        ; preds = %signal_pending.exit
  %61 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %busy, align 4
  %cmp134.not = icmp eq ptr %62, %file
  br i1 %cmp134.not, label %lor.lhs.false135, label %if.end132.while.end_crit_edge

if.end132.while.end_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

lor.lhs.false135:                                 ; preds = %if.end132
  %63 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags19, align 4
  %and138 = and i32 %64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %lor.lhs.false135.while.end_crit_edge, label %lor.lhs.false135.cleanup_crit_edge

lor.lhs.false135.cleanup_crit_edge:               ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false135.while.end_crit_edge:             ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

__here193:                                        ; preds = %if.end116
  %65 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task, align 8
  %task_state_change197 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 212
  %67 = ptrtoint ptr %task_state_change197 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 ptrtoint (ptr blockaddress(@comedi_write, %__here193) to i32), ptr %task_state_change197, align 4
  %68 = load ptr, ptr %task, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 0, ptr %68, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !308
  %70 = ptrtoint ptr %buf_write_ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %buf_write_ptr, align 4
  %72 = ptrtoint ptr %prealloc_bufsz to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %prealloc_bufsz, align 4
  %sub = sub i32 %73, %71
  %74 = call i32 @llvm.umin.i32(i32 %49, i32 %sub)
  %sub230 = sub i32 %49, %74
  %75 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %35, align 4
  %add.ptr = getelementptr i8, ptr %76, i32 %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp9.i.i = icmp slt i32 %74, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %__here193
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.end240_crit_edge, label %if.then27.i.i, !prof !298

land.rhs16.i.i.if.end240_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.end240

if.then.i.i.i:                                    ; preds = %__here193
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %74, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %77 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0577, i32 %74, i32 -1226833920) #19, !srcloc !309
  %asmresult.i.i = extractvalue { i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !298

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %74) #13
  %78 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 4
  %80 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !310
  %and.i.i.i.i = and i32 %80, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf.addr.0577, i32 noundef %74) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %74, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %74, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else, label %if.then11.i.i, !prof !298

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %74, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %81 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.end240

if.else:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %sub)
  %tobool234.not.not = icmp ugt i32 %49, %sub
  br i1 %tobool234.not.not, label %if.then235, label %if.else.if.end240.thread530_crit_edge

if.else.if.end240.thread530_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240.thread530

if.then235:                                       ; preds = %if.else
  %82 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %35, align 4
  %add.ptr237 = getelementptr i8, ptr %buf.addr.0577, i32 %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub230)
  %cmp9.i.i487 = icmp slt i32 %sub230, 0
  br i1 %cmp9.i.i487, label %land.rhs16.i.i490, label %if.then.i.i.i493

land.rhs16.i.i490:                                ; preds = %if.then235
  %.b71.i.i489 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i489, label %land.rhs16.i.i490.if.end240.thread_crit_edge, label %if.then27.i.i491, !prof !298

land.rhs16.i.i490.if.end240.thread_crit_edge:     ; preds = %land.rhs16.i.i490
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240.thread

if.then27.i.i491:                                 ; preds = %land.rhs16.i.i490
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.end240.thread

if.then.i.i.i493:                                 ; preds = %if.then235
  call void @__check_object_size(ptr noundef %83, i32 noundef %sub230, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i494 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i494, label %if.then.i.i.i493.if.end.i.i508_crit_edge, label %land.lhs.true.i.i498

if.then.i.i.i493.if.end.i.i508_crit_edge:         ; preds = %if.then.i.i.i493
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i508

land.lhs.true.i.i498:                             ; preds = %if.then.i.i.i493
  %84 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr237, i32 %sub230, i32 -1226833920) #19, !srcloc !309
  %asmresult.i.i496 = extractvalue { i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i496)
  %cmp.i6.i497 = icmp eq i32 %asmresult.i.i496, 0
  br i1 %cmp.i6.i497, label %if.then.i7.i505, label %land.lhs.true.i.i498.if.end.i.i508_crit_edge, !prof !298

land.lhs.true.i.i498.if.end.i.i508_crit_edge:     ; preds = %land.lhs.true.i.i498
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i508

if.then.i7.i505:                                  ; preds = %land.lhs.true.i.i498
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i499 = call zeroext i1 @__kasan_check_write(ptr noundef %83, i32 noundef %sub230) #13
  %85 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i500 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i.i500 to ptr
  %cpu_domain.i.i.i.i.i501 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 4
  %87 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i501) #10, !srcloc !310
  %and.i.i.i.i502 = and i32 %87, -13
  %or.i.i.i.i503 = or i32 %and.i.i.i.i502, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i503) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i504 = call i32 @arm_copy_from_user(ptr noundef %83, ptr noundef %add.ptr237, i32 noundef %sub230) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  br label %if.end.i.i508

if.end.i.i508:                                    ; preds = %if.then.i7.i505, %land.lhs.true.i.i498.if.end.i.i508_crit_edge, %if.then.i.i.i493.if.end.i.i508_crit_edge
  %res.0.i.i506 = phi i32 [ %sub230, %if.then.i.i.i493.if.end.i.i508_crit_edge ], [ %call1.i.i.i504, %if.then.i7.i505 ], [ %sub230, %land.lhs.true.i.i498.if.end.i.i508_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i506)
  %tobool4.not.i.i507 = icmp eq i32 %res.0.i.i506, 0
  br i1 %tobool4.not.i.i507, label %if.end.i.i508.if.end240.thread530_crit_edge, label %if.then11.i.i511, !prof !298

if.end.i.i508.if.end240.thread530_crit_edge:      ; preds = %if.end.i.i508
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240.thread530

if.then11.i.i511:                                 ; preds = %if.end.i.i508
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i509 = sub i32 %sub230, %res.0.i.i506
  %add.ptr.i.i510 = getelementptr i8, ptr %83, i32 %sub.i.i509
  %88 = call ptr @memset(ptr %add.ptr.i.i510, i32 0, i32 %res.0.i.i506)
  br label %if.end240.thread

if.end240.thread:                                 ; preds = %if.then11.i.i511, %if.then27.i.i491, %land.rhs16.i.i490.if.end240.thread_crit_edge
  %m.0.ph = phi i32 [ %sub230, %land.rhs16.i.i490.if.end240.thread_crit_edge ], [ %sub230, %if.then27.i.i491 ], [ %res.0.i.i506, %if.then11.i.i511 ]
  %sub243527 = sub i32 %49, %m.0.ph
  br label %89

if.end240:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.end240_crit_edge
  %n.addr.0.i.ph = phi i32 [ %74, %land.rhs16.i.i.if.end240_crit_edge ], [ %74, %if.then27.i.i ], [ %res.0.i.i, %if.then11.i.i ]
  %add = add i32 %n.addr.0.i.ph, %sub230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool241.not = icmp eq i32 %add, 0
  %sub243 = sub i32 %49, %add
  br i1 %tobool241.not, label %if.end240.if.end240.thread530_crit_edge, label %if.end240._crit_edge

if.end240._crit_edge:                             ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #15
  br label %89

if.end240.if.end240.thread530_crit_edge:          ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240.thread530

if.end240.thread530:                              ; preds = %if.end240.if.end240.thread530_crit_edge, %if.end.i.i508.if.end240.thread530_crit_edge, %if.else.if.end240.thread530_crit_edge
  %sub243534 = phi i32 [ %sub243, %if.end240.if.end240.thread530_crit_edge ], [ %49, %if.else.if.end240.thread530_crit_edge ], [ %49, %if.end.i.i508.if.end240.thread530_crit_edge ]
  br label %89

89:                                               ; preds = %if.end240.thread530, %if.end240._crit_edge, %if.end240.thread
  %sub243528 = phi i32 [ %sub243534, %if.end240.thread530 ], [ %sub243, %if.end240._crit_edge ], [ %sub243527, %if.end240.thread ]
  %90 = phi i32 [ 0, %if.end240.thread530 ], [ -14, %if.end240._crit_edge ], [ -14, %if.end240.thread ]
  %call245 = call i32 @comedi_buf_write_free(ptr noundef nonnull %33, i32 noundef %sub243528) #13
  %sub247 = sub i32 %nbytes.addr.0576, %sub243528
  %add.ptr248 = getelementptr i8, ptr %buf.addr.0577, i32 %sub243528
  br label %cleanup

cleanup:                                          ; preds = %89, %lor.lhs.false135.cleanup_crit_edge
  %retval1.3 = phi i32 [ %90, %89 ], [ 0, %lor.lhs.false135.cleanup_crit_edge ]
  %count.1 = phi i32 [ %sub243528, %89 ], [ 0, %lor.lhs.false135.cleanup_crit_edge ]
  %nbytes.addr.1 = phi i32 [ %sub247, %89 ], [ %nbytes.addr.0576, %lor.lhs.false135.cleanup_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr248, %89 ], [ %buf.addr.0577, %lor.lhs.false135.cleanup_crit_edge ]
  %91 = or i32 %count.1, %retval1.3
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %cleanup.__here_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup.__here_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %lor.lhs.false135.while.end_crit_edge, %if.end132.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end126.while.end_crit_edge, %if.then122.while.end_crit_edge, %if.end113.while.end_crit_edge, %if.then104
  %count.0574 = phi i32 [ %count.0575, %if.then104 ], [ %count.0575, %lor.lhs.false135.while.end_crit_edge ], [ %count.0575, %if.end126.while.end_crit_edge ], [ %count.0575, %if.end132.while.end_crit_edge ], [ %count.0575, %signal_pending.exit.while.end_crit_edge ], [ %count.0575, %if.then122.while.end_crit_edge ], [ %count.0575, %if.end113.while.end_crit_edge ], [ %count.1, %cleanup.while.end_crit_edge ]
  %become_nonbusy.3.off0 = phi i1 [ %or.cond, %if.then104 ], [ false, %cleanup.while.end_crit_edge ], [ false, %if.end113.while.end_crit_edge ], [ false, %if.then122.while.end_crit_edge ], [ false, %signal_pending.exit.while.end_crit_edge ], [ false, %if.end132.while.end_crit_edge ], [ false, %if.end126.while.end_crit_edge ], [ false, %lor.lhs.false135.while.end_crit_edge ]
  %retval1.4 = phi i32 [ %spec.select, %if.then104 ], [ -22, %lor.lhs.false135.while.end_crit_edge ], [ -512, %if.end126.while.end_crit_edge ], [ -22, %if.end132.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -11, %if.then122.while.end_crit_edge ], [ 0, %if.end113.while.end_crit_edge ], [ %retval1.3, %cleanup.while.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %wait_head, ptr noundef nonnull %wait) #13
  br label %__here303

__here303:                                        ; preds = %while.end
  %93 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task, align 8
  %task_state_change307 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 212
  %95 = ptrtoint ptr %task_state_change307 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 ptrtoint (ptr blockaddress(@comedi_write, %__here303) to i32), ptr %task_state_change307, align 4
  %96 = load ptr, ptr %task, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 0, ptr %96, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0574)
  %cmp334 = icmp eq i32 %count.0574, 0
  %or.cond476 = and i1 %become_nonbusy.3.off0, %cmp334
  call void @up_read(ptr noundef %attach_lock) #13
  br i1 %or.cond476, label %if.then335, label %if.end368

if.then335:                                       ; preds = %__here303
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call337 = call fastcc ptr @comedi_file_write_subdevice(ptr noundef %file)
  %98 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load339 = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load339)
  %tobool342.not = icmp sgt i8 %bf.load339, -1
  br i1 %tobool342.not, label %if.then335.if.end368.thread_crit_edge, label %land.lhs.true343

if.then335.if.end368.thread_crit_edge:            ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.thread

land.lhs.true343:                                 ; preds = %if.then335
  %99 = ptrtoint ptr %detach_count to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %detach_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %100)
  %cmp345 = icmp eq i32 %18, %100
  %cmp347 = icmp eq ptr %33, %call337
  %or.cond477 = select i1 %cmp345, i1 %cmp347, i1 false
  br i1 %or.cond477, label %land.lhs.true348, label %land.lhs.true343.if.end368.thread_crit_edge

land.lhs.true343.if.end368.thread_crit_edge:      ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.thread

land.lhs.true348:                                 ; preds = %land.lhs.true343
  %101 = ptrtoint ptr %async13 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %async13, align 4
  %cmp350 = icmp eq ptr %102, %35
  br i1 %cmp350, label %land.lhs.true351, label %land.lhs.true348.if.end368.thread_crit_edge

land.lhs.true348.if.end368.thread_crit_edge:      ; preds = %land.lhs.true348
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.thread

land.lhs.true351:                                 ; preds = %land.lhs.true348
  %103 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %busy, align 4
  %cmp353 = icmp eq ptr %104, %file
  br i1 %cmp353, label %land.lhs.true354, label %land.lhs.true351.if.end368.thread_crit_edge

land.lhs.true351.if.end368.thread_crit_edge:      ; preds = %land.lhs.true351
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.thread

land.lhs.true354:                                 ; preds = %land.lhs.true351
  %105 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags19, align 4
  %and357 = and i32 %106, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and357)
  %tobool358.not = icmp eq i32 %and357, 0
  br i1 %tobool358.not, label %land.lhs.true354.if.end368.thread_crit_edge, label %land.lhs.true359

land.lhs.true354.if.end368.thread_crit_edge:      ; preds = %land.lhs.true354
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.thread

land.lhs.true359:                                 ; preds = %land.lhs.true354
  %call360 = call zeroext i1 @comedi_is_subdevice_running(ptr noundef nonnull %33)
  br i1 %call360, label %land.lhs.true359.if.end368.thread_crit_edge, label %if.then361

land.lhs.true359.if.end368.thread_crit_edge:      ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end368.thread

if.then361:                                       ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @do_become_nonbusy(ptr noundef %16, ptr noundef nonnull %33)
  br label %if.end368.thread

if.end368.thread:                                 ; preds = %if.then361, %land.lhs.true359.if.end368.thread_crit_edge, %land.lhs.true354.if.end368.thread_crit_edge, %land.lhs.true351.if.end368.thread_crit_edge, %land.lhs.true348.if.end368.thread_crit_edge, %land.lhs.true343.if.end368.thread_crit_edge, %if.then335.if.end368.thread_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #13
  br label %107

if.end368.thread554:                              ; preds = %lor.lhs.false18.if.end368.thread554_crit_edge, %if.end16.if.end368.thread554_crit_edge, %lor.lhs.false.if.end368.thread554_crit_edge, %comedi_file_write_subdevice.exit.if.end368.thread554_crit_edge, %if.then9, %do.body
  %retval1.5.ph.ph = phi i32 [ -19, %if.then9 ], [ -5, %lor.lhs.false.if.end368.thread554_crit_edge ], [ -5, %comedi_file_write_subdevice.exit.if.end368.thread554_crit_edge ], [ -22, %lor.lhs.false18.if.end368.thread554_crit_edge ], [ -22, %if.end16.if.end368.thread554_crit_edge ], [ -19, %do.body ]
  tail call void @up_read(ptr noundef %attach_lock) #13
  br label %107

if.end368:                                        ; preds = %__here303
  br i1 %cmp334, label %if.end368._crit_edge, label %if.end368._crit_edge588

if.end368._crit_edge588:                          ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #15
  br label %108

if.end368._crit_edge:                             ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #15
  br label %107

107:                                              ; preds = %if.end368._crit_edge, %if.end368.thread554, %if.end368.thread
  %retval1.5546553 = phi i32 [ %retval1.4, %if.end368.thread ], [ %retval1.4, %if.end368._crit_edge ], [ %retval1.5.ph.ph, %if.end368.thread554 ]
  br label %108

108:                                              ; preds = %107, %if.end368._crit_edge588
  %109 = phi i32 [ %retval1.5546553, %107 ], [ %count.0574, %if.end368._crit_edge588 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %attach_lock = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 13
  tail call void @down_read(ptr noundef %attach_lock) #13
  %attached = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comedi_poll.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@comedi_poll, %done)) #13
          to label %if.then6 [label %done], !srcloc !302

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @comedi_poll.__UNIQUE_ID_ddebug278, ptr noundef %6, ptr noundef nonnull @.str.30) #13
  br label %done

if.end7:                                          ; preds = %entry
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %last_attached.i.i = getelementptr inbounds %struct.comedi_file, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %last_attached.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %last_attached.i.i, align 4
  %attached.i.i = getelementptr inbounds %struct.comedi_device, ptr %10, i32 0, i32 10
  %12 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load2.i.i = load i8, ptr %attached.i.i, align 4
  %cmp.not.unshifted.i.i = xor i8 %bf.load2.i.i, %bf.load.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i.i)
  %cmp.not.i.i = icmp sgt i8 %cmp.not.unshifted.i.i, -1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end7.if.then.i.i_crit_edge

if.end7.if.then.i.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end7
  %last_detach_count.i.i = getelementptr inbounds %struct.comedi_file, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %last_detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_detach_count.i.i, align 4
  %detach_count.i.i = getelementptr inbounds %struct.comedi_device, ptr %10, i32 0, i32 6
  %15 = ptrtoint ptr %detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %detach_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp5.not.i.i = icmp eq i32 %14, %16
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_read_subdevice.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end7.if.then.i.i_crit_edge
  tail call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_read_subdevice.exit

comedi_file_read_subdevice.exit:                  ; preds = %if.then.i.i, %lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge
  %read_subdev.i = getelementptr inbounds %struct.comedi_file, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %read_subdev.i, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %comedi_file_read_subdevice.exit.if.end22_crit_edge, label %land.lhs.true

comedi_file_read_subdevice.exit.if.end22_crit_edge: ; preds = %comedi_file_read_subdevice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true:                                    ; preds = %comedi_file_read_subdevice.exit
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %async, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %land.lhs.true.if.end22_crit_edge, label %if.then11

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then11:                                        ; preds = %land.lhs.true
  %wait_head = getelementptr inbounds %struct.comedi_async, ptr %20, i32 0, i32 18
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.then11.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.then11.poll_wait.exit_crit_edge:               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.then11
  %21 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %22, null
  %tobool3.not.i = icmp eq ptr %wait_head, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %22(ptr noundef %file, ptr noundef nonnull %wait_head, ptr noundef nonnull %wait) #13
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.then11.poll_wait.exit_crit_edge
  %busy = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 9
  %23 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %busy, align 4
  %cmp.not = icmp eq ptr %24, %file
  br i1 %cmp.not, label %lor.lhs.false, label %poll_wait.exit.if.then20_crit_edge

poll_wait.exit.if.then20_crit_edge:               ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

lor.lhs.false:                                    ; preds = %poll_wait.exit
  %spin_lock.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i) #13
  %runflags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 10
  %25 = ptrtoint ptr %runflags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %runflags.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i.i, i32 noundef %call2.i.i) #13
  %and.i.i = and i32 %26, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false14

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %async, align 4
  %flags = getelementptr inbounds %struct.comedi_async, ptr %28, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %lor.lhs.false14.if.then20_crit_edge

lor.lhs.false14.if.then20_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call18 = tail call i32 @comedi_buf_read_n_available(ptr noundef nonnull %18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %lor.lhs.false17.if.end22_crit_edge, label %lor.lhs.false17.if.then20_crit_edge

lor.lhs.false17.if.then20_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

lor.lhs.false17.if.end22_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then20:                                        ; preds = %lor.lhs.false17.if.then20_crit_edge, %lor.lhs.false14.if.then20_crit_edge, %lor.lhs.false.if.then20_crit_edge, %poll_wait.exit.if.then20_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %lor.lhs.false17.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %comedi_file_read_subdevice.exit.if.end22_crit_edge
  %mask.0 = phi i32 [ 65, %if.then20 ], [ 0, %lor.lhs.false17.if.end22_crit_edge ], [ 0, %land.lhs.true.if.end22_crit_edge ], [ 0, %comedi_file_read_subdevice.exit.if.end22_crit_edge ]
  %31 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %last_attached.i.i82 = getelementptr inbounds %struct.comedi_file, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %last_attached.i.i82 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i.i83 = load i8, ptr %last_attached.i.i82, align 4
  %attached.i.i84 = getelementptr inbounds %struct.comedi_device, ptr %34, i32 0, i32 10
  %36 = ptrtoint ptr %attached.i.i84 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load2.i.i85 = load i8, ptr %attached.i.i84, align 4
  %cmp.not.unshifted.i.i86 = xor i8 %bf.load2.i.i85, %bf.load.i.i83
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i.i86)
  %cmp.not.i.i87 = icmp sgt i8 %cmp.not.unshifted.i.i86, -1
  br i1 %cmp.not.i.i87, label %lor.lhs.false.i.i91, label %if.end22.if.then.i.i92_crit_edge

if.end22.if.then.i.i92_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i92

lor.lhs.false.i.i91:                              ; preds = %if.end22
  %last_detach_count.i.i88 = getelementptr inbounds %struct.comedi_file, ptr %32, i32 0, i32 3
  %37 = ptrtoint ptr %last_detach_count.i.i88 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_detach_count.i.i88, align 4
  %detach_count.i.i89 = getelementptr inbounds %struct.comedi_device, ptr %34, i32 0, i32 6
  %39 = ptrtoint ptr %detach_count.i.i89 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %detach_count.i.i89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp5.not.i.i90 = icmp eq i32 %38, %40
  br i1 %cmp5.not.i.i90, label %lor.lhs.false.i.i91.comedi_file_write_subdevice.exit_crit_edge, label %lor.lhs.false.i.i91.if.then.i.i92_crit_edge

lor.lhs.false.i.i91.if.then.i.i92_crit_edge:      ; preds = %lor.lhs.false.i.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i92

lor.lhs.false.i.i91.comedi_file_write_subdevice.exit_crit_edge: ; preds = %lor.lhs.false.i.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_write_subdevice.exit

if.then.i.i92:                                    ; preds = %lor.lhs.false.i.i91.if.then.i.i92_crit_edge, %if.end22.if.then.i.i92_crit_edge
  tail call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_write_subdevice.exit

comedi_file_write_subdevice.exit:                 ; preds = %if.then.i.i92, %lor.lhs.false.i.i91.comedi_file_write_subdevice.exit_crit_edge
  %write_subdev.i = getelementptr inbounds %struct.comedi_file, ptr %32, i32 0, i32 2
  %41 = ptrtoint ptr %write_subdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %write_subdev.i, align 4
  %tobool24.not = icmp eq ptr %42, null
  br i1 %tobool24.not, label %comedi_file_write_subdevice.exit.done_crit_edge, label %land.lhs.true25

comedi_file_write_subdevice.exit.done_crit_edge:  ; preds = %comedi_file_write_subdevice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

land.lhs.true25:                                  ; preds = %comedi_file_write_subdevice.exit
  %async26 = getelementptr inbounds %struct.comedi_subdevice, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %async26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %async26, align 4
  %tobool27.not = icmp eq ptr %44, null
  br i1 %tobool27.not, label %land.lhs.true25.done_crit_edge, label %if.then28

land.lhs.true25.done_crit_edge:                   ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then28:                                        ; preds = %land.lhs.true25
  %subdev_flags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %42, i32 0, i32 4
  %45 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %subdev_flags.i, align 4
  %and.i = and i32 %46, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i93 = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i93, i32 2, i32 4
  %cmp30.not = icmp eq ptr %42, %18
  br i1 %cmp30.not, label %if.then28.if.end34_crit_edge, label %if.then31

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then31:                                        ; preds = %if.then28
  %wait_head33 = getelementptr inbounds %struct.comedi_async, ptr %44, i32 0, i32 18
  %tobool.not.i94 = icmp eq ptr %wait, null
  br i1 %tobool.not.i94, label %if.then31.if.end34_crit_edge, label %land.lhs.true.i98

if.then31.if.end34_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true.i98:                                ; preds = %if.then31
  %47 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wait, align 4
  %tobool1.not.i95 = icmp eq ptr %48, null
  %tobool3.not.i96 = icmp eq ptr %wait_head33, null
  %or.cond.i97 = or i1 %tobool3.not.i96, %tobool1.not.i95
  br i1 %or.cond.i97, label %land.lhs.true.i98.if.end34_crit_edge, label %if.then.i99

land.lhs.true.i98.if.end34_crit_edge:             ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then.i99:                                      ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %48(ptr noundef %file, ptr noundef nonnull %wait_head33, ptr noundef nonnull %wait) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then.i99, %land.lhs.true.i98.if.end34_crit_edge, %if.then31.if.end34_crit_edge, %if.then28.if.end34_crit_edge
  %busy35 = getelementptr inbounds %struct.comedi_subdevice, ptr %42, i32 0, i32 9
  %49 = ptrtoint ptr %busy35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %busy35, align 4
  %cmp36.not = icmp eq ptr %50, %file
  br i1 %cmp36.not, label %lor.lhs.false37, label %if.end34.if.then48_crit_edge

if.end34.if.then48_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

lor.lhs.false37:                                  ; preds = %if.end34
  %spin_lock.i.i101 = getelementptr inbounds %struct.comedi_subdevice, ptr %42, i32 0, i32 11
  %call2.i.i102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i101) #13
  %runflags.i.i.i103 = getelementptr inbounds %struct.comedi_subdevice, ptr %42, i32 0, i32 10
  %51 = ptrtoint ptr %runflags.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %runflags.i.i.i103, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i.i101, i32 noundef %call2.i.i102) #13
  %and.i.i104 = and i32 %52, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i104)
  %tobool.i.i105.not = icmp eq i32 %and.i.i104, 0
  br i1 %tobool.i.i105.not, label %lor.lhs.false37.if.then48_crit_edge, label %lor.lhs.false39

lor.lhs.false37.if.then48_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

lor.lhs.false39:                                  ; preds = %lor.lhs.false37
  %53 = ptrtoint ptr %async26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %async26, align 4
  %flags42 = getelementptr inbounds %struct.comedi_async, ptr %54, i32 0, i32 17, i32 1
  %55 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags42, align 4
  %and43 = and i32 %56, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %lor.lhs.false39.if.then48_crit_edge, label %lor.lhs.false45

lor.lhs.false39.if.then48_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

lor.lhs.false45:                                  ; preds = %lor.lhs.false39
  %call46 = tail call i32 @comedi_buf_write_n_available(ptr noundef nonnull %42) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %cond.i)
  %cmp47.not = icmp ult i32 %call46, %cond.i
  br i1 %cmp47.not, label %lor.lhs.false45.done_crit_edge, label %lor.lhs.false45.if.then48_crit_edge

lor.lhs.false45.if.then48_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

lor.lhs.false45.done_crit_edge:                   ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then48:                                        ; preds = %lor.lhs.false45.if.then48_crit_edge, %lor.lhs.false39.if.then48_crit_edge, %lor.lhs.false37.if.then48_crit_edge, %if.end34.if.then48_crit_edge
  %or49 = or i32 %mask.0, 260
  br label %done

done:                                             ; preds = %if.then48, %lor.lhs.false45.done_crit_edge, %land.lhs.true25.done_crit_edge, %comedi_file_write_subdevice.exit.done_crit_edge, %if.then6, %do.body
  %mask.2 = phi i32 [ %mask.0, %land.lhs.true25.done_crit_edge ], [ %mask.0, %comedi_file_write_subdevice.exit.done_crit_edge ], [ 0, %if.then6 ], [ %or49, %if.then48 ], [ %mask.0, %lor.lhs.false45.done_crit_edge ], [ 0, %do.body ]
  tail call void @up_read(ptr noundef %attach_lock) #13
  ret i32 %mask.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_unlocked_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %it.i = alloca %struct.comedi_devconfig, align 4
  %it = alloca %struct.comedi_chaninfo, align 4
  %it41 = alloca %struct.comedi_rangeinfo, align 4
  %cmd57 = alloca %struct.comedi_cmd, align 4
  %copy = alloca i8, align 1
  %cmd72 = alloca %struct.comedi_cmd, align 4
  %copy73 = alloca i8, align 1
  %insnlist = alloca %struct.comedi_insnlist, align 4
  %insn = alloca %struct.comedi_insn, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1083466752, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1083466752
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %and.i = and i32 %3, 1048560
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %and.i)
  %cmp3 = icmp ugt i32 %and.i, 47
  br i1 %cmp3, label %if.then.done_crit_edge, label %if.end

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end:                                           ; preds = %if.then
  %8 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %it.i) #13
  %9 = call ptr @memset(ptr %it.i, i32 255, i32 148)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 12, i32 5
  %call.i.i355 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i355)
  %cmp.not.i = icmp eq i32 %call.i.i355, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !301

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 819, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %call24.i = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call24.i, label %if.end26.i, label %if.end.i.do_devconfig_ioctl.exit.thread_crit_edge

if.end.i.do_devconfig_ioctl.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_devconfig_ioctl.exit.thread

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool27.not.i = icmp eq i32 %arg, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end8.i.i.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.then28.i.if.end.i.i356_crit_edge, label %land.rhs.i.i

if.then28.i.if.end.i.i356_crit_edge:              ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i356

land.rhs.i.i:                                     ; preds = %if.then28.i
  %dep_map.i.i = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 12, i32 5
  %call.i.i62.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i62.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i356_crit_edge, !prof !301

land.rhs.i.i.if.end.i.i356_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i356

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 786, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i356

if.end.i.i356:                                    ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i356_crit_edge, %if.then28.i.if.end.i.i356_crit_edge
  %attached.i.i = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 10
  %12 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %attached.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool24.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool24.not.i.i, label %if.then7.thread420, label %for.cond.preheader.i.i

if.then7.thread420:                               ; preds = %if.end.i.i356
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %it.i) #13
  br label %land.lhs.true

for.cond.preheader.i.i:                           ; preds = %if.end.i.i356
  %subdevices.i.i = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 16
  %n_subdevices.i.i = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 15
  %13 = ptrtoint ptr %n_subdevices.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_subdevices.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2744.i.i = icmp sgt i32 %14, 0
  br i1 %cmp2744.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.if.end32.i_crit_edge

for.cond.preheader.i.i.if.end32.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.045.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %subdevices.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %subdevices.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.comedi_subdevice, ptr %16, i32 %i.045.i.i
  %busy.i.i = getelementptr %struct.comedi_subdevice, ptr %16, i32 %i.045.i.i, i32 9
  %17 = ptrtoint ptr %busy.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %busy.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %18, null
  br i1 %tobool28.not.i.i, label %if.end30.i.i, label %for.body.i.i.do_devconfig_ioctl.exit.thread_crit_edge

for.body.i.i.do_devconfig_ioctl.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_devconfig_ioctl.exit.thread

if.end30.i.i:                                     ; preds = %for.body.i.i
  %async.i.i = getelementptr %struct.comedi_subdevice, ptr %16, i32 %i.045.i.i, i32 7
  %19 = ptrtoint ptr %async.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %async.i.i, align 4
  %tobool31.not.i.i = icmp eq ptr %20, null
  br i1 %tobool31.not.i.i, label %if.end30.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i357

if.end30.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i357:                             ; preds = %if.end30.i.i
  %call32.i.i = tail call zeroext i1 @comedi_buf_is_mmapped(ptr noundef %arrayidx.i.i) #13
  br i1 %call32.i.i, label %land.lhs.true.i.i357.do_devconfig_ioctl.exit.thread_crit_edge, label %land.lhs.true.i.i357.for.inc.i.i_crit_edge

land.lhs.true.i.i357.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true.i.i357
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i357.do_devconfig_ioctl.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i357
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_devconfig_ioctl.exit.thread

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i357.for.inc.i.i_crit_edge, %if.end30.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %21 = ptrtoint ptr %n_subdevices.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_subdevices.i.i, align 4
  %cmp27.i.i = icmp slt i32 %inc.i.i, %22
  br i1 %cmp27.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end32.i_crit_edge

for.inc.i.i.if.end32.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.end32.i:                                       ; preds = %for.inc.i.i.if.end32.i_crit_edge, %for.cond.preheader.i.i.if.end32.i_crit_edge
  %23 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.pr.i = load i8, ptr %attached.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.pr.i)
  %tobool33.not.i = icmp sgt i8 %bf.load.pr.i, -1
  br i1 %tobool33.not.i, label %if.end32.i.if.then7_crit_edge, label %if.then34.i

if.end32.i.if.then7_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  %driver.i = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver.i, align 4
  %module.i = getelementptr inbounds %struct.comedi_driver, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %module.i, align 4
  tail call void @comedi_device_detach(ptr noundef %7) #13
  tail call void @module_put(ptr noundef %27) #13
  br label %if.then7

if.end8.i.i.i:                                    ; preds = %if.end26.i
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i.i358 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i358, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %8, i32 148, i32 -1226833920) #19, !srcloc !309
  %asmresult.i.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !298

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %it.i, i32 noundef 148) #13
  %29 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !310
  %and.i.i.i.i.i = and i32 %31, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %it.i, ptr noundef nonnull %8, i32 noundef 148) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end40.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !298

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i69.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 148, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 148, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 148, %res.0.i.i69.i
  %add.ptr.i.i.i = getelementptr i8, ptr %it.i, i32 %sub.i.i.i
  %32 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i69.i)
  br label %do_devconfig_ioctl.exit.thread

if.end40.i:                                       ; preds = %if.end.i.i.i
  %arrayidx.i = getelementptr inbounds [20 x i8], ptr %it.i, i32 0, i32 19
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx41.i = getelementptr inbounds %struct.comedi_devconfig, ptr %it.i, i32 0, i32 1, i32 31
  %34 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool42.not.i = icmp eq i32 %35, 0
  br i1 %tobool42.not.i, label %if.end47.i, label %do.end46.i

do.end46.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 4
  %36 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.41) #18
  br label %do_devconfig_ioctl.exit.thread

if.end47.i:                                       ; preds = %if.end40.i
  %minor.i = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 5
  %38 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %minor.i, align 4
  %40 = load i16, ptr @comedi_num_legacy_minors, align 2
  %conv.i = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv.i)
  %cmp48.not.i = icmp slt i32 %39, %conv.i
  br i1 %cmp48.not.i, label %do_devconfig_ioctl.exit, label %if.end47.i.do_devconfig_ioctl.exit.thread_crit_edge

if.end47.i.do_devconfig_ioctl.exit.thread_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_devconfig_ioctl.exit.thread

do_devconfig_ioctl.exit.thread:                   ; preds = %if.end47.i.do_devconfig_ioctl.exit.thread_crit_edge, %do.end46.i, %if.then11.i.i.i, %land.lhs.true.i.i357.do_devconfig_ioctl.exit.thread_crit_edge, %for.body.i.i.do_devconfig_ioctl.exit.thread_crit_edge, %if.end.i.do_devconfig_ioctl.exit.thread_crit_edge
  %retval.0.i359.ph = phi i32 [ -14, %if.then11.i.i.i ], [ -16, %if.end47.i.do_devconfig_ioctl.exit.thread_crit_edge ], [ -1, %if.end.i.do_devconfig_ioctl.exit.thread_crit_edge ], [ -22, %do.end46.i ], [ -16, %land.lhs.true.i.i357.do_devconfig_ioctl.exit.thread_crit_edge ], [ -16, %for.body.i.i.do_devconfig_ioctl.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %it.i) #13
  br label %done

do_devconfig_ioctl.exit:                          ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  %call52.i = call i32 @comedi_device_attach(ptr noundef %7, ptr noundef nonnull %it.i) #13
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %it.i) #13
  br label %done

if.then7:                                         ; preds = %if.then34.i, %if.end32.i.if.then7_crit_edge
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %it.i) #13
  br i1 %tobool27.not.i, label %if.then7.land.lhs.true_crit_edge, label %if.then7.done_crit_edge

if.then7.done_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then7.land.lhs.true_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then7.land.lhs.true_crit_edge, %if.then7.thread420
  %minor9 = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 5
  %41 = ptrtoint ptr %minor9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %minor9, align 4
  %43 = load i16, ptr @comedi_num_legacy_minors, align 2
  %conv = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv)
  %cmp10.not = icmp slt i32 %42, %conv
  br i1 %cmp10.not, label %land.lhs.true.done_crit_edge, label %if.then12

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call fastcc zeroext i1 @comedi_clear_board_dev(ptr noundef %7)
  br i1 %call13, label %if.then14, label %if.then12.done_crit_edge

if.then12.done_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef %mutex) #13
  call fastcc void @comedi_free_board_dev(ptr noundef %7)
  br label %cleanup122

if.end19:                                         ; preds = %entry
  %attached = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 10
  %44 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body, label %if.end28

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comedi_unlocked_ioctl.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@comedi_unlocked_ioctl, %done)) #13
          to label %if.then26 [label %done], !srcloc !302

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %7, i32 0, i32 4
  %45 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @comedi_unlocked_ioctl.__UNIQUE_ID_ddebug275, ptr noundef %46, ptr noundef nonnull @.str.30) #13
  br label %done

if.end28:                                         ; preds = %if.end19
  %47 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end28.done_crit_edge [
    i32 -2145360883, label %sw.bb
    i32 -2135923711, label %sw.bb30
    i32 -2142739454, label %sw.bb32
    i32 -2145360893, label %sw.bb34
    i32 -2146933752, label %sw.bb40
    i32 -1070832626, label %sw.bb48
    i32 25605, label %sw.bb50
    i32 25606, label %sw.bb52
    i32 25607, label %sw.bb54
    i32 -2143263735, label %sw.bb56
    i32 -2143263734, label %sw.bb71
    i32 -2146933749, label %sw.bb88
    i32 -2145360884, label %sw.bb107
    i32 25615, label %sw.bb115
    i32 25616, label %sw.bb117
    i32 25617, label %sw.bb119
  ]

if.end28.done_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %48 = inttoptr i32 %arg to ptr
  %call29 = tail call fastcc i32 @do_bufconfig_ioctl(ptr noundef %7, ptr noundef %48)
  br label %done

sw.bb30:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %49 = inttoptr i32 %arg to ptr
  %call31 = tail call fastcc i32 @do_devinfo_ioctl(ptr noundef %7, ptr noundef %49, ptr noundef %file)
  br label %done

sw.bb32:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %50 = inttoptr i32 %arg to ptr
  %call33 = tail call fastcc i32 @do_subdinfo_ioctl(ptr noundef %7, ptr noundef %50, ptr noundef %file)
  br label %done

sw.bb34:                                          ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %it) #13
  %51 = inttoptr i32 %arg to ptr
  %52 = call ptr @memset(ptr %it, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %sw.bb34.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb34.if.then11.i.i_crit_edge:                  ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb34
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %51, i32 32, i32 -1226833920) #19, !srcloc !309
  %asmresult.i.i = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !298

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %it, i32 noundef 32) #13
  %54 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !310
  %and.i.i.i.i = and i32 %56, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %it, ptr noundef %51, i32 noundef 32) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !298

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb34.if.then11.i.i_crit_edge
  %res.0.i.i375 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %sw.bb34.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i375
  %add.ptr.i.i = getelementptr i8, ptr %it, i32 %sub.i.i
  %57 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i375)
  br label %if.end39

if.else:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = call fastcc i32 @do_chaninfo_ioctl(ptr noundef %7, ptr noundef nonnull %it)
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then11.i.i
  %rc.0 = phi i32 [ %call38, %if.else ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %it) #13
  br label %done

sw.bb40:                                          ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %it41) #13
  %58 = ptrtoint ptr %it41 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %it41, align 4, !annotation !314
  %59 = getelementptr inbounds %struct.comedi_rangeinfo, ptr %it41, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -1 to ptr), ptr %59, align 4, !annotation !314
  %61 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i195 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i195, label %sw.bb40.if.then11.i.i211_crit_edge, label %land.lhs.true.i.i198

sw.bb40.if.then11.i.i211_crit_edge:               ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i211

land.lhs.true.i.i198:                             ; preds = %sw.bb40
  %62 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %61, i32 8, i32 -1226833920) #19, !srcloc !309
  %asmresult.i.i196 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i196)
  %cmp.i6.i197 = icmp eq i32 %asmresult.i.i196, 0
  br i1 %cmp.i6.i197, label %if.end.i.i208, label %land.lhs.true.i.i198.if.then11.i.i211_crit_edge, !prof !298

land.lhs.true.i.i198.if.then11.i.i211_crit_edge:  ; preds = %land.lhs.true.i.i198
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i211

if.end.i.i208:                                    ; preds = %land.lhs.true.i.i198
  %call.i.i.i199 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %it41, i32 noundef 8) #13
  %63 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i200 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i200 to ptr
  %cpu_domain.i.i.i.i.i201 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i201) #10, !srcloc !310
  %and.i.i.i.i202 = and i32 %65, -13
  %or.i.i.i.i203 = or i32 %and.i.i.i.i202, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i203) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i204 = call i32 @arm_copy_from_user(ptr noundef nonnull %it41, ptr noundef %61, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i204)
  %tobool4.not.i.i207 = icmp eq i32 %call1.i.i.i204, 0
  br i1 %tobool4.not.i.i207, label %if.else45, label %if.end.i.i208.if.then11.i.i211_crit_edge, !prof !298

if.end.i.i208.if.then11.i.i211_crit_edge:         ; preds = %if.end.i.i208
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i211

if.then11.i.i211:                                 ; preds = %if.end.i.i208.if.then11.i.i211_crit_edge, %land.lhs.true.i.i198.if.then11.i.i211_crit_edge, %sw.bb40.if.then11.i.i211_crit_edge
  %res.0.i.i206380 = phi i32 [ %call1.i.i.i204, %if.end.i.i208.if.then11.i.i211_crit_edge ], [ 8, %sw.bb40.if.then11.i.i211_crit_edge ], [ 8, %land.lhs.true.i.i198.if.then11.i.i211_crit_edge ]
  %sub.i.i209 = sub i32 8, %res.0.i.i206380
  %add.ptr.i.i210 = getelementptr i8, ptr %it41, i32 %sub.i.i209
  %66 = call ptr @memset(ptr %add.ptr.i.i210, i32 0, i32 %res.0.i.i206380)
  br label %if.end47

if.else45:                                        ; preds = %if.end.i.i208
  call void @__sanitizer_cov_trace_pc() #15
  %call46 = call i32 @do_rangeinfo_ioctl(ptr noundef %7, ptr noundef nonnull %it41) #13
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then11.i.i211
  %rc.1 = phi i32 [ %call46, %if.else45 ], [ -14, %if.then11.i.i211 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %it41) #13
  br label %done

sw.bb48:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %67 = inttoptr i32 %arg to ptr
  %call49 = tail call fastcc i32 @do_bufinfo_ioctl(ptr noundef %7, ptr noundef %67, ptr noundef %file)
  br label %done

sw.bb50:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %call51 = tail call fastcc i32 @do_lock_ioctl(ptr noundef %7, i32 noundef %arg, ptr noundef %file)
  br label %done

sw.bb52:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %call53 = tail call fastcc i32 @do_unlock_ioctl(ptr noundef %7, i32 noundef %arg, ptr noundef %file)
  br label %done

sw.bb54:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %call55 = tail call fastcc i32 @do_cancel_ioctl(ptr noundef %7, i32 noundef %arg, ptr noundef %file)
  br label %done

sw.bb56:                                          ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd57) #13
  %68 = call ptr @memset(ptr %cmd57, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %copy) #13
  %69 = ptrtoint ptr %copy to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %copy, align 1
  %70 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i218 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i218, label %sw.bb56.if.then11.i.i234_crit_edge, label %land.lhs.true.i.i221

sw.bb56.if.then11.i.i234_crit_edge:               ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i234

land.lhs.true.i.i221:                             ; preds = %sw.bb56
  %71 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %70, i32 64, i32 -1226833920) #19
  %asmresult.i.i219 = extractvalue { i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i219)
  %cmp.i6.i220 = icmp eq i32 %asmresult.i.i219, 0
  br i1 %cmp.i6.i220, label %if.end.i.i231, label %land.lhs.true.i.i221.if.then11.i.i234_crit_edge, !prof !298

land.lhs.true.i.i221.if.then11.i.i234_crit_edge:  ; preds = %land.lhs.true.i.i221
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i234

if.end.i.i231:                                    ; preds = %land.lhs.true.i.i221
  %call.i.i.i222 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd57, i32 noundef 64) #13
  %72 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i223 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i.i223 to ptr
  %cpu_domain.i.i.i.i.i224 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 4
  %74 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i224) #10, !srcloc !310
  %and.i.i.i.i225 = and i32 %74, -13
  %or.i.i.i.i226 = or i32 %and.i.i.i.i225, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i226) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i227 = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd57, ptr noundef %70, i32 noundef 64) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i227)
  %tobool4.not.i.i230 = icmp eq i32 %call1.i.i.i227, 0
  br i1 %tobool4.not.i.i230, label %if.end61, label %if.end.i.i231.if.then11.i.i234_crit_edge, !prof !298

if.end.i.i231.if.then11.i.i234_crit_edge:         ; preds = %if.end.i.i231
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i234

if.then11.i.i234:                                 ; preds = %if.end.i.i231.if.then11.i.i234_crit_edge, %land.lhs.true.i.i221.if.then11.i.i234_crit_edge, %sw.bb56.if.then11.i.i234_crit_edge
  %res.0.i.i229385 = phi i32 [ %call1.i.i.i227, %if.end.i.i231.if.then11.i.i234_crit_edge ], [ 64, %sw.bb56.if.then11.i.i234_crit_edge ], [ 64, %land.lhs.true.i.i221.if.then11.i.i234_crit_edge ]
  %sub.i.i232 = sub i32 64, %res.0.i.i229385
  %add.ptr.i.i233 = getelementptr i8, ptr %cmd57, i32 %sub.i.i232
  %75 = call ptr @memset(ptr %add.ptr.i.i233, i32 0, i32 %res.0.i.i229385)
  br label %cleanup

if.end61:                                         ; preds = %if.end.i.i231
  %call62 = call fastcc i32 @do_cmd_ioctl(ptr noundef %7, ptr noundef nonnull %cmd57, ptr noundef nonnull %copy, ptr noundef %file)
  %76 = ptrtoint ptr %copy to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %copy, align 1, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool63.not = icmp eq i8 %77, 0
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %if.end8.i.i240

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i240:                                   ; preds = %if.end61
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i241 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i241, label %if.end8.i.i240.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i240.cleanup_crit_edge:                 ; preds = %if.end8.i.i240
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i240
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i245 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cmd57, i32 noundef 64) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %70, ptr noundef nonnull %cmd57, i32 noundef 64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool67.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool67.not, i32 %call62, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i240.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then11.i.i234
  %rc.3 = phi i32 [ %call62, %if.end61.cleanup_crit_edge ], [ -14, %if.then11.i.i234 ], [ -14, %if.end8.i.i240.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %copy) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd57) #13
  br label %done

sw.bb71:                                          ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd72) #13
  %78 = call ptr @memset(ptr %cmd72, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %copy73) #13
  %79 = ptrtoint ptr %copy73 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %copy73, align 1
  %80 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i251 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i251, label %sw.bb71.if.then11.i.i267_crit_edge, label %land.lhs.true.i.i254

sw.bb71.if.then11.i.i267_crit_edge:               ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i267

land.lhs.true.i.i254:                             ; preds = %sw.bb71
  %81 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %80, i32 64, i32 -1226833920) #19
  %asmresult.i.i252 = extractvalue { i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i252)
  %cmp.i6.i253 = icmp eq i32 %asmresult.i.i252, 0
  br i1 %cmp.i6.i253, label %if.end.i.i264, label %land.lhs.true.i.i254.if.then11.i.i267_crit_edge, !prof !298

land.lhs.true.i.i254.if.then11.i.i267_crit_edge:  ; preds = %land.lhs.true.i.i254
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i267

if.end.i.i264:                                    ; preds = %land.lhs.true.i.i254
  %call.i.i.i255 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd72, i32 noundef 64) #13
  %82 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i256 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i256 to ptr
  %cpu_domain.i.i.i.i.i257 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 4
  %84 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i257) #10, !srcloc !310
  %and.i.i.i.i258 = and i32 %84, -13
  %or.i.i.i.i259 = or i32 %and.i.i.i.i258, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i259) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i260 = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd72, ptr noundef %80, i32 noundef 64) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i260)
  %tobool4.not.i.i263 = icmp eq i32 %call1.i.i.i260, 0
  br i1 %tobool4.not.i.i263, label %if.end77, label %if.end.i.i264.if.then11.i.i267_crit_edge, !prof !298

if.end.i.i264.if.then11.i.i267_crit_edge:         ; preds = %if.end.i.i264
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i267

if.then11.i.i267:                                 ; preds = %if.end.i.i264.if.then11.i.i267_crit_edge, %land.lhs.true.i.i254.if.then11.i.i267_crit_edge, %sw.bb71.if.then11.i.i267_crit_edge
  %res.0.i.i262392 = phi i32 [ %call1.i.i.i260, %if.end.i.i264.if.then11.i.i267_crit_edge ], [ 64, %sw.bb71.if.then11.i.i267_crit_edge ], [ 64, %land.lhs.true.i.i254.if.then11.i.i267_crit_edge ]
  %sub.i.i265 = sub i32 64, %res.0.i.i262392
  %add.ptr.i.i266 = getelementptr i8, ptr %cmd72, i32 %sub.i.i265
  %85 = call ptr @memset(ptr %add.ptr.i.i266, i32 0, i32 %res.0.i.i262392)
  br label %cleanup86

if.end77:                                         ; preds = %if.end.i.i264
  %call78 = call fastcc i32 @do_cmdtest_ioctl(ptr noundef %7, ptr noundef nonnull %cmd72, ptr noundef nonnull %copy73)
  %86 = ptrtoint ptr %copy73 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %copy73, align 1, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool79.not = icmp eq i8 %87, 0
  br i1 %tobool79.not, label %if.end77.cleanup86_crit_edge, label %if.end8.i.i273

if.end77.cleanup86_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

if.end8.i.i273:                                   ; preds = %if.end77
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i274 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i274, label %if.end8.i.i273.cleanup86_crit_edge, label %copy_to_user.exit282

if.end8.i.i273.cleanup86_crit_edge:               ; preds = %if.end8.i.i273
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

copy_to_user.exit282:                             ; preds = %if.end8.i.i273
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i278 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cmd72, i32 noundef 64) #13
  %call.i12.i.i279 = call i32 @arm_copy_to_user(ptr noundef %80, ptr noundef nonnull %cmd72, i32 noundef 64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i279)
  %tobool83.not = icmp eq i32 %call.i12.i.i279, 0
  %spec.select419 = select i1 %tobool83.not, i32 %call78, i32 -14
  br label %cleanup86

cleanup86:                                        ; preds = %copy_to_user.exit282, %if.end8.i.i273.cleanup86_crit_edge, %if.end77.cleanup86_crit_edge, %if.then11.i.i267
  %rc.5 = phi i32 [ %call78, %if.end77.cleanup86_crit_edge ], [ -14, %if.then11.i.i267 ], [ -14, %if.end8.i.i273.cleanup86_crit_edge ], [ %spec.select419, %copy_to_user.exit282 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %copy73) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd72) #13
  br label %done

sw.bb88:                                          ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %insnlist) #13
  %88 = ptrtoint ptr %insnlist to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %insnlist, align 4, !annotation !314
  %89 = getelementptr inbounds %struct.comedi_insnlist, ptr %insnlist, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 -1 to ptr), ptr %89, align 4, !annotation !314
  %91 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i287 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i287, label %sw.bb88.if.then11.i.i303_crit_edge, label %land.lhs.true.i.i290

sw.bb88.if.then11.i.i303_crit_edge:               ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i303

land.lhs.true.i.i290:                             ; preds = %sw.bb88
  %92 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %91, i32 8, i32 -1226833920) #19, !srcloc !309
  %asmresult.i.i288 = extractvalue { i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i288)
  %cmp.i6.i289 = icmp eq i32 %asmresult.i.i288, 0
  br i1 %cmp.i6.i289, label %if.end.i.i300, label %land.lhs.true.i.i290.if.then11.i.i303_crit_edge, !prof !298

land.lhs.true.i.i290.if.then11.i.i303_crit_edge:  ; preds = %land.lhs.true.i.i290
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i303

if.end.i.i300:                                    ; preds = %land.lhs.true.i.i290
  %call.i.i.i291 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %insnlist, i32 noundef 8) #13
  %93 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i292 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i.i292 to ptr
  %cpu_domain.i.i.i.i.i293 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 4
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i293) #10, !srcloc !310
  %and.i.i.i.i294 = and i32 %95, -13
  %or.i.i.i.i295 = or i32 %and.i.i.i.i294, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i295) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i296 = call i32 @arm_copy_from_user(ptr noundef nonnull %insnlist, ptr noundef %91, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i296)
  %tobool4.not.i.i299 = icmp eq i32 %call1.i.i.i296, 0
  br i1 %tobool4.not.i.i299, label %if.end92, label %if.end.i.i300.if.then11.i.i303_crit_edge, !prof !298

if.end.i.i300.if.then11.i.i303_crit_edge:         ; preds = %if.end.i.i300
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i303

if.then11.i.i303:                                 ; preds = %if.end.i.i300.if.then11.i.i303_crit_edge, %land.lhs.true.i.i290.if.then11.i.i303_crit_edge, %sw.bb88.if.then11.i.i303_crit_edge
  %res.0.i.i298399 = phi i32 [ %call1.i.i.i296, %if.end.i.i300.if.then11.i.i303_crit_edge ], [ 8, %sw.bb88.if.then11.i.i303_crit_edge ], [ 8, %land.lhs.true.i.i290.if.then11.i.i303_crit_edge ]
  %sub.i.i301 = sub i32 8, %res.0.i.i298399
  %add.ptr.i.i302 = getelementptr i8, ptr %insnlist, i32 %sub.i.i301
  %96 = call ptr @memset(ptr %add.ptr.i.i302, i32 0, i32 %res.0.i.i298399)
  br label %cleanup105

if.end92:                                         ; preds = %if.end.i.i300
  %97 = ptrtoint ptr %insnlist to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %insnlist, align 4
  %99 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %98, i32 32) #13
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %if.end92.cleanup105_crit_edge, label %if.end7.i.i, !prof !301

if.end92.cleanup105_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup105

if.end7.i.i:                                      ; preds = %if.end92
  %101 = extractvalue { i32, i1 } %99, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %101, i32 noundef 3520) #16
  %tobool94.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool94.not, label %if.end7.i.i.cleanup105_crit_edge, label %if.end96

if.end7.i.i.cleanup105_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup105

if.end96:                                         ; preds = %if.end7.i.i
  %102 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %89, align 4
  %104 = ptrtoint ptr %insnlist to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %insnlist, align 4
  %mul = shl i32 %105, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end96
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then101_crit_edge, label %if.then27.i.i, !prof !298

land.rhs16.i.i.if.then101_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then101

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.then101

if.then.i.i.i:                                    ; preds = %if.end96
  call void @__check_object_size(ptr noundef nonnull %call8.i.i, i32 noundef %mul, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i310 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i310, label %if.then.i.i.i.if.end.i.i323_crit_edge, label %land.lhs.true.i.i313

if.then.i.i.i.if.end.i.i323_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i323

land.lhs.true.i.i313:                             ; preds = %if.then.i.i.i
  %106 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %103, i32 %mul, i32 -1226833920) #19, !srcloc !309
  %asmresult.i.i311 = extractvalue { i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i311)
  %cmp.i6.i312 = icmp eq i32 %asmresult.i.i311, 0
  br i1 %cmp.i6.i312, label %if.then.i7.i320, label %land.lhs.true.i.i313.if.end.i.i323_crit_edge, !prof !298

land.lhs.true.i.i313.if.end.i.i323_crit_edge:     ; preds = %land.lhs.true.i.i313
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i323

if.then.i7.i320:                                  ; preds = %land.lhs.true.i.i313
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i314 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i.i, i32 noundef %mul) #13
  %107 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i315 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i.i315 to ptr
  %cpu_domain.i.i.i.i.i316 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 4
  %109 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i316) #10, !srcloc !310
  %and.i.i.i.i317 = and i32 %109, -13
  %or.i.i.i.i318 = or i32 %and.i.i.i.i317, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i318) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i319 = call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i.i, ptr noundef %103, i32 noundef %mul) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  br label %if.end.i.i323

if.end.i.i323:                                    ; preds = %if.then.i7.i320, %land.lhs.true.i.i313.if.end.i.i323_crit_edge, %if.then.i.i.i.if.end.i.i323_crit_edge
  %res.0.i.i321 = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i323_crit_edge ], [ %call1.i.i.i319, %if.then.i7.i320 ], [ %mul, %land.lhs.true.i.i313.if.end.i.i323_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i321)
  %tobool4.not.i.i322 = icmp eq i32 %res.0.i.i321, 0
  br i1 %tobool4.not.i.i322, label %if.end102, label %if.then11.i.i326, !prof !298

if.then11.i.i326:                                 ; preds = %if.end.i.i323
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i324 = sub i32 %mul, %res.0.i.i321
  %add.ptr.i.i325 = getelementptr i8, ptr %call8.i.i, i32 %sub.i.i324
  %110 = call ptr @memset(ptr %add.ptr.i.i325, i32 0, i32 %res.0.i.i321)
  br label %if.then101

if.then101:                                       ; preds = %if.then11.i.i326, %if.then27.i.i, %land.rhs16.i.i.if.then101_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup105

if.end102:                                        ; preds = %if.end.i.i323
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %insnlist to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %insnlist, align 4
  %call104 = call fastcc i32 @do_insnlist_ioctl(ptr noundef %7, ptr noundef nonnull %call8.i.i, i32 noundef %112, ptr noundef %file)
  call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup105

cleanup105:                                       ; preds = %if.end102, %if.then101, %if.end7.i.i.cleanup105_crit_edge, %if.end92.cleanup105_crit_edge, %if.then11.i.i303
  %rc.6 = phi i32 [ -14, %if.then101 ], [ %call104, %if.end102 ], [ -12, %if.end7.i.i.cleanup105_crit_edge ], [ -14, %if.then11.i.i303 ], [ -12, %if.end92.cleanup105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %insnlist) #13
  br label %done

sw.bb107:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %insn) #13
  %113 = inttoptr i32 %arg to ptr
  %114 = call ptr @memset(ptr %insn, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i335 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i335, label %sw.bb107.if.then11.i.i352_crit_edge, label %land.lhs.true.i.i339

sw.bb107.if.then11.i.i352_crit_edge:              ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i352

land.lhs.true.i.i339:                             ; preds = %sw.bb107
  %115 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %113, i32 32, i32 -1226833920) #19, !srcloc !309
  %asmresult.i.i337 = extractvalue { i32, i32 } %115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i337)
  %cmp.i6.i338 = icmp eq i32 %asmresult.i.i337, 0
  br i1 %cmp.i6.i338, label %if.end.i.i349, label %land.lhs.true.i.i339.if.then11.i.i352_crit_edge, !prof !298

land.lhs.true.i.i339.if.then11.i.i352_crit_edge:  ; preds = %land.lhs.true.i.i339
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i352

if.end.i.i349:                                    ; preds = %land.lhs.true.i.i339
  %call.i.i.i340 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %insn, i32 noundef 32) #13
  %116 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i341 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i.i341 to ptr
  %cpu_domain.i.i.i.i.i342 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 4
  %118 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i342) #10, !srcloc !310
  %and.i.i.i.i343 = and i32 %118, -13
  %or.i.i.i.i344 = or i32 %and.i.i.i.i343, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i344) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i345 = call i32 @arm_copy_from_user(ptr noundef nonnull %insn, ptr noundef %113, i32 noundef 32) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %118) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i345)
  %tobool4.not.i.i348 = icmp eq i32 %call1.i.i.i345, 0
  br i1 %tobool4.not.i.i348, label %if.else111, label %if.end.i.i349.if.then11.i.i352_crit_edge, !prof !298

if.end.i.i349.if.then11.i.i352_crit_edge:         ; preds = %if.end.i.i349
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i352

if.then11.i.i352:                                 ; preds = %if.end.i.i349.if.then11.i.i352_crit_edge, %land.lhs.true.i.i339.if.then11.i.i352_crit_edge, %sw.bb107.if.then11.i.i352_crit_edge
  %res.0.i.i347416 = phi i32 [ %call1.i.i.i345, %if.end.i.i349.if.then11.i.i352_crit_edge ], [ 32, %sw.bb107.if.then11.i.i352_crit_edge ], [ 32, %land.lhs.true.i.i339.if.then11.i.i352_crit_edge ]
  %sub.i.i350 = sub i32 32, %res.0.i.i347416
  %add.ptr.i.i351 = getelementptr i8, ptr %insn, i32 %sub.i.i350
  %119 = call ptr @memset(ptr %add.ptr.i.i351, i32 0, i32 %res.0.i.i347416)
  br label %if.end113

if.else111:                                       ; preds = %if.end.i.i349
  call void @__sanitizer_cov_trace_pc() #15
  %call112 = call fastcc i32 @do_insn_ioctl(ptr noundef %7, ptr noundef nonnull %insn, ptr noundef %file)
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %if.then11.i.i352
  %rc.7 = phi i32 [ %call112, %if.else111 ], [ -14, %if.then11.i.i352 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %insn) #13
  br label %done

sw.bb115:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %call116 = tail call fastcc i32 @do_poll_ioctl(ptr noundef %7, i32 noundef %arg, ptr noundef %file)
  br label %done

sw.bb117:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %call118 = tail call fastcc i32 @do_setrsubd_ioctl(ptr noundef %7, i32 noundef %arg, ptr noundef %file)
  br label %done

sw.bb119:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %call120 = tail call fastcc i32 @do_setwsubd_ioctl(ptr noundef %7, i32 noundef %arg, ptr noundef %file)
  br label %done

done:                                             ; preds = %sw.bb119, %sw.bb117, %sw.bb115, %if.end113, %cleanup105, %cleanup86, %cleanup, %sw.bb54, %sw.bb52, %sw.bb50, %sw.bb48, %if.end47, %if.end39, %sw.bb32, %sw.bb30, %sw.bb, %if.end28.done_crit_edge, %if.then26, %do.body, %if.then12.done_crit_edge, %land.lhs.true.done_crit_edge, %if.then7.done_crit_edge, %do_devconfig_ioctl.exit, %do_devconfig_ioctl.exit.thread, %if.then.done_crit_edge
  %rc.8 = phi i32 [ 0, %if.then12.done_crit_edge ], [ 0, %land.lhs.true.done_crit_edge ], [ 0, %if.then7.done_crit_edge ], [ %call120, %sw.bb119 ], [ %call118, %sw.bb117 ], [ %call116, %sw.bb115 ], [ %rc.7, %if.end113 ], [ %rc.6, %cleanup105 ], [ %rc.5, %cleanup86 ], [ %rc.3, %cleanup ], [ %call55, %sw.bb54 ], [ %call53, %sw.bb52 ], [ %call51, %sw.bb50 ], [ %call49, %sw.bb48 ], [ %rc.1, %if.end47 ], [ %rc.0, %if.end39 ], [ %call33, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %call29, %sw.bb ], [ -25, %if.then.done_crit_edge ], [ -19, %if.then26 ], [ -25, %if.end28.done_crit_edge ], [ %retval.0.i359.ph, %do_devconfig_ioctl.exit.thread ], [ -19, %do.body ], [ %call52.i, %do_devconfig_ioctl.exit ]
  call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup122

cleanup122:                                       ; preds = %done, %if.then14
  %retval.0 = phi i32 [ %rc.8, %done ], [ 0, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %attach_lock = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 13
  %call = tail call i32 @down_read_trylock(ptr noundef %attach_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup84_crit_edge, label %if.end

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup84

if.end:                                           ; preds = %entry
  %attached = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool3.not, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comedi_mmap.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@comedi_mmap, %done)) #13
          to label %if.then10 [label %done], !srcloc !302

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @comedi_mmap.__UNIQUE_ID_ddebug276, ptr noundef %8, ptr noundef nonnull @.str.30) #13
  br label %done

if.end12:                                         ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %9 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_flags, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %last_attached.i.i136 = getelementptr inbounds %struct.comedi_file, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %last_attached.i.i136 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i137 = load i8, ptr %last_attached.i.i136, align 4
  %attached.i.i138 = getelementptr inbounds %struct.comedi_device, ptr %14, i32 0, i32 10
  %16 = ptrtoint ptr %attached.i.i138 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load2.i.i139 = load i8, ptr %attached.i.i138, align 4
  %cmp.not.unshifted.i.i140 = xor i8 %bf.load2.i.i139, %bf.load.i.i137
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i.i140)
  %cmp.not.i.i141 = icmp sgt i8 %cmp.not.unshifted.i.i140, -1
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  br i1 %cmp.not.i.i141, label %lor.lhs.false.i.i, label %if.then14.if.then.i.i_crit_edge

if.then14.if.then.i.i_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then14
  %last_detach_count.i.i = getelementptr inbounds %struct.comedi_file, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %last_detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_detach_count.i.i, align 4
  %detach_count.i.i = getelementptr inbounds %struct.comedi_device, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %detach_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp5.not.i.i = icmp eq i32 %18, %20
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i.i.comedi_file_write_subdevice.exit_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i.comedi_file_write_subdevice.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_write_subdevice.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then14.if.then.i.i_crit_edge
  tail call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_write_subdevice.exit

comedi_file_write_subdevice.exit:                 ; preds = %if.then.i.i, %lor.lhs.false.i.i.comedi_file_write_subdevice.exit_crit_edge
  %write_subdev.i = getelementptr inbounds %struct.comedi_file, ptr %12, i32 0, i32 2
  br label %if.end17

if.else:                                          ; preds = %if.end12
  br i1 %cmp.not.i.i141, label %lor.lhs.false.i.i145, label %if.else.if.then.i.i146_crit_edge

if.else.if.then.i.i146_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i146

lor.lhs.false.i.i145:                             ; preds = %if.else
  %last_detach_count.i.i142 = getelementptr inbounds %struct.comedi_file, ptr %12, i32 0, i32 3
  %21 = ptrtoint ptr %last_detach_count.i.i142 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_detach_count.i.i142, align 4
  %detach_count.i.i143 = getelementptr inbounds %struct.comedi_device, ptr %14, i32 0, i32 6
  %23 = ptrtoint ptr %detach_count.i.i143 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %detach_count.i.i143, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp5.not.i.i144 = icmp eq i32 %22, %24
  br i1 %cmp5.not.i.i144, label %lor.lhs.false.i.i145.comedi_file_read_subdevice.exit_crit_edge, label %lor.lhs.false.i.i145.if.then.i.i146_crit_edge

lor.lhs.false.i.i145.if.then.i.i146_crit_edge:    ; preds = %lor.lhs.false.i.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i146

lor.lhs.false.i.i145.comedi_file_read_subdevice.exit_crit_edge: ; preds = %lor.lhs.false.i.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_read_subdevice.exit

if.then.i.i146:                                   ; preds = %lor.lhs.false.i.i145.if.then.i.i146_crit_edge, %if.else.if.then.i.i146_crit_edge
  tail call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_read_subdevice.exit

comedi_file_read_subdevice.exit:                  ; preds = %if.then.i.i146, %lor.lhs.false.i.i145.comedi_file_read_subdevice.exit_crit_edge
  %read_subdev.i = getelementptr inbounds %struct.comedi_file, ptr %12, i32 0, i32 1
  br label %if.end17

if.end17:                                         ; preds = %comedi_file_read_subdevice.exit, %comedi_file_write_subdevice.exit
  %s.0.in = phi ptr [ %write_subdev.i, %comedi_file_write_subdevice.exit ], [ %read_subdev.i, %comedi_file_read_subdevice.exit ]
  %25 = ptrtoint ptr %s.0.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %s.0 = load volatile ptr, ptr %s.0.in, align 4
  %tobool18.not = icmp eq ptr %s.0, null
  br i1 %tobool18.not, label %if.end17.done_crit_edge, label %if.end20

if.end17.done_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end20:                                         ; preds = %if.end17
  %async21 = getelementptr inbounds %struct.comedi_subdevice, ptr %s.0, i32 0, i32 7
  %26 = ptrtoint ptr %async21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %async21, align 4
  %tobool22.not = icmp eq ptr %27, null
  br i1 %tobool22.not, label %if.end20.done_crit_edge, label %if.end24

if.end20.done_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end24:                                         ; preds = %if.end20
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %28 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not = icmp eq i32 %29, 0
  br i1 %cmp.not, label %if.end45, label %do.body26

do.body26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comedi_mmap.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@comedi_mmap, %done)) #13
          to label %if.then40 [label %done], !srcloc !302

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev41 = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %class_dev41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %class_dev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @comedi_mmap.__UNIQUE_ID_ddebug277, ptr noundef %31, ptr noundef nonnull @.str.85) #13
  br label %done

if.end45:                                         ; preds = %if.end24
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %32 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vm_end, align 4
  %34 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vma, align 4
  %sub = sub i32 %33, %35
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, ptr %27, i32 0, i32 1
  %36 = ptrtoint ptr %prealloc_bufsz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prealloc_bufsz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %37)
  %cmp47 = icmp ule i32 %sub, %37
  %and50 = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %or.cond = and i1 %cmp47, %tobool51.not
  br i1 %or.cond, label %if.end53, label %if.end45.done_crit_edge

if.end45.done_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end53:                                         ; preds = %if.end45
  %shr.i = lshr i32 %sub, 12
  %call55 = tail call ptr @comedi_buf_map_from_subdev_get(ptr noundef nonnull %s.0) #13
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.end53.done_crit_edge, label %lor.lhs.false

if.end53.done_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

lor.lhs.false:                                    ; preds = %if.end53
  %n_pages57 = getelementptr inbounds %struct.comedi_buf_map, ptr %call55, i32 0, i32 2
  %38 = ptrtoint ptr %n_pages57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_pages57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %39)
  %cmp58 = icmp ugt i32 %shr.i, %39
  br i1 %cmp58, label %lor.lhs.false.done_crit_edge, label %if.end60

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end60:                                         ; preds = %lor.lhs.false
  %dma_dir = getelementptr inbounds %struct.comedi_buf_map, ptr %call55, i32 0, i32 3
  %40 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp61.not = icmp eq i32 %41, 3
  br i1 %cmp61.not, label %for.cond.preheader, label %if.end77

for.cond.preheader:                               ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp65154.not = icmp ult i32 %sub, 4096
  br i1 %cmp65154.not, label %for.cond.preheader.if.then79_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then79_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then79

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %page_list66 = getelementptr inbounds %struct.comedi_buf_map, ptr %call55, i32 0, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %shr.i, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %start.0155 = phi i32 [ %5, %for.body.lr.ph ], [ %add76, %for.inc.for.body_crit_edge ]
  %42 = ptrtoint ptr %page_list66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %page_list66, align 4
  %arrayidx67 = getelementptr %struct.comedi_buf_page, ptr %43, i32 %i.0156
  %44 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx67, align 4
  %46 = ptrtoint ptr %45 to i32
  %sub69 = add i32 %46, 1073741824
  %shr = lshr i32 %sub69, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %47 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add71 = add i32 %shr, %47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_user to i32))
  %48 = load i32, ptr @pgprot_user, align 4
  %or = or i32 %48, 768
  %call72 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %start.0155, i32 noundef %add71, i32 noundef 4096, i32 noundef %or) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %for.inc, label %for.body.done_crit_edge

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

for.inc:                                          ; preds = %for.body
  %add76 = add i32 %start.0155, 4096
  %inc = add nuw nsw i32 %i.0156, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.if.then79_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.then79_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then79

if.end77:                                         ; preds = %if.end60
  %page_list = getelementptr inbounds %struct.comedi_buf_map, ptr %call55, i32 0, i32 1
  %49 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %page_list, align 4
  %51 = ptrtoint ptr %call55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call55, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %dma_addr = getelementptr inbounds %struct.comedi_buf_page, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_addr, align 4
  %mul = and i32 %sub, -4096
  %call63 = tail call i32 @dma_mmap_attrs(ptr noundef %52, ptr noundef %vma, ptr noundef %54, i32 noundef %56, i32 noundef %mul, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp78 = icmp eq i32 %call63, 0
  br i1 %cmp78, label %if.end77.if.then79_crit_edge, label %if.end77.done_crit_edge

if.end77.done_crit_edge:                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end77.if.then79_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then79

if.then79:                                        ; preds = %if.end77.if.then79_crit_edge, %for.inc.if.then79_crit_edge, %for.cond.preheader.if.then79_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %57 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @comedi_vm_ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %58 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call55, ptr %vm_private_data, align 4
  tail call void @comedi_buf_map_get(ptr noundef nonnull %call55) #13
  br label %done

done:                                             ; preds = %if.then79, %if.end77.done_crit_edge, %for.body.done_crit_edge, %lor.lhs.false.done_crit_edge, %if.end53.done_crit_edge, %if.end45.done_crit_edge, %if.then40, %do.body26, %if.end20.done_crit_edge, %if.end17.done_crit_edge, %if.then10, %do.body
  %retval2.2 = phi i32 [ 0, %if.then79 ], [ %call63, %if.end77.done_crit_edge ], [ -19, %if.then10 ], [ -22, %if.end17.done_crit_edge ], [ -22, %if.end20.done_crit_edge ], [ -22, %if.then40 ], [ -14, %if.end45.done_crit_edge ], [ -22, %lor.lhs.false.done_crit_edge ], [ -22, %if.end53.done_crit_edge ], [ -19, %do.body ], [ -22, %do.body26 ], [ %call72, %for.body.done_crit_edge ]
  %bm.0 = phi ptr [ %call55, %if.then79 ], [ %call55, %if.end77.done_crit_edge ], [ null, %if.then10 ], [ null, %if.end17.done_crit_edge ], [ null, %if.end20.done_crit_edge ], [ null, %if.then40 ], [ null, %if.end45.done_crit_edge ], [ %call55, %lor.lhs.false.done_crit_edge ], [ null, %if.end53.done_crit_edge ], [ null, %do.body ], [ null, %do.body26 ], [ %call55, %for.body.done_crit_edge ]
  tail call void @up_read(ptr noundef %attach_lock) #13
  %call83 = tail call i32 @comedi_buf_map_put(ptr noundef %bm.0) #13
  br label %cleanup84

cleanup84:                                        ; preds = %done, %entry.cleanup84_crit_edge
  %retval.0 = phi i32 [ %retval2.2, %done ], [ -11, %entry.cleanup84_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @comedi_dev_get_from_minor(i32 noundef %and.i)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comedi_open.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@comedi_open, %cleanup)) #13
          to label %if.then7 [label %cleanup], !srcloc !302

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @comedi_open.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.88) #13
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #17
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 @comedi_dev_put(ptr noundef nonnull %call1)
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %call7.i.i, align 8
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %call1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %attached = getelementptr inbounds %struct.comedi_device, ptr %call1, i32 0, i32 10
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool15.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool15.not, label %land.lhs.true, label %if.end13.land.lhs.true42_crit_edge

if.end13.land.lhs.true42_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42

land.lhs.true:                                    ; preds = %if.end13
  %call16 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call16, label %if.end36, label %do.body18

do.body18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comedi_open.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@comedi_open, %if.then61)) #13
          to label %if.then32 [label %if.then61], !srcloc !302

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %call1, i32 0, i32 4
  %5 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @comedi_open.__UNIQUE_ID_ddebug296, ptr noundef %6, ptr noundef nonnull @.str.89) #13
  br label %if.then61

if.end36:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load38.pr = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load38.pr)
  %tobool41.not = icmp sgt i8 %bf.load38.pr, -1
  br i1 %tobool41.not, label %if.end36.out_crit_edge, label %if.end36.land.lhs.true42_crit_edge

if.end36.land.lhs.true42_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true42:                                  ; preds = %if.end36.land.lhs.true42_crit_edge, %if.end13.land.lhs.true42_crit_edge
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then43, label %land.lhs.true42.out_crit_edge

land.lhs.true42.out_crit_edge:                    ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then43:                                        ; preds = %land.lhs.true42
  %driver = getelementptr inbounds %struct.comedi_device, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %module = getelementptr inbounds %struct.comedi_driver, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %module, align 4
  %call44 = tail call zeroext i1 @try_module_get(ptr noundef %13) #13
  br i1 %call44, label %if.end46, label %if.then43.if.then61_crit_edge

if.then43.if.then61_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61

if.end46:                                         ; preds = %if.then43
  %open = getelementptr inbounds %struct.comedi_device, ptr %call1, i32 0, i32 24
  %14 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %open, align 4
  %tobool47.not = icmp eq ptr %15, null
  br i1 %tobool47.not, label %if.end46.out_crit_edge, label %if.then48

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then48:                                        ; preds = %if.end46
  %call50 = tail call i32 %15(ptr noundef nonnull %call1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.then48.out_crit_edge

if.then48.out_crit_edge:                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then52:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 4
  %module54 = getelementptr inbounds %struct.comedi_driver, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %module54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module54, align 4
  tail call void @module_put(ptr noundef %19) #13
  br label %if.then61

out:                                              ; preds = %if.then48.out_crit_edge, %if.end46.out_crit_edge, %land.lhs.true42.out_crit_edge, %if.end36.out_crit_edge
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call1, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %call1, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call fastcc void @comedi_file_reset(ptr noundef %file)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

if.then61:                                        ; preds = %if.then52, %if.then43.if.then61_crit_edge, %if.then32, %do.body18
  %rc.0.ph = phi i32 [ -6, %if.then43.if.then61_crit_edge ], [ -19, %if.then32 ], [ %call50, %if.then52 ], [ -19, %do.body18 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  %call62 = tail call i32 @comedi_dev_put(ptr noundef nonnull %call1)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %out, %if.then11, %if.then7, %do.body
  %retval.0 = phi i32 [ -12, %if.then11 ], [ -19, %if.then7 ], [ %rc.0.ph, %if.then61 ], [ 0, %out ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_close(ptr nocapture noundef readnone %inode, ptr noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subdevices, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %for.cond.preheader

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

for.cond.preheader:                               ; preds = %entry
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp42 = icmp sgt i32 %7, 0
  br i1 %cmp42, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end9_crit_edge

for.cond.preheader.if.end9_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subdevices, align 4
  %busy = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.043, i32 9
  %10 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %busy, align 4
  %cmp3 = icmp eq ptr %11, %file
  br i1 %cmp3, label %if.then4, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.043
  %call = tail call fastcc i32 @do_cancel(ptr noundef %3, ptr noundef %arrayidx)
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body.if.end_crit_edge
  %lock = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.043, i32 8
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  %cmp5 = icmp eq ptr %13, %file
  br i1 %cmp5, label %if.then6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %lock, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %15 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_subdevices, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end9_crit_edge

for.inc.if.end9_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end9:                                          ; preds = %for.inc.if.end9_crit_edge, %for.cond.preheader.if.end9_crit_edge, %entry.if.end9_crit_edge
  %attached = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool10.not, label %if.end9.if.end17_crit_edge, label %land.lhs.true

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end9
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp11 = icmp eq i32 %19, 1
  br i1 %cmp11, label %if.then12, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then12:                                        ; preds = %land.lhs.true
  %close = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 25
  %20 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %close, align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %if.then12.if.end16_crit_edge, label %if.then14

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %21(ptr noundef %3) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then12.if.end16_crit_edge
  %driver = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver, align 4
  %module = getelementptr inbounds %struct.comedi_driver, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %25) #13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %land.lhs.true.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  %call20 = tail call i32 @comedi_dev_put(ptr noundef %3)
  tail call void @kfree(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %async_queue = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 23
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %async_queue) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @comedi_file_read_subdevice(ptr nocapture noundef readonly %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %last_attached.i = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_attached.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %last_attached.i, align 4
  %attached.i = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %attached.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load2.i = load i8, ptr %attached.i, align 4
  %cmp.not.unshifted.i = xor i8 %bf.load2.i, %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i)
  %cmp.not.i = icmp sgt i8 %cmp.not.unshifted.i, -1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %last_detach_count.i = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %last_detach_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_detach_count.i, align 4
  %detach_count.i = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %detach_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %detach_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.not.i = icmp eq i32 %7, %9
  br i1 %cmp5.not.i, label %lor.lhs.false.i.comedi_file_check.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i.comedi_file_check.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_check.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_check.exit

comedi_file_check.exit:                           ; preds = %if.then.i, %lor.lhs.false.i.comedi_file_check.exit_crit_edge
  %read_subdev = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %read_subdev, align 4
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_n_available(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @comedi_file_reset(ptr nocapture noundef readonly %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %7, 1048575
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_subdev, align 4
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 22
  %10 = ptrtoint ptr %write_subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_subdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 47
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then:                                          ; preds = %entry
  %sub.i = add nsw i32 %and.i, -48
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_subdevice_minor_table_lock, i32 noundef 0) #13
  %arrayidx.i = getelementptr [208 x ptr], ptr @comedi_subdevice_minor_table, i32 0, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.if.end.thread60_crit_edge, label %land.lhs.true.i

if.then.if.end.thread60_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread60

land.lhs.true.i:                                  ; preds = %if.then
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %cmp.not.i = icmp eq ptr %15, %3
  br i1 %cmp.not.i, label %lor.lhs.false, label %land.lhs.true.i.if.end.thread60_crit_edge

land.lhs.true.i.if.end.thread60_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread60

if.end.thread60:                                  ; preds = %land.lhs.true.i.if.end.thread60_crit_edge, %if.then.if.end.thread60_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_subdevice_minor_table_lock) #13
  br label %if.then11

lor.lhs.false:                                    ; preds = %land.lhs.true.i
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_subdevice_minor_table_lock) #13
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %subdev_flags, align 4
  %and = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool4.not, ptr %9, ptr %13
  %and9 = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end.thread60
  %read_s.059 = phi ptr [ %spec.select, %lor.lhs.false.if.then11_crit_edge ], [ null, %if.end.thread60 ]
  %s.0.i51 = phi ptr [ %13, %lor.lhs.false.if.then11_crit_edge ], [ null, %if.end.thread60 ]
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %lor.lhs.false.if.end13_crit_edge, %entry.if.end13_crit_edge
  %read_s.1 = phi ptr [ %read_s.059, %if.then11 ], [ %spec.select, %lor.lhs.false.if.end13_crit_edge ], [ %9, %entry.if.end13_crit_edge ]
  %write_s.0 = phi ptr [ %s.0.i51, %if.then11 ], [ %11, %lor.lhs.false.if.end13_crit_edge ], [ %11, %entry.if.end13_crit_edge ]
  %attached = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %attached, align 4
  %bf.lshr = and i8 %bf.load, -128
  %last_attached = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %last_attached to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load14 = load i8, ptr %last_attached, align 4
  %bf.clear = and i8 %bf.load14, 127
  %bf.set = or i8 %bf.clear, %bf.lshr
  store i8 %bf.set, ptr %last_attached, align 4
  %detach_count = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %detach_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %detach_count, align 4
  %last_detach_count = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %last_detach_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %last_detach_count, align 4
  %read_subdev17 = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %read_subdev17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %read_s.1, ptr %read_subdev17, align 4
  %write_subdev27 = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %write_subdev27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %write_s.0, ptr %write_subdev27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @comedi_file_write_subdevice(ptr nocapture noundef readonly %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %last_attached.i = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_attached.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %last_attached.i, align 4
  %attached.i = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %attached.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load2.i = load i8, ptr %attached.i, align 4
  %cmp.not.unshifted.i = xor i8 %bf.load2.i, %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i)
  %cmp.not.i = icmp sgt i8 %cmp.not.unshifted.i, -1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %last_detach_count.i = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %last_detach_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_detach_count.i, align 4
  %detach_count.i = getelementptr inbounds %struct.comedi_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %detach_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %detach_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.not.i = icmp eq i32 %7, %9
  br i1 %cmp5.not.i, label %lor.lhs.false.i.comedi_file_check.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i.comedi_file_check.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_check.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_check.exit

comedi_file_check.exit:                           ; preds = %if.then.i, %lor.lhs.false.i.comedi_file_check.exit_crit_edge
  %write_subdev = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %write_subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %write_subdev, align 4
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_n_allocated(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_n_available(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @comedi_clear_board_dev(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %minor = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_board_minor_table_lock, i32 noundef 0) #13
  %arrayidx = getelementptr [48 x ptr], ptr @comedi_board_minor_table, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp24 = icmp eq ptr %4, %dev
  br i1 %cmp24, label %if.then25, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end.if.end27_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_board_minor_table_lock) #13
  ret i1 %cmp24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_bufconfig_ioctl(ptr noundef %dev, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %bc = alloca %struct.comedi_bufconfig, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bc) #13
  %0 = getelementptr inbounds %struct.comedi_bufconfig, ptr %bc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.comedi_bufconfig, ptr %bc, i32 0, i32 3
  %2 = call ptr @memset(ptr %bc, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end8.i.i_crit_edge, label %land.rhs

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end8.i.i_crit_edge, !prof !301

land.rhs.if.end8.i.i_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 875, i32 noundef 9, ptr noundef null) #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end, %land.rhs.if.end8.i.i_crit_edge, %entry.if.end8.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 32, i32 -1226833920) #19
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !298

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bc, i32 noundef 32) #13
  %5 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !310
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bc, ptr noundef %arg, i32 noundef 32) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end28, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !298

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i105 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i105
  %add.ptr.i.i = getelementptr i8, ptr %bc, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i105)
  br label %cleanup

if.end28:                                         ; preds = %if.end.i.i
  %9 = ptrtoint ptr %bc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bc, align 4
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp29.not = icmp ult i32 %10, %12
  br i1 %cmp29.not, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %13 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %subdevices, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %14, i32 %10
  %async33 = getelementptr %struct.comedi_subdevice, ptr %14, i32 %10, i32 7
  %15 = ptrtoint ptr %async33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %async33, align 4
  %tobool34.not = icmp eq ptr %16, null
  br i1 %tobool34.not, label %do.body36, label %if.end52

do.body36:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_bufconfig_ioctl.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_bufconfig_ioctl, %do.end51)) #13
          to label %if.then48 [label %do.end51], !srcloc !302

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_bufconfig_ioctl.__UNIQUE_ID_ddebug245, ptr noundef %18, ptr noundef nonnull @.str.45) #13
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body36
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %1, align 4
  br label %if.end8.i.i96

if.end52:                                         ; preds = %if.end31
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool54.not = icmp eq i32 %21, 0
  br i1 %tobool54.not, label %if.end52.if.end60_crit_edge, label %if.then55

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then55:                                        ; preds = %if.end52
  %call56 = call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call56, label %if.end58, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end58:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %max_bufsize = getelementptr inbounds %struct.comedi_async, ptr %16, i32 0, i32 3
  %24 = ptrtoint ptr %max_bufsize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max_bufsize, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end58, %if.end52.if.end60_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool62.not = icmp eq i32 %26, 0
  br i1 %tobool62.not, label %if.end60.if.end69_crit_edge, label %if.then63

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then63:                                        ; preds = %if.end60
  %call65 = call fastcc i32 @resize_async_buffer(ptr noundef %dev, ptr noundef %arrayidx, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then63.cleanup_crit_edge, label %if.then63.if.end69_crit_edge

if.then63.if.end69_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end69:                                         ; preds = %if.then63.if.end69_crit_edge, %if.end60.if.end69_crit_edge
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, ptr %16, i32 0, i32 1
  %27 = ptrtoint ptr %prealloc_bufsz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prealloc_bufsz, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %1, align 4
  %max_bufsize71 = getelementptr inbounds %struct.comedi_async, ptr %16, i32 0, i32 3
  %30 = ptrtoint ptr %max_bufsize71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_bufsize71, align 4
  br label %if.end8.i.i96

if.end8.i.i96:                                    ; preds = %if.end69, %do.end51
  %storemerge = phi i32 [ 0, %do.end51 ], [ %31, %if.end69 ]
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %0, align 4
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i97 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i97, label %if.end8.i.i96.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i96.cleanup_crit_edge:                  ; preds = %if.end8.i.i96
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i96
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i101 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bc, i32 noundef 32) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %bc, i32 noundef 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool74.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool74.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i96.cleanup_crit_edge, %if.then63.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end28.cleanup_crit_edge ], [ -1, %if.then55.cleanup_crit_edge ], [ %call65, %if.then63.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i96.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bc) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_devinfo_ioctl(ptr noundef %dev, ptr noundef %arg, ptr nocapture noundef readonly %file) unnamed_addr #0 align 64 {
entry:
  %devinfo = alloca %struct.comedi_devinfo, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %devinfo) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 936, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = getelementptr inbounds i8, ptr %devinfo, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 168)
  %3 = ptrtoint ptr %devinfo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1868, ptr %devinfo, align 4
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_subdevices, align 4
  %n_subdevs = getelementptr inbounds %struct.comedi_devinfo, ptr %devinfo, i32 0, i32 1
  %6 = ptrtoint ptr %n_subdevs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %n_subdevs, align 4
  %driver_name = getelementptr inbounds %struct.comedi_devinfo, ptr %devinfo, i32 0, i32 2
  %driver = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 4
  %driver_name24 = getelementptr inbounds %struct.comedi_driver, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %driver_name24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_name24, align 4
  %call25 = call i32 @strscpy(ptr noundef %driver_name, ptr noundef %10, i32 noundef 20) #13
  %board_name = getelementptr inbounds %struct.comedi_devinfo, ptr %devinfo, i32 0, i32 3
  %board_name27 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %11 = ptrtoint ptr %board_name27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %board_name27, align 4
  %call28 = call i32 @strscpy(ptr noundef %board_name, ptr noundef %12, i32 noundef 20) #13
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %last_attached.i.i = getelementptr inbounds %struct.comedi_file, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %last_attached.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i = load i8, ptr %last_attached.i.i, align 4
  %attached.i.i = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 10
  %18 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load2.i.i = load i8, ptr %attached.i.i, align 4
  %cmp.not.unshifted.i.i = xor i8 %bf.load2.i.i, %bf.load.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i.i)
  %cmp.not.i.i = icmp sgt i8 %cmp.not.unshifted.i.i, -1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.if.then.i.i54_crit_edge

if.end.if.then.i.i54_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i54

lor.lhs.false.i.i:                                ; preds = %if.end
  %last_detach_count.i.i = getelementptr inbounds %struct.comedi_file, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %last_detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_detach_count.i.i, align 4
  %detach_count.i.i = getelementptr inbounds %struct.comedi_device, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %detach_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp5.not.i.i = icmp eq i32 %20, %22
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge, label %lor.lhs.false.i.i.if.then.i.i54_crit_edge

lor.lhs.false.i.i.if.then.i.i54_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i54

lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_read_subdevice.exit

if.then.i.i54:                                    ; preds = %lor.lhs.false.i.i.if.then.i.i54_crit_edge, %if.end.if.then.i.i54_crit_edge
  call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_read_subdevice.exit

comedi_file_read_subdevice.exit:                  ; preds = %if.then.i.i54, %lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge
  %read_subdev.i = getelementptr inbounds %struct.comedi_file, ptr %14, i32 0, i32 1
  %23 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %read_subdev.i, align 4
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %comedi_file_read_subdevice.exit.if.end33_crit_edge, label %if.then31

comedi_file_read_subdevice.exit.if.end33_crit_edge: ; preds = %comedi_file_read_subdevice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then31:                                        ; preds = %comedi_file_read_subdevice.exit
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %comedi_file_read_subdevice.exit.if.end33_crit_edge
  %.sink = phi i32 [ %26, %if.then31 ], [ -1, %comedi_file_read_subdevice.exit.if.end33_crit_edge ]
  %27 = getelementptr inbounds %struct.comedi_devinfo, ptr %devinfo, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %27, align 4
  %29 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private_data.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %last_attached.i.i56 = getelementptr inbounds %struct.comedi_file, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %last_attached.i.i56 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i57 = load i8, ptr %last_attached.i.i56, align 4
  %attached.i.i58 = getelementptr inbounds %struct.comedi_device, ptr %32, i32 0, i32 10
  %34 = ptrtoint ptr %attached.i.i58 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load2.i.i59 = load i8, ptr %attached.i.i58, align 4
  %cmp.not.unshifted.i.i60 = xor i8 %bf.load2.i.i59, %bf.load.i.i57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i.i60)
  %cmp.not.i.i61 = icmp sgt i8 %cmp.not.unshifted.i.i60, -1
  br i1 %cmp.not.i.i61, label %lor.lhs.false.i.i65, label %if.end33.if.then.i.i66_crit_edge

if.end33.if.then.i.i66_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i66

lor.lhs.false.i.i65:                              ; preds = %if.end33
  %last_detach_count.i.i62 = getelementptr inbounds %struct.comedi_file, ptr %30, i32 0, i32 3
  %35 = ptrtoint ptr %last_detach_count.i.i62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_detach_count.i.i62, align 4
  %detach_count.i.i63 = getelementptr inbounds %struct.comedi_device, ptr %32, i32 0, i32 6
  %37 = ptrtoint ptr %detach_count.i.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %detach_count.i.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp5.not.i.i64 = icmp eq i32 %36, %38
  br i1 %cmp5.not.i.i64, label %lor.lhs.false.i.i65.comedi_file_write_subdevice.exit_crit_edge, label %lor.lhs.false.i.i65.if.then.i.i66_crit_edge

lor.lhs.false.i.i65.if.then.i.i66_crit_edge:      ; preds = %lor.lhs.false.i.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i66

lor.lhs.false.i.i65.comedi_file_write_subdevice.exit_crit_edge: ; preds = %lor.lhs.false.i.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_write_subdevice.exit

if.then.i.i66:                                    ; preds = %lor.lhs.false.i.i65.if.then.i.i66_crit_edge, %if.end33.if.then.i.i66_crit_edge
  call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_write_subdevice.exit

comedi_file_write_subdevice.exit:                 ; preds = %if.then.i.i66, %lor.lhs.false.i.i65.comedi_file_write_subdevice.exit_crit_edge
  %write_subdev.i = getelementptr inbounds %struct.comedi_file, ptr %30, i32 0, i32 2
  %39 = ptrtoint ptr %write_subdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %write_subdev.i, align 4
  %tobool35.not = icmp eq ptr %40, null
  br i1 %tobool35.not, label %comedi_file_write_subdevice.exit.if.end8.i.i_crit_edge, label %if.then36

comedi_file_write_subdevice.exit.if.end8.i.i_crit_edge: ; preds = %comedi_file_write_subdevice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.then36:                                        ; preds = %comedi_file_write_subdevice.exit
  call void @__sanitizer_cov_trace_pc() #15
  %index37 = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %index37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index37, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then36, %comedi_file_write_subdevice.exit.if.end8.i.i_crit_edge
  %.sink69 = phi i32 [ %42, %if.then36 ], [ -1, %comedi_file_write_subdevice.exit.if.end8.i.i_crit_edge ]
  %43 = getelementptr inbounds %struct.comedi_devinfo, ptr %devinfo, i32 0, i32 5
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink69, ptr %43, align 4
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end8.i.i.copy_to_user.exit.thread_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end8.i.i
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 176, i32 -1226833920) #19, !srcloc !305
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %devinfo, i32 noundef 176) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %devinfo, i32 noundef 176) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool42.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool42.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end8.i.i.copy_to_user.exit.thread_crit_edge
  %46 = phi i32 [ -14, %if.end8.i.i.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %devinfo) #13
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_subdinfo_ioctl(ptr noundef %dev, ptr noundef %arg, ptr noundef readnone %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 983, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_subdevices, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 72) #13
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !301

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #16
  %tobool26.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool26.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %6 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp30149 = icmp sgt i32 %7, 0
  br i1 %cmp30149, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end84.for.body_crit_edge, %for.body.lr.ph
  %i.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end84.for.body_crit_edge ]
  %8 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subdevices, align 4
  %add.ptr = getelementptr %struct.comedi_subdinfo, ptr %call8.i.i, i32 %i.0150
  %type = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr, align 8
  %n_chan = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 3
  %13 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_chan, align 4
  %n_chan32 = getelementptr %struct.comedi_subdinfo, ptr %call8.i.i, i32 %i.0150, i32 1
  %15 = ptrtoint ptr %n_chan32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %n_chan32, align 4
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 4
  %16 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %subdev_flags, align 4
  %subd_flags = getelementptr %struct.comedi_subdinfo, ptr %call8.i.i, i32 %i.0150, i32 2
  %18 = ptrtoint ptr %subd_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %subd_flags, align 8
  %spin_lock.i.i = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i.i) #13
  %runflags.i.i.i = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 10
  %19 = ptrtoint ptr %runflags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %runflags.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i.i, i32 noundef %call2.i.i) #13
  %and.i.i = and i32 %20, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %for.body.if.end36_crit_edge, label %if.then34

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %subd_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %subd_flags, align 8
  %or = or i32 %22, 134217728
  store i32 %or, ptr %subd_flags, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %for.body.if.end36_crit_edge
  %timer_type = getelementptr %struct.comedi_subdinfo, ptr %call8.i.i, i32 %i.0150, i32 3
  %23 = ptrtoint ptr %timer_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %timer_type, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 5
  %24 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len_chanlist, align 4
  %len_chanlist37 = getelementptr %struct.comedi_subdinfo, ptr %call8.i.i, i32 %i.0150, i32 4
  %26 = ptrtoint ptr %len_chanlist37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %len_chanlist37, align 8
  %maxdata = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 13
  %27 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %maxdata, align 4
  %maxdata38 = getelementptr %struct.comedi_subdinfo, ptr %call8.i.i, i32 %i.0150, i32 5
  %29 = ptrtoint ptr %maxdata38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %maxdata38, align 4
  %range_table = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 15
  %30 = ptrtoint ptr %range_table to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %range_table, align 4
  %tobool39.not = icmp eq ptr %31, null
  br i1 %tobool39.not, label %if.end36.if.end45_crit_edge, label %if.then40

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %shl = shl i32 %i.0150, 24
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %or43 = or i32 %33, %shl
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end36.if.end45_crit_edge
  %or43.sink = phi i32 [ %or43, %if.then40 ], [ 0, %if.end36.if.end45_crit_edge ]
  %34 = getelementptr %struct.comedi_subdinfo, ptr %call8.i.i, i32 %i.0150, i32 7
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or43.sink, ptr %34, align 4
  %busy = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 9
  %36 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %busy, align 4
  %tobool46.not = icmp eq ptr %37, null
  br i1 %tobool46.not, label %if.end45.if.end50_crit_edge, label %if.then47

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %subd_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %subd_flags, align 8
  %or49 = or i32 %39, 1
  store i32 %or49, ptr %subd_flags, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end45.if.end50_crit_edge
  %40 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %busy, align 4
  %cmp52 = icmp eq ptr %41, %file
  br i1 %cmp52, label %if.then53, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %subd_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %subd_flags, align 8
  %or55 = or i32 %43, 2
  store i32 %or55, ptr %subd_flags, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50.if.end56_crit_edge
  %lock = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 8
  %44 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lock, align 4
  %tobool57.not = icmp eq ptr %45, null
  br i1 %tobool57.not, label %if.end56.if.end61_crit_edge, label %if.then58

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %subd_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %subd_flags, align 8
  %or60 = or i32 %47, 4
  store i32 %or60, ptr %subd_flags, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end56.if.end61_crit_edge
  %48 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lock, align 4
  %cmp63 = icmp eq ptr %49, %file
  br i1 %cmp63, label %if.then64, label %if.end61.if.end67_crit_edge

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %subd_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %subd_flags, align 8
  %or66 = or i32 %51, 8
  store i32 %or66, ptr %subd_flags, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end61.if.end67_crit_edge
  %52 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool69.not = icmp eq i32 %53, 0
  br i1 %tobool69.not, label %land.lhs.true, label %if.end67.if.end74_crit_edge

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

land.lhs.true:                                    ; preds = %if.end67
  %maxdata_list = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 14
  %54 = ptrtoint ptr %maxdata_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %maxdata_list, align 4
  %tobool70.not = icmp eq ptr %55, null
  br i1 %tobool70.not, label %land.lhs.true.if.end74_crit_edge, label %if.then71

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %subd_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %subd_flags, align 8
  %or73 = or i32 %57, 16
  store i32 %or73, ptr %subd_flags, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %land.lhs.true.if.end74_crit_edge, %if.end67.if.end74_crit_edge
  %range_table_list = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 16
  %58 = ptrtoint ptr %range_table_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %range_table_list, align 4
  %tobool75.not = icmp eq ptr %59, null
  br i1 %tobool75.not, label %if.end74.if.end79_crit_edge, label %if.then76

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %subd_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %subd_flags, align 8
  %or78 = or i32 %61, 64
  store i32 %or78, ptr %subd_flags, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end74.if.end79_crit_edge
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 22
  %62 = ptrtoint ptr %do_cmd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %do_cmd, align 4
  %tobool80.not = icmp eq ptr %63, null
  br i1 %tobool80.not, label %if.end79.if.end84_crit_edge, label %if.then81

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %subd_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %subd_flags, align 8
  %or83 = or i32 %65, 4096
  store i32 %or83, ptr %subd_flags, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end79.if.end84_crit_edge
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %9, i32 %i.0150, i32 20
  %66 = ptrtoint ptr %insn_bits to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %insn_bits, align 4
  %cmp85.not = icmp eq ptr %67, @insn_inval
  %spec.select = select i1 %cmp85.not, i32 2, i32 1
  %68 = getelementptr %struct.comedi_subdinfo, ptr %call8.i.i, i32 %i.0150, i32 9
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %spec.select, ptr %68, align 4
  %inc = add nuw nsw i32 %i.0150, 1
  %70 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_subdevices, align 4
  %cmp30 = icmp slt i32 %inc, %71
  br i1 %cmp30, label %if.end84.for.body_crit_edge, label %if.end84.for.end_crit_edge

if.end84.for.end_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end84.for.body_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end84.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %7, %for.cond.preheader.for.end_crit_edge ], [ %71, %if.end84.for.end_crit_edge ]
  %mul = mul i32 %.lcssa, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !298

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %for.end
  tail call void @__check_object_size(ptr noundef nonnull %call8.i.i, i32 noundef %mul, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %72 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 %mul, i32 -1226833920) #19, !srcloc !305
  %asmresult.i.i = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i.i, i32 noundef %mul) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %call8.i.i, i32 noundef %mul) #13
  br label %copy_to_user.exit

copy_to_user.exit.thread:                         ; preds = %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool92.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select162 = select i1 %tobool92.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %copy_to_user.exit.thread, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -14, %copy_to_user.exit.thread ], [ %spec.select162, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_chaninfo_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %it) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1056, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %it, align 4
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp24.not = icmp ult i32 %2, %4
  br i1 %cmp24.not, label %if.end26, label %if.end.cleanup73_crit_edge

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.end26:                                         ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subdevices, align 4
  %maxdata_list = getelementptr inbounds %struct.comedi_chaninfo, ptr %it, i32 0, i32 1
  %7 = ptrtoint ptr %maxdata_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %maxdata_list, align 4
  %tobool28.not = icmp eq ptr %8, null
  br i1 %tobool28.not, label %if.end26.if.end41_crit_edge, label %if.then29

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then29:                                        ; preds = %if.end26
  %maxdata = getelementptr %struct.comedi_subdevice, ptr %6, i32 %2, i32 13
  %9 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool30.not = icmp eq i32 %10, 0
  br i1 %tobool30.not, label %lor.lhs.false, label %if.then29.cleanup73_crit_edge

if.then29.cleanup73_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

lor.lhs.false:                                    ; preds = %if.then29
  %maxdata_list31 = getelementptr %struct.comedi_subdevice, ptr %6, i32 %2, i32 14
  %11 = ptrtoint ptr %maxdata_list31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %maxdata_list31, align 4
  %tobool32.not = icmp eq ptr %12, null
  br i1 %tobool32.not, label %lor.lhs.false.cleanup73_crit_edge, label %if.end34

lor.lhs.false.cleanup73_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.end34:                                         ; preds = %lor.lhs.false
  %n_chan = getelementptr %struct.comedi_subdevice, ptr %6, i32 %2, i32 3
  %13 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_chan, align 4
  %mul = shl i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end34
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup73_crit_edge, label %if.then27.i.i, !prof !298

land.rhs16.i.i.cleanup73_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup73

if.then.i.i.i:                                    ; preds = %if.end34
  tail call void @__check_object_size(ptr noundef nonnull %12, i32 noundef %mul, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %8, i32 %mul, i32 -1226833920) #19, !srcloc !305
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %12, i32 noundef %mul) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %8, ptr noundef nonnull %12, i32 noundef %mul) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool38.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool38.not, label %copy_to_user.exit.if.end41_crit_edge, label %copy_to_user.exit.cleanup73_crit_edge

copy_to_user.exit.cleanup73_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

copy_to_user.exit.if.end41_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end41:                                         ; preds = %copy_to_user.exit.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  %flaglist = getelementptr inbounds %struct.comedi_chaninfo, ptr %it, i32 0, i32 2
  %16 = ptrtoint ptr %flaglist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %flaglist, align 4
  %tobool42.not = icmp eq ptr %17, null
  br i1 %tobool42.not, label %if.end44, label %if.end41.cleanup73_crit_edge

if.end41.cleanup73_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.end44:                                         ; preds = %if.end41
  %rangelist = getelementptr inbounds %struct.comedi_chaninfo, ptr %it, i32 0, i32 3
  %18 = ptrtoint ptr %rangelist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rangelist, align 4
  %tobool45.not = icmp eq ptr %19, null
  br i1 %tobool45.not, label %if.end44.cleanup73_crit_edge, label %if.then46

if.end44.cleanup73_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.then46:                                        ; preds = %if.end44
  %range_table_list = getelementptr %struct.comedi_subdevice, ptr %6, i32 %2, i32 16
  %20 = ptrtoint ptr %range_table_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %range_table_list, align 4
  %tobool47.not = icmp eq ptr %21, null
  br i1 %tobool47.not, label %if.then46.cleanup73_crit_edge, label %for.cond.preheader

if.then46.cleanup73_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

for.cond.preheader:                               ; preds = %if.then46
  %minor = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 5
  %n_chan50 = getelementptr %struct.comedi_subdevice, ptr %6, i32 %2, i32 3
  %22 = ptrtoint ptr %n_chan50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_chan50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp51103 = icmp sgt i32 %23, 0
  br i1 %cmp51103, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup73_crit_edge

for.cond.preheader.cleanup73_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0104, 1
  %24 = ptrtoint ptr %n_chan50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_chan50, align 4
  %cmp51 = icmp slt i32 %inc, %25
  br i1 %cmp51, label %for.cond.for.body_crit_edge, label %for.cond.cleanup73_crit_edge

for.cond.cleanup73_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0104 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %26 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %minor, align 4
  %shl = shl i32 %27, 28
  %28 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %it, align 4
  %shl53 = shl i32 %29, 24
  %shl54 = shl i32 %i.0104, 16
  %30 = ptrtoint ptr %range_table_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %range_table_list, align 4
  %arrayidx57 = getelementptr ptr, ptr %31, i32 %i.0104
  %32 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx57, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %or = or i32 %shl, %shl54
  %or55 = or i32 %or, %shl53
  %or58 = or i32 %or55, %35
  %36 = ptrtoint ptr %rangelist to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rangelist, align 4
  %add.ptr = getelementptr i32, ptr %37, i32 %i.0104
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1083) #13
  %38 = tail call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !310
  %and.i = and i32 %40, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %41 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr, i32 %or58, i32 -1226833921) #13, !srcloc !316
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #13, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool66.not = icmp eq i32 %41, 0
  br i1 %tobool66.not, label %for.cond, label %for.body.cleanup73_crit_edge

for.body.cleanup73_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

cleanup73:                                        ; preds = %for.body.cleanup73_crit_edge, %for.cond.cleanup73_crit_edge, %for.cond.preheader.cleanup73_crit_edge, %if.then46.cleanup73_crit_edge, %if.end44.cleanup73_crit_edge, %if.end41.cleanup73_crit_edge, %copy_to_user.exit.cleanup73_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup73_crit_edge, %lor.lhs.false.cleanup73_crit_edge, %if.then29.cleanup73_crit_edge, %if.end.cleanup73_crit_edge
  %retval.3 = phi i32 [ -22, %if.end.cleanup73_crit_edge ], [ -22, %lor.lhs.false.cleanup73_crit_edge ], [ -22, %if.then29.cleanup73_crit_edge ], [ -14, %copy_to_user.exit.cleanup73_crit_edge ], [ -22, %if.end41.cleanup73_crit_edge ], [ 0, %if.end44.cleanup73_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup73_crit_edge ], [ -22, %if.then46.cleanup73_crit_edge ], [ 0, %for.cond.preheader.cleanup73_crit_edge ], [ 0, %for.cond.cleanup73_crit_edge ], [ -14, %for.body.cleanup73_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_rangeinfo_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_bufinfo_ioctl(ptr noundef %dev, ptr noundef %arg, ptr noundef readnone %file) unnamed_addr #0 align 64 {
entry:
  %bi = alloca %struct.comedi_bufinfo, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %bi) #13
  %0 = call ptr @memset(ptr %bi, i32 255, i32 44)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end8.i.i_crit_edge, label %land.rhs

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end8.i.i_crit_edge, !prof !301

land.rhs.if.end8.i.i_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1114, i32 noundef 9, ptr noundef null) #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end, %land.rhs.if.end8.i.i_crit_edge, %entry.if.end8.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 44, i32 -1226833920) #19
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !298

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bi, i32 noundef 44) #13
  %3 = call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !310
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bi, ptr noundef %arg, i32 noundef 44) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #13, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end28, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !298

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i148 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 44, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 44, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 44, %res.0.i.i148
  %add.ptr.i.i = getelementptr i8, ptr %bi, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i148)
  br label %cleanup

if.end28:                                         ; preds = %if.end.i.i
  %7 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi, align 4
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp29.not = icmp ult i32 %8, %10
  br i1 %cmp29.not, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %11 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subdevices, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %12, i32 %8
  %async33 = getelementptr %struct.comedi_subdevice, ptr %12, i32 %8, i32 7
  %13 = ptrtoint ptr %async33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %async33, align 4
  %tobool34.not = icmp eq ptr %14, null
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %lor.lhs.false

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end31
  %busy = getelementptr %struct.comedi_subdevice, ptr %12, i32 %8, i32 9
  %15 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %busy, align 4
  %cmp35.not = icmp eq ptr %16, %file
  br i1 %cmp35.not, label %if.end37, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false
  %spin_lock.i = getelementptr %struct.comedi_subdevice, ptr %12, i32 %8, i32 11
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #13
  %runflags.i.i = getelementptr %struct.comedi_subdevice, ptr %12, i32 %8, i32 10
  %17 = ptrtoint ptr %runflags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %runflags.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i, i32 noundef %call2.i) #13
  %flags = getelementptr inbounds %struct.comedi_async, ptr %14, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  %bytes_read = getelementptr inbounds %struct.comedi_bufinfo, ptr %bi, i32 0, i32 1
  %21 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytes_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool41.not = icmp eq i32 %22, 0
  br i1 %tobool41.not, label %if.then40.if.end48_crit_edge, label %if.then42

if.then40.if.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = call i32 @comedi_buf_read_alloc(ptr noundef %arrayidx, i32 noundef %22) #13
  %23 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bytes_read, align 4
  %call46 = call i32 @comedi_buf_read_free(ptr noundef %arrayidx, i32 noundef %24) #13
  %25 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call46, ptr %bytes_read, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.then40.if.end48_crit_edge
  %call49 = call i32 @comedi_buf_read_n_available(ptr noundef %arrayidx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp ne i32 %call49, 0
  %and.i = and i32 %18, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %or.cond = select i1 %cmp50, i1 true, i1 %tobool.i
  br i1 %or.cond, label %if.end48.if.end61_crit_edge, label %land.lhs.true52

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.lhs.true52:                                  ; preds = %if.end48
  %26 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bytes_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp54 = icmp ne i32 %27, 0
  %and.i138 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.i139 = icmp ne i32 %and.i138, 0
  %or.cond153 = select i1 %cmp54, i1 %tobool.i139, i1 false
  br i1 %or.cond153, label %land.lhs.true52.if.end61_crit_edge, label %if.then57

land.lhs.true52.if.end61_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then57:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.i141.not = icmp eq i32 %and.i138, 0
  %spec.select = select i1 %tobool.i141.not, i32 0, i32 -32
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %land.lhs.true52.if.end61_crit_edge, %if.end48.if.end61_crit_edge
  %retval1.0 = phi i32 [ 0, %if.end48.if.end61_crit_edge ], [ %spec.select, %if.then57 ], [ 0, %land.lhs.true52.if.end61_crit_edge ]
  %become_nonbusy.0.off0 = phi i1 [ false, %if.end48.if.end61_crit_edge ], [ true, %if.then57 ], [ false, %land.lhs.true52.if.end61_crit_edge ]
  %bytes_written = getelementptr inbounds %struct.comedi_bufinfo, ptr %bi, i32 0, i32 6
  br label %if.end80

if.else:                                          ; preds = %if.end37
  %and.i142 = and i32 %18, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.i143.not = icmp eq i32 %and.i142, 0
  %bytes_written64 = getelementptr inbounds %struct.comedi_bufinfo, ptr %bi, i32 0, i32 6
  br i1 %tobool.i143.not, label %if.then63, label %if.else68

if.then63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %bytes_written64 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bytes_written64, align 4
  %and.i144 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool.i145.not = icmp eq i32 %and.i144, 0
  %spec.select127 = select i1 %tobool.i145.not, i32 0, i32 -32
  br label %if.end78

if.else68:                                        ; preds = %if.else
  %29 = ptrtoint ptr %bytes_written64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bytes_written64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool70.not = icmp eq i32 %30, 0
  br i1 %tobool70.not, label %if.else68.if.end78_crit_edge, label %if.then71

if.else68.if.end78_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #15
  %call73 = call i32 @comedi_buf_write_alloc(ptr noundef %arrayidx, i32 noundef %30) #13
  %31 = ptrtoint ptr %bytes_written64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bytes_written64, align 4
  %call75 = call i32 @comedi_buf_write_free(ptr noundef %arrayidx, i32 noundef %32) #13
  %33 = ptrtoint ptr %bytes_written64 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call75, ptr %bytes_written64, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then71, %if.else68.if.end78_crit_edge, %if.then63
  %retval1.1 = phi i32 [ 0, %if.then71 ], [ 0, %if.else68.if.end78_crit_edge ], [ %spec.select127, %if.then63 ]
  %bytes_read79 = getelementptr inbounds %struct.comedi_bufinfo, ptr %bi, i32 0, i32 1
  br label %if.end80

if.end80:                                         ; preds = %if.end78, %if.end61
  %bytes_read79.sink = phi ptr [ %bytes_read79, %if.end78 ], [ %bytes_written, %if.end61 ]
  %retval1.2 = phi i32 [ %retval1.1, %if.end78 ], [ %retval1.0, %if.end61 ]
  %become_nonbusy.2.off0 = phi i1 [ %tobool.i143.not, %if.end78 ], [ %become_nonbusy.0.off0, %if.end61 ]
  %34 = ptrtoint ptr %bytes_read79.sink to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %bytes_read79.sink, align 4
  %buf_write_count = getelementptr inbounds %struct.comedi_async, ptr %14, i32 0, i32 4
  %35 = ptrtoint ptr %buf_write_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_write_count, align 4
  %buf_write_count81 = getelementptr inbounds %struct.comedi_bufinfo, ptr %bi, i32 0, i32 4
  %37 = ptrtoint ptr %buf_write_count81 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %buf_write_count81, align 4
  %buf_write_ptr = getelementptr inbounds %struct.comedi_async, ptr %14, i32 0, i32 8
  %38 = ptrtoint ptr %buf_write_ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_write_ptr, align 4
  %buf_write_ptr82 = getelementptr inbounds %struct.comedi_bufinfo, ptr %bi, i32 0, i32 2
  %40 = ptrtoint ptr %buf_write_ptr82 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %buf_write_ptr82, align 4
  %buf_read_count = getelementptr inbounds %struct.comedi_async, ptr %14, i32 0, i32 6
  %41 = ptrtoint ptr %buf_read_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf_read_count, align 4
  %buf_read_count83 = getelementptr inbounds %struct.comedi_bufinfo, ptr %bi, i32 0, i32 5
  %43 = ptrtoint ptr %buf_read_count83 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %buf_read_count83, align 4
  %buf_read_ptr = getelementptr inbounds %struct.comedi_async, ptr %14, i32 0, i32 9
  %44 = ptrtoint ptr %buf_read_ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf_read_ptr, align 4
  %buf_read_ptr84 = getelementptr inbounds %struct.comedi_bufinfo, ptr %bi, i32 0, i32 3
  %46 = ptrtoint ptr %buf_read_ptr84 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %buf_read_ptr84, align 4
  br i1 %become_nonbusy.2.off0, label %if.then86, label %if.end80.if.end87_crit_edge

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then86:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @do_become_nonbusy(ptr noundef %dev, ptr noundef %arrayidx)
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end80.if.end87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.2)
  %tobool88.not = icmp eq i32 %retval1.2, 0
  br i1 %tobool88.not, label %if.end8.i.i131, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i131:                                   ; preds = %if.end87
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i132 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i132, label %if.end8.i.i131.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i131.cleanup_crit_edge:                 ; preds = %if.end8.i.i131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i131
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i136 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bi, i32 noundef 44) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %bi, i32 noundef 44) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool92.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select154 = select i1 %tobool92.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i131.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end28.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ], [ %retval1.2, %if.end87.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i131.cleanup_crit_edge ], [ %spec.select154, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bi) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_lock_ioctl(ptr noundef %dev, i32 noundef %arg, ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1906, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %arg)
  %cmp24.not = icmp ugt i32 %2, %arg
  br i1 %cmp24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subdevices, align 4
  %spin_lock = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg, i32 11
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock) #13
  %busy = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg, i32 9
  %5 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %busy, align 4
  %tobool37.not = icmp eq ptr %6, null
  br i1 %tobool37.not, label %lor.lhs.false, label %if.end26.if.end41_crit_edge

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

lor.lhs.false:                                    ; preds = %if.end26
  %lock = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg, i32 8
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock, align 4
  %tobool38.not = icmp eq ptr %8, null
  br i1 %tobool38.not, label %if.else, label %lor.lhs.false.if.end41_crit_edge

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %file, ptr %lock, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %lor.lhs.false.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -16, %lor.lhs.false.if.end41_crit_edge ], [ -16, %if.end26.if.end41_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock, i32 noundef %call32) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end41 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_unlock_ioctl(ptr noundef %dev, i32 noundef %arg, ptr noundef readnone %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1939, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %arg)
  %cmp24.not = icmp ugt i32 %2, %arg
  br i1 %cmp24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subdevices, align 4
  %busy = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg, i32 9
  %5 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %busy, align 4
  %tobool27.not = icmp eq ptr %6, null
  br i1 %tobool27.not, label %if.end29, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %lock = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg, i32 8
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock, align 4
  %tobool30.not = icmp eq ptr %8, null
  %cmp32.not = icmp eq ptr %8, %file
  %or.cond = or i1 %tobool30.not, %cmp32.not
  %.mux = select i1 %or.cond, i32 0, i32 -13
  br i1 %cmp32.not, label %if.then37, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %lock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end26.cleanup_crit_edge ], [ %.mux, %if.end29.cleanup_crit_edge ], [ 0, %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_cancel_ioctl(ptr noundef %dev, i32 noundef %arg, ptr noundef readnone %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1974, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %arg)
  %cmp24.not = icmp ugt i32 %2, %arg
  br i1 %cmp24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subdevices, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg
  %async = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg, i32 7
  %5 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %async, align 4
  %tobool27.not = icmp eq ptr %6, null
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %busy = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg, i32 9
  %7 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %busy, align 4
  %tobool30.not = icmp eq ptr %8, null
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %cmp34.not = icmp eq ptr %8, %file
  br i1 %cmp34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = tail call fastcc i32 @do_cancel(ptr noundef %dev, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end32.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end36 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ -16, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_cmd_ioctl(ptr noundef %dev, ptr nocapture noundef %cmd, ptr nocapture noundef writeonly %copy, ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1751, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call fastcc i32 @__comedi_get_user_cmd(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup165_crit_edge

if.end.cleanup165_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

if.end27:                                         ; preds = %if.end
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %1 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chanlist, align 4
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subdevices, align 4
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %4, i32 %6
  %async28 = getelementptr %struct.comedi_subdevice, ptr %4, i32 %6, i32 7
  %7 = ptrtoint ptr %async28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %async28, align 4
  %lock = getelementptr %struct.comedi_subdevice, ptr %4, i32 %6, i32 8
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  %tobool29.not = icmp eq ptr %10, null
  %cmp31.not = icmp eq ptr %10, %file
  %or.cond = or i1 %tobool29.not, %cmp31.not
  br i1 %or.cond, label %if.end49, label %do.body33

do.body33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_cmd_ioctl.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_cmd_ioctl, %cleanup165)) #13
          to label %if.then45 [label %cleanup165], !srcloc !302

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_cmd_ioctl.__UNIQUE_ID_ddebug268, ptr noundef %12, ptr noundef nonnull @.str.51) #13
  br label %cleanup165

if.end49:                                         ; preds = %if.end27
  %busy = getelementptr %struct.comedi_subdevice, ptr %4, i32 %6, i32 9
  %13 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %busy, align 4
  %tobool50.not = icmp eq ptr %14, null
  br i1 %tobool50.not, label %if.end71, label %do.body52

do.body52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_cmd_ioctl.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_cmd_ioctl, %cleanup165)) #13
          to label %if.then66 [label %cleanup165], !srcloc !302

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev67 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %class_dev67 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev67, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_cmd_ioctl.__UNIQUE_ID_ddebug269, ptr noundef %16, ptr noundef nonnull @.str.52) #13
  br label %cleanup165

if.end71:                                         ; preds = %if.end49
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %17 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp72 = icmp eq i32 %18, 0
  br i1 %cmp72, label %do.body74, label %if.end94

do.body74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_cmd_ioctl.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_cmd_ioctl, %cleanup165)) #13
          to label %if.then88 [label %cleanup165], !srcloc !302

if.then88:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev89 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %class_dev89 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev89, align 4
  %21 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chanlist_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_cmd_ioctl.__UNIQUE_ID_ddebug270, ptr noundef %20, ptr noundef nonnull @.str.53, i32 noundef %22) #13
  br label %cleanup165

if.end94:                                         ; preds = %if.end71
  %cmd95 = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 17
  %23 = call ptr @memcpy(ptr %cmd95, ptr %cmd, i32 64)
  %data = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 17, i32 14
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %data, align 4
  %call98 = tail call fastcc i32 @__comedi_get_user_chanlist(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef %2, ptr noundef %cmd95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end101:                                        ; preds = %if.end94
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %4, i32 %6, i32 23
  %25 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %do_cmdtest, align 4
  %call103 = tail call i32 %26(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef %cmd95) #13
  %flags = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 17, i32 1
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool105.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool106.not = icmp eq i32 %call103, 0
  %or.cond218 = select i1 %tobool105.not, i1 %tobool106.not, i1 false
  br i1 %or.cond218, label %if.end130, label %do.body108

do.body108:                                       ; preds = %if.end101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_cmd_ioctl.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_cmd_ioctl, %do.end126)) #13
          to label %if.then122 [label %do.end126], !srcloc !302

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev123 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %29 = ptrtoint ptr %class_dev123 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %class_dev123, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_cmd_ioctl.__UNIQUE_ID_ddebug271, ptr noundef %30, ptr noundef nonnull @.str.54, i32 noundef %call103) #13
  br label %do.end126

do.end126:                                        ; preds = %if.then122, %do.body108
  %31 = call ptr @memcpy(ptr %cmd, ptr %cmd95, i32 64)
  %32 = ptrtoint ptr %chanlist to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %2, ptr %chanlist, align 4
  %data129 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 14
  %33 = ptrtoint ptr %data129 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %data129, align 4
  %34 = ptrtoint ptr %copy to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %copy, align 1
  br label %cleanup

if.end130:                                        ; preds = %if.end101
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 1
  %35 = ptrtoint ptr %prealloc_bufsz to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prealloc_bufsz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool131.not = icmp eq i32 %36, 0
  br i1 %tobool131.not, label %if.then132, label %if.end152

if.then132:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_cmd_ioctl.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_cmd_ioctl, %cleanup)) #13
          to label %if.then147 [label %cleanup], !srcloc !302

if.then147:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev148 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %37 = ptrtoint ptr %class_dev148 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev148, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_cmd_ioctl.__UNIQUE_ID_ddebug272, ptr noundef %38, ptr noundef nonnull @.str.55) #13
  br label %cleanup

if.end152:                                        ; preds = %if.end130
  tail call void @comedi_buf_reset(ptr noundef %arrayidx) #13
  %cb_mask = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 19
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and155 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  %spec.store.select = select i1 %tobool156.not, i32 54, i32 55
  %41 = ptrtoint ptr %cb_mask to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.store.select, ptr %cb_mask, align 4
  tail call fastcc void @comedi_update_subdevice_runflags(ptr noundef %arrayidx, i32 noundef 134217732, i32 noundef 134217728)
  %42 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %file, ptr %busy, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %4, i32 %6, i32 22
  %43 = ptrtoint ptr %do_cmd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %do_cmd, align 4
  %call161 = tail call i32 %44(ptr noundef %dev, ptr noundef %arrayidx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %if.end152.cleanup165_crit_edge, label %if.end152.cleanup_crit_edge

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end152.cleanup165_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

cleanup:                                          ; preds = %if.end152.cleanup_crit_edge, %if.then147, %if.then132, %do.end126, %if.end94.cleanup_crit_edge
  %ret.0 = phi i32 [ %call98, %if.end94.cleanup_crit_edge ], [ -11, %do.end126 ], [ %call161, %if.end152.cleanup_crit_edge ], [ -12, %if.then147 ], [ -12, %if.then132 ]
  tail call fastcc void @do_become_nonbusy(ptr noundef %dev, ptr noundef %arrayidx)
  br label %cleanup165

cleanup165:                                       ; preds = %cleanup, %if.end152.cleanup165_crit_edge, %if.then88, %do.body74, %if.then66, %do.body52, %if.then45, %do.body33, %if.end.cleanup165_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ %call24, %if.end.cleanup165_crit_edge ], [ -13, %if.then45 ], [ -16, %if.then66 ], [ -22, %if.then88 ], [ 0, %if.end152.cleanup165_crit_edge ], [ -13, %do.body33 ], [ -16, %do.body52 ], [ -22, %do.body74 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_cmdtest_ioctl(ptr noundef %dev, ptr noundef %cmd, ptr nocapture noundef writeonly %copy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1855, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call fastcc i32 @__comedi_get_user_cmd(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %1 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chanlist, align 4
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subdevices, align 4
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %4, i32 %6
  %tobool28.not = icmp eq ptr %2, null
  br i1 %tobool28.not, label %if.end27.if.end34_crit_edge, label %if.then29

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  %call30 = tail call fastcc i32 @__comedi_get_user_chanlist(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %2, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end34_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %4, i32 %6, i32 23
  %7 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %do_cmdtest, align 4
  %call35 = tail call i32 %8(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef %cmd) #13
  %9 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chanlist, align 4
  tail call void @kfree(ptr noundef %10) #13
  %11 = ptrtoint ptr %chanlist to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %chanlist, align 4
  %12 = ptrtoint ptr %copy to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %copy, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then29.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ %call24, %if.end.cleanup_crit_edge ], [ %call30, %if.then29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_insnlist_ioctl(ptr noundef %dev, ptr noundef %insns, i32 noundef %n_insns, ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1532, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_insns)
  %cmp24238.not = icmp eq i32 %n_insns, 0
  br i1 %cmp24238.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %if.end.for.body_crit_edge
  %max_n_data_required.0240 = phi i32 [ %5, %if.end43.for.body_crit_edge ], [ 16, %if.end.for.body_crit_edge ]
  %i.0239 = phi i32 [ %inc, %if.end43.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %n = getelementptr %struct.comedi_insn, ptr %insns, i32 %i.0239, i32 1
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %2)
  %cmp25 = icmp ugt i32 %2, 65536
  br i1 %cmp25, label %do.body27, label %if.end43

do.body27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_insnlist_ioctl.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_insnlist_ioctl, %arch_static_branch.exit.thread)) #13
          to label %if.then39 [label %arch_static_branch.exit.thread], !srcloc !302

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_insnlist_ioctl.__UNIQUE_ID_ddebug257, ptr noundef %4, ptr noundef nonnull @.str.62) #13
  br label %arch_static_branch.exit.thread

if.end43:                                         ; preds = %for.body
  %5 = tail call i32 @llvm.umax.i32(i32 %max_n_data_required.0240, i32 %2)
  %inc = add nuw i32 %i.0239, 1
  %exitcond.not = icmp eq i32 %inc, %n_insns
  br i1 %exitcond.not, label %if.end43.for.end_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %if.end.for.end_crit_edge
  %max_n_data_required.0.lcssa = phi i32 [ 16, %if.end.for.end_crit_edge ], [ %5, %if.end43.for.end_crit_edge ]
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_n_data_required.0.lcssa, i32 4) #13
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %for.end.arch_static_branch.exit.thread_crit_edge, label %if.end7.i, !prof !301

for.end.arch_static_branch.exit.thread_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %arch_static_branch.exit.thread

if.end7.i:                                        ; preds = %for.end
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #16
  %tobool49.not = icmp eq ptr %call8.i, null
  br i1 %tobool49.not, label %if.end7.i.arch_static_branch.exit.thread_crit_edge, label %for.cond52.preheader

if.end7.i.arch_static_branch.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %arch_static_branch.exit.thread

for.cond52.preheader:                             ; preds = %if.end7.i
  br i1 %cmp24238.not, label %for.cond52.preheader.error_crit_edge, label %for.cond52.preheader.for.body54_crit_edge

for.cond52.preheader.for.body54_crit_edge:        ; preds = %for.cond52.preheader
  br label %for.body54

for.cond52.preheader.error_crit_edge:             ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

for.body54:                                       ; preds = %for.inc127.for.body54_crit_edge, %for.cond52.preheader.for.body54_crit_edge
  %i.1242 = phi i32 [ %inc128, %for.inc127.for.body54_crit_edge ], [ 0, %for.cond52.preheader.for.body54_crit_edge ]
  %arrayidx55 = getelementptr %struct.comedi_insn, ptr %insns, i32 %i.1242
  %9 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx55, align 4
  %and = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %for.body54.if.end85_crit_edge, label %if.then57

for.body54.if.end85_crit_edge:                    ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then57:                                        ; preds = %for.body54
  %data59 = getelementptr %struct.comedi_insn, ptr %insns, i32 %i.1242, i32 2
  %11 = ptrtoint ptr %data59 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data59, align 4
  %n61 = getelementptr %struct.comedi_insn, ptr %insns, i32 %i.1242, i32 1
  %13 = ptrtoint ptr %n61 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n61, align 4
  %mul = shl i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then57
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.do.body65_crit_edge, label %if.then27.i.i, !prof !298

land.rhs16.i.i.do.body65_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body65

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %do.body65

if.then.i.i.i:                                    ; preds = %if.then57
  tail call void @__check_object_size(ptr noundef nonnull %call8.i, i32 noundef %mul, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 %mul, i32 -1226833920) #19, !srcloc !309
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !298

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i, i32 noundef %mul) #13
  %16 = tail call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !310
  %and.i.i.i.i = and i32 %18, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i, ptr noundef %12, i32 noundef %mul) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #13, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end85_crit_edge, label %if.then11.i.i, !prof !298

if.end.i.i.if.end85_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call8.i, i32 %sub.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %do.body65

do.body65:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_insnlist_ioctl.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_insnlist_ioctl, %arch_static_branch.exit.thread)) #13
          to label %if.then79 [label %arch_static_branch.exit.thread], !srcloc !302

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev80 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %class_dev80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev80, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_insnlist_ioctl.__UNIQUE_ID_ddebug260, ptr noundef %21, ptr noundef nonnull @.str.63) #13
  br label %arch_static_branch.exit.thread

if.end85:                                         ; preds = %if.end.i.i.if.end85_crit_edge, %for.body54.if.end85_crit_edge
  %call86 = tail call i32 @parse_insn(ptr noundef %dev, ptr noundef %arrayidx55, ptr noundef nonnull %call8.i, ptr noundef %file)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.end85.arch_static_branch.exit.thread_crit_edge, label %if.end89

if.end85.arch_static_branch.exit.thread_crit_edge: ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %arch_static_branch.exit.thread

if.end89:                                         ; preds = %if.end85
  %22 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx55, align 4
  %and92 = and i32 %23, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end89.if.end123_crit_edge, label %if.then94

if.end89.if.end123_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.then94:                                        ; preds = %if.end89
  %data96 = getelementptr %struct.comedi_insn, ptr %insns, i32 %i.1242, i32 2
  %24 = ptrtoint ptr %data96 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data96, align 4
  %n98 = getelementptr %struct.comedi_insn, ptr %insns, i32 %i.1242, i32 1
  %26 = ptrtoint ptr %n98 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n98, align 4
  %mul99 = shl i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul99)
  %cmp9.i.i181 = icmp slt i32 %mul99, 0
  br i1 %cmp9.i.i181, label %land.rhs16.i.i184, label %if.then.i.i.i187

land.rhs16.i.i184:                                ; preds = %if.then94
  %.b71.i.i183 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i183, label %land.rhs16.i.i184.do.body103_crit_edge, label %if.then27.i.i185, !prof !298

land.rhs16.i.i184.do.body103_crit_edge:           ; preds = %land.rhs16.i.i184
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body103

if.then27.i.i185:                                 ; preds = %land.rhs16.i.i184
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %do.body103

if.then.i.i.i187:                                 ; preds = %if.then94
  tail call void @__check_object_size(ptr noundef nonnull %call8.i, i32 noundef %mul99, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i188 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i188, label %if.then.i.i.i187.copy_to_user.exit_crit_edge, label %if.end.i.i192

if.then.i.i.i187.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i187
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i192:                                    ; preds = %if.then.i.i.i187
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 %mul99, i32 -1226833920) #19, !srcloc !305
  %asmresult.i.i190 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i190)
  %cmp.i6.i191 = icmp eq i32 %asmresult.i.i190, 0
  br i1 %cmp.i6.i191, label %if.then2.i.i, label %if.end.i.i192.copy_to_user.exit_crit_edge

if.end.i.i192.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i192
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i192
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i193 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i, i32 noundef %mul99) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef nonnull %call8.i, i32 noundef %mul99) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i192.copy_to_user.exit_crit_edge, %if.then.i.i.i187.copy_to_user.exit_crit_edge
  %n.addr.0.i194 = phi i32 [ %mul99, %if.then.i.i.i187.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul99, %if.end.i.i192.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i194)
  %tobool101.not = icmp eq i32 %n.addr.0.i194, 0
  br i1 %tobool101.not, label %copy_to_user.exit.if.end123_crit_edge, label %copy_to_user.exit.do.body103_crit_edge

copy_to_user.exit.do.body103_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body103

copy_to_user.exit.if.end123_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

do.body103:                                       ; preds = %copy_to_user.exit.do.body103_crit_edge, %if.then27.i.i185, %land.rhs16.i.i184.do.body103_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_insnlist_ioctl.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_insnlist_ioctl, %arch_static_branch.exit.thread)) #13
          to label %if.then117 [label %arch_static_branch.exit.thread], !srcloc !302

if.then117:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev118 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %29 = ptrtoint ptr %class_dev118 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %class_dev118, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_insnlist_ioctl.__UNIQUE_ID_ddebug261, ptr noundef %30, ptr noundef nonnull @.str.64) #13
  br label %arch_static_branch.exit.thread

if.end123:                                        ; preds = %copy_to_user.exit.if.end123_crit_edge, %if.end89.if.end123_crit_edge
  %31 = tail call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 16384
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not = icmp eq i32 %35, 0
  br i1 %tobool.i.not, label %if.end123.for.inc127_crit_edge, label %if.then125

if.end123.for.inc127_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc127

if.then125:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @schedule() #13
  br label %for.inc127

for.inc127:                                       ; preds = %if.then125, %if.end123.for.inc127_crit_edge
  %inc128 = add nuw i32 %i.1242, 1
  %exitcond254.not = icmp eq i32 %inc128, %n_insns
  br i1 %exitcond254.not, label %for.inc127.error_crit_edge, label %for.inc127.for.body54_crit_edge

for.inc127.for.body54_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54

for.inc127.error_crit_edge:                       ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

error:                                            ; preds = %for.inc127.error_crit_edge, %for.cond52.preheader.error_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i) #13
  br label %36

arch_static_branch.exit.thread:                   ; preds = %if.then117, %do.body103, %if.end85.arch_static_branch.exit.thread_crit_edge, %if.then79, %do.body65, %if.end7.i.arch_static_branch.exit.thread_crit_edge, %for.end.arch_static_branch.exit.thread_crit_edge, %if.then39, %do.body27
  %ret.1.ph = phi i32 [ -14, %if.then117 ], [ -14, %if.then79 ], [ -12, %if.end7.i.arch_static_branch.exit.thread_crit_edge ], [ -22, %if.then39 ], [ -22, %do.body27 ], [ -12, %for.end.arch_static_branch.exit.thread_crit_edge ], [ -14, %do.body65 ], [ -14, %do.body103 ], [ %call86, %if.end85.arch_static_branch.exit.thread_crit_edge ]
  %data.0.ph = phi ptr [ %call8.i, %if.then117 ], [ %call8.i, %if.then79 ], [ null, %if.end7.i.arch_static_branch.exit.thread_crit_edge ], [ null, %if.then39 ], [ null, %do.body27 ], [ null, %for.end.arch_static_branch.exit.thread_crit_edge ], [ %call8.i, %do.body65 ], [ %call8.i, %do.body103 ], [ %call8.i, %if.end85.arch_static_branch.exit.thread_crit_edge ]
  tail call void @kfree(ptr noundef %data.0.ph) #13
  br label %36

36:                                               ; preds = %arch_static_branch.exit.thread, %error
  %37 = phi i32 [ %ret.1.ph, %arch_static_branch.exit.thread ], [ %n_insns, %error ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_insn_ioctl(ptr noundef %dev, ptr noundef %insn, ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1608, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %2)
  %cmp27 = icmp ugt i32 %2, 65536
  br i1 %cmp27, label %if.then28, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %n, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end.if.end30_crit_edge
  %n_data.0 = phi i32 [ 65536, %if.then28 ], [ %3, %if.end.if.end30_crit_edge ]
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_data.0, i32 4) #13
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.end30.error_crit_edge, label %if.end7.i, !prof !301

if.end30.error_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end7.i:                                        ; preds = %if.end30
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #16
  %tobool32.not = icmp eq ptr %call8.i, null
  br i1 %tobool32.not, label %if.end7.i.error_crit_edge, label %if.end34

if.end7.i.error_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end34:                                         ; preds = %if.end7.i
  %8 = ptrtoint ptr %insn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %insn, align 4
  %and = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end34.if.end44_crit_edge, label %if.then37

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then37:                                        ; preds = %if.end34
  %data38 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 2
  %10 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data38, align 4
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  %mul = shl i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then37
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.error_crit_edge, label %if.then27.i.i, !prof !298

land.rhs16.i.i.error_crit_edge:                   ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %error

if.then.i.i.i:                                    ; preds = %if.then37
  tail call void @__check_object_size(ptr noundef nonnull %call8.i, i32 noundef %mul, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 %mul, i32 -1226833920) #19, !srcloc !309
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !298

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i, i32 noundef %mul) #13
  %15 = tail call i32 @llvm.read_register.i32(metadata !286) #13
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !310
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i, ptr noundef %11, i32 noundef %mul) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #13, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !312
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end44_crit_edge, label %if.then11.i.i, !prof !298

if.end.i.i.if.end44_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call8.i, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %error

if.end44:                                         ; preds = %if.end.i.i.if.end44_crit_edge, %if.end34.if.end44_crit_edge
  %call45 = tail call i32 @parse_insn(ptr noundef %dev, ptr noundef %insn, ptr noundef nonnull %call8.i, ptr noundef %file)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.error_crit_edge, label %if.end48

if.end44.error_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end48:                                         ; preds = %if.end44
  %19 = ptrtoint ptr %insn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %insn, align 4
  %and50 = and i32 %20, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end60_crit_edge, label %if.then52

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then52:                                        ; preds = %if.end48
  %data53 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 2
  %21 = ptrtoint ptr %data53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data53, align 4
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  %mul55 = shl i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul55)
  %cmp9.i.i88 = icmp slt i32 %mul55, 0
  br i1 %cmp9.i.i88, label %land.rhs16.i.i91, label %if.then.i.i.i94

land.rhs16.i.i91:                                 ; preds = %if.then52
  %.b71.i.i90 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i90, label %land.rhs16.i.i91.error_crit_edge, label %if.then27.i.i92, !prof !298

land.rhs16.i.i91.error_crit_edge:                 ; preds = %land.rhs16.i.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.then27.i.i92:                                  ; preds = %land.rhs16.i.i91
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %error

if.then.i.i.i94:                                  ; preds = %if.then52
  tail call void @__check_object_size(ptr noundef nonnull %call8.i, i32 noundef %mul55, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #13
  %call.i.i95 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i95, label %if.then.i.i.i94.copy_to_user.exit_crit_edge, label %if.end.i.i99

if.then.i.i.i94.copy_to_user.exit_crit_edge:      ; preds = %if.then.i.i.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i99:                                     ; preds = %if.then.i.i.i94
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 %mul55, i32 -1226833920) #19, !srcloc !305
  %asmresult.i.i97 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i97)
  %cmp.i6.i98 = icmp eq i32 %asmresult.i.i97, 0
  br i1 %cmp.i6.i98, label %if.then2.i.i, label %if.end.i.i99.copy_to_user.exit_crit_edge

if.end.i.i99.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i100 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i, i32 noundef %mul55) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %22, ptr noundef nonnull %call8.i, i32 noundef %mul55) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i99.copy_to_user.exit_crit_edge, %if.then.i.i.i94.copy_to_user.exit_crit_edge
  %n.addr.0.i101 = phi i32 [ %mul55, %if.then.i.i.i94.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul55, %if.end.i.i99.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i101)
  %tobool57.not = icmp eq i32 %n.addr.0.i101, 0
  br i1 %tobool57.not, label %copy_to_user.exit.if.end60_crit_edge, label %copy_to_user.exit.error_crit_edge

copy_to_user.exit.error_crit_edge:                ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

copy_to_user.exit.if.end60_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.end60:                                         ; preds = %copy_to_user.exit.if.end60_crit_edge, %if.end48.if.end60_crit_edge
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  br label %error

error:                                            ; preds = %if.end60, %copy_to_user.exit.error_crit_edge, %if.then27.i.i92, %land.rhs16.i.i91.error_crit_edge, %if.end44.error_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.error_crit_edge, %if.end7.i.error_crit_edge, %if.end30.error_crit_edge
  %retval.0.i109 = phi ptr [ %call8.i, %if.end44.error_crit_edge ], [ %call8.i, %if.end60 ], [ null, %if.end7.i.error_crit_edge ], [ %call8.i, %copy_to_user.exit.error_crit_edge ], [ null, %if.end30.error_crit_edge ], [ %call8.i, %if.then11.i.i ], [ %call8.i, %if.then27.i.i ], [ %call8.i, %land.rhs16.i.i.error_crit_edge ], [ %call8.i, %if.then27.i.i92 ], [ %call8.i, %land.rhs16.i.i91.error_crit_edge ]
  %ret.0 = phi i32 [ %call45, %if.end44.error_crit_edge ], [ %27, %if.end60 ], [ -12, %if.end7.i.error_crit_edge ], [ -14, %copy_to_user.exit.error_crit_edge ], [ -12, %if.end30.error_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.error_crit_edge ], [ -14, %if.then27.i.i92 ], [ -14, %land.rhs16.i.i91.error_crit_edge ]
  tail call void @kfree(ptr noundef %retval.0.i109) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_poll_ioctl(ptr noundef %dev, i32 noundef %arg, ptr noundef readnone %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2008, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %arg)
  %cmp24.not = icmp ugt i32 %2, %arg
  br i1 %cmp24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subdevices, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg
  %busy = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg, i32 9
  %5 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %busy, align 4
  %tobool27.not = icmp eq ptr %6, null
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %cmp31.not = icmp eq ptr %6, %file
  br i1 %cmp31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %poll = getelementptr %struct.comedi_subdevice, ptr %4, i32 %arg, i32 24
  %7 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %poll, align 4
  %tobool34.not = icmp eq ptr %8, null
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.then35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = tail call i32 %8(ptr noundef %dev, ptr noundef %arrayidx) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.then35 ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ -16, %if.end29.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_setrsubd_ioctl(ptr noundef %dev, i32 noundef %arg, ptr noundef readonly %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2044, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %arg)
  %cmp24.not = icmp ugt i32 %4, %arg
  br i1 %cmp24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subdevices, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %6, i32 %arg
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %last_attached.i.i = getelementptr inbounds %struct.comedi_file, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %last_attached.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %last_attached.i.i, align 4
  %attached.i.i = getelementptr inbounds %struct.comedi_device, ptr %10, i32 0, i32 10
  %12 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load2.i.i = load i8, ptr %attached.i.i, align 4
  %cmp.not.unshifted.i.i = xor i8 %bf.load2.i.i, %bf.load.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i.i)
  %cmp.not.i.i = icmp sgt i8 %cmp.not.unshifted.i.i, -1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end26.if.then.i.i_crit_edge

if.end26.if.then.i.i_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end26
  %last_detach_count.i.i = getelementptr inbounds %struct.comedi_file, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %last_detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_detach_count.i.i, align 4
  %detach_count.i.i = getelementptr inbounds %struct.comedi_device, ptr %10, i32 0, i32 6
  %15 = ptrtoint ptr %detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %detach_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp5.not.i.i = icmp eq i32 %14, %16
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_read_subdevice.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end26.if.then.i.i_crit_edge
  tail call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_read_subdevice.exit

comedi_file_read_subdevice.exit:                  ; preds = %if.then.i.i, %lor.lhs.false.i.i.comedi_file_read_subdevice.exit_crit_edge
  %read_subdev.i = getelementptr inbounds %struct.comedi_file, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %read_subdev.i, align 4
  %cmp28 = icmp eq ptr %18, %arrayidx
  br i1 %cmp28, label %comedi_file_read_subdevice.exit.cleanup_crit_edge, label %if.end30

comedi_file_read_subdevice.exit.cleanup_crit_edge: ; preds = %comedi_file_read_subdevice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %comedi_file_read_subdevice.exit
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %6, i32 %arg, i32 4
  %19 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %subdev_flags, align 4
  %and = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.end33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %tobool34.not = icmp eq ptr %18, null
  br i1 %tobool34.not, label %if.end33.do.body48_crit_edge, label %land.lhs.true

if.end33.do.body48_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48

land.lhs.true:                                    ; preds = %if.end33
  %busy = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %busy, align 4
  %cmp35 = icmp eq ptr %22, %file
  br i1 %cmp35, label %land.lhs.true36, label %land.lhs.true.do.body48_crit_edge

land.lhs.true.do.body48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48

land.lhs.true36:                                  ; preds = %land.lhs.true
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 7
  %23 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %async, align 4
  %tobool37.not = icmp eq ptr %24, null
  br i1 %tobool37.not, label %land.lhs.true36.do.body48_crit_edge, label %land.lhs.true38

land.lhs.true36.do.body48_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %flags = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 17, i32 1
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and40 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %land.lhs.true38.cleanup_crit_edge, label %land.lhs.true38.do.body48_crit_edge

land.lhs.true38.do.body48_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body48:                                        ; preds = %land.lhs.true38.do.body48_crit_edge, %land.lhs.true36.do.body48_crit_edge, %land.lhs.true.do.body48_crit_edge, %if.end33.do.body48_crit_edge
  %read_subdev = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx, ptr %read_subdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %land.lhs.true38.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %comedi_file_read_subdevice.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body48 ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %comedi_file_read_subdevice.exit.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ -16, %land.lhs.true38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_setwsubd_ioctl(ptr noundef %dev, i32 noundef %arg, ptr noundef readonly %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2087, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %arg)
  %cmp24.not = icmp ugt i32 %4, %arg
  br i1 %cmp24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subdevices, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %6, i32 %arg
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %last_attached.i.i = getelementptr inbounds %struct.comedi_file, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %last_attached.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %last_attached.i.i, align 4
  %attached.i.i = getelementptr inbounds %struct.comedi_device, ptr %10, i32 0, i32 10
  %12 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load2.i.i = load i8, ptr %attached.i.i, align 4
  %cmp.not.unshifted.i.i = xor i8 %bf.load2.i.i, %bf.load.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp.not.unshifted.i.i)
  %cmp.not.i.i = icmp sgt i8 %cmp.not.unshifted.i.i, -1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end26.if.then.i.i_crit_edge

if.end26.if.then.i.i_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end26
  %last_detach_count.i.i = getelementptr inbounds %struct.comedi_file, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %last_detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_detach_count.i.i, align 4
  %detach_count.i.i = getelementptr inbounds %struct.comedi_device, ptr %10, i32 0, i32 6
  %15 = ptrtoint ptr %detach_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %detach_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp5.not.i.i = icmp eq i32 %14, %16
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i.i.comedi_file_write_subdevice.exit_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i.comedi_file_write_subdevice.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_file_write_subdevice.exit

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end26.if.then.i.i_crit_edge
  tail call fastcc void @comedi_file_reset(ptr noundef %file) #13
  br label %comedi_file_write_subdevice.exit

comedi_file_write_subdevice.exit:                 ; preds = %if.then.i.i, %lor.lhs.false.i.i.comedi_file_write_subdevice.exit_crit_edge
  %write_subdev.i = getelementptr inbounds %struct.comedi_file, ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %write_subdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %write_subdev.i, align 4
  %cmp28 = icmp eq ptr %18, %arrayidx
  br i1 %cmp28, label %comedi_file_write_subdevice.exit.cleanup_crit_edge, label %if.end30

comedi_file_write_subdevice.exit.cleanup_crit_edge: ; preds = %comedi_file_write_subdevice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %comedi_file_write_subdevice.exit
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %6, i32 %arg, i32 4
  %19 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %subdev_flags, align 4
  %and = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.end33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %tobool34.not = icmp eq ptr %18, null
  br i1 %tobool34.not, label %if.end33.do.body48_crit_edge, label %land.lhs.true

if.end33.do.body48_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48

land.lhs.true:                                    ; preds = %if.end33
  %busy = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %busy, align 4
  %cmp35 = icmp eq ptr %22, %file
  br i1 %cmp35, label %land.lhs.true36, label %land.lhs.true.do.body48_crit_edge

land.lhs.true.do.body48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48

land.lhs.true36:                                  ; preds = %land.lhs.true
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %18, i32 0, i32 7
  %23 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %async, align 4
  %tobool37.not = icmp eq ptr %24, null
  br i1 %tobool37.not, label %land.lhs.true36.do.body48_crit_edge, label %land.lhs.true38

land.lhs.true36.do.body48_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %flags = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 17, i32 1
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and40 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %land.lhs.true38.do.body48_crit_edge, label %land.lhs.true38.cleanup_crit_edge

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true38.do.body48_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body48

do.body48:                                        ; preds = %land.lhs.true38.do.body48_crit_edge, %land.lhs.true36.do.body48_crit_edge, %land.lhs.true.do.body48_crit_edge, %if.end33.do.body48_crit_edge
  %write_subdev = getelementptr inbounds %struct.comedi_file, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %write_subdev to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx, ptr %write_subdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %land.lhs.true38.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %comedi_file_write_subdevice.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body48 ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %comedi_file_write_subdevice.exit.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ -16, %land.lhs.true38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_device_attach(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @comedi_buf_is_mmapped(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @resize_async_buffer(ptr noundef %dev, ptr noundef %s, i32 noundef %new_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 344, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %max_bufsize = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %max_bufsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %new_size)
  %cmp26 = icmp ult i32 %4, %new_size
  br i1 %cmp26, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %busy = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 9
  %5 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %busy, align 4
  %tobool29.not = icmp eq ptr %6, null
  br i1 %tobool29.not, label %if.end47, label %do.body31

do.body31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resize_async_buffer.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resize_async_buffer, %cleanup)) #13
          to label %if.then43 [label %cleanup], !srcloc !302

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resize_async_buffer.__UNIQUE_ID_ddebug242, ptr noundef %8, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end47:                                         ; preds = %if.end28
  %call48 = tail call zeroext i1 @comedi_buf_is_mmapped(ptr noundef %s) #13
  br i1 %call48, label %do.body50, label %if.end69

do.body50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resize_async_buffer.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resize_async_buffer, %cleanup)) #13
          to label %if.then64 [label %cleanup], !srcloc !302

if.then64:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev65 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %class_dev65 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resize_async_buffer.__UNIQUE_ID_ddebug243, ptr noundef %10, ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.end69:                                         ; preds = %if.end47
  %sub = add i32 %new_size, 4095
  %and = and i32 %sub, -4096
  %call70 = tail call i32 @comedi_buf_alloc(ptr noundef %dev, ptr noundef %s, i32 noundef %and) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end69.cleanup_crit_edge, label %if.end73

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end73:                                         ; preds = %if.end69
  %buf_change = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 26
  %11 = ptrtoint ptr %buf_change to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf_change, align 4
  %tobool74.not = icmp eq ptr %12, null
  br i1 %tobool74.not, label %if.end73.do.body82_crit_edge, label %if.then75

if.end73.do.body82_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body82

if.then75:                                        ; preds = %if.end73
  %call77 = tail call i32 %12(ptr noundef %dev, ptr noundef %s) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then75.cleanup_crit_edge, label %if.then75.do.body82_crit_edge

if.then75.do.body82_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body82

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body82:                                        ; preds = %if.then75.do.body82_crit_edge, %if.end73.do.body82_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resize_async_buffer.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@resize_async_buffer, %cleanup)) #13
          to label %if.then96 [label %cleanup], !srcloc !302

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev97 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev97 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev97, align 4
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %prealloc_bufsz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prealloc_bufsz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resize_async_buffer.__UNIQUE_ID_ddebug244, ptr noundef %14, ptr noundef nonnull @.str.49, i32 noundef %16, i32 noundef %18) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %do.body82, %if.then75.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.then64, %do.body50, %if.then43, %do.body31, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ -16, %if.then43 ], [ -16, %if.then64 ], [ %call70, %if.end69.cleanup_crit_edge ], [ %call77, %if.then75.cleanup_crit_edge ], [ 0, %if.then96 ], [ -16, %do.body31 ], [ -16, %do.body50 ], [ 0, %do.body82 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insn_inval(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__comedi_get_user_cmd(ptr noundef %dev, ptr nocapture noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1656, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd, align 4
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp24.not = icmp ult i32 %2, %4
  br i1 %cmp24.not, label %if.end43, label %do.body26

do.body26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__comedi_get_user_cmd.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__comedi_get_user_cmd, %cleanup)) #13
          to label %if.then38 [label %cleanup], !srcloc !302

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev, align 4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__comedi_get_user_cmd.__UNIQUE_ID_ddebug264, ptr noundef %6, ptr noundef nonnull @.str.57, i32 noundef %8) #13
  br label %cleanup

if.end43:                                         ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %9 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subdevices, align 4
  %type = getelementptr %struct.comedi_subdevice, ptr %10, i32 %2, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp45 = icmp eq i32 %12, 0
  br i1 %cmp45, label %do.body47, label %if.end67

do.body47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__comedi_get_user_cmd.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__comedi_get_user_cmd, %cleanup)) #13
          to label %if.then61 [label %cleanup], !srcloc !302

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev62 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev62 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev62, align 4
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__comedi_get_user_cmd.__UNIQUE_ID_ddebug265, ptr noundef %14, ptr noundef nonnull @.str.58, i32 noundef %16) #13
  br label %cleanup

if.end67:                                         ; preds = %if.end43
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %10, i32 %2, i32 22
  %17 = ptrtoint ptr %do_cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %do_cmd, align 4
  %tobool68.not = icmp eq ptr %18, null
  br i1 %tobool68.not, label %if.end67.do.body73_crit_edge, label %lor.lhs.false

if.end67.do.body73_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body73

lor.lhs.false:                                    ; preds = %if.end67
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %10, i32 %2, i32 23
  %19 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %do_cmdtest, align 4
  %tobool69.not = icmp eq ptr %20, null
  br i1 %tobool69.not, label %lor.lhs.false.do.body73_crit_edge, label %lor.lhs.false70

lor.lhs.false.do.body73_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body73

lor.lhs.false70:                                  ; preds = %lor.lhs.false
  %async = getelementptr %struct.comedi_subdevice, ptr %10, i32 %2, i32 7
  %21 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %async, align 4
  %tobool71.not = icmp eq ptr %22, null
  br i1 %tobool71.not, label %lor.lhs.false70.do.body73_crit_edge, label %if.end93

lor.lhs.false70.do.body73_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body73

do.body73:                                        ; preds = %lor.lhs.false70.do.body73_crit_edge, %lor.lhs.false.do.body73_crit_edge, %if.end67.do.body73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__comedi_get_user_cmd.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__comedi_get_user_cmd, %cleanup)) #13
          to label %if.then87 [label %cleanup], !srcloc !302

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev88 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %23 = ptrtoint ptr %class_dev88 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %class_dev88, align 4
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__comedi_get_user_cmd.__UNIQUE_ID_ddebug266, ptr noundef %24, ptr noundef nonnull @.str.59, i32 noundef %26) #13
  br label %cleanup

if.end93:                                         ; preds = %lor.lhs.false70
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %27 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chanlist_len, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %10, i32 %2, i32 5
  %29 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len_chanlist, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp94 = icmp ugt i32 %28, %30
  br i1 %cmp94, label %do.body96, label %if.end117

do.body96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__comedi_get_user_cmd.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__comedi_get_user_cmd, %cleanup)) #13
          to label %if.then110 [label %cleanup], !srcloc !302

if.then110:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev111 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %31 = ptrtoint ptr %class_dev111 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class_dev111, align 4
  %33 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chanlist_len, align 4
  %35 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len_chanlist, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__comedi_get_user_cmd.__UNIQUE_ID_ddebug267, ptr noundef %32, ptr noundef nonnull @.str.60, i32 noundef %34, i32 noundef %36) #13
  br label %cleanup

if.end117:                                        ; preds = %if.end93
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %10, i32 %2, i32 4
  %37 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %subdev_flags, align 4
  %39 = trunc i32 %38 to i16
  %trunc = and i16 %39, -16384
  %40 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %trunc, label %if.end117.cleanup_crit_edge [
    i16 -32768, label %sw.bb
    i16 16384, label %sw.bb119
  ]

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and118 = and i32 %42, -65
  store i32 %and118, ptr %flags, align 4
  br label %cleanup

sw.bb119:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %flags120 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %43 = ptrtoint ptr %flags120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags120, align 4
  %or = or i32 %44, 64
  store i32 %or, ptr %flags120, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb119, %sw.bb, %if.end117.cleanup_crit_edge, %if.then110, %do.body96, %if.then87, %do.body73, %if.then61, %do.body47, %if.then38, %do.body26
  %retval.0 = phi i32 [ -19, %if.then38 ], [ -5, %if.then61 ], [ -5, %if.then87 ], [ -22, %if.then110 ], [ 0, %if.end117.cleanup_crit_edge ], [ 0, %sw.bb119 ], [ 0, %sw.bb ], [ -19, %do.body26 ], [ -5, %do.body47 ], [ -5, %do.body73 ], [ -22, %do.body96 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__comedi_get_user_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %user_chanlist, ptr nocapture noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1710, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %chanlist24 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %1 = ptrtoint ptr %chanlist24 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %chanlist24, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %2 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanlist_len, align 4
  %mul = shl i32 %3, 2
  %call25 = tail call ptr @memdup_user(ptr noundef %user_chanlist, i32 noundef %mul) #13
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %5 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chanlist_len, align 4
  %call31 = tail call i32 @comedi_check_chanlist(ptr noundef %s, i32 noundef %6, ptr noundef %call25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %call25) #13
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %chanlist24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call25, ptr %chanlist24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then33, %if.then27
  %retval.0 = phi i32 [ %4, %if.then27 ], [ %call31, %if.then33 ], [ 0, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_check_chanlist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_insn(ptr noundef %dev, ptr noundef %insn, ptr noundef %data, ptr noundef readnone %file) #0 align 64 {
entry:
  %tv = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1311, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %insn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %insn, align 4
  %and = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %2, label %do.body151 [
    i32 100663300, label %sw.bb
    i32 167772165, label %sw.bb32
    i32 167772166, label %sw.bb54
    i32 234881027, label %sw.bb136
  ]

sw.bb:                                            ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv) #13
  %4 = call ptr @memset(ptr %tv, i32 255, i32 16)
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp28.not = icmp eq i32 %6, 2
  br i1 %cmp28.not, label %if.end30, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  call void @ktime_get_real_ts64(ptr noundef nonnull %tv) #13
  %7 = ptrtoint ptr %tv to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tv, align 8
  %conv = trunc i64 %8 to i32
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %data, align 4
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %tv, i32 0, i32 1
  %10 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %11, 1000
  %arrayidx31 = getelementptr i32, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %arrayidx31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %sw.bb.cleanup_crit_edge
  %ret.0 = phi i32 [ 2, %if.end30 ], [ -22, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv) #13
  br label %cleanup408

sw.bb32:                                          ; preds = %if.then26
  %n33 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %13 = ptrtoint ptr %n33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp34.not = icmp eq i32 %14, 1
  br i1 %cmp34.not, label %lor.lhs.false, label %sw.bb32.cleanup408_crit_edge

sw.bb32.cleanup408_crit_edge:                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup408

lor.lhs.false:                                    ; preds = %sw.bb32
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999, i32 %16)
  %cmp37 = icmp ugt i32 %16, 99999
  br i1 %cmp37, label %lor.lhs.false.cleanup408_crit_edge, label %cond.false50

lor.lhs.false.cleanup408_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup408

cond.false50:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %div42 = udiv i32 %16, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %div42) #13
  br label %cleanup408

sw.bb54:                                          ; preds = %if.then26
  %n55 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %18 = ptrtoint ptr %n55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp56.not = icmp eq i32 %19, 1
  br i1 %cmp56.not, label %if.end59, label %sw.bb54.cleanup408_crit_edge

sw.bb54.cleanup408_crit_edge:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup408

if.end59:                                         ; preds = %sw.bb54
  %subdev = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 3
  %20 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %subdev, align 4
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %22 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp60.not = icmp ult i32 %21, %23
  br i1 %cmp60.not, label %if.end80, label %do.body63

do.body63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %cleanup408)) #13
          to label %if.then75 [label %cleanup408], !srcloc !302

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %24 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %class_dev, align 4
  %26 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %subdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug246, ptr noundef %25, ptr noundef nonnull @.str.66, i32 noundef %27) #13
  br label %cleanup408

if.end80:                                         ; preds = %if.end59
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %28 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %subdevices, align 4
  %arrayidx82 = getelementptr %struct.comedi_subdevice, ptr %29, i32 %21
  %async = getelementptr %struct.comedi_subdevice, ptr %29, i32 %21, i32 7
  %30 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %async, align 4
  %tobool83.not = icmp eq ptr %31, null
  br i1 %tobool83.not, label %do.body85, label %if.end104

do.body85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %cleanup408)) #13
          to label %if.then99 [label %cleanup408], !srcloc !302

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev100 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %32 = ptrtoint ptr %class_dev100 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %class_dev100, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug247, ptr noundef %33, ptr noundef nonnull @.str.67) #13
  br label %cleanup408

if.end104:                                        ; preds = %if.end80
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %31, i32 0, i32 20
  %34 = ptrtoint ptr %inttrig to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %inttrig, align 4
  %tobool106.not = icmp eq ptr %35, null
  br i1 %tobool106.not, label %do.body108, label %if.end127

do.body108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %cleanup408)) #13
          to label %if.then122 [label %cleanup408], !srcloc !302

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev123 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %36 = ptrtoint ptr %class_dev123 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class_dev123, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug248, ptr noundef %37, ptr noundef nonnull @.str.68) #13
  br label %cleanup408

if.end127:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data, align 4
  %call131 = tail call i32 %35(ptr noundef %dev, ptr noundef %arrayidx82, i32 noundef %39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call131)
  %cmp132 = icmp sgt i32 %call131, -1
  %spec.store.select = select i1 %cmp132, i32 1, i32 %call131
  br label %cleanup408

sw.bb136:                                         ; preds = %if.then26
  %n.i = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %40 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i = icmp eq i32 %41, 0
  br i1 %cmp.i, label %sw.bb136.cleanup408_crit_edge, label %if.end.i

sw.bb136.cleanup408_crit_edge:                    ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup408

if.end.i:                                         ; preds = %sw.bb136
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %43, label %if.end.i.cleanup408_crit_edge [
    i32 0, label %if.end.i.sw.bb.i_crit_edge
    i32 1, label %if.end.i.sw.bb.i_crit_edge577
    i32 2, label %if.end.i.sw.bb.i_crit_edge578
    i32 3, label %sw.bb5.i
  ]

if.end.i.sw.bb.i_crit_edge578:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge577:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end.i.cleanup408_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup408

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge577, %if.end.i.sw.bb.i_crit_edge578
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp2.i = icmp eq i32 %41, 3
  br i1 %cmp2.i, label %if.end140, label %sw.bb.i.cleanup408_crit_edge

sw.bb.i.cleanup408_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup408

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp7.i = icmp ugt i32 %41, 1
  br i1 %cmp7.i, label %sw.bb5.i.if.then144_crit_edge, label %sw.bb5.i.cleanup408_crit_edge

sw.bb5.i.cleanup408_crit_edge:                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup408

sw.bb5.i.if.then144_crit_edge:                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then144

if.end140:                                        ; preds = %sw.bb.i
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp142 = icmp eq i32 %.pr, 3
  br i1 %cmp142, label %if.end140.if.then144_crit_edge, label %if.end149

if.end140.if.then144_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then144

if.then144:                                       ; preds = %if.end140.if.then144_crit_edge, %sw.bb5.i.if.then144_crit_edge
  %sub = add i32 %41, -2
  %div146527 = lshr i32 %sub, 1
  %arrayidx147 = getelementptr i32, ptr %data, i32 1
  %46 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div146527, ptr %arrayidx147, align 4
  tail call fastcc void @get_valid_routes(ptr noundef %dev, ptr noundef %data)
  br label %cleanup408

if.end149:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #15
  %insn_device_config = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 26
  %47 = ptrtoint ptr %insn_device_config to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %insn_device_config, align 4
  %call150 = tail call i32 %48(ptr noundef %dev, ptr noundef %insn, ptr noundef %data) #13
  br label %cleanup408

do.body151:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %cleanup408)) #13
          to label %if.then165 [label %cleanup408], !srcloc !302

if.then165:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev166 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %49 = ptrtoint ptr %class_dev166 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %class_dev166, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug249, ptr noundef %50, ptr noundef nonnull @.str.69) #13
  br label %cleanup408

if.else:                                          ; preds = %if.end
  %subdev170 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 3
  %51 = ptrtoint ptr %subdev170 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %subdev170, align 4
  %n_subdevices171 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %53 = ptrtoint ptr %n_subdevices171 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_subdevices171, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp172.not = icmp ult i32 %52, %54
  br i1 %cmp172.not, label %if.end195, label %do.body175

do.body175:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %cleanup408)) #13
          to label %if.then189 [label %cleanup408], !srcloc !302

if.then189:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev190 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %55 = ptrtoint ptr %class_dev190 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %class_dev190, align 4
  %57 = ptrtoint ptr %subdev170 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %subdev170, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug250, ptr noundef %56, ptr noundef nonnull @.str.70, i32 noundef %58) #13
  br label %cleanup408

if.end195:                                        ; preds = %if.else
  %subdevices196 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %59 = ptrtoint ptr %subdevices196 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %subdevices196, align 4
  %arrayidx198 = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52
  %type = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 2
  %61 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp199 = icmp eq i32 %62, 0
  br i1 %cmp199, label %do.body202, label %if.end222

do.body202:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %cleanup408)) #13
          to label %if.then216 [label %cleanup408], !srcloc !302

if.then216:                                       ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev217 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %63 = ptrtoint ptr %class_dev217 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %class_dev217, align 4
  %65 = ptrtoint ptr %subdev170 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %subdev170, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug251, ptr noundef %64, ptr noundef nonnull @.str.66, i32 noundef %66) #13
  br label %cleanup408

if.end222:                                        ; preds = %if.end195
  %lock = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 8
  %67 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lock, align 4
  %tobool223.not = icmp eq ptr %68, null
  %cmp225.not = icmp eq ptr %68, %file
  %or.cond = or i1 %tobool223.not, %cmp225.not
  br i1 %or.cond, label %if.end247, label %do.body228

do.body228:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %cleanup408)) #13
          to label %if.then242 [label %cleanup408], !srcloc !302

if.then242:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev243 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %69 = ptrtoint ptr %class_dev243 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %class_dev243, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug252, ptr noundef %70, ptr noundef nonnull @.str.71) #13
  br label %cleanup408

if.end247:                                        ; preds = %if.end222
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %call248 = tail call i32 @comedi_check_chanlist(ptr noundef %arrayidx198, i32 noundef 1, ptr noundef %chanspec) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %cmp249 = icmp slt i32 %call248, 0
  br i1 %cmp249, label %if.then251, label %if.end271

if.then251:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %cleanup408)) #13
          to label %if.then266 [label %cleanup408], !srcloc !302

if.then266:                                       ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev267 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %71 = ptrtoint ptr %class_dev267 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %class_dev267, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug253, ptr noundef %72, ptr noundef nonnull @.str.72) #13
  br label %cleanup408

if.end271:                                        ; preds = %if.end247
  %busy = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 9
  %73 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %busy, align 4
  %tobool272.not = icmp eq ptr %74, null
  br i1 %tobool272.not, label %if.end274, label %if.end271.cleanup408_crit_edge

if.end271.cleanup408_crit_edge:                   ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup408

if.end274:                                        ; preds = %if.end271
  %75 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @parse_insn, ptr %busy, align 4
  %76 = ptrtoint ptr %insn to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %insn, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %77, label %if.end274.sw.epilog404_crit_edge [
    i32 67108864, label %sw.bb277
    i32 134217729, label %sw.bb302
    i32 201326594, label %sw.bb368
    i32 201326595, label %sw.bb397
  ]

if.end274.sw.epilog404_crit_edge:                 ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog404

sw.bb277:                                         ; preds = %if.end274
  %insn_read = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 18
  %79 = ptrtoint ptr %insn_read to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %insn_read, align 4
  %call278 = tail call i32 %80(ptr noundef %dev, ptr noundef %arrayidx198, ptr noundef %insn, ptr noundef %data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call278)
  %cmp279 = icmp eq i32 %call278, -110
  br i1 %cmp279, label %do.body282, label %sw.bb277.sw.epilog404_crit_edge

sw.bb277.sw.epilog404_crit_edge:                  ; preds = %sw.bb277
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog404

do.body282:                                       ; preds = %sw.bb277
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %sw.epilog404)) #13
          to label %if.then296 [label %sw.epilog404], !srcloc !302

if.then296:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev297 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %81 = ptrtoint ptr %class_dev297 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %class_dev297, align 4
  %index = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 1
  %83 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug254, ptr noundef %82, ptr noundef nonnull @.str.73, i32 noundef %84) #13
  br label %sw.epilog404

sw.bb302:                                         ; preds = %if.end274
  %maxdata_list = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 14
  %85 = ptrtoint ptr %maxdata_list to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %maxdata_list, align 4
  %tobool303.not = icmp eq ptr %86, null
  br i1 %tobool303.not, label %cond.false309, label %cond.true304

cond.true304:                                     ; preds = %sw.bb302
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chanspec, align 4
  %and307 = and i32 %88, 65535
  %arrayidx308 = getelementptr i32, ptr %86, i32 %and307
  br label %cond.end311

cond.false309:                                    ; preds = %sw.bb302
  call void @__sanitizer_cov_trace_pc() #15
  %maxdata310 = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 13
  br label %cond.end311

cond.end311:                                      ; preds = %cond.false309, %cond.true304
  %cond.in = phi ptr [ %arrayidx308, %cond.true304 ], [ %maxdata310, %cond.false309 ]
  %89 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %89)
  %cond = load i32, ptr %cond.in, align 4
  %n312 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %90 = ptrtoint ptr %n312 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %n312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp313575.not = icmp eq i32 %91, 0
  br i1 %cmp313575.not, label %cond.end311.for.end_crit_edge, label %cond.end311.for.body_crit_edge

cond.end311.for.body_crit_edge:                   ; preds = %cond.end311
  br label %for.body

cond.end311.for.end_crit_edge:                    ; preds = %cond.end311
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0576, 1
  %exitcond.not = icmp eq i32 %inc, %91
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %cond.end311.for.body_crit_edge
  %i.0576 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %cond.end311.for.body_crit_edge ]
  %arrayidx315 = getelementptr i32, ptr %data, i32 %i.0576
  %92 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx315, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %cond)
  %cmp316 = icmp ugt i32 %93, %cond
  br i1 %cmp316, label %if.then318, label %for.cond

if.then318:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %sw.epilog404)) #13
          to label %if.then333 [label %sw.epilog404], !srcloc !302

if.then333:                                       ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev334 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %94 = ptrtoint ptr %class_dev334 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %class_dev334, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug255, ptr noundef %95, ptr noundef nonnull @.str.74) #13
  br label %sw.epilog404

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %cond.end311.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %cmp339 = icmp eq i32 %call248, 0
  br i1 %cmp339, label %if.then341, label %for.end.sw.epilog404_crit_edge

for.end.sw.epilog404_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog404

if.then341:                                       ; preds = %for.end
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 19
  %96 = ptrtoint ptr %insn_write to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %insn_write, align 4
  %call342 = tail call i32 %97(ptr noundef %dev, ptr noundef %arrayidx198, ptr noundef %insn, ptr noundef %data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call342)
  %cmp343 = icmp eq i32 %call342, -110
  br i1 %cmp343, label %do.body346, label %if.then341.sw.epilog404_crit_edge

if.then341.sw.epilog404_crit_edge:                ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog404

do.body346:                                       ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_insn.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@parse_insn, %sw.epilog404)) #13
          to label %if.then360 [label %sw.epilog404], !srcloc !302

if.then360:                                       ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev361 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %98 = ptrtoint ptr %class_dev361 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %class_dev361, align 4
  %index362 = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 1
  %100 = ptrtoint ptr %index362 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %index362, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_insn.__UNIQUE_ID_ddebug256, ptr noundef %99, ptr noundef nonnull @.str.75, i32 noundef %101) #13
  br label %sw.epilog404

sw.bb368:                                         ; preds = %if.end274
  %n369 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %102 = ptrtoint ptr %n369 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %n369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp370.not = icmp eq i32 %103, 2
  br i1 %cmp370.not, label %if.else373, label %sw.bb368.sw.epilog404_crit_edge

sw.bb368.sw.epilog404_crit_edge:                  ; preds = %sw.bb368
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog404

if.else373:                                       ; preds = %sw.bb368
  %104 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data, align 4
  %n_chan = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 3
  %106 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %107)
  %cmp375 = icmp slt i32 %107, 33
  br i1 %cmp375, label %if.then377, label %if.else373.if.end388_crit_edge

if.else373.if.end388_crit_edge:                   ; preds = %if.else373
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end388

if.then377:                                       ; preds = %if.else373
  %108 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %chanspec, align 4
  %and379 = and i32 %109, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and379)
  %cmp380.not = icmp eq i32 %and379, 0
  br i1 %cmp380.not, label %if.then377.if.end388_crit_edge, label %if.then382

if.then377.if.end388_crit_edge:                   ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end388

if.then382:                                       ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %chanspec to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %chanspec, align 4
  %111 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data, align 4
  %shl = shl i32 %112, %and379
  store i32 %shl, ptr %data, align 4
  %arrayidx385 = getelementptr i32, ptr %data, i32 1
  %113 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx385, align 4
  %shl386 = shl i32 %114, %and379
  store i32 %shl386, ptr %arrayidx385, align 4
  br label %if.end388

if.end388:                                        ; preds = %if.then382, %if.then377.if.end388_crit_edge, %if.else373.if.end388_crit_edge
  %shift.0 = phi i32 [ %and379, %if.then382 ], [ 0, %if.then377.if.end388_crit_edge ], [ 0, %if.else373.if.end388_crit_edge ]
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 20
  %115 = ptrtoint ptr %insn_bits to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %insn_bits, align 4
  %call389 = tail call i32 %116(ptr noundef %dev, ptr noundef %arrayidx198, ptr noundef %insn, ptr noundef %data) #13
  %117 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %105, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift.0)
  %cmp391.not = icmp eq i32 %shift.0, 0
  br i1 %cmp391.not, label %if.end388.sw.epilog404_crit_edge, label %if.then393

if.end388.sw.epilog404_crit_edge:                 ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog404

if.then393:                                       ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx394 = getelementptr i32, ptr %data, i32 1
  %118 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx394, align 4
  %shr = lshr i32 %119, %shift.0
  store i32 %shr, ptr %arrayidx394, align 4
  br label %sw.epilog404

sw.bb397:                                         ; preds = %if.end274
  %call398 = tail call fastcc i32 @check_insn_config_length(ptr noundef %insn, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398)
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %if.end401, label %sw.bb397.sw.epilog404_crit_edge

sw.bb397.sw.epilog404_crit_edge:                  ; preds = %sw.bb397
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog404

if.end401:                                        ; preds = %sw.bb397
  call void @__sanitizer_cov_trace_pc() #15
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %60, i32 %52, i32 21
  %120 = ptrtoint ptr %insn_config to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %insn_config, align 4
  %call402 = tail call i32 %121(ptr noundef %dev, ptr noundef %arrayidx198, ptr noundef %insn, ptr noundef %data) #13
  br label %sw.epilog404

sw.epilog404:                                     ; preds = %if.end401, %sw.bb397.sw.epilog404_crit_edge, %if.then393, %if.end388.sw.epilog404_crit_edge, %sw.bb368.sw.epilog404_crit_edge, %if.then360, %do.body346, %if.then341.sw.epilog404_crit_edge, %for.end.sw.epilog404_crit_edge, %if.then333, %if.then318, %if.then296, %do.body282, %sw.bb277.sw.epilog404_crit_edge, %if.end274.sw.epilog404_crit_edge
  %ret.2 = phi i32 [ %call398, %sw.bb397.sw.epilog404_crit_edge ], [ %call402, %if.end401 ], [ -110, %if.then360 ], [ %call342, %if.then341.sw.epilog404_crit_edge ], [ %call248, %for.end.sw.epilog404_crit_edge ], [ -110, %if.then296 ], [ %call278, %sw.bb277.sw.epilog404_crit_edge ], [ -22, %sw.bb368.sw.epilog404_crit_edge ], [ %call389, %if.then393 ], [ %call389, %if.end388.sw.epilog404_crit_edge ], [ -22, %if.end274.sw.epilog404_crit_edge ], [ -110, %do.body282 ], [ -22, %if.then333 ], [ -22, %if.then318 ], [ -110, %do.body346 ]
  %122 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %busy, align 4
  br label %cleanup408

cleanup408:                                       ; preds = %sw.epilog404, %if.end271.cleanup408_crit_edge, %if.then266, %if.then251, %if.then242, %do.body228, %if.then216, %do.body202, %if.then189, %do.body175, %if.then165, %do.body151, %if.end149, %if.then144, %sw.bb5.i.cleanup408_crit_edge, %sw.bb.i.cleanup408_crit_edge, %if.end.i.cleanup408_crit_edge, %sw.bb136.cleanup408_crit_edge, %if.end127, %if.then122, %do.body108, %if.then99, %do.body85, %if.then75, %do.body63, %sw.bb54.cleanup408_crit_edge, %cond.false50, %lor.lhs.false.cleanup408_crit_edge, %sw.bb32.cleanup408_crit_edge, %cleanup
  %retval.0 = phi i32 [ 0, %if.then144 ], [ %call150, %if.end149 ], [ %spec.store.select, %if.end127 ], [ %ret.0, %cleanup ], [ -22, %lor.lhs.false.cleanup408_crit_edge ], [ -22, %sw.bb32.cleanup408_crit_edge ], [ 1, %cond.false50 ], [ -22, %sw.bb54.cleanup408_crit_edge ], [ -22, %if.then75 ], [ -22, %if.then99 ], [ -11, %if.then122 ], [ -22, %if.then165 ], [ %ret.2, %sw.epilog404 ], [ -22, %if.then189 ], [ -5, %if.then216 ], [ -13, %if.then242 ], [ -22, %if.then266 ], [ -16, %if.end271.cleanup408_crit_edge ], [ -22, %sw.bb136.cleanup408_crit_edge ], [ -22, %do.body63 ], [ -22, %do.body85 ], [ -11, %do.body108 ], [ -22, %sw.bb5.i.cleanup408_crit_edge ], [ -22, %sw.bb.i.cleanup408_crit_edge ], [ -22, %if.end.i.cleanup408_crit_edge ], [ -22, %do.body151 ], [ -22, %do.body175 ], [ -5, %do.body202 ], [ -13, %do.body228 ], [ -22, %if.then251 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_valid_routes(ptr noundef %dev, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1299, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %get_valid_routes = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %get_valid_routes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_valid_routes, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %data, i32 2
  %call24 = tail call i32 %2(ptr noundef %dev, i32 noundef %4, ptr noundef %add.ptr) #13
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call24, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_insn_config_length(ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %3, label %do.end [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 0, label %if.end.sw.bb_crit_edge48
    i32 32, label %if.end.sw.bb_crit_edge49
    i32 34, label %if.end.sw.bb_crit_edge50
    i32 31, label %if.end.sw.bb5_crit_edge
    i32 28, label %if.end.sw.bb5_crit_edge51
    i32 22, label %if.end.sw.bb5_crit_edge52
    i32 24, label %if.end.sw.bb5_crit_edge53
    i32 26, label %if.end.sw.bb5_crit_edge54
    i32 27, label %if.end.sw.bb5_crit_edge55
    i32 20, label %if.end.sw.bb5_crit_edge56
    i32 4097, label %if.end.sw.bb5_crit_edge57
    i32 4098, label %if.end.sw.bb5_crit_edge58
    i32 4099, label %if.end.sw.bb5_crit_edge59
    i32 4109, label %if.end.sw.bb5_crit_edge60
    i32 5002, label %if.end.sw.bb5_crit_edge61
    i32 5000, label %if.end.sw.bb5_crit_edge62
    i32 5001, label %if.end.sw.bb5_crit_edge63
    i32 2001, label %if.end.sw.bb10_crit_edge
    i32 2002, label %if.end.sw.bb10_crit_edge64
    i32 2003, label %if.end.sw.bb10_crit_edge65
    i32 2004, label %if.end.sw.bb10_crit_edge66
    i32 2005, label %if.end.sw.bb10_crit_edge67
    i32 33, label %if.end.sw.bb10_crit_edge68
    i32 5003, label %if.end.sw.bb10_crit_edge69
    i32 5004, label %if.end.sw.bb10_crit_edge70
    i32 2006, label %if.end.sw.bb10_crit_edge71
    i32 29, label %if.end.sw.bb15_crit_edge
    i32 16, label %if.end.sw.bb15_crit_edge72
    i32 23, label %if.end.sw.bb15_crit_edge73
    i32 21, label %sw.bb20
    i32 5005, label %sw.bb25
  ]

if.end.sw.bb15_crit_edge73:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb15

if.end.sw.bb15_crit_edge72:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb15

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb15

if.end.sw.bb10_crit_edge71:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge70:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge69:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge68:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge67:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge66:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge65:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge64:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb5_crit_edge63:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge62:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge61:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge60:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge59:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge58:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge57:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge56:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge55:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge53:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge52:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge51:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

if.end.sw.bb_crit_edge50:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge49:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge48:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge48, %if.end.sw.bb_crit_edge49, %if.end.sw.bb_crit_edge50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2 = icmp eq i32 %1, 1
  br i1 %cmp2, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge51, %if.end.sw.bb5_crit_edge52, %if.end.sw.bb5_crit_edge53, %if.end.sw.bb5_crit_edge54, %if.end.sw.bb5_crit_edge55, %if.end.sw.bb5_crit_edge56, %if.end.sw.bb5_crit_edge57, %if.end.sw.bb5_crit_edge58, %if.end.sw.bb5_crit_edge59, %if.end.sw.bb5_crit_edge60, %if.end.sw.bb5_crit_edge61, %if.end.sw.bb5_crit_edge62, %if.end.sw.bb5_crit_edge63
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp7 = icmp eq i32 %1, 2
  br i1 %cmp7, label %sw.bb5.return_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge64, %if.end.sw.bb10_crit_edge65, %if.end.sw.bb10_crit_edge66, %if.end.sw.bb10_crit_edge67, %if.end.sw.bb10_crit_edge68, %if.end.sw.bb10_crit_edge69, %if.end.sw.bb10_crit_edge70, %if.end.sw.bb10_crit_edge71
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp12 = icmp eq i32 %1, 3
  br i1 %cmp12, label %sw.bb10.return_crit_edge, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb10.return_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb15:                                          ; preds = %if.end.sw.bb15_crit_edge, %if.end.sw.bb15_crit_edge72, %if.end.sw.bb15_crit_edge73
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp17 = icmp eq i32 %1, 5
  br i1 %cmp17, label %sw.bb15.return_crit_edge, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb15.return_crit_edge:                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp22 = icmp eq i32 %1, 6
  br i1 %cmp22, label %sw.bb20.return_crit_edge, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb20.return_crit_edge:                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp27 = icmp ugt i32 %1, 3
  br i1 %cmp27, label %sw.bb25.return_crit_edge, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb25.return_crit_edge:                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %3) #18
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str) #18
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %6) #18
  br label %return

sw.epilog:                                        ; preds = %sw.bb25.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %do.end, %sw.bb25.return_crit_edge, %sw.bb20.return_crit_edge, %sw.bb15.return_crit_edge, %sw.bb10.return_crit_edge, %sw.bb5.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %sw.epilog ], [ -22, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %sw.bb5.return_crit_edge ], [ 0, %sw.bb10.return_crit_edge ], [ 0, %sw.bb15.return_crit_edge ], [ 0, %sw.bb20.return_crit_edge ], [ 0, %sw.bb25.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_buf_map_from_subdev_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_map_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @comedi_vm_open(ptr nocapture noundef readonly %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  tail call void @comedi_buf_map_get(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @comedi_vm_close(ptr nocapture noundef readonly %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %call = tail call i32 @comedi_buf_map_put(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_vm_access(ptr nocapture noundef readonly %vma, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i32 noundef %write) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vma, align 4
  %sub = sub i32 %addr, %1
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %3, 12
  %add = add i32 %sub, %shl
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %4 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_private_data, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end, align 4
  %sub1 = sub i32 %7, %addr
  %8 = tail call i32 @llvm.umin.i32(i32 %sub1, i32 %len)
  %call = tail call i32 @comedi_buf_map_access(ptr noundef %5, i32 noundef %add, ptr noundef %buf, i32 noundef %8, i32 noundef %write) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_buf_map_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_map_access(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_read_buffer_kb_show(ptr nocapture noundef readonly %csdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %csdev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  %call = tail call ptr @comedi_dev_get_from_minor(i32 noundef %and)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call1 = tail call fastcc ptr @comedi_read_subdevice(ptr noundef nonnull %call, i32 noundef %and)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdev_flags, align 4
  %and3 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %call1, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true5.if.end9_crit_edge, label %if.then7

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  %max_bufsize = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %max_bufsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_bufsize, align 4
  %div24 = lshr i32 %7, 10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true5.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %size.0 = phi i32 [ %div24, %if.then7 ], [ 0, %land.lhs.true5.if.end9_crit_edge ], [ 0, %land.lhs.true.if.end9_crit_edge ], [ 0, %if.end.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  %call11 = tail call i32 @comedi_dev_put(ptr noundef nonnull %call)
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.91, i32 noundef %size.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_read_buffer_kb_store(ptr nocapture noundef readonly %csdev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %csdev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #13
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size, align 4, !annotation !314
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %4)
  %cmp = icmp ugt i32 %4, 4194303
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %mul = shl nuw i32 %4, 10
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %size, align 4
  %call3 = call ptr @comedi_dev_get_from_minor(i32 noundef %and)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %call3, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call7 = call fastcc ptr @comedi_read_subdevice(ptr noundef nonnull %call3, i32 noundef %and)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end15_crit_edge, label %land.lhs.true

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end6
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %call7, i32 0, i32 4
  %6 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subdev_flags, align 4
  %and9 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true11

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %call7, i32 0, i32 7
  %8 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %async, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then13

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %max_bufsize = getelementptr inbounds %struct.comedi_async, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %max_bufsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_bufsize, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %tobool18.not = phi i32 [ %count, %if.then13 ], [ -22, %land.lhs.true11.if.end15_crit_edge ], [ -22, %land.lhs.true.if.end15_crit_edge ], [ -22, %if.end6.if.end15_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #13
  %call17 = call i32 @comedi_dev_put(ptr noundef nonnull %call3)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ], [ %tobool18.not, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @comedi_read_subdevice(ptr noundef %dev, i32 noundef %minor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %minor)
  %cmp24 = icmp ugt i32 %minor, 47
  br i1 %cmp24, label %if.then25, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then25:                                        ; preds = %if.end
  %sub.i = add i32 %minor, -48
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_subdevice_minor_table_lock, i32 noundef 0) #13
  %arrayidx.i = getelementptr [208 x ptr], ptr @comedi_subdevice_minor_table, i32 0, i32 %sub.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then25.comedi_subdevice_from_minor.exit.thread_crit_edge, label %land.lhs.true.i

if.then25.comedi_subdevice_from_minor.exit.thread_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_subdevice_from_minor.exit.thread

land.lhs.true.i:                                  ; preds = %if.then25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp.not.i = icmp eq ptr %4, %dev
  br i1 %cmp.not.i, label %lor.lhs.false, label %land.lhs.true.i.comedi_subdevice_from_minor.exit.thread_crit_edge

land.lhs.true.i.comedi_subdevice_from_minor.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_subdevice_from_minor.exit.thread

comedi_subdevice_from_minor.exit.thread:          ; preds = %land.lhs.true.i.comedi_subdevice_from_minor.exit.thread_crit_edge, %if.then25.comedi_subdevice_from_minor.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_subdevice_minor_table_lock) #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.i
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_subdevice_minor_table_lock) #13
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %subdev_flags, align 4
  %and = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %lor.lhs.false.if.end31_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end31:                                         ; preds = %lor.lhs.false.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %7 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_subdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %lor.lhs.false.cleanup_crit_edge, %comedi_subdevice_from_minor.exit.thread
  %retval.0 = phi ptr [ %8, %if.end31 ], [ %2, %lor.lhs.false.cleanup_crit_edge ], [ null, %comedi_subdevice_from_minor.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_buffer_kb_show(ptr nocapture noundef readonly %csdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %csdev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  %call = tail call ptr @comedi_dev_get_from_minor(i32 noundef %and)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call1 = tail call fastcc ptr @comedi_read_subdevice(ptr noundef nonnull %call, i32 noundef %and)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdev_flags, align 4
  %and3 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %call1, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true5.if.end9_crit_edge, label %if.then7

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prealloc_bufsz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prealloc_bufsz, align 4
  %div24 = lshr i32 %7, 10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true5.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %size.0 = phi i32 [ %div24, %if.then7 ], [ 0, %land.lhs.true5.if.end9_crit_edge ], [ 0, %land.lhs.true.if.end9_crit_edge ], [ 0, %if.end.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  %call11 = tail call i32 @comedi_dev_put(ptr noundef nonnull %call)
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.91, i32 noundef %size.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_buffer_kb_store(ptr nocapture noundef readonly %csdev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %csdev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #13
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size, align 4, !annotation !314
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %4)
  %cmp = icmp ugt i32 %4, 4194303
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %mul = shl nuw i32 %4, 10
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %size, align 4
  %call3 = call ptr @comedi_dev_get_from_minor(i32 noundef %and)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %call3, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call7 = call fastcc ptr @comedi_read_subdevice(ptr noundef nonnull %call3, i32 noundef %and)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end15_crit_edge, label %land.lhs.true

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end6
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %call7, i32 0, i32 4
  %6 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subdev_flags, align 4
  %and9 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true11

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %call7, i32 0, i32 7
  %8 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %async, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then13

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %call14 = call fastcc i32 @resize_async_buffer(ptr noundef nonnull %call3, ptr noundef nonnull %call7, i32 noundef %11)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %err.0 = phi i32 [ %call14, %if.then13 ], [ -22, %land.lhs.true11.if.end15_crit_edge ], [ -22, %land.lhs.true.if.end15_crit_edge ], [ -22, %if.end6.if.end15_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #13
  %call17 = call i32 @comedi_dev_put(ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool18.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool18.not, i32 %count, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ], [ %spec.select, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_write_buffer_kb_show(ptr nocapture noundef readonly %csdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %csdev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  %call = tail call ptr @comedi_dev_get_from_minor(i32 noundef %and)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call1 = tail call fastcc ptr @comedi_write_subdevice(ptr noundef nonnull %call, i32 noundef %and)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdev_flags, align 4
  %and3 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %call1, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true5.if.end9_crit_edge, label %if.then7

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  %max_bufsize = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %max_bufsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_bufsize, align 4
  %div24 = lshr i32 %7, 10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true5.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %size.0 = phi i32 [ %div24, %if.then7 ], [ 0, %land.lhs.true5.if.end9_crit_edge ], [ 0, %land.lhs.true.if.end9_crit_edge ], [ 0, %if.end.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  %call11 = tail call i32 @comedi_dev_put(ptr noundef nonnull %call)
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.91, i32 noundef %size.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_write_buffer_kb_store(ptr nocapture noundef readonly %csdev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %csdev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #13
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size, align 4, !annotation !314
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %4)
  %cmp = icmp ugt i32 %4, 4194303
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %mul = shl nuw i32 %4, 10
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %size, align 4
  %call3 = call ptr @comedi_dev_get_from_minor(i32 noundef %and)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %call3, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call7 = call fastcc ptr @comedi_write_subdevice(ptr noundef nonnull %call3, i32 noundef %and)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end15_crit_edge, label %land.lhs.true

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end6
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %call7, i32 0, i32 4
  %6 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subdev_flags, align 4
  %and9 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true11

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %call7, i32 0, i32 7
  %8 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %async, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then13

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %max_bufsize = getelementptr inbounds %struct.comedi_async, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %max_bufsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_bufsize, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %tobool18.not = phi i32 [ %count, %if.then13 ], [ -22, %land.lhs.true11.if.end15_crit_edge ], [ -22, %land.lhs.true.if.end15_crit_edge ], [ -22, %if.end6.if.end15_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #13
  %call17 = call i32 @comedi_dev_put(ptr noundef nonnull %call3)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ], [ %tobool18.not, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @comedi_write_subdevice(ptr noundef %dev, i32 noundef %minor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 12, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !301

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %minor)
  %cmp24 = icmp ugt i32 %minor, 47
  br i1 %cmp24, label %if.then25, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then25:                                        ; preds = %if.end
  %sub.i = add i32 %minor, -48
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_subdevice_minor_table_lock, i32 noundef 0) #13
  %arrayidx.i = getelementptr [208 x ptr], ptr @comedi_subdevice_minor_table, i32 0, i32 %sub.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then25.comedi_subdevice_from_minor.exit.thread_crit_edge, label %land.lhs.true.i

if.then25.comedi_subdevice_from_minor.exit.thread_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_subdevice_from_minor.exit.thread

land.lhs.true.i:                                  ; preds = %if.then25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp.not.i = icmp eq ptr %4, %dev
  br i1 %cmp.not.i, label %lor.lhs.false, label %land.lhs.true.i.comedi_subdevice_from_minor.exit.thread_crit_edge

land.lhs.true.i.comedi_subdevice_from_minor.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %comedi_subdevice_from_minor.exit.thread

comedi_subdevice_from_minor.exit.thread:          ; preds = %land.lhs.true.i.comedi_subdevice_from_minor.exit.thread_crit_edge, %if.then25.comedi_subdevice_from_minor.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_subdevice_minor_table_lock) #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.i
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_subdevice_minor_table_lock) #13
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %subdev_flags, align 4
  %and = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %lor.lhs.false.if.end31_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end31:                                         ; preds = %lor.lhs.false.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %7 = ptrtoint ptr %write_subdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_subdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %lor.lhs.false.cleanup_crit_edge, %comedi_subdevice_from_minor.exit.thread
  %retval.0 = phi ptr [ %8, %if.end31 ], [ %2, %lor.lhs.false.cleanup_crit_edge ], [ null, %comedi_subdevice_from_minor.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_buffer_kb_show(ptr nocapture noundef readonly %csdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %csdev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  %call = tail call ptr @comedi_dev_get_from_minor(i32 noundef %and)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call1 = tail call fastcc ptr @comedi_write_subdevice(ptr noundef nonnull %call, i32 noundef %and)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdev_flags, align 4
  %and3 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %call1, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true5.if.end9_crit_edge, label %if.then7

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prealloc_bufsz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prealloc_bufsz, align 4
  %div24 = lshr i32 %7, 10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true5.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %size.0 = phi i32 [ %div24, %if.then7 ], [ 0, %land.lhs.true5.if.end9_crit_edge ], [ 0, %land.lhs.true.if.end9_crit_edge ], [ 0, %if.end.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  %call11 = tail call i32 @comedi_dev_put(ptr noundef nonnull %call)
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.91, i32 noundef %size.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_buffer_kb_store(ptr nocapture noundef readonly %csdev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %csdev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #13
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size, align 4, !annotation !314
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %4)
  %cmp = icmp ugt i32 %4, 4194303
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %mul = shl nuw i32 %4, 10
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %size, align 4
  %call3 = call ptr @comedi_dev_get_from_minor(i32 noundef %and)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %mutex = getelementptr inbounds %struct.comedi_device, ptr %call3, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call7 = call fastcc ptr @comedi_write_subdevice(ptr noundef nonnull %call3, i32 noundef %and)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end15_crit_edge, label %land.lhs.true

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end6
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %call7, i32 0, i32 4
  %6 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subdev_flags, align 4
  %and9 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true11

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %call7, i32 0, i32 7
  %8 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %async, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then13

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %call14 = call fastcc i32 @resize_async_buffer(ptr noundef nonnull %call3, ptr noundef nonnull %call7, i32 noundef %11)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %err.0 = phi i32 [ %call14, %if.then13 ], [ -22, %land.lhs.true11.if.end15_crit_edge ], [ -22, %land.lhs.true.if.end15_crit_edge ], [ -22, %if.end6.if.end15_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #13
  %call17 = call i32 @comedi_dev_put(ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool18.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool18.not, i32 %count, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ], [ %spec.select, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #13
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !108, !110, !111, !112, !114, !116, !117, !118, !120, !122, !124, !126, !127, !129, !131, !133, !134, !136, !138, !140, !142, !143, !145, !146, !148, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !168, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !199, !201, !202, !204, !205, !207, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !256, !257, !259, !261, !262, !263, !264, !266, !267, !269, !270, !272, !274, !275, !277, !279, !280, !282, !283, !285}
!llvm.named.register.sp = !{!286}
!llvm.module.flags = !{!287, !288, !289, !290, !291, !292, !293, !294}
!llvm.ident = !{!295}

!0 = !{ptr @__param_comedi_num_legacy_minors, !1, !"__param_comedi_num_legacy_minors", i1 false, i1 false}
!1 = !{!"../drivers/comedi/comedi_fops.c", i32 73, i32 1}
!2 = !{ptr @__UNIQUE_ID_comedi_num_legacy_minorstype232, !1, !"__UNIQUE_ID_comedi_num_legacy_minorstype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_comedi_num_legacy_minors233, !4, !"__UNIQUE_ID_comedi_num_legacy_minors233", i1 false, i1 false}
!4 = !{!"../drivers/comedi/comedi_fops.c", i32 74, i32 1}
!5 = !{ptr @comedi_default_buf_size_kb, !6, !"comedi_default_buf_size_kb", i1 false, i1 false}
!6 = !{!"../drivers/comedi/comedi_fops.c", i32 78, i32 14}
!7 = !{ptr @__param_comedi_default_buf_size_kb, !8, !"__param_comedi_default_buf_size_kb", i1 false, i1 false}
!8 = !{!"../drivers/comedi/comedi_fops.c", i32 79, i32 1}
!9 = !{ptr @__UNIQUE_ID_comedi_default_buf_size_kbtype234, !8, !"__UNIQUE_ID_comedi_default_buf_size_kbtype234", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_comedi_default_buf_size_kb235, !11, !"__UNIQUE_ID_comedi_default_buf_size_kb235", i1 false, i1 false}
!11 = !{!"../drivers/comedi/comedi_fops.c", i32 80, i32 1}
!12 = !{ptr @comedi_default_buf_maxsize_kb, !13, !"comedi_default_buf_maxsize_kb", i1 false, i1 false}
!13 = !{!"../drivers/comedi/comedi_fops.c", i32 84, i32 14}
!14 = !{ptr @__param_comedi_default_buf_maxsize_kb, !15, !"__param_comedi_default_buf_maxsize_kb", i1 false, i1 false}
!15 = !{!"../drivers/comedi/comedi_fops.c", i32 86, i32 1}
!16 = !{ptr @__UNIQUE_ID_comedi_default_buf_maxsize_kbtype236, !15, !"__UNIQUE_ID_comedi_default_buf_maxsize_kbtype236", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_comedi_default_buf_maxsize_kb237, !18, !"__UNIQUE_ID_comedi_default_buf_maxsize_kb237", i1 false, i1 false}
!18 = !{!"../drivers/comedi/comedi_fops.c", i32 87, i32 1}
!19 = !{ptr @__ksymtab_comedi_dev_put, !20, !"__ksymtab_comedi_dev_put", i1 false, i1 false}
!20 = !{!"../drivers/comedi/comedi_fops.c", i32 140, i32 1}
!21 = !{ptr @__ksymtab_comedi_dev_get_from_minor, !22, !"__ksymtab_comedi_dev_get_from_minor", i1 false, i1 false}
!22 = !{!"../drivers/comedi/comedi_fops.c", i32 259, i32 1}
!23 = !{ptr @__ksymtab_comedi_is_subdevice_running, !24, !"__ksymtab_comedi_is_subdevice_running", i1 false, i1 false}
!24 = !{!"../drivers/comedi/comedi_fops.c", i32 677, i32 1}
!25 = !{ptr @__ksymtab_comedi_set_spriv_auto_free, !26, !"__ksymtab_comedi_set_spriv_auto_free", i1 false, i1 false}
!26 = !{!"../drivers/comedi/comedi_fops.c", i32 705, i32 1}
!27 = !{ptr @__ksymtab_comedi_alloc_spriv, !28, !"__ksymtab_comedi_alloc_spriv", i1 false, i1 false}
!28 = !{!"../drivers/comedi/comedi_fops.c", i32 726, i32 1}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/comedi/comedi_fops.c", i32 770, i32 2}
!31 = !{ptr @__ksymtab_comedi_event, !32, !"__ksymtab_comedi_event", i1 false, i1 false}
!32 = !{!"../drivers/comedi/comedi_fops.c", i32 3232, i32 1}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/comedi_fops.c", i32 3260, i32 3}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @comedi_alloc_board_minor._entry, !34, !"_entry", i1 false, i1 false}
!39 = !{ptr @comedi_alloc_board_minor._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/comedi/comedi_fops.c", i32 3266, i32 40}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/comedi_fops.c", i32 3308, i32 3}
!44 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @comedi_alloc_subdevice_minor._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @comedi_alloc_subdevice_minor._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/comedi/comedi_fops.c", i32 3315, i32 40}
!49 = !{ptr @__initcall__kmod_comedi__297_3422_comedi_init6, !50, !"__initcall__kmod_comedi__297_3422_comedi_init6", i1 false, i1 false}
!50 = !{!"../drivers/comedi/comedi_fops.c", i32 3422, i32 1}
!51 = !{ptr @__exitcall_comedi_cleanup, !52, !"__exitcall_comedi_cleanup", i1 false, i1 false}
!52 = !{!"../drivers/comedi/comedi_fops.c", i32 3433, i32 1}
!53 = !{ptr @__UNIQUE_ID_author298, !54, !"__UNIQUE_ID_author298", i1 false, i1 false}
!54 = !{!"../drivers/comedi/comedi_fops.c", i32 3435, i32 1}
!55 = !{ptr @__UNIQUE_ID_description299, !56, !"__UNIQUE_ID_description299", i1 false, i1 false}
!56 = !{!"../drivers/comedi/comedi_fops.c", i32 3436, i32 1}
!57 = !{ptr @__UNIQUE_ID_file300, !58, !"__UNIQUE_ID_file300", i1 false, i1 false}
!58 = !{!"../drivers/comedi/comedi_fops.c", i32 3437, i32 1}
!59 = !{ptr @__UNIQUE_ID_license301, !58, !"__UNIQUE_ID_license301", i1 false, i1 false}
!60 = !{ptr @comedi_num_legacy_minors, !61, !"comedi_num_legacy_minors", i1 false, i1 false}
!61 = !{!"../drivers/comedi/comedi_fops.c", i32 72, i32 23}
!62 = !{ptr @comedi_board_minor_table, !63, !"comedi_board_minor_table", i1 false, i1 false}
!63 = !{!"../drivers/comedi/comedi_fops.c", i32 93, i32 2}
!64 = !{ptr @comedi_subdevice_minor_table, !65, !"comedi_subdevice_minor_table", i1 false, i1 false}
!65 = !{!"../drivers/comedi/comedi_fops.c", i32 98, i32 2}
!66 = !{ptr @comedi_class, !67, !"comedi_class", i1 false, i1 false}
!67 = !{!"../drivers/comedi/comedi_fops.c", i32 100, i32 22}
!68 = !{ptr @comedi_cdev, !69, !"comedi_cdev", i1 false, i1 false}
!69 = !{!"../drivers/comedi/comedi_fops.c", i32 101, i32 20}
!70 = !{ptr @__param_str_comedi_num_legacy_minors, !1, !"__param_str_comedi_num_legacy_minors", i1 false, i1 false}
!71 = !{ptr @__param_str_comedi_default_buf_size_kb, !8, !"__param_str_comedi_default_buf_size_kb", i1 false, i1 false}
!72 = !{ptr @__param_str_comedi_default_buf_maxsize_kb, !15, !"__param_str_comedi_default_buf_maxsize_kb", i1 false, i1 false}
!73 = !{ptr @.str.9, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/comedi/comedi_fops.c", i32 746, i32 3}
!75 = !{ptr @.str.10, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @do_become_nonbusy._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @do_become_nonbusy._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @comedi_device_init.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/comedi/comedi_fops.c", i32 106, i32 2}
!80 = !{ptr @.str.11, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @comedi_device_init.__key.12, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/comedi/comedi_fops.c", i32 107, i32 2}
!83 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @comedi_device_init.__key.14, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/comedi/comedi_fops.c", i32 108, i32 2}
!86 = !{ptr @.str.15, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.16, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/comedi/comedi_fops.c", i32 91, i32 8}
!89 = !{ptr @.str.17, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @comedi_board_minor_table_lock, !88, !"comedi_board_minor_table_lock", i1 false, i1 false}
!91 = !{ptr @.str.18, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/comedi/comedi_fops.c", i32 95, i32 8}
!93 = !{ptr @.str.19, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @comedi_subdevice_minor_table_lock, !92, !"comedi_subdevice_minor_table_lock", i1 false, i1 false}
!95 = !{ptr @.str.20, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/comedi/comedi_fops.c", i32 3360, i32 2}
!97 = !{ptr @.str.21, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @comedi_init._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @comedi_init._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/comedi/comedi_fops.c", i32 3363, i32 3}
!102 = !{ptr @comedi_init._entry.22, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @comedi_init._entry_ptr.24, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/comedi/comedi_fops.c", i32 3369, i32 25}
!106 = !{ptr @comedi_init.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/comedi/comedi_fops.c", i32 3385, i32 17}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/comedi/comedi_fops.c", i32 3388, i32 3}
!110 = !{ptr @comedi_init._entry.26, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @comedi_init._entry_ptr.28, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @comedi_fops, !113, !"comedi_fops", i1 false, i1 false}
!113 = !{!"../drivers/comedi/comedi_fops.c", i32 3171, i32 37}
!114 = !{ptr @.str.29, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/comedi/comedi_fops.c", i32 2618, i32 3}
!116 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @comedi_read.__UNIQUE_ID_ddebug287, !115, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../drivers/comedi/comedi_fops.c", i32 2639, i32 3}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../drivers/comedi/comedi_fops.c", i32 2674, i32 3}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../drivers/comedi/comedi_fops.c", i32 2697, i32 2}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!126 = !{ptr @.str.33, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.34, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!129 = !{ptr @.str.35, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!131 = !{ptr @.str.36, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/comedi/comedi_fops.c", i32 2482, i32 3}
!133 = !{ptr @comedi_write.__UNIQUE_ID_ddebug279, !132, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../drivers/comedi/comedi_fops.c", i32 2504, i32 3}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../drivers/comedi/comedi_fops.c", i32 2540, i32 3}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../drivers/comedi/comedi_fops.c", i32 2561, i32 2}
!140 = !{ptr @.str.39, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/comedi/comedi_fops.c", i32 2430, i32 3}
!142 = !{ptr @comedi_poll.__UNIQUE_ID_ddebug278, !141, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!143 = !{ptr @.str.40, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/comedi/comedi_fops.c", i32 2151, i32 3}
!145 = !{ptr @comedi_unlocked_ioctl.__UNIQUE_ID_ddebug275, !144, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!146 = !{ptr @.str.41, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/comedi/comedi_fops.c", i32 841, i32 3}
!148 = !{ptr @.str.42, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.43, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @do_devconfig_ioctl._entry, !147, !"_entry", i1 false, i1 false}
!151 = !{ptr @do_devconfig_ioctl._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.44, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/comedi/comedi_fops.c", i32 886, i32 3}
!154 = !{ptr @.str.45, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @do_bufconfig_ioctl.__UNIQUE_ID_ddebug245, !153, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!156 = !{ptr @.str.46, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/comedi/comedi_fops.c", i32 350, i32 3}
!158 = !{ptr @.str.47, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @resize_async_buffer.__UNIQUE_ID_ddebug242, !157, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!160 = !{ptr @.str.48, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/comedi/comedi_fops.c", i32 355, i32 3}
!162 = !{ptr @resize_async_buffer.__UNIQUE_ID_ddebug243, !161, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!163 = !{ptr @.str.49, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/comedi/comedi_fops.c", i32 373, i32 2}
!165 = !{ptr @resize_async_buffer.__UNIQUE_ID_ddebug244, !164, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!166 = !{ptr @.str.50, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/comedi/comedi_fops.c", i32 1766, i32 3}
!168 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @do_cmd_ioctl.__UNIQUE_ID_ddebug268, !167, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!170 = !{ptr @.str.52, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/comedi/comedi_fops.c", i32 1772, i32 3}
!172 = !{ptr @do_cmd_ioctl.__UNIQUE_ID_ddebug269, !171, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!173 = !{ptr @.str.53, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/comedi/comedi_fops.c", i32 1778, i32 3}
!175 = !{ptr @do_cmd_ioctl.__UNIQUE_ID_ddebug270, !174, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!176 = !{ptr @.str.54, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/comedi/comedi_fops.c", i32 1794, i32 3}
!178 = !{ptr @do_cmd_ioctl.__UNIQUE_ID_ddebug271, !177, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!179 = !{ptr @.str.55, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/comedi/comedi_fops.c", i32 1806, i32 3}
!181 = !{ptr @do_cmd_ioctl.__UNIQUE_ID_ddebug272, !180, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!182 = !{ptr @.str.56, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/comedi/comedi_fops.c", i32 1658, i32 3}
!184 = !{ptr @.str.57, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @__comedi_get_user_cmd.__UNIQUE_ID_ddebug264, !183, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!186 = !{ptr @.str.58, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/comedi/comedi_fops.c", i32 1665, i32 3}
!188 = !{ptr @__comedi_get_user_cmd.__UNIQUE_ID_ddebug265, !187, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!189 = !{ptr @.str.59, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/comedi/comedi_fops.c", i32 1671, i32 3}
!191 = !{ptr @__comedi_get_user_cmd.__UNIQUE_ID_ddebug266, !190, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!192 = !{ptr @.str.60, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/comedi/comedi_fops.c", i32 1679, i32 3}
!194 = !{ptr @__comedi_get_user_cmd.__UNIQUE_ID_ddebug267, !193, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!195 = !{ptr @.str.61, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/comedi/comedi_fops.c", i32 1537, i32 4}
!197 = !{ptr @.str.62, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @do_insnlist_ioctl.__UNIQUE_ID_ddebug257, !196, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!199 = !{ptr @.str.63, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/comedi/comedi_fops.c", i32 1557, i32 5}
!201 = !{ptr @do_insnlist_ioctl.__UNIQUE_ID_ddebug260, !200, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!202 = !{ptr @.str.64, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/comedi/comedi_fops.c", i32 1569, i32 5}
!204 = !{ptr @do_insnlist_ioctl.__UNIQUE_ID_ddebug261, !203, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!205 = !{ptr @.str.65, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/comedi/comedi_fops.c", i32 1347, i32 5}
!207 = !{ptr @.str.66, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @parse_insn.__UNIQUE_ID_ddebug246, !206, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!209 = !{ptr @.str.67, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/comedi/comedi_fops.c", i32 1355, i32 5}
!211 = !{ptr @parse_insn.__UNIQUE_ID_ddebug247, !210, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!212 = !{ptr @.str.68, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/comedi/comedi_fops.c", i32 1360, i32 5}
!214 = !{ptr @parse_insn.__UNIQUE_ID_ddebug248, !213, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!215 = !{ptr @.str.69, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/comedi/comedi_fops.c", i32 1387, i32 4}
!217 = !{ptr @parse_insn.__UNIQUE_ID_ddebug249, !216, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!218 = !{ptr @.str.70, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/comedi/comedi_fops.c", i32 1396, i32 4}
!220 = !{ptr @parse_insn.__UNIQUE_ID_ddebug250, !219, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!221 = !{ptr @parse_insn.__UNIQUE_ID_ddebug251, !222, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!222 = !{!"../drivers/comedi/comedi_fops.c", i32 1404, i32 4}
!223 = !{ptr @.str.71, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/comedi/comedi_fops.c", i32 1412, i32 4}
!225 = !{ptr @parse_insn.__UNIQUE_ID_ddebug252, !224, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!226 = !{ptr @.str.72, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/comedi/comedi_fops.c", i32 1420, i32 4}
!228 = !{ptr @parse_insn.__UNIQUE_ID_ddebug253, !227, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!229 = !{ptr @.str.73, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/comedi/comedi_fops.c", i32 1434, i32 5}
!231 = !{ptr @parse_insn.__UNIQUE_ID_ddebug254, !230, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!232 = !{ptr @.str.74, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/comedi/comedi_fops.c", i32 1446, i32 6}
!234 = !{ptr @parse_insn.__UNIQUE_ID_ddebug255, !233, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!235 = !{ptr @.str.75, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/comedi/comedi_fops.c", i32 1454, i32 6}
!237 = !{ptr @parse_insn.__UNIQUE_ID_ddebug256, !236, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!238 = !{ptr @.str.76, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/comedi/comedi_fops.c", i32 1243, i32 3}
!240 = !{ptr @.str.77, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @check_insn_config_length._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @check_insn_config_length._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.79, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/comedi/comedi_fops.c", i32 1245, i32 3}
!245 = !{ptr @check_insn_config_length._entry.78, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @check_insn_config_length._entry_ptr.80, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.82, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/comedi/comedi_fops.c", i32 1246, i32 3}
!249 = !{ptr @check_insn_config_length._entry.81, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @check_insn_config_length._entry_ptr.83, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.84, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/comedi/comedi_fops.c", i32 2340, i32 3}
!253 = !{ptr @comedi_mmap.__UNIQUE_ID_ddebug276, !252, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!254 = !{ptr @.str.85, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/comedi/comedi_fops.c", i32 2361, i32 3}
!256 = !{ptr @comedi_mmap.__UNIQUE_ID_ddebug277, !255, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!257 = !{ptr @comedi_vm_ops, !258, !"comedi_vm_ops", i1 false, i1 false}
!258 = !{!"../drivers/comedi/comedi_fops.c", i32 2310, i32 42}
!259 = !{ptr @.str.86, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/comedi/comedi_fops.c", i32 2742, i32 3}
!261 = !{ptr @.str.87, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @comedi_open.__UNIQUE_ID_ddebug295, !260, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!263 = !{ptr @.str.88, !260, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.89, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/comedi/comedi_fops.c", i32 2756, i32 3}
!266 = !{ptr @comedi_open.__UNIQUE_ID_ddebug296, !265, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!267 = !{ptr @comedi_dev_groups, !268, !"comedi_dev_groups", i1 false, i1 false}
!268 = !{!"../drivers/comedi/comedi_fops.c", i32 612, i32 1}
!269 = !{ptr @comedi_dev_group, !268, !"comedi_dev_group", i1 false, i1 false}
!270 = !{ptr @comedi_dev_attrs, !271, !"comedi_dev_attrs", i1 false, i1 false}
!271 = !{!"../drivers/comedi/comedi_fops.c", i32 605, i32 26}
!272 = !{ptr @.str.90, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/comedi/comedi_fops.c", i32 434, i32 8}
!274 = !{ptr @dev_attr_max_read_buffer_kb, !273, !"dev_attr_max_read_buffer_kb", i1 false, i1 false}
!275 = !{ptr @.str.91, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/comedi/comedi_fops.c", i32 399, i32 34}
!277 = !{ptr @.str.92, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/comedi/comedi_fops.c", i32 490, i32 8}
!279 = !{ptr @dev_attr_read_buffer_kb, !278, !"dev_attr_read_buffer_kb", i1 false, i1 false}
!280 = !{ptr @.str.93, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/comedi/comedi_fops.c", i32 547, i32 8}
!282 = !{ptr @dev_attr_max_write_buffer_kb, !281, !"dev_attr_max_write_buffer_kb", i1 false, i1 false}
!283 = !{ptr @.str.94, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/comedi/comedi_fops.c", i32 603, i32 8}
!285 = !{ptr @dev_attr_write_buffer_kb, !284, !"dev_attr_write_buffer_kb", i1 false, i1 false}
!286 = !{!"sp"}
!287 = !{i32 1, !"wchar_size", i32 2}
!288 = !{i32 1, !"min_enum_size", i32 4}
!289 = !{i32 8, !"branch-target-enforcement", i32 0}
!290 = !{i32 8, !"sign-return-address", i32 0}
!291 = !{i32 8, !"sign-return-address-all", i32 0}
!292 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!293 = !{i32 7, !"uwtable", i32 1}
!294 = !{i32 7, !"frame-pointer", i32 2}
!295 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!296 = !{i64 2148509464}
!297 = !{i64 2148423904, i64 2148423936, i64 2148423965, i64 2148423999, i64 2148424030, i64 2148424053}
!298 = !{!"branch_weights", i32 2000, i32 1}
!299 = !{i64 2149385578}
!300 = !{i64 2148421439, i64 2148421471, i64 2148421500, i64 2148421534, i64 2148421565, i64 2148421588}
!301 = !{!"branch_weights", i32 1, i32 2000}
!302 = !{i64 2149033286, i64 2149033291, i64 2149033304, i64 2149033348, i64 2149033382, i64 2149033403}
!303 = !{i64 2154387518}
!304 = !{i64 2154393962}
!305 = !{i64 2152196458, i64 2152196483}
!306 = !{i64 2154400226}
!307 = !{i64 2154367456}
!308 = !{i64 2154373900}
!309 = !{i64 2152195777, i64 2152195802}
!310 = !{i64 4687271}
!311 = !{i64 4687468}
!312 = !{i64 2152172701}
!313 = !{i64 2154380164}
!314 = !{!"auto-init"}
!315 = !{i8 0, i8 2}
!316 = !{i64 2154250313, i64 2154250593, i64 2154250927, i64 2154251261}
