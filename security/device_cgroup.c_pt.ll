; ModuleID = '/llk/IR_all_yes/security/device_cgroup.c_pt.bc'
source_filename = "../security/device_cgroup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+devcgroup_check_permission\22, \22a\22\09"
module asm "\09.weak\09__crc_devcgroup_check_permission\09\09\09\09"
module asm "\09.long\09__crc_devcgroup_check_permission\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devcgroup_check_permission:\09\09\09\09\09"
module asm "\09.asciz \09\22devcgroup_check_permission\22\09\09\09\09\09"
module asm "__kstrtabns_devcgroup_check_permission:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_cgroup = type { %struct.cgroup_subsys_state, %struct.list_head, i32 }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dev_exception_item = type { i32, i32, i16, i16, %struct.list_head, %struct.callback_head }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.61, ptr, i64, i16, i16, ptr }
%union.anon.61 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@dev_cgroup_files = internal global { [4 x %struct.cftype], [128 x i8] } { [4 x %struct.cftype] [%struct.cftype { [64 x i8] c"allow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @devcgroup_access_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"deny\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @devcgroup_access_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"list\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @devcgroup_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [128 x i8] zeroinitializer }, align 32
@devices_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @devcgroup_css_alloc, ptr @devcgroup_online, ptr @devcgroup_offline, ptr null, ptr @devcgroup_css_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @dev_cgroup_files, i32 0 }, [52 x i8] zeroinitializer }, align 32
@cgroup_bpf_enabled_key = external dso_local global [23 x %struct.static_key_false], align 4
@__kstrtab_devcgroup_check_permission = external dso_local constant [0 x i8], align 1
@__kstrtabns_devcgroup_check_permission = external dso_local constant [0 x i8], align 1
@__ksymtab_devcgroup_check_permission = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devcgroup_check_permission to i32), ptr @__kstrtab_devcgroup_check_permission, ptr @__kstrtabns_devcgroup_check_permission }, section "___ksymtab+devcgroup_check_permission", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@devcgroup_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devcgroup_mutex, i64 52), ptr getelementptr (i8, ptr @devcgroup_mutex, i64 52) }, ptr @devcgroup_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"devcgroup_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"devcgroup_mutex\00", [16 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/device_cgroup.c\00", [39 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@match_exception_partial.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@verify_new_ex.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"device_cgroup:verify_new_ex called without proper synchronization\00", [62 x i8] zeroinitializer }, align 32
@match_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%c %s:%s %s\0A\00", [19 x i8] zeroinitializer }, align 32
@devcgroup_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@switch.table.devcgroup_seq_show = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 98, i32 99, i32 88, i32 97], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 97, i64 98, i64 99]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 10, i64 109, i64 114, i64 119]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 10, i64 109, i64 114, i64 119]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 10, i64 109, i64 114, i64 119]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"dev_cgroup_files\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 771, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"devices_cgrp_subsys\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 790, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"devcgroup_mutex\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 21, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 66, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 358, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 399, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 695, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 723, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 287, i32 17 }
@___asan_gen_.55 = private constant [28 x i8] c"../security/device_cgroup.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 267, i32 16 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 494, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant [32 x i8] c"switch.table.devcgroup_seq_show\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_devcgroup_check_permission, ptr @dev_cgroup_files, ptr @devices_cgrp_subsys, ptr @devcgroup_mutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @switch.table.devcgroup_seq_show], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_cgroup_files to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcgroup_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.devcgroup_seq_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @devcgroup_css_alloc(ptr nocapture noundef readnone %parent_css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 184) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %exceptions = getelementptr inbounds %struct.dev_cgroup, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %exceptions to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %exceptions, ptr %exceptions, align 8
  %prev.i = getelementptr inbounds %struct.dev_cgroup, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %exceptions, ptr %prev.i, align 4
  %behavior = getelementptr inbounds %struct.dev_cgroup, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %behavior to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %behavior, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devcgroup_online(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @devcgroup_mutex, i32 noundef 0) #7
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.if.end7.sink.split_crit_edge, label %if.else

entry.if.end7.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.sink.split

if.else:                                          ; preds = %entry
  %exceptions = getelementptr inbounds %struct.dev_cgroup, ptr %css, i32 0, i32 1
  %exceptions2 = getelementptr inbounds %struct.dev_cgroup, ptr %1, i32 0, i32 1
  %call3 = tail call fastcc i32 @dev_exceptions_copy(ptr noundef %exceptions, ptr noundef %exceptions2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %behavior5 = getelementptr inbounds %struct.dev_cgroup, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %behavior5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %behavior5, align 8
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then4, %entry.if.end7.sink.split_crit_edge
  %.sink = phi i32 [ %3, %if.then4 ], [ 1, %entry.if.end7.sink.split_crit_edge ]
  %behavior6 = getelementptr inbounds %struct.dev_cgroup, ptr %css, i32 0, i32 2
  %4 = ptrtoint ptr %behavior6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %behavior6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.else.if.end7_crit_edge
  %ret.0 = phi i32 [ %call3, %if.else.if.end7_crit_edge ], [ 0, %if.end7.sink.split ]
  tail call void @mutex_unlock(ptr noundef nonnull @devcgroup_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devcgroup_offline(ptr nocapture noundef writeonly %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devcgroup_mutex, i32 noundef 0) #7
  %behavior = getelementptr inbounds %struct.dev_cgroup, ptr %css, i32 0, i32 2
  %0 = ptrtoint ptr %behavior to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %behavior, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @devcgroup_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devcgroup_css_free(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %exceptions.i = getelementptr inbounds %struct.dev_cgroup, ptr %css, i32 0, i32 1
  %0 = ptrtoint ptr %exceptions.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exceptions.i, align 8
  %cmp.not25.i = icmp eq ptr %1, %exceptions.i
  br i1 %cmp.not25.i, label %entry.__dev_exception_clean.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__dev_exception_clean.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dev_exception_clean.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in26.i = phi ptr [ %.pn28.i, %if.end.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn28.i = load ptr, ptr %.pn.in26.i, align 4
  %ex.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_rcu.exit.i_crit_edge

for.body.i.list_del_rcu.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %for.body.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not.i = icmp eq ptr %ex.0.i, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.i.if.end.i_crit_edge, label %do.end.i

list_del_rcu.exit.i.if.end.i_crit_edge:           ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %rcu.i = getelementptr i8, ptr %.pn.in26.i, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 20 to ptr)) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %list_del_rcu.exit.i.if.end.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn28.i, %exceptions.i
  br i1 %cmp.not.i, label %if.end.i.__dev_exception_clean.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.__dev_exception_clean.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dev_exception_clean.exit

__dev_exception_clean.exit:                       ; preds = %if.end.i.__dev_exception_clean.exit_crit_edge, %entry.__dev_exception_clean.exit_crit_edge
  tail call void @kfree(ptr noundef %css) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devcgroup_check_permission(i16 noundef signext %type, i32 noundef %major, i32 noundef %minor, i16 noundef signext %access) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 4), ptr blockaddress(@devcgroup_check_permission, %if.then)) #7
          to label %if.end7 [label %if.then], !srcloc !49

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @__cgroup_bpf_check_dev_permission(i16 noundef signext %type, i32 noundef %major, i32 noundef %minor, i16 noundef signext %access, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %phi.cmp = icmp eq i32 %call3, 0
  br i1 %phi.cmp, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %if.end7.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end7.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end7
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end7.rcu_read_lock.exit.i_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %cgroups.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 164
  %8 = ptrtoint ptr %cgroups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cgroups.i.i.i, align 16
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.task_devcgroup.exit.i_crit_edge

rcu_read_lock.exit.i.task_devcgroup.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_devcgroup.exit.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call.i2.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false4.i.i.i, label %lor.lhs.false.i.i.i.task_devcgroup.exit.i_crit_edge

lor.lhs.false.i.i.i.task_devcgroup.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_devcgroup.exit.i

lor.lhs.false4.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false6.i.i.i, label %lor.lhs.false4.i.i.i.task_devcgroup.exit.i_crit_edge

lor.lhs.false4.i.i.i.task_devcgroup.exit.i_crit_edge: ; preds = %lor.lhs.false4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_devcgroup.exit.i

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false4.i.i.i
  %call7.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false6.i.i.i.task_devcgroup.exit.i_crit_edge

lor.lhs.false6.i.i.i.task_devcgroup.exit.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_devcgroup.exit.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false6.i.i.i
  %call9.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true.i.i.i.task_devcgroup.exit.i_crit_edge, label %land.lhs.true11.i.i.i

land.lhs.true.i.i.i.task_devcgroup.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_devcgroup.exit.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b1.i.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i.i, label %land.lhs.true11.i.i.i.task_devcgroup.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true11.i.i.i.task_devcgroup.exit.i_crit_edge: ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_devcgroup.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 494, ptr noundef nonnull @.str.12) #7
  br label %task_devcgroup.exit.i

task_devcgroup.exit.i:                            ; preds = %if.then.i.i.i, %land.lhs.true11.i.i.i.task_devcgroup.exit.i_crit_edge, %land.lhs.true.i.i.i.task_devcgroup.exit.i_crit_edge, %lor.lhs.false6.i.i.i.task_devcgroup.exit.i_crit_edge, %lor.lhs.false4.i.i.i.task_devcgroup.exit.i_crit_edge, %lor.lhs.false.i.i.i.task_devcgroup.exit.i_crit_edge, %rcu_read_lock.exit.i.task_devcgroup.exit.i_crit_edge
  %arrayidx.i.i.i = getelementptr [14 x ptr], ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %behavior.i = getelementptr inbounds %struct.dev_cgroup, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %behavior.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %behavior.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  %exceptions.i = getelementptr inbounds %struct.dev_cgroup, ptr %13, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %task_devcgroup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call fastcc zeroext i1 @match_exception_partial(ptr noundef %exceptions.i, i16 noundef signext %type, i32 noundef %major, i32 noundef %minor, i16 noundef signext %access) #7
  %lnot.i = xor i1 %call2.i, true
  br label %if.end.i

if.else.i:                                        ; preds = %task_devcgroup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call fastcc zeroext i1 @match_exception(ptr noundef %exceptions.i, i16 noundef signext %type, i32 noundef %major, i32 noundef %minor, i16 noundef signext %access) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %rc.0.in.i = phi i1 [ %lnot.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %call.i15.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i15.i, label %if.end.i.devcgroup_legacy_check_permission.exit_crit_edge, label %land.lhs.true.i18.i

if.end.i.devcgroup_legacy_check_permission.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_legacy_check_permission.exit

land.lhs.true.i18.i:                              ; preds = %if.end.i
  %call1.i16.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call1.i16.i, 0
  br i1 %tobool.not.i17.i, label %land.lhs.true.i18.i.devcgroup_legacy_check_permission.exit_crit_edge, label %land.lhs.true2.i20.i

land.lhs.true.i18.i.devcgroup_legacy_check_permission.exit_crit_edge: ; preds = %land.lhs.true.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_legacy_check_permission.exit

land.lhs.true2.i20.i:                             ; preds = %land.lhs.true.i18.i
  %.b4.i19.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19.i, label %land.lhs.true2.i20.i.devcgroup_legacy_check_permission.exit_crit_edge, label %if.then.i21.i

land.lhs.true2.i20.i.devcgroup_legacy_check_permission.exit_crit_edge: ; preds = %land.lhs.true2.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_legacy_check_permission.exit

if.then.i21.i:                                    ; preds = %land.lhs.true2.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %devcgroup_legacy_check_permission.exit

devcgroup_legacy_check_permission.exit:           ; preds = %if.then.i21.i, %land.lhs.true2.i20.i.devcgroup_legacy_check_permission.exit_crit_edge, %land.lhs.true.i18.i.devcgroup_legacy_check_permission.exit_crit_edge, %if.end.i.devcgroup_legacy_check_permission.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %16 = tail call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i.i.i22.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i22.i to ptr
  %preempt_count.i.i.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i23.i, align 4
  %sub.i.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i23.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %not.rc.0.in.i = xor i1 %rc.0.in.i, true
  %..i = sext i1 %not.rc.0.in.i to i32
  br label %cleanup

cleanup:                                          ; preds = %devcgroup_legacy_check_permission.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %..i, %devcgroup_legacy_check_permission.exit ], [ -1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_bpf_check_dev_permission(i16 noundef signext, i32 noundef, i32 noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dev_exceptions_copy(ptr noundef %dest, ptr noundef readonly %orig) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devcgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !52

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 66, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn82 = load ptr, ptr %orig, align 4
  %cmp26.not83 = icmp eq ptr %.pn82, %orig
  br i1 %cmp26.not83, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dest, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn84 = phi ptr [ %.pn82, %for.body.lr.ph ], [ %.pn, %list_add_tail.exit.for.body_crit_edge ]
  %ex.0 = getelementptr i8, ptr %.pn84, i32 -12
  %call29 = tail call ptr @kmemdup(ptr noundef %ex.0, i32 noundef 28, i32 noundef 3264) #7
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %free_and_exit, label %if.end32

if.end32:                                         ; preds = %for.body
  %list33 = getelementptr inbounds %struct.dev_exception_item, ptr %call29, i32 0, i32 4
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list33, ptr noundef %3, ptr noundef %dest) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.list_add_tail.exit_crit_edge

if.end32.list_add_tail.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list33, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list33 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dest, ptr %list33, align 4
  %prev3.i.i = getelementptr inbounds %struct.dev_exception_item, ptr %call29, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list33, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end32.list_add_tail.exit_crit_edge
  %8 = ptrtoint ptr %.pn84 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn84, align 4
  %cmp26.not = icmp eq ptr %.pn, %orig
  br i1 %cmp26.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

free_and_exit:                                    ; preds = %for.body
  %9 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dest, align 4
  %cmp50.not85 = icmp eq ptr %10, %dest
  br i1 %cmp50.not85, label %free_and_exit.cleanup_crit_edge, label %free_and_exit.for.body53_crit_edge

free_and_exit.for.body53_crit_edge:               ; preds = %free_and_exit
  br label %for.body53

free_and_exit.cleanup_crit_edge:                  ; preds = %free_and_exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body53:                                       ; preds = %list_del.exit.for.body53_crit_edge, %free_and_exit.for.body53_crit_edge
  %.pn76.in86 = phi ptr [ %.pn76, %list_del.exit.for.body53_crit_edge ], [ %10, %free_and_exit.for.body53_crit_edge ]
  %ex.1 = getelementptr i8, ptr %.pn76.in86, i32 -12
  %11 = ptrtoint ptr %.pn76.in86 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn76 = load ptr, ptr %.pn76.in86, align 4
  %call.i.i78 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn76.in86) #7
  br i1 %call.i.i78, label %if.end.i.i79, label %for.body53.list_del.exit_crit_edge

for.body53.list_del.exit_crit_edge:               ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i79:                                     ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn76.in86, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn76.in86 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn76.in86, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i79, %for.body53.list_del.exit_crit_edge
  %18 = ptrtoint ptr %.pn76.in86 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn76.in86, align 4
  %prev.i80 = getelementptr inbounds %struct.list_head, ptr %.pn76.in86, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i80, align 4
  tail call void @kfree(ptr noundef %ex.1) #7
  %cmp50.not = icmp eq ptr %.pn76, %dest
  br i1 %cmp50.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body53_crit_edge

list_del.exit.for.body53_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body53

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %free_and_exit.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %free_and_exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %list_del.exit.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devcgroup_access_write(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %temp.i = alloca [12 x i8], align 1
  %ex.i = alloca %struct.dev_exception_item, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devcgroup_mutex, i32 noundef 0) #7
  %call = tail call ptr @of_css(ptr noundef %of) #7
  %0 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of, align 4
  %priv.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private, align 4
  %call.i = tail call ptr @strim(ptr noundef %buf) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp.i) #7
  %6 = getelementptr inbounds [12 x i8], ptr %temp.i, i32 0, i32 1
  %7 = getelementptr inbounds [12 x i8], ptr %temp.i, i32 0, i32 2
  %8 = getelementptr inbounds [12 x i8], ptr %temp.i, i32 0, i32 3
  %9 = getelementptr inbounds [12 x i8], ptr %temp.i, i32 0, i32 4
  %10 = getelementptr inbounds [12 x i8], ptr %temp.i, i32 0, i32 5
  %11 = getelementptr inbounds [12 x i8], ptr %temp.i, i32 0, i32 6
  %12 = getelementptr inbounds [12 x i8], ptr %temp.i, i32 0, i32 7
  %13 = getelementptr inbounds [12 x i8], ptr %temp.i, i32 0, i32 8
  %14 = getelementptr inbounds [12 x i8], ptr %temp.i, i32 0, i32 9
  %15 = getelementptr inbounds [12 x i8], ptr %temp.i, i32 0, i32 10
  %16 = call ptr @memset(ptr %temp.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ex.i) #7
  %17 = getelementptr inbounds %struct.dev_exception_item, ptr %ex.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.dev_exception_item, ptr %ex.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.dev_exception_item, ptr %ex.i, i32 0, i32 3
  %parent1.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 12
  %20 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent1.i, align 8
  %call2.i = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call2.i, label %if.end.i, label %entry.devcgroup_update_access.exit.thread_crit_edge

entry.devcgroup_update_access.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.end.i:                                         ; preds = %entry
  %22 = call ptr @memset(ptr %ex.i, i32 0, i32 28)
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %if.end.i.devcgroup_update_access.exit.thread_crit_edge [
    i8 97, label %sw.bb.i
    i8 98, label %if.end.i.sw.epilog29.i_crit_edge
    i8 99, label %sw.bb26.i
  ]

if.end.i.sw.epilog29.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29.i

if.end.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

sw.bb.i:                                          ; preds = %if.end.i
  %26 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %5, label %sw.bb.i.devcgroup_update_access.exit.thread_crit_edge [
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb19.i
  ]

sw.bb.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

sw.bb3.i:                                         ; preds = %sw.bb.i
  %call5.i = tail call zeroext i1 @css_has_online_children(ptr noundef %call) #7
  br i1 %call5.i, label %sw.bb3.i.devcgroup_update_access.exit.thread_crit_edge, label %if.end7.i

sw.bb3.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.end7.i:                                        ; preds = %sw.bb3.i
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end7.i.sw.epilog.sink.split.i_crit_edge, label %may_allow_all.exit.i

if.end7.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

may_allow_all.exit.i:                             ; preds = %if.end7.i
  %behavior.i.i = getelementptr inbounds %struct.dev_cgroup, ptr %21, i32 0, i32 2
  %27 = ptrtoint ptr %behavior.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %behavior.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i.not.i = icmp eq i32 %28, 1
  br i1 %cmp.i.not.i, label %if.end13.i, label %may_allow_all.exit.i.devcgroup_update_access.exit.thread_crit_edge

may_allow_all.exit.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %may_allow_all.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.end13.i:                                       ; preds = %may_allow_all.exit.i
  tail call fastcc void @dev_exception_clean(ptr noundef %call) #7
  %behavior.i = getelementptr inbounds %struct.dev_cgroup, ptr %call, i32 0, i32 2
  %29 = ptrtoint ptr %behavior.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %behavior.i, align 8
  %exceptions.i = getelementptr inbounds %struct.dev_cgroup, ptr %call, i32 0, i32 1
  %exceptions14.i = getelementptr inbounds %struct.dev_cgroup, ptr %21, i32 0, i32 1
  %call15.i = tail call fastcc i32 @dev_exceptions_copy(ptr noundef %exceptions.i, ptr noundef %exceptions14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.devcgroup_update_access.exit.thread27_crit_edge, label %if.end13.i.devcgroup_update_access.exit.thread_crit_edge

if.end13.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.end13.i.devcgroup_update_access.exit.thread27_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread27

sw.bb19.i:                                        ; preds = %sw.bb.i
  %call21.i = tail call zeroext i1 @css_has_online_children(ptr noundef %call) #7
  br i1 %call21.i, label %sw.bb19.i.devcgroup_update_access.exit.thread_crit_edge, label %sw.bb19.i.sw.epilog.sink.split.i_crit_edge

sw.bb19.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.bb19.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

sw.epilog.sink.split.i:                           ; preds = %sw.bb19.i.sw.epilog.sink.split.i_crit_edge, %if.end7.i.sw.epilog.sink.split.i_crit_edge
  tail call fastcc void @dev_exception_clean(ptr noundef %call) #7
  %behavior225.i = getelementptr inbounds %struct.dev_cgroup, ptr %call, i32 0, i32 2
  %30 = ptrtoint ptr %behavior225.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %5, ptr %behavior225.i, align 8
  br label %devcgroup_update_access.exit.thread27

sw.bb26.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29.i

sw.epilog29.i:                                    ; preds = %sw.bb26.i, %if.end.i.sw.epilog29.i_crit_edge
  %storemerge.i = phi i16 [ 2, %sw.bb26.i ], [ 1, %if.end.i.sw.epilog29.i_crit_edge ]
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %storemerge.i, ptr %18, align 4
  %incdec.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %32 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.i, align 1
  %conv30.i = zext i8 %33 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv30.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %36 = and i8 %35, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.not.i = icmp eq i8 %36, 0
  br i1 %cmp.not.i, label %sw.epilog29.i.devcgroup_update_access.exit.thread_crit_edge, label %if.end34.i

sw.epilog29.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %sw.epilog29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.end34.i:                                       ; preds = %sw.epilog29.i
  %incdec.ptr35.i = getelementptr i8, ptr %call.i, i32 2
  %37 = ptrtoint ptr %incdec.ptr35.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %38)
  %cmp37.i = icmp eq i8 %38, 42
  br i1 %cmp37.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %ex.i, align 4
  %incdec.ptr40.i = getelementptr i8, ptr %call.i, i32 3
  br label %if.end62.i

if.else.i:                                        ; preds = %if.end34.i
  %conv36.i = zext i8 %38 to i32
  %40 = add nsw i32 %conv36.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %40)
  %41 = icmp ult i32 %40, -10
  br i1 %41, label %if.else.i.devcgroup_update_access.exit.thread_crit_edge, label %if.then44.i

if.else.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.then44.i:                                      ; preds = %if.else.i
  %42 = call ptr @memset(ptr %6, i32 0, i32 11)
  %43 = ptrtoint ptr %incdec.ptr35.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr35.i, align 1
  %45 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %temp.i, align 1
  %incdec.ptr48.i = getelementptr i8, ptr %call.i, i32 3
  %46 = ptrtoint ptr %incdec.ptr48.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr48.i, align 1
  %conv49.i = zext i8 %47 to i32
  %48 = add nsw i32 %conv49.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %48)
  %49 = icmp ult i32 %48, -10
  br i1 %49, label %if.then44.i.for.end.i_crit_edge, label %for.cond.i

if.then44.i.for.end.i_crit_edge:                  ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.i:                                       ; preds = %if.then44.i
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %47, ptr %6, align 1
  %incdec.ptr48.1.i = getelementptr i8, ptr %call.i, i32 4
  %51 = ptrtoint ptr %incdec.ptr48.1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr48.1.i, align 1
  %conv49.1.i = zext i8 %52 to i32
  %53 = add nsw i32 %conv49.1.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %53)
  %54 = icmp ult i32 %53, -10
  br i1 %54, label %for.cond.i.for.end.i_crit_edge, label %for.cond.1.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %55 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %52, ptr %7, align 1
  %incdec.ptr48.2.i = getelementptr i8, ptr %call.i, i32 5
  %56 = ptrtoint ptr %incdec.ptr48.2.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr48.2.i, align 1
  %conv49.2.i = zext i8 %57 to i32
  %58 = add nsw i32 %conv49.2.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %58)
  %59 = icmp ult i32 %58, -10
  br i1 %59, label %for.cond.1.i.for.end.i_crit_edge, label %for.cond.2.i

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %60 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %57, ptr %8, align 1
  %incdec.ptr48.3.i = getelementptr i8, ptr %call.i, i32 6
  %61 = ptrtoint ptr %incdec.ptr48.3.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %incdec.ptr48.3.i, align 1
  %conv49.3.i = zext i8 %62 to i32
  %63 = add nsw i32 %conv49.3.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %63)
  %64 = icmp ult i32 %63, -10
  br i1 %64, label %for.cond.2.i.for.end.i_crit_edge, label %for.cond.3.i

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %65 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %62, ptr %9, align 1
  %incdec.ptr48.4.i = getelementptr i8, ptr %call.i, i32 7
  %66 = ptrtoint ptr %incdec.ptr48.4.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %incdec.ptr48.4.i, align 1
  %conv49.4.i = zext i8 %67 to i32
  %68 = add nsw i32 %conv49.4.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %68)
  %69 = icmp ult i32 %68, -10
  br i1 %69, label %for.cond.3.i.for.end.i_crit_edge, label %for.cond.4.i

for.cond.3.i.for.end.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %70 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %67, ptr %10, align 1
  %incdec.ptr48.5.i = getelementptr i8, ptr %call.i, i32 8
  %71 = ptrtoint ptr %incdec.ptr48.5.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %incdec.ptr48.5.i, align 1
  %conv49.5.i = zext i8 %72 to i32
  %73 = add nsw i32 %conv49.5.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %73)
  %74 = icmp ult i32 %73, -10
  br i1 %74, label %for.cond.4.i.for.end.i_crit_edge, label %for.cond.5.i

for.cond.4.i.for.end.i_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %75 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %72, ptr %11, align 1
  %incdec.ptr48.6.i = getelementptr i8, ptr %call.i, i32 9
  %76 = ptrtoint ptr %incdec.ptr48.6.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %incdec.ptr48.6.i, align 1
  %conv49.6.i = zext i8 %77 to i32
  %78 = add nsw i32 %conv49.6.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %78)
  %79 = icmp ult i32 %78, -10
  br i1 %79, label %for.cond.5.i.for.end.i_crit_edge, label %for.cond.6.i

for.cond.5.i.for.end.i_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %80 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %77, ptr %12, align 1
  %incdec.ptr48.7.i = getelementptr i8, ptr %call.i, i32 10
  %81 = ptrtoint ptr %incdec.ptr48.7.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %incdec.ptr48.7.i, align 1
  %conv49.7.i = zext i8 %82 to i32
  %83 = add nsw i32 %conv49.7.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %83)
  %84 = icmp ult i32 %83, -10
  br i1 %84, label %for.cond.6.i.for.end.i_crit_edge, label %for.cond.7.i

for.cond.6.i.for.end.i_crit_edge:                 ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %85 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %82, ptr %13, align 1
  %incdec.ptr48.8.i = getelementptr i8, ptr %call.i, i32 11
  %86 = ptrtoint ptr %incdec.ptr48.8.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %incdec.ptr48.8.i, align 1
  %conv49.8.i = zext i8 %87 to i32
  %88 = add nsw i32 %conv49.8.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %88)
  %89 = icmp ult i32 %88, -10
  br i1 %89, label %for.cond.7.i.for.end.i_crit_edge, label %for.cond.8.i

for.cond.7.i.for.end.i_crit_edge:                 ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %90 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %87, ptr %14, align 1
  %incdec.ptr48.9.i = getelementptr i8, ptr %call.i, i32 12
  %91 = ptrtoint ptr %incdec.ptr48.9.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %incdec.ptr48.9.i, align 1
  %conv49.9.i = zext i8 %92 to i32
  %93 = add nsw i32 %conv49.9.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %93)
  %94 = icmp ult i32 %93, -10
  br i1 %94, label %for.cond.8.i.for.end.i_crit_edge, label %for.cond.9.i

for.cond.8.i.for.end.i_crit_edge:                 ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.9.i:                                     ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %92, ptr %15, align 1
  %incdec.ptr48.10.i = getelementptr i8, ptr %call.i, i32 13
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.9.i, %for.cond.8.i.for.end.i_crit_edge, %for.cond.7.i.for.end.i_crit_edge, %for.cond.6.i.for.end.i_crit_edge, %for.cond.5.i.for.end.i_crit_edge, %for.cond.4.i.for.end.i_crit_edge, %for.cond.3.i.for.end.i_crit_edge, %for.cond.2.i.for.end.i_crit_edge, %for.cond.1.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %if.then44.i.for.end.i_crit_edge
  %incdec.ptr48.lcssa.i = phi ptr [ %incdec.ptr48.i, %if.then44.i.for.end.i_crit_edge ], [ %incdec.ptr48.1.i, %for.cond.i.for.end.i_crit_edge ], [ %incdec.ptr48.2.i, %for.cond.1.i.for.end.i_crit_edge ], [ %incdec.ptr48.3.i, %for.cond.2.i.for.end.i_crit_edge ], [ %incdec.ptr48.4.i, %for.cond.3.i.for.end.i_crit_edge ], [ %incdec.ptr48.5.i, %for.cond.4.i.for.end.i_crit_edge ], [ %incdec.ptr48.6.i, %for.cond.5.i.for.end.i_crit_edge ], [ %incdec.ptr48.7.i, %for.cond.6.i.for.end.i_crit_edge ], [ %incdec.ptr48.8.i, %for.cond.7.i.for.end.i_crit_edge ], [ %incdec.ptr48.9.i, %for.cond.8.i.for.end.i_crit_edge ], [ %incdec.ptr48.10.i, %for.cond.9.i ]
  %call.i.i = call i32 @kstrtouint(ptr noundef nonnull %temp.i, i32 noundef 10, ptr noundef nonnull %ex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool57.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool57.not.i, label %for.end.i.if.end62.i_crit_edge, label %for.end.i.devcgroup_update_access.exit.thread_crit_edge

for.end.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

for.end.i.if.end62.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.end62.i:                                       ; preds = %for.end.i.if.end62.i_crit_edge, %if.then39.i
  %b.2.i = phi ptr [ %incdec.ptr40.i, %if.then39.i ], [ %incdec.ptr48.lcssa.i, %for.end.i.if.end62.i_crit_edge ]
  %96 = ptrtoint ptr %b.2.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %b.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %97)
  %cmp64.not.i = icmp eq i8 %97, 58
  br i1 %cmp64.not.i, label %if.end67.i, label %if.end62.i.devcgroup_update_access.exit.thread_crit_edge

if.end62.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.end67.i:                                       ; preds = %if.end62.i
  %incdec.ptr68.i = getelementptr i8, ptr %b.2.i, i32 1
  %98 = ptrtoint ptr %incdec.ptr68.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %incdec.ptr68.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %99)
  %cmp70.i = icmp eq i8 %99, 42
  br i1 %cmp70.i, label %if.then72.i, label %if.else74.i

if.then72.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %17, align 4
  %incdec.ptr73.i = getelementptr i8, ptr %b.2.i, i32 2
  br label %if.end102.i

if.else74.i:                                      ; preds = %if.end67.i
  %conv69.i = zext i8 %99 to i32
  %101 = add nsw i32 %conv69.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %101)
  %102 = icmp ult i32 %101, -10
  br i1 %102, label %if.else74.i.devcgroup_update_access.exit.thread_crit_edge, label %if.then78.i

if.else74.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.then78.i:                                      ; preds = %if.else74.i
  %103 = call ptr @memset(ptr %temp.i, i32 0, i32 12)
  %104 = ptrtoint ptr %incdec.ptr68.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %incdec.ptr68.i, align 1
  %106 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %temp.i, align 1
  %incdec.ptr85.i = getelementptr i8, ptr %b.2.i, i32 2
  %107 = ptrtoint ptr %incdec.ptr85.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %incdec.ptr85.i, align 1
  %conv86.i = zext i8 %108 to i32
  %109 = add nsw i32 %conv86.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %109)
  %110 = icmp ult i32 %109, -10
  br i1 %110, label %if.then78.i.for.end93.i_crit_edge, label %for.cond80.i

if.then78.i.for.end93.i_crit_edge:                ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i

for.cond80.i:                                     ; preds = %if.then78.i
  %111 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %108, ptr %6, align 1
  %incdec.ptr85.1.i = getelementptr i8, ptr %b.2.i, i32 3
  %112 = ptrtoint ptr %incdec.ptr85.1.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %incdec.ptr85.1.i, align 1
  %conv86.1.i = zext i8 %113 to i32
  %114 = add nsw i32 %conv86.1.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %114)
  %115 = icmp ult i32 %114, -10
  br i1 %115, label %for.cond80.i.for.end93.i_crit_edge, label %for.cond80.1.i

for.cond80.i.for.end93.i_crit_edge:               ; preds = %for.cond80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i

for.cond80.1.i:                                   ; preds = %for.cond80.i
  %116 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %113, ptr %7, align 1
  %incdec.ptr85.2.i = getelementptr i8, ptr %b.2.i, i32 4
  %117 = ptrtoint ptr %incdec.ptr85.2.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %incdec.ptr85.2.i, align 1
  %conv86.2.i = zext i8 %118 to i32
  %119 = add nsw i32 %conv86.2.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %119)
  %120 = icmp ult i32 %119, -10
  br i1 %120, label %for.cond80.1.i.for.end93.i_crit_edge, label %for.cond80.2.i

for.cond80.1.i.for.end93.i_crit_edge:             ; preds = %for.cond80.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i

for.cond80.2.i:                                   ; preds = %for.cond80.1.i
  %121 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %118, ptr %8, align 1
  %incdec.ptr85.3.i = getelementptr i8, ptr %b.2.i, i32 5
  %122 = ptrtoint ptr %incdec.ptr85.3.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %incdec.ptr85.3.i, align 1
  %conv86.3.i = zext i8 %123 to i32
  %124 = add nsw i32 %conv86.3.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %124)
  %125 = icmp ult i32 %124, -10
  br i1 %125, label %for.cond80.2.i.for.end93.i_crit_edge, label %for.cond80.3.i

for.cond80.2.i.for.end93.i_crit_edge:             ; preds = %for.cond80.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i

for.cond80.3.i:                                   ; preds = %for.cond80.2.i
  %126 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %123, ptr %9, align 1
  %incdec.ptr85.4.i = getelementptr i8, ptr %b.2.i, i32 6
  %127 = ptrtoint ptr %incdec.ptr85.4.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %incdec.ptr85.4.i, align 1
  %conv86.4.i = zext i8 %128 to i32
  %129 = add nsw i32 %conv86.4.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %129)
  %130 = icmp ult i32 %129, -10
  br i1 %130, label %for.cond80.3.i.for.end93.i_crit_edge, label %for.cond80.4.i

for.cond80.3.i.for.end93.i_crit_edge:             ; preds = %for.cond80.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i

for.cond80.4.i:                                   ; preds = %for.cond80.3.i
  %131 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %128, ptr %10, align 1
  %incdec.ptr85.5.i = getelementptr i8, ptr %b.2.i, i32 7
  %132 = ptrtoint ptr %incdec.ptr85.5.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %incdec.ptr85.5.i, align 1
  %conv86.5.i = zext i8 %133 to i32
  %134 = add nsw i32 %conv86.5.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %134)
  %135 = icmp ult i32 %134, -10
  br i1 %135, label %for.cond80.4.i.for.end93.i_crit_edge, label %for.cond80.5.i

for.cond80.4.i.for.end93.i_crit_edge:             ; preds = %for.cond80.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i

for.cond80.5.i:                                   ; preds = %for.cond80.4.i
  %136 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %133, ptr %11, align 1
  %incdec.ptr85.6.i = getelementptr i8, ptr %b.2.i, i32 8
  %137 = ptrtoint ptr %incdec.ptr85.6.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %incdec.ptr85.6.i, align 1
  %conv86.6.i = zext i8 %138 to i32
  %139 = add nsw i32 %conv86.6.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %139)
  %140 = icmp ult i32 %139, -10
  br i1 %140, label %for.cond80.5.i.for.end93.i_crit_edge, label %for.cond80.6.i

for.cond80.5.i.for.end93.i_crit_edge:             ; preds = %for.cond80.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i

for.cond80.6.i:                                   ; preds = %for.cond80.5.i
  %141 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %138, ptr %12, align 1
  %incdec.ptr85.7.i = getelementptr i8, ptr %b.2.i, i32 9
  %142 = ptrtoint ptr %incdec.ptr85.7.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %incdec.ptr85.7.i, align 1
  %conv86.7.i = zext i8 %143 to i32
  %144 = add nsw i32 %conv86.7.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %144)
  %145 = icmp ult i32 %144, -10
  br i1 %145, label %for.cond80.6.i.for.end93.i_crit_edge, label %for.cond80.7.i

for.cond80.6.i.for.end93.i_crit_edge:             ; preds = %for.cond80.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i

for.cond80.7.i:                                   ; preds = %for.cond80.6.i
  %146 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %143, ptr %13, align 1
  %incdec.ptr85.8.i = getelementptr i8, ptr %b.2.i, i32 10
  %147 = ptrtoint ptr %incdec.ptr85.8.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %incdec.ptr85.8.i, align 1
  %conv86.8.i = zext i8 %148 to i32
  %149 = add nsw i32 %conv86.8.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %149)
  %150 = icmp ult i32 %149, -10
  br i1 %150, label %for.cond80.7.i.for.end93.i_crit_edge, label %for.cond80.8.i

for.cond80.7.i.for.end93.i_crit_edge:             ; preds = %for.cond80.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i

for.cond80.8.i:                                   ; preds = %for.cond80.7.i
  %151 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %148, ptr %14, align 1
  %incdec.ptr85.9.i = getelementptr i8, ptr %b.2.i, i32 11
  %152 = ptrtoint ptr %incdec.ptr85.9.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %incdec.ptr85.9.i, align 1
  %conv86.9.i = zext i8 %153 to i32
  %154 = add nsw i32 %conv86.9.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %154)
  %155 = icmp ult i32 %154, -10
  br i1 %155, label %for.cond80.8.i.for.end93.i_crit_edge, label %for.cond80.9.i

for.cond80.8.i.for.end93.i_crit_edge:             ; preds = %for.cond80.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i

for.cond80.9.i:                                   ; preds = %for.cond80.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %153, ptr %15, align 1
  %incdec.ptr85.10.i = getelementptr i8, ptr %b.2.i, i32 12
  br label %for.end93.i

for.end93.i:                                      ; preds = %for.cond80.9.i, %for.cond80.8.i.for.end93.i_crit_edge, %for.cond80.7.i.for.end93.i_crit_edge, %for.cond80.6.i.for.end93.i_crit_edge, %for.cond80.5.i.for.end93.i_crit_edge, %for.cond80.4.i.for.end93.i_crit_edge, %for.cond80.3.i.for.end93.i_crit_edge, %for.cond80.2.i.for.end93.i_crit_edge, %for.cond80.1.i.for.end93.i_crit_edge, %for.cond80.i.for.end93.i_crit_edge, %if.then78.i.for.end93.i_crit_edge
  %incdec.ptr85.lcssa.i = phi ptr [ %incdec.ptr85.i, %if.then78.i.for.end93.i_crit_edge ], [ %incdec.ptr85.1.i, %for.cond80.i.for.end93.i_crit_edge ], [ %incdec.ptr85.2.i, %for.cond80.1.i.for.end93.i_crit_edge ], [ %incdec.ptr85.3.i, %for.cond80.2.i.for.end93.i_crit_edge ], [ %incdec.ptr85.4.i, %for.cond80.3.i.for.end93.i_crit_edge ], [ %incdec.ptr85.5.i, %for.cond80.4.i.for.end93.i_crit_edge ], [ %incdec.ptr85.6.i, %for.cond80.5.i.for.end93.i_crit_edge ], [ %incdec.ptr85.7.i, %for.cond80.6.i.for.end93.i_crit_edge ], [ %incdec.ptr85.8.i, %for.cond80.7.i.for.end93.i_crit_edge ], [ %incdec.ptr85.9.i, %for.cond80.8.i.for.end93.i_crit_edge ], [ %incdec.ptr85.10.i, %for.cond80.9.i ]
  %call.i222.i = call i32 @kstrtouint(ptr noundef nonnull %temp.i, i32 noundef 10, ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222.i)
  %tobool97.not.i = icmp eq i32 %call.i222.i, 0
  br i1 %tobool97.not.i, label %for.end93.i.if.end102.i_crit_edge, label %for.end93.i.devcgroup_update_access.exit.thread_crit_edge

for.end93.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %for.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

for.end93.i.if.end102.i_crit_edge:                ; preds = %for.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i

if.end102.i:                                      ; preds = %for.end93.i.if.end102.i_crit_edge, %if.then72.i
  %b.5.i = phi ptr [ %incdec.ptr73.i, %if.then72.i ], [ %incdec.ptr85.lcssa.i, %for.end93.i.if.end102.i_crit_edge ]
  %157 = ptrtoint ptr %b.5.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %b.5.i, align 1
  %conv103.i = zext i8 %158 to i32
  %arrayidx104.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv103.i
  %159 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx104.i, align 1
  %161 = and i8 %160, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp107.not.i = icmp eq i8 %161, 0
  br i1 %cmp107.not.i, label %if.end102.i.devcgroup_update_access.exit.thread_crit_edge, label %for.body115.i.preheader

if.end102.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

for.body115.i.preheader:                          ; preds = %if.end102.i
  %b.6234.i = getelementptr i8, ptr %b.5.i, i32 1
  %162 = ptrtoint ptr %b.6234.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %b.6234.i, align 1
  %164 = zext i8 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %163, label %for.body115.i.preheader.devcgroup_update_access.exit.thread_crit_edge [
    i8 114, label %for.body115.i.preheader.for.inc133.i_crit_edge
    i8 119, label %sw.bb120.i
    i8 109, label %sw.bb125.i
    i8 10, label %for.body115.i.preheader.for.end136.i_crit_edge
    i8 0, label %for.body115.i.preheader.for.end136.i_crit_edge32
  ]

for.body115.i.preheader.for.end136.i_crit_edge32: ; preds = %for.body115.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136.i

for.body115.i.preheader.for.end136.i_crit_edge:   ; preds = %for.body115.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136.i

for.body115.i.preheader.for.inc133.i_crit_edge:   ; preds = %for.body115.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc133.i

for.body115.i.preheader.devcgroup_update_access.exit.thread_crit_edge: ; preds = %for.body115.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

sw.bb120.i:                                       ; preds = %for.body115.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc133.i

sw.bb125.i:                                       ; preds = %for.body115.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc133.i

for.inc133.i:                                     ; preds = %sw.bb125.i, %sw.bb120.i, %for.body115.i.preheader.for.inc133.i_crit_edge
  %.sink240.i = phi i16 [ 4, %sw.bb120.i ], [ 1, %sw.bb125.i ], [ 2, %for.body115.i.preheader.for.inc133.i_crit_edge ]
  %165 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %19, align 2
  %167 = or i16 %166, %.sink240.i
  store i16 %167, ptr %19, align 2
  %b.6234.i.1 = getelementptr i8, ptr %b.5.i, i32 2
  %168 = ptrtoint ptr %b.6234.i.1 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %b.6234.i.1, align 1
  %170 = zext i8 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %169, label %for.inc133.i.devcgroup_update_access.exit.thread_crit_edge [
    i8 114, label %for.inc133.i.for.inc133.i.1_crit_edge
    i8 119, label %sw.bb120.i.1
    i8 109, label %sw.bb125.i.1
    i8 10, label %for.inc133.i.for.end136.i_crit_edge
    i8 0, label %for.inc133.i.for.end136.i_crit_edge33
  ]

for.inc133.i.for.end136.i_crit_edge33:            ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136.i

for.inc133.i.for.end136.i_crit_edge:              ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136.i

for.inc133.i.for.inc133.i.1_crit_edge:            ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc133.i.1

for.inc133.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

sw.bb125.i.1:                                     ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc133.i.1

sw.bb120.i.1:                                     ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc133.i.1

for.inc133.i.1:                                   ; preds = %sw.bb120.i.1, %sw.bb125.i.1, %for.inc133.i.for.inc133.i.1_crit_edge
  %.sink240.i.1 = phi i16 [ 4, %sw.bb120.i.1 ], [ 1, %sw.bb125.i.1 ], [ 2, %for.inc133.i.for.inc133.i.1_crit_edge ]
  %171 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %19, align 2
  %173 = or i16 %172, %.sink240.i.1
  store i16 %173, ptr %19, align 2
  %b.6234.i.2 = getelementptr i8, ptr %b.5.i, i32 3
  %174 = ptrtoint ptr %b.6234.i.2 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %b.6234.i.2, align 1
  %176 = zext i8 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %175, label %for.inc133.i.1.devcgroup_update_access.exit.thread_crit_edge [
    i8 114, label %for.inc133.i.1.for.inc133.i.2_crit_edge
    i8 119, label %sw.bb120.i.2
    i8 109, label %sw.bb125.i.2
    i8 10, label %for.inc133.i.1.for.end136.i_crit_edge
    i8 0, label %for.inc133.i.1.for.end136.i_crit_edge34
  ]

for.inc133.i.1.for.end136.i_crit_edge34:          ; preds = %for.inc133.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136.i

for.inc133.i.1.for.end136.i_crit_edge:            ; preds = %for.inc133.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136.i

for.inc133.i.1.for.inc133.i.2_crit_edge:          ; preds = %for.inc133.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc133.i.2

for.inc133.i.1.devcgroup_update_access.exit.thread_crit_edge: ; preds = %for.inc133.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

sw.bb125.i.2:                                     ; preds = %for.inc133.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc133.i.2

sw.bb120.i.2:                                     ; preds = %for.inc133.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc133.i.2

for.inc133.i.2:                                   ; preds = %sw.bb120.i.2, %sw.bb125.i.2, %for.inc133.i.1.for.inc133.i.2_crit_edge
  %.sink240.i.2 = phi i16 [ 4, %sw.bb120.i.2 ], [ 1, %sw.bb125.i.2 ], [ 2, %for.inc133.i.1.for.inc133.i.2_crit_edge ]
  %177 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %19, align 2
  %179 = or i16 %178, %.sink240.i.2
  store i16 %179, ptr %19, align 2
  br label %for.end136.i

for.end136.i:                                     ; preds = %for.inc133.i.2, %for.inc133.i.1.for.end136.i_crit_edge, %for.inc133.i.1.for.end136.i_crit_edge34, %for.inc133.i.for.end136.i_crit_edge, %for.inc133.i.for.end136.i_crit_edge33, %for.body115.i.preheader.for.end136.i_crit_edge, %for.body115.i.preheader.for.end136.i_crit_edge32
  %180 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %180, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %5, label %for.end136.i.devcgroup_update_access.exit.thread_crit_edge [
    i32 1, label %sw.bb137.i
    i32 2, label %sw.bb151.i
  ]

for.end136.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %for.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

sw.bb137.i:                                       ; preds = %for.end136.i
  %behavior138.i = getelementptr inbounds %struct.dev_cgroup, ptr %call, i32 0, i32 2
  %181 = ptrtoint ptr %behavior138.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %behavior138.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp139.i = icmp eq i32 %182, 1
  br i1 %cmp139.i, label %if.then141.i, label %if.end145.i

if.then141.i:                                     ; preds = %sw.bb137.i
  %183 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i17 = icmp eq ptr %184, null
  br i1 %tobool.not.i17, label %if.then141.i.if.end144.i_crit_edge, label %parent_allows_removal.exit

if.then141.i.if.end144.i_crit_edge:               ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144.i

parent_allows_removal.exit:                       ; preds = %if.then141.i
  %exceptions.i21 = getelementptr inbounds %struct.dev_cgroup, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %18, align 4
  %187 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %ex.i, align 4
  %189 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %17, align 4
  %191 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %19, align 2
  %call4.i = call fastcc zeroext i1 @match_exception_partial(ptr noundef %exceptions.i21, i16 noundef signext %186, i32 noundef %188, i32 noundef %190, i16 noundef signext %192) #7
  br i1 %call4.i, label %parent_allows_removal.exit.devcgroup_update_access.exit.thread_crit_edge, label %parent_allows_removal.exit.if.end144.i_crit_edge

parent_allows_removal.exit.if.end144.i_crit_edge: ; preds = %parent_allows_removal.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144.i

parent_allows_removal.exit.devcgroup_update_access.exit.thread_crit_edge: ; preds = %parent_allows_removal.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.end144.i:                                      ; preds = %parent_allows_removal.exit.if.end144.i_crit_edge, %if.then141.i.if.end144.i_crit_edge
  call fastcc void @dev_exception_rm(ptr noundef %call, ptr noundef nonnull %ex.i) #7
  br label %devcgroup_update_access.exit.thread27

if.end145.i:                                      ; preds = %sw.bb137.i
  %call146.i = call fastcc i32 @parent_has_perm(ptr noundef %call, ptr noundef nonnull %ex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool147.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool147.not.i, label %if.end145.i.devcgroup_update_access.exit.thread_crit_edge, label %devcgroup_update_access.exit

if.end145.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

sw.bb151.i:                                       ; preds = %for.end136.i
  %behavior152.i = getelementptr inbounds %struct.dev_cgroup, ptr %call, i32 0, i32 2
  %193 = ptrtoint ptr %behavior152.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %behavior152.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %194)
  %cmp153.i = icmp eq i32 %194, 2
  br i1 %cmp153.i, label %if.end158.thread.i, label %if.end158.i

if.end158.thread.i:                               ; preds = %sw.bb151.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @dev_exception_rm(ptr noundef %call, ptr noundef nonnull %ex.i) #7
  br label %if.end161.i

if.end158.i:                                      ; preds = %sw.bb151.i
  %call157.i = call fastcc i32 @dev_exception_add(ptr noundef %call, ptr noundef nonnull %ex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %tobool159.not.i = icmp eq i32 %call157.i, 0
  br i1 %tobool159.not.i, label %if.end158.i.if.end161.i_crit_edge, label %if.end158.i.devcgroup_update_access.exit.thread_crit_edge

if.end158.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.end158.i.if.end161.i_crit_edge:                ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.end158.i.if.end161.i_crit_edge, %if.end158.thread.i
  %195 = call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i.i.i.i = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %198, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i7 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i7, label %if.end161.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end161.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end161.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i8 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i8, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end161.i.rcu_read_lock.exit.i_crit_edge
  %call.i9 = call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %call) #7
  %tobool.not67.i = icmp eq ptr %call.i9, null
  br i1 %tobool.not67.i, label %rcu_read_lock.exit.i.for.end.i15_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i15_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i15

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %pos.068.i = phi ptr [ %call14.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i9, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %cmp.i = icmp eq ptr %pos.068.i, %call
  br i1 %cmp.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %behavior.i.i11 = getelementptr inbounds %struct.dev_cgroup, ptr %pos.068.i, i32 0, i32 2
  %199 = ptrtoint ptr %behavior.i.i11 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %behavior.i.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp.i.not.i12 = icmp eq i32 %200, 0
  br i1 %cmp.i.not.i12, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i13

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i13:                                       ; preds = %lor.lhs.false.i
  %call.i41.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i41.i, label %if.end.i13.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i44.i

if.end.i13.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i44.i:                              ; preds = %if.end.i13
  %call1.i42.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42.i)
  %tobool.not.i43.i = icmp eq i32 %call1.i42.i, 0
  br i1 %tobool.not.i43.i, label %land.lhs.true.i44.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i46.i

land.lhs.true.i44.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i46.i:                             ; preds = %land.lhs.true.i44.i
  %.b4.i45.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45.i, label %land.lhs.true2.i46.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i47.i

land.lhs.true2.i46.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i47.i:                                    ; preds = %land.lhs.true2.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i47.i, %land.lhs.true2.i46.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i44.i.rcu_read_unlock.exit.i_crit_edge, %if.end.i13.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %201 = call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i.i.i48.i = and i32 %201, -16384
  %202 = inttoptr i32 %and.i.i.i.i.i48.i to ptr
  %preempt_count.i.i.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %preempt_count.i.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %preempt_count.i.i.i.i49.i, align 4
  %sub.i.i.i.i = add i32 %204, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i49.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %205 = ptrtoint ptr %behavior152.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %behavior152.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %206)
  %cmp4.i = icmp eq i32 %206, 1
  br i1 %cmp4.i, label %land.lhs.true.i, label %rcu_read_unlock.exit.i.if.else.i14_crit_edge

rcu_read_unlock.exit.i.if.else.i14_crit_edge:     ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i14

land.lhs.true.i:                                  ; preds = %rcu_read_unlock.exit.i
  %207 = ptrtoint ptr %behavior.i.i11 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %behavior.i.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %208)
  %cmp6.i = icmp eq i32 %208, 1
  br i1 %cmp6.i, label %if.then7.i, label %land.lhs.true.i.if.else.i14_crit_edge

land.lhs.true.i.if.else.i14_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i14

if.then7.i:                                       ; preds = %land.lhs.true.i
  %call8.i = call fastcc i32 @dev_exception_add(ptr noundef nonnull %pos.068.i, ptr noundef nonnull %ex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then7.i.if.end12.i_crit_edge, label %if.then7.i.devcgroup_update_access.exit.thread_crit_edge

if.then7.i.devcgroup_update_access.exit.thread_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devcgroup_update_access.exit.thread

if.then7.i.if.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.else.i14:                                      ; preds = %land.lhs.true.i.if.else.i14_crit_edge, %rcu_read_unlock.exit.i.if.else.i14_crit_edge
  call fastcc void @dev_exception_rm(ptr noundef nonnull %pos.068.i, ptr noundef nonnull %ex.i) #7
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i14, %if.then7.i.if.end12.i_crit_edge
  %exceptions.i.i = getelementptr inbounds %struct.dev_cgroup, ptr %pos.068.i, i32 0, i32 1
  %209 = ptrtoint ptr %exceptions.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %exceptions.i.i, align 8
  %cmp.i.not15.i.i = icmp eq ptr %210, %exceptions.i.i
  br i1 %cmp.i.not15.i.i, label %if.end12.i.revalidate_active_exceptions.exit.i_crit_edge, label %if.end12.i.for.body.i.i_crit_edge

if.end12.i.for.body.i.i_crit_edge:                ; preds = %if.end12.i
  br label %for.body.i.i

if.end12.i.revalidate_active_exceptions.exit.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %revalidate_active_exceptions.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end12.i.for.body.i.i_crit_edge
  %this.016.i.i = phi ptr [ %tmp.017.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %210, %if.end12.i.for.body.i.i_crit_edge ]
  %211 = ptrtoint ptr %this.016.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %tmp.017.i.i = load ptr, ptr %this.016.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %this.016.i.i, i32 -12
  %call4.i.i = call fastcc i32 @parent_has_perm(ptr noundef nonnull %pos.068.i, ptr noundef %add.ptr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i50.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then.i50.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @dev_exception_rm(ptr noundef nonnull %pos.068.i, ptr noundef %add.ptr.i.i) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i50.i, %for.body.i.i.for.inc.i.i_crit_edge
  %cmp.i.not.i.i = icmp eq ptr %tmp.017.i.i, %exceptions.i.i
  br i1 %cmp.i.not.i.i, label %for.inc.i.i.revalidate_active_exceptions.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.revalidate_active_exceptions.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %revalidate_active_exceptions.exit.i

revalidate_active_exceptions.exit.i:              ; preds = %for.inc.i.i.revalidate_active_exceptions.exit.i_crit_edge, %if.end12.i.revalidate_active_exceptions.exit.i_crit_edge
  %212 = call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i.i.i30.i = and i32 %212, -16384
  %213 = inttoptr i32 %and.i.i.i.i.i30.i to ptr
  %preempt_count.i.i.i.i31.i = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %preempt_count.i.i.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %preempt_count.i.i.i.i31.i, align 4
  %add.i.i.i32.i = add i32 %215, 1
  store volatile i32 %add.i.i.i32.i, ptr %preempt_count.i.i.i.i31.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i33.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i33.i, label %revalidate_active_exceptions.exit.i.for.inc.i_crit_edge, label %land.lhs.true.i36.i

revalidate_active_exceptions.exit.i.for.inc.i_crit_edge: ; preds = %revalidate_active_exceptions.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i36.i:                              ; preds = %revalidate_active_exceptions.exit.i
  %call1.i34.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34.i)
  %tobool.not.i35.i = icmp eq i32 %call1.i34.i, 0
  br i1 %tobool.not.i35.i, label %land.lhs.true.i36.i.for.inc.i_crit_edge, label %land.lhs.true2.i38.i

land.lhs.true.i36.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true2.i38.i:                             ; preds = %land.lhs.true.i36.i
  %.b4.i37.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i37.i, label %land.lhs.true2.i38.i.for.inc.i_crit_edge, label %if.then.i39.i

land.lhs.true2.i38.i.for.inc.i_crit_edge:         ; preds = %land.lhs.true2.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i39.i:                                    ; preds = %land.lhs.true2.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i39.i, %land.lhs.true2.i38.i.for.inc.i_crit_edge, %land.lhs.true.i36.i.for.inc.i_crit_edge, %revalidate_active_exceptions.exit.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call14.i = call ptr @css_next_descendant_pre(ptr noundef nonnull %pos.068.i, ptr noundef %call) #7
  %tobool.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i15_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i15

for.end.i15:                                      ; preds = %for.inc.i.for.end.i15_crit_edge, %rcu_read_lock.exit.i.for.end.i15_crit_edge
  %call.i51.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i51.i, label %for.end.i15.rcu_read_unlock.exit61.i_crit_edge, label %land.lhs.true.i54.i

for.end.i15.rcu_read_unlock.exit61.i_crit_edge:   ; preds = %for.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit61.i

land.lhs.true.i54.i:                              ; preds = %for.end.i15
  %call1.i52.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call1.i52.i, 0
  br i1 %tobool.not.i53.i, label %land.lhs.true.i54.i.rcu_read_unlock.exit61.i_crit_edge, label %land.lhs.true2.i56.i

land.lhs.true.i54.i.rcu_read_unlock.exit61.i_crit_edge: ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit61.i

land.lhs.true2.i56.i:                             ; preds = %land.lhs.true.i54.i
  %.b4.i55.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55.i, label %land.lhs.true2.i56.i.rcu_read_unlock.exit61.i_crit_edge, label %if.then.i57.i

land.lhs.true2.i56.i.rcu_read_unlock.exit61.i_crit_edge: ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit61.i

if.then.i57.i:                                    ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit61.i

rcu_read_unlock.exit61.i:                         ; preds = %if.then.i57.i, %land.lhs.true2.i56.i.rcu_read_unlock.exit61.i_crit_edge, %land.lhs.true.i54.i.rcu_read_unlock.exit61.i_crit_edge, %for.end.i15.rcu_read_unlock.exit61.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %216 = call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i.i.i58.i = and i32 %216, -16384
  %217 = inttoptr i32 %and.i.i.i.i.i58.i to ptr
  %preempt_count.i.i.i.i59.i = getelementptr inbounds %struct.thread_info, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %preempt_count.i.i.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %preempt_count.i.i.i.i59.i, align 4
  %sub.i.i.i60.i = add i32 %219, -1
  store volatile i32 %sub.i.i.i60.i, ptr %preempt_count.i.i.i.i59.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %devcgroup_update_access.exit.thread27

devcgroup_update_access.exit.thread:              ; preds = %if.then7.i.devcgroup_update_access.exit.thread_crit_edge, %if.end158.i.devcgroup_update_access.exit.thread_crit_edge, %if.end145.i.devcgroup_update_access.exit.thread_crit_edge, %parent_allows_removal.exit.devcgroup_update_access.exit.thread_crit_edge, %for.end136.i.devcgroup_update_access.exit.thread_crit_edge, %for.inc133.i.1.devcgroup_update_access.exit.thread_crit_edge, %for.inc133.i.devcgroup_update_access.exit.thread_crit_edge, %for.body115.i.preheader.devcgroup_update_access.exit.thread_crit_edge, %if.end102.i.devcgroup_update_access.exit.thread_crit_edge, %for.end93.i.devcgroup_update_access.exit.thread_crit_edge, %if.else74.i.devcgroup_update_access.exit.thread_crit_edge, %if.end62.i.devcgroup_update_access.exit.thread_crit_edge, %for.end.i.devcgroup_update_access.exit.thread_crit_edge, %if.else.i.devcgroup_update_access.exit.thread_crit_edge, %sw.epilog29.i.devcgroup_update_access.exit.thread_crit_edge, %sw.bb19.i.devcgroup_update_access.exit.thread_crit_edge, %if.end13.i.devcgroup_update_access.exit.thread_crit_edge, %may_allow_all.exit.i.devcgroup_update_access.exit.thread_crit_edge, %sw.bb3.i.devcgroup_update_access.exit.thread_crit_edge, %sw.bb.i.devcgroup_update_access.exit.thread_crit_edge, %if.end.i.devcgroup_update_access.exit.thread_crit_edge, %entry.devcgroup_update_access.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %for.end136.i.devcgroup_update_access.exit.thread_crit_edge ], [ %call157.i, %if.end158.i.devcgroup_update_access.exit.thread_crit_edge ], [ -1, %if.end145.i.devcgroup_update_access.exit.thread_crit_edge ], [ -1, %parent_allows_removal.exit.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %if.end102.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %if.else74.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %for.end93.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %if.end62.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %if.else.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %for.end.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %sw.epilog29.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %if.end.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %sw.bb.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %sw.bb19.i.devcgroup_update_access.exit.thread_crit_edge ], [ %call15.i, %if.end13.i.devcgroup_update_access.exit.thread_crit_edge ], [ -1, %may_allow_all.exit.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %sw.bb3.i.devcgroup_update_access.exit.thread_crit_edge ], [ -1, %entry.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %for.inc133.i.1.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %for.inc133.i.devcgroup_update_access.exit.thread_crit_edge ], [ -22, %for.body115.i.preheader.devcgroup_update_access.exit.thread_crit_edge ], [ %call8.i, %if.then7.i.devcgroup_update_access.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ex.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp.i) #7
  call void @mutex_unlock(ptr noundef nonnull @devcgroup_mutex) #7
  br label %221

devcgroup_update_access.exit.thread27:            ; preds = %rcu_read_unlock.exit61.i, %if.end144.i, %sw.epilog.sink.split.i, %if.end13.i.devcgroup_update_access.exit.thread27_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ex.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp.i) #7
  call void @mutex_unlock(ptr noundef nonnull @devcgroup_mutex) #7
  br label %220

devcgroup_update_access.exit:                     ; preds = %if.end145.i
  %call150.i = call fastcc i32 @dev_exception_add(ptr noundef %call, ptr noundef nonnull %ex.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ex.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp.i) #7
  call void @mutex_unlock(ptr noundef nonnull @devcgroup_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.i)
  %tobool.not = icmp eq i32 %call150.i, 0
  br i1 %tobool.not, label %devcgroup_update_access.exit._crit_edge, label %devcgroup_update_access.exit._crit_edge35

devcgroup_update_access.exit._crit_edge35:        ; preds = %devcgroup_update_access.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %221

devcgroup_update_access.exit._crit_edge:          ; preds = %devcgroup_update_access.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %220

220:                                              ; preds = %devcgroup_update_access.exit._crit_edge, %devcgroup_update_access.exit.thread27
  br label %221

221:                                              ; preds = %220, %devcgroup_update_access.exit._crit_edge35, %devcgroup_update_access.exit.thread
  %222 = phi i32 [ %nbytes, %220 ], [ %call150.i, %devcgroup_update_access.exit._crit_edge35 ], [ %retval.0.i.ph, %devcgroup_update_access.exit.thread ]
  ret i32 %222
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devcgroup_seq_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %maj = alloca [13 x i8], align 2
  %min = alloca [13 x i8], align 2
  %acc = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i49 = tail call ptr @of_css(ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %maj) #7
  %2 = call ptr @memset(ptr %maj, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %min) #7
  %3 = call ptr @memset(ptr %min, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acc) #7
  %4 = ptrtoint ptr %acc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %acc, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %behavior = getelementptr inbounds %struct.dev_cgroup, ptr %call.i49, i32 0, i32 2
  %9 = ptrtoint ptr %behavior to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %behavior, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %acc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1920429312, ptr %acc, align 4
  %12 = ptrtoint ptr %maj to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 10752, ptr %maj, align 2
  %13 = ptrtoint ptr %min to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 10752, ptr %min, align 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef 97, ptr noundef nonnull %maj, ptr noundef nonnull %min, ptr noundef nonnull %acc) #7
  br label %if.end38

do.body:                                          ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b48 = load i1, ptr @devcgroup_seq_show.__warned, align 1
  br i1 %.b48, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @devcgroup_seq_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 290, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %exceptions = getelementptr inbounds %struct.dev_cgroup, ptr %call.i49, i32 0, i32 1
  %14 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn75 = load volatile ptr, ptr %exceptions, align 4
  %cmp19.not76 = icmp eq ptr %.pn75, %exceptions
  br i1 %cmp19.not76, label %do.end.if.end38_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

for.body:                                         ; preds = %type_to_char.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn77 = phi ptr [ %.pn, %type_to_char.exit.for.body_crit_edge ], [ %.pn75, %do.end.for.body_crit_edge ]
  %ex.0 = getelementptr i8, ptr %.pn77, i32 -12
  %access = getelementptr i8, ptr %.pn77, i32 -2
  %15 = ptrtoint ptr %access to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %access, align 2
  %17 = ptrtoint ptr %acc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %acc, align 4
  %conv22.i = zext i16 %16 to i32
  %and.i = and i32 %conv22.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i53 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i53, label %for.body.if.end.i_crit_edge, label %if.then.i54

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i54:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %acc to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 114, ptr %acc, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i54, %for.body.if.end.i_crit_edge
  %idx.0.i = phi i32 [ 1, %if.then.i54 ], [ 0, %for.body.if.end.i_crit_edge ]
  %and2.i = and i32 %conv22.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc5.i = add nuw nsw i32 %idx.0.i, 1
  %arrayidx6.i55 = getelementptr i8, ptr %acc, i32 %idx.0.i
  %19 = ptrtoint ptr %arrayidx6.i55 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 119, ptr %arrayidx6.i55, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %idx.1.i = phi i32 [ %inc5.i, %if.then4.i ], [ %idx.0.i, %if.end.i.if.end7.i_crit_edge ]
  %and9.i = and i32 %conv22.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.set_access.exit_crit_edge, label %if.then11.i

if.end7.i.set_access.exit_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_access.exit

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx13.i56 = getelementptr i8, ptr %acc, i32 %idx.1.i
  %20 = ptrtoint ptr %arrayidx13.i56 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 109, ptr %arrayidx13.i56, align 1
  br label %set_access.exit

set_access.exit:                                  ; preds = %if.then11.i, %if.end7.i.set_access.exit_crit_edge
  %21 = ptrtoint ptr %ex.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ex.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i = icmp eq i32 %22, -1
  br i1 %cmp.i, label %if.then.i57, label %if.else.i

if.then.i57:                                      ; preds = %set_access.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %maj to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 10752, ptr %maj, align 2
  br label %set_majmin.exit

if.else.i:                                        ; preds = %set_access.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i58 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %maj, ptr noundef nonnull @.str.10, i32 noundef %22) #7
  br label %set_majmin.exit

set_majmin.exit:                                  ; preds = %if.else.i, %if.then.i57
  %minor = getelementptr i8, ptr %.pn77, i32 -8
  %24 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i60 = icmp eq i32 %25, -1
  br i1 %cmp.i60, label %if.then.i61, label %if.else.i63

if.then.i61:                                      ; preds = %set_majmin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %min to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 10752, ptr %min, align 2
  br label %set_majmin.exit65

if.else.i63:                                      ; preds = %set_majmin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %min, ptr noundef nonnull @.str.10, i32 noundef %25) #7
  br label %set_majmin.exit65

set_majmin.exit65:                                ; preds = %if.else.i63, %if.then.i61
  %type = getelementptr i8, ptr %.pn77, i32 -4
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %type, align 4
  %switch.tableidx = add i16 %28, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %switch.tableidx)
  %29 = icmp ult i16 %switch.tableidx, 4
  br i1 %29, label %switch.lookup, label %set_majmin.exit65.type_to_char.exit_crit_edge

set_majmin.exit65.type_to_char.exit_crit_edge:    ; preds = %set_majmin.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %type_to_char.exit

switch.lookup:                                    ; preds = %set_majmin.exit65
  call void @__sanitizer_cov_trace_pc() #9
  %30 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.devcgroup_seq_show, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %type_to_char.exit

type_to_char.exit:                                ; preds = %switch.lookup, %set_majmin.exit65.type_to_char.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 88, %set_majmin.exit65.type_to_char.exit_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i, ptr noundef nonnull %maj, ptr noundef nonnull %min, ptr noundef nonnull %acc) #7
  %32 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load volatile ptr, ptr %.pn77, align 4
  %cmp19.not = icmp eq ptr %.pn, %exceptions
  br i1 %cmp19.not, label %type_to_char.exit.if.end38_crit_edge, label %type_to_char.exit.for.body_crit_edge

type_to_char.exit.for.body_crit_edge:             ; preds = %type_to_char.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

type_to_char.exit.if.end38_crit_edge:             ; preds = %type_to_char.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end38:                                         ; preds = %type_to_char.exit.if.end38_crit_edge, %do.end.if.end38_crit_edge, %if.then
  %call.i66 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i66, label %if.end38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i69

if.end38.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i69:                                ; preds = %if.end38
  %call1.i67 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, %if.end38.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %33 = call i32 @llvm.read_register.i32(metadata !39) #7
  %and.i.i.i.i.i73 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i74, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acc) #7
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %min) #7
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %maj) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @css_has_online_children(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_exception_clean(ptr noundef readonly %dev_cgroup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devcgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !52

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 161, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %exceptions.i = getelementptr inbounds %struct.dev_cgroup, ptr %dev_cgroup, i32 0, i32 1
  %1 = ptrtoint ptr %exceptions.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %exceptions.i, align 8
  %cmp.not25.i = icmp eq ptr %2, %exceptions.i
  br i1 %cmp.not25.i, label %if.end.__dev_exception_clean.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.__dev_exception_clean.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dev_exception_clean.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in26.i = phi ptr [ %.pn28.i, %if.end.i.for.body.i_crit_edge ], [ %2, %if.end.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn28.i = load ptr, ptr %.pn.in26.i, align 4
  %ex.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_rcu.exit.i_crit_edge

for.body.i.list_del_rcu.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %for.body.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not.i = icmp eq ptr %ex.0.i, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.i.if.end.i_crit_edge, label %do.end.i

list_del_rcu.exit.i.if.end.i_crit_edge:           ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %rcu.i = getelementptr i8, ptr %.pn.in26.i, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 20 to ptr)) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %list_del_rcu.exit.i.if.end.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn28.i, %exceptions.i
  br i1 %cmp.not.i, label %if.end.i.__dev_exception_clean.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.__dev_exception_clean.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dev_exception_clean.exit

__dev_exception_clean.exit:                       ; preds = %if.end.i.__dev_exception_clean.exit_crit_edge, %if.end.__dev_exception_clean.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_exception_rm(ptr noundef readonly %dev_cgroup, ptr nocapture noundef readonly %ex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devcgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !52

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 125, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %exceptions = getelementptr inbounds %struct.dev_cgroup, ptr %dev_cgroup, i32 0, i32 1
  %1 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %exceptions, align 8
  %cmp32.not93 = icmp eq ptr %2, %exceptions
  br i1 %cmp32.not93, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %type35 = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 2
  %minor46 = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 1
  %access = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in94 = phi ptr [ %2, %for.body.lr.ph ], [ %.pn97, %for.inc.for.body_crit_edge ]
  %walk.096 = getelementptr i8, ptr %.pn.in94, i32 -12
  %3 = ptrtoint ptr %.pn.in94 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn97 = load ptr, ptr %.pn.in94, align 4
  %type = getelementptr i8, ptr %.pn.in94, i32 -4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 4
  %6 = ptrtoint ptr %type35 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type35, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp37.not = icmp eq i16 %5, %7
  br i1 %cmp37.not, label %if.end40, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end40:                                         ; preds = %for.body
  %8 = ptrtoint ptr %walk.096 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %walk.096, align 4
  %10 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp42.not = icmp eq i32 %9, %11
  br i1 %cmp42.not, label %if.end45, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end45:                                         ; preds = %if.end40
  %minor = getelementptr i8, ptr %.pn.in94, i32 -8
  %12 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %minor, align 4
  %14 = ptrtoint ptr %minor46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %minor46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp47.not = icmp eq i32 %13, %15
  br i1 %cmp47.not, label %if.end50, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end50:                                         ; preds = %if.end45
  %16 = ptrtoint ptr %access to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %access, align 2
  %18 = xor i16 %17, -1
  %access52 = getelementptr i8, ptr %.pn.in94, i32 -2
  %19 = ptrtoint ptr %access52 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %access52, align 2
  %and89 = and i16 %20, %18
  store i16 %and89, ptr %access52, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and89)
  %tobool56.not = icmp eq i16 %and89, 0
  br i1 %tobool56.not, label %if.then57, label %if.end50.for.inc_crit_edge

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then57:                                        ; preds = %if.end50
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in94) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then57.list_del_rcu.exit_crit_edge

if.then57.list_del_rcu.exit_crit_edge:            ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in94, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %.pn.in94 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in94, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then57.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in94, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool60.not = icmp eq ptr %walk.096, null
  br i1 %tobool60.not, label %list_del_rcu.exit.for.inc_crit_edge, label %do.end64

list_del_rcu.exit.for.inc_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end64:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rcu = getelementptr i8, ptr %.pn.in94, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 20 to ptr)) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end64, %list_del_rcu.exit.for.inc_crit_edge, %if.end50.for.inc_crit_edge, %if.end45.for.inc_crit_edge, %if.end40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp32.not = icmp eq ptr %.pn97, %exceptions
  br i1 %cmp32.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parent_has_perm(ptr nocapture noundef readonly %childcg, ptr nocapture noundef readonly %ex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %childcg, i32 0, i32 12
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %behavior = getelementptr inbounds %struct.dev_cgroup, ptr %childcg, i32 0, i32 2
  %2 = ptrtoint ptr %behavior to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %behavior, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devcgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %.b37.i = load i1, ptr @verify_new_ex.__warned, align 1
  br i1 %.b37.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @verify_new_ex.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 401, ptr noundef nonnull @.str.4) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %behavior8.i = getelementptr inbounds %struct.dev_cgroup, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %behavior8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %behavior8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.then9.i, label %if.else16.i

if.then9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp10.i = icmp eq i32 %3, 1
  br i1 %cmp10.i, label %if.then9.i.verify_new_ex.exit_crit_edge, label %if.else.i

if.then9.i.verify_new_ex.exit_crit_edge:          ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_new_ex.exit

if.else.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %exceptions.i = getelementptr inbounds %struct.dev_cgroup, ptr %1, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type.i, align 4
  %8 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ex, align 4
  %minor.i = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 1
  %10 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor.i, align 4
  %access.i = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 3
  %12 = ptrtoint ptr %access.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %access.i, align 2
  %call12.i = tail call fastcc zeroext i1 @match_exception_partial(ptr noundef %exceptions.i, i16 noundef signext %7, i32 noundef %9, i32 noundef %11, i16 noundef signext %13) #7
  %not.call12.i = xor i1 %call12.i, true
  br label %verify_new_ex.exit

if.else16.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %exceptions17.i = getelementptr inbounds %struct.dev_cgroup, ptr %1, i32 0, i32 1
  %type18.i = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 2
  %14 = ptrtoint ptr %type18.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type18.i, align 4
  %16 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ex, align 4
  %minor20.i = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 1
  %18 = ptrtoint ptr %minor20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %minor20.i, align 4
  %access21.i = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 3
  %20 = ptrtoint ptr %access21.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %access21.i, align 2
  %call22.i = tail call fastcc zeroext i1 @match_exception(ptr noundef %exceptions17.i, i16 noundef signext %15, i32 noundef %17, i32 noundef %19, i16 noundef signext %21) #7
  br label %verify_new_ex.exit

verify_new_ex.exit:                               ; preds = %if.else16.i, %if.else.i, %if.then9.i.verify_new_ex.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.then9.i.verify_new_ex.exit_crit_edge ], [ %not.call12.i, %if.else.i ], [ %call22.i, %if.else16.i ]
  %conv = zext i1 %retval.0.i to i32
  br label %cleanup

cleanup:                                          ; preds = %verify_new_ex.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %verify_new_ex.exit ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dev_exception_add(ptr noundef %dev_cgroup, ptr noundef %ex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devcgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !52

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call ptr @kmemdup(ptr noundef %ex, i32 noundef 28, i32 noundef 3264) #7
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %exceptions = getelementptr inbounds %struct.dev_cgroup, ptr %dev_cgroup, i32 0, i32 1
  %1 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn81 = load ptr, ptr %exceptions, align 4
  %cmp30.not83 = icmp eq ptr %.pn81, %exceptions
  br i1 %cmp30.not83, label %if.end27.if.then60_crit_edge, label %for.body.lr.ph

if.end27.if.then60_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

for.body.lr.ph:                                   ; preds = %if.end27
  %type33 = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 2
  %minor44 = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 1
  %access = getelementptr inbounds %struct.dev_exception_item, ptr %ex, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn85 = phi ptr [ %.pn81, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %excopy.084 = phi ptr [ %call24, %for.body.lr.ph ], [ %excopy.1, %for.inc.for.body_crit_edge ]
  %type = getelementptr i8, ptr %.pn85, i32 -4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  %4 = ptrtoint ptr %type33 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type33, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp35.not = icmp eq i16 %3, %5
  br i1 %cmp35.not, label %if.end38, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end38:                                         ; preds = %for.body
  %walk.086 = getelementptr i8, ptr %.pn85, i32 -12
  %6 = ptrtoint ptr %walk.086 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %walk.086, align 4
  %8 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp40.not = icmp eq i32 %7, %9
  br i1 %cmp40.not, label %if.end43, label %if.end38.for.inc_crit_edge

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end43:                                         ; preds = %if.end38
  %minor = getelementptr i8, ptr %.pn85, i32 -8
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor, align 4
  %12 = ptrtoint ptr %minor44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %minor44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp45.not = icmp eq i32 %11, %13
  br i1 %cmp45.not, label %if.end48, label %if.end43.for.inc_crit_edge

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %access to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %access, align 2
  %access50 = getelementptr i8, ptr %.pn85, i32 -2
  %16 = ptrtoint ptr %access50 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %access50, align 2
  %or80 = or i16 %17, %15
  store i16 %or80, ptr %access50, align 2
  tail call void @kfree(ptr noundef %excopy.084) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.end43.for.inc_crit_edge, %if.end38.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %excopy.1 = phi ptr [ %excopy.084, %for.body.for.inc_crit_edge ], [ %excopy.084, %if.end38.for.inc_crit_edge ], [ %excopy.084, %if.end43.for.inc_crit_edge ], [ null, %if.end48 ]
  %18 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn85, align 4
  %cmp30.not = icmp eq ptr %.pn, %exceptions
  br i1 %cmp30.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %cmp58.not = icmp eq ptr %excopy.1, null
  br i1 %cmp58.not, label %for.end.cleanup_crit_edge, label %for.end.if.then60_crit_edge

for.end.if.then60_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %for.end.if.then60_crit_edge, %if.end27.if.then60_crit_edge
  %excopy.0.lcssa89 = phi ptr [ %excopy.1, %for.end.if.then60_crit_edge ], [ %call24, %if.end27.if.then60_crit_edge ]
  %list61 = getelementptr inbounds %struct.dev_exception_item, ptr %excopy.0.lcssa89, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.dev_cgroup, ptr %dev_cgroup, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list61, ptr noundef %20, ptr noundef %exceptions) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %list61 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %exceptions, ptr %list61, align 4
  %prev2.i.i = getelementptr inbounds %struct.dev_exception_item, ptr %excopy.0.lcssa89, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list61, ptr %20, align 4
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list61, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.then60.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.then60.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @match_exception_partial(ptr noundef %exceptions, i16 noundef signext %type, i32 noundef %major, i32 noundef %minor, i16 noundef signext %access) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devcgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true6

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %.b86 = load i1, ptr @match_exception_partial.__warned, align 1
  br i1 %.b86, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @match_exception_partial.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 359, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn90 = load volatile ptr, ptr %exceptions, align 4
  %cmp.not92 = icmp eq ptr %.pn90, %exceptions
  br i1 %cmp.not92, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %conv97 = zext i16 %type to i32
  %and = and i32 %conv97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %and21 = and i32 %conv97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %major)
  %cmp34.not = icmp eq i32 %major, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %minor)
  %cmp46.not = icmp eq i32 %minor, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn93 = phi ptr [ %.pn90, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %ex.094 = getelementptr i8, ptr %.pn93, i32 -12
  br i1 %tobool12.not, label %for.body.if.end19_crit_edge, label %land.lhs.true13

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true13:                                  ; preds = %for.body
  %type14 = getelementptr i8, ptr %.pn93, i32 -4
  %1 = ptrtoint ptr %type14 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type14, align 4
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool17.not = icmp eq i16 %3, 0
  br i1 %tobool17.not, label %land.lhs.true13.for.inc_crit_edge, label %land.lhs.true13.if.end19_crit_edge

land.lhs.true13.if.end19_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end19:                                         ; preds = %land.lhs.true13.if.end19_crit_edge, %for.body.if.end19_crit_edge
  br i1 %tobool22.not, label %if.end19.if.end29_crit_edge, label %land.lhs.true23

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true23:                                  ; preds = %if.end19
  %type24 = getelementptr i8, ptr %.pn93, i32 -4
  %4 = ptrtoint ptr %type24 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type24, align 4
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool27.not = icmp eq i16 %6, 0
  br i1 %tobool27.not, label %land.lhs.true23.for.inc_crit_edge, label %land.lhs.true23.if.end29_crit_edge

land.lhs.true23.if.end29_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end29:                                         ; preds = %land.lhs.true23.if.end29_crit_edge, %if.end19.if.end29_crit_edge
  %7 = ptrtoint ptr %ex.094 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ex.094, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp31.not = icmp eq i32 %8, -1
  %or.cond = or i1 %cmp34.not, %cmp31.not
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %major)
  %cmp38.not = icmp eq i32 %8, %major
  %or.cond87 = or i1 %cmp38.not, %or.cond
  br i1 %or.cond87, label %if.end41, label %if.end29.for.inc_crit_edge

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end41:                                         ; preds = %if.end29
  %minor42 = getelementptr i8, ptr %.pn93, i32 -8
  %9 = ptrtoint ptr %minor42 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %minor42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp43.not = icmp eq i32 %10, -1
  %or.cond88 = or i1 %cmp46.not, %cmp43.not
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %minor)
  %cmp50.not = icmp eq i32 %10, %minor
  %or.cond89 = or i1 %cmp50.not, %or.cond88
  br i1 %or.cond89, label %if.end53, label %if.end41.for.inc_crit_edge

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end53:                                         ; preds = %if.end41
  %access55 = getelementptr i8, ptr %.pn93, i32 -2
  %11 = ptrtoint ptr %access55 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %access55, align 2
  %and5783 = and i16 %12, %access
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and5783)
  %tobool58.not = icmp eq i16 %and5783, 0
  br i1 %tobool58.not, label %if.end53.for.inc_crit_edge, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end53.for.inc_crit_edge, %if.end41.for.inc_crit_edge, %if.end29.for.inc_crit_edge, %land.lhs.true23.for.inc_crit_edge, %land.lhs.true13.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn93 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load volatile ptr, ptr %.pn93, align 4
  %cmp.not = icmp eq ptr %.pn, %exceptions
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %do.end.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ], [ true, %if.end53.cleanup_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @match_exception(ptr noundef %exceptions, i16 noundef signext %type, i32 noundef %major, i32 noundef %minor, i16 noundef signext %access) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b75 = load i1, ptr @match_exception.__warned, align 1
  br i1 %.b75, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @match_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 321, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn77 = load volatile ptr, ptr %exceptions, align 4
  %cmp.not79 = icmp eq ptr %.pn77, %exceptions
  br i1 %cmp.not79, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %conv84 = zext i16 %type to i32
  %and = and i32 %conv84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %and18 = and i32 %conv84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn80 = phi ptr [ %.pn77, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %ex.081 = getelementptr i8, ptr %.pn80, i32 -12
  br i1 %tobool9.not, label %for.body.if.end16_crit_edge, label %land.lhs.true10

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true10:                                  ; preds = %for.body
  %type11 = getelementptr i8, ptr %.pn80, i32 -4
  %1 = ptrtoint ptr %type11 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type11, align 4
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool14.not = icmp eq i16 %3, 0
  br i1 %tobool14.not, label %land.lhs.true10.for.inc_crit_edge, label %land.lhs.true10.if.end16_crit_edge

land.lhs.true10.if.end16_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end16:                                         ; preds = %land.lhs.true10.if.end16_crit_edge, %for.body.if.end16_crit_edge
  br i1 %tobool19.not, label %if.end16.if.end26_crit_edge, label %land.lhs.true20

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true20:                                  ; preds = %if.end16
  %type21 = getelementptr i8, ptr %.pn80, i32 -4
  %4 = ptrtoint ptr %type21 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type21, align 4
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool24.not = icmp eq i16 %6, 0
  br i1 %tobool24.not, label %land.lhs.true20.for.inc_crit_edge, label %land.lhs.true20.if.end26_crit_edge

land.lhs.true20.if.end26_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end26:                                         ; preds = %land.lhs.true20.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %7 = ptrtoint ptr %ex.081 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ex.081, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp28.not = icmp eq i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %major)
  %cmp32.not = icmp eq i32 %8, %major
  %or.cond = or i1 %cmp28.not, %cmp32.not
  br i1 %or.cond, label %if.end35, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end35:                                         ; preds = %if.end26
  %minor36 = getelementptr i8, ptr %.pn80, i32 -8
  %9 = ptrtoint ptr %minor36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %minor36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp37.not = icmp eq i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %minor)
  %cmp41.not = icmp eq i32 %10, %minor
  %or.cond76 = or i1 %cmp37.not, %cmp41.not
  br i1 %or.cond76, label %if.end44, label %if.end35.for.inc_crit_edge

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end44:                                         ; preds = %if.end35
  %access46 = getelementptr i8, ptr %.pn80, i32 -2
  %11 = ptrtoint ptr %access46 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %access46, align 2
  %13 = xor i16 %12, -1
  %and4872 = and i16 %13, %access
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and4872)
  %tobool49.not = icmp eq i16 %and4872, 0
  br i1 %tobool49.not, label %if.end44.cleanup_crit_edge, label %if.end44.for.inc_crit_edge

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end44.for.inc_crit_edge, %if.end35.for.inc_crit_edge, %if.end26.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn80 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load volatile ptr, ptr %.pn80, align 4
  %cmp.not = icmp eq ptr %.pn, %exceptions
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %do.end.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ], [ true, %if.end44.cleanup_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @devices_cgrp_subsys, !1, !"devices_cgrp_subsys", i1 false, i1 false}
!1 = !{!"../security/device_cgroup.c", i32 790, i32 22}
!2 = !{ptr @__ksymtab_devcgroup_check_permission, !3, !"__ksymtab_devcgroup_check_permission", i1 false, i1 false}
!3 = !{!"../security/device_cgroup.c", i32 851, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/device_cgroup.c", i32 21, i32 8}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @devcgroup_mutex, !5, !"devcgroup_mutex", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/device_cgroup.c", i32 66, i32 2}
!10 = !{ptr @dev_cgroup_files, !11, !"dev_cgroup_files", i1 false, i1 false}
!11 = !{!"../security/device_cgroup.c", i32 771, i32 22}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../security/device_cgroup.c", i32 358, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../security/device_cgroup.c", i32 399, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../security/device_cgroup.c", i32 321, i32 2}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/device_cgroup.c", i32 287, i32 17}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../security/device_cgroup.c", i32 290, i32 3}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/device_cgroup.c", i32 265, i32 15}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../security/device_cgroup.c", i32 267, i32 16}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2149281839, i64 2149281844, i64 2149281857, i64 2149281901, i64 2149281935, i64 2149281956}
!50 = !{i64 2149711834}
!51 = !{i64 2149712100}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2152277531}
