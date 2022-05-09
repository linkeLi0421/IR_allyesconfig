; ModuleID = '/llk/IR_all_yes/block/blk-throttle.c_pt.bc'
source_filename = "../block/blk-throttle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.blkcg_policy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.blkcg = type { %struct.cgroup_subsys_state, %struct.spinlock, %struct.refcount_struct, %struct.xarray, ptr, %struct.hlist_head, [6 x ptr], %struct.list_head, [129 x i8], %struct.list_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.throtl_grp = type { %struct.blkg_policy_data, %struct.rb_node, ptr, %struct.throtl_service_queue, [2 x %struct.throtl_qnode], [2 x %struct.throtl_qnode], i32, i32, [2 x i8], [2 x [2 x i64]], [2 x [2 x i64]], [2 x [2 x i32]], [2 x [2 x i32]], [2 x i64], [2 x i32], [2 x i32], [2 x i64], [2 x i32], i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.atomic_t], [2 x %struct.atomic_t], %struct.blkg_rwstat, %struct.blkg_rwstat }
%struct.blkg_policy_data = type { ptr, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.throtl_service_queue = type { ptr, [2 x %struct.list_head], [2 x i32], %struct.rb_root_cached, i32, i32, %struct.timer_list }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.throtl_qnode = type { %struct.list_head, %struct.bio_list, ptr }
%struct.bio_list = type { ptr, ptr }
%struct.blkg_rwstat = type { [5 x %struct.percpu_counter], [5 x %struct.atomic64_t] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.blkcg_gq = type { ptr, %struct.list_head, %struct.hlist_node, ptr, ptr, %struct.percpu_ref, i8, ptr, %struct.blkg_iostat_set, [6 x ptr], %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, i64, i32, %struct.callback_head }
%struct.blkg_iostat_set = type { %struct.u64_stats_sync, %struct.blkg_iostat, %struct.blkg_iostat }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.blkg_iostat = type { [3 x i64], [3 x i64] }
%struct.throtl_data = type { %struct.throtl_service_queue, ptr, [2 x i32], i32, %struct.work_struct, i32, [2 x i8], i32, i32, i32, [2 x [9 x %struct.latency_bucket]], [2 x [9 x %struct.avg_latency_bucket]], [2 x ptr], i32, i32, i8 }
%struct.latency_bucket = type { i32, i32 }
%struct.avg_latency_bucket = type { i32, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.blk_trace = type { i32, ptr, ptr, ptr, i16, i64, i64, i32, i32, ptr, %struct.list_head, %struct.atomic_t }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.40, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.41, %union.anon.42, %union.anon.43, %union.anon.48, ptr, ptr }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%union.anon.42 = type { %struct.rb_node }
%union.anon.43 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, %struct.list_head, ptr }
%union.anon.48 = type { i64, [8 x i8] }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.38, ptr, i64, i16, i16, ptr }
%union.anon.38 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.blkg_conf_ctx = type { ptr, ptr, ptr }
%struct.blkg_rwstat_sample = type { [5 x i64] }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }

@throtl_files = internal global { [3 x %struct.cftype], [120 x i8] } { [3 x %struct.cftype] [%struct.cftype { [64 x i8] c"low\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_print_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_set_limit, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_print_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_set_limit, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [120 x i8] zeroinitializer }, align 32
@throtl_legacy_files = internal global { [9 x %struct.cftype], [328 x i8] } { [9 x %struct.cftype] [%struct.cftype { [64 x i8] c"throttle.read_bps_device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 216, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_print_conf_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_set_conf_u64, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"throttle.write_bps_device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 232, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_print_conf_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_set_conf_u64, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"throttle.read_iops_device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 276, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_print_conf_uint, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_set_conf_uint, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"throttle.write_iops_device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 284, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_print_conf_uint, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_set_conf_uint, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"throttle.io_service_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 440, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_print_rwstat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"throttle.io_service_bytes_recursive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 440, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_print_rwstat_recursive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"throttle.io_serviced\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 840, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_print_rwstat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"throttle.io_serviced_recursive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 840, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tg_print_rwstat_recursive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [328 x i8] zeroinitializer }, align 32
@blkcg_policy_throtl = dso_local global { %struct.blkcg_policy, [40 x i8] } { %struct.blkcg_policy { i32 0, ptr @throtl_files, ptr @throtl_legacy_files, ptr null, ptr null, ptr null, ptr null, ptr @throtl_pd_alloc, ptr @throtl_pd_init, ptr @throtl_pd_online, ptr @throtl_pd_offline, ptr @throtl_pd_free, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@io_cgrp_subsys_on_dfl_key = external dso_local global %struct.static_key_true, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__blk_throtl_bio.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"block/blk-throttle.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"throtl [%c] bio. bdisp=%llu sz=%u bps=%llu iodisp=%u iops=%u queued=%d/%d\00", [54 x i8] zeroinitializer }, align 32
@__blk_throtl_bio.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@blk_throtl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&td->dispatch_work)\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__initcall__kmod_blk_throttle__386_2379_throtl_init6 = internal global ptr @throtl_init, section ".initcall6.init", align 4
@__const.tg_prfill_limit.bufs = private unnamed_addr constant [4 x [21 x i8]] [[21 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [21 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [21 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [21 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" idle=max\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" idle=%lu\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" latency=max\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" latency=%lu\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s rbps=%s wbps=%s riops=%s wiops=%s%s%s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%26s%n\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"=\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rbps\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wbps\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"riops\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wiops\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"latency\00", [24 x i8] zeroinitializer }, align 32
@blkcg_root = external dso_local global %struct.blkcg, align 8
@__blkg_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/blk-cgroup.h\00", [37 x i8] zeroinitializer }, align 32
@tg_conf_updated.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"throtl limit change rbps=%llu wbps=%llu riops=%u wiops=%u\00", [38 x i8] zeroinitializer }, align 32
@tg_conf_updated.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@throtl_start_new_slice.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"throtl [%c] new slice start=%lu end=%lu jiffies=%lu\00", [44 x i8] zeroinitializer }, align 32
@throtl_start_new_slice.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@throtl_update_latency_buckets.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"throtl Latency bucket %d: read latency=%ld, read valid=%d, write latency=%ld, write valid=%d\00", [35 x i8] zeroinitializer }, align 32
@throtl_update_latency_buckets.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@throtl_tg_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"throtl avg_idle=%ld, idle_threshold=%ld, bad_bio=%d, total_bio=%d, is_idle=%d, scale=%d\00", [40 x i8] zeroinitializer }, align 32
@throtl_tg_is_idle.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@throtl_downgrade_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"throtl downgrade, scale %d\00", [37 x i8] zeroinitializer }, align 32
@throtl_downgrade_state.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@throtl_peek_queued.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@throtl_extend_slice.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"throtl [%c] extend slice start=%lu end=%lu jiffies=%lu\00", [41 x i8] zeroinitializer }, align 32
@throtl_extend_slice.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@throtl_upgrade_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"throtl upgrade to max\00", [42 x i8] zeroinitializer }, align 32
@throtl_upgrade_state.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kthrotld_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@throtl_rb_first.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@throtl_pop_queued.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@throtl_start_new_slice_with_credit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"throtl [%c] new slice with credit start=%lu end=%lu jiffies=%lu\00", [32 x i8] zeroinitializer }, align 32
@throtl_start_new_slice_with_credit.__warned.40 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@throtl_trim_slice.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"throtl [%c] trim slice nr=%lu bytes=%llu io=%lu start=%lu end=%lu jiffies=%lu\00", [50 x i8] zeroinitializer }, align 32
@throtl_trim_slice.__warned.42 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@blk_trace_note_message_enabled.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/blktrace_api.h\00", [35 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@throtl_schedule_pending_timer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"throtl schedule timer. delay=%lu jiffies=%lu\00", [51 x i8] zeroinitializer }, align 32
@throtl_schedule_pending_timer.__warned.46 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@throtl_service_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&sq->pending_timer)\00", [43 x i8] zeroinitializer }, align 32
@throtl_pending_timer_fn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"throtl dispatch nr_queued=%u read=%u write=%u\00", [50 x i8] zeroinitializer }, align 32
@throtl_pending_timer_fn.__warned.49 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@throtl_pending_timer_fn.__warned.50 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"throtl bios disp=%u\00", [44 x i8] zeroinitializer }, align 32
@throtl_pending_timer_fn.__warned.52 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kthrotld\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to create kthrotld\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"throtl_files\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1624, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c"throtl_legacy_files\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1390, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"blkcg_policy_throtl\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1651, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2141, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2283, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2349, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1470, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1476, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1483, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1485, i32 43 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1489, i32 25 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1492, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1495, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1539, i32 24 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1547, i32 14 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1548, i32 56 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1556, i32 20 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1558, i32 25 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1560, i32 25 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1562, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1564, i32 45 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1566, i32 45 }
@___asan_gen_.131 = private unnamed_addr constant [30 x i8] c"../include/linux/blk-cgroup.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 340, i32 9 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1269, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 664, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 695, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2032, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1720, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1843, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 680, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1820, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"kthrotld_workqueue\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 43, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 649, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 749, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [32 x i8] c"../include/linux/blktrace_api.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 70, i32 7 }
@___asan_gen_.173 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 723, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 590, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 341, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1151, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1157, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2372, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [24 x i8] c"../block/blk-throttle.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2374, i32 9 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__initcall__kmod_blk_throttle__386_2379_throtl_init6, ptr @throtl_files, ptr @throtl_legacy_files, ptr @blkcg_policy_throtl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @blk_throtl_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @kthrotld_workqueue, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @throtl_service_queue_init.__key, ptr @.str.47, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @throtl_files to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @throtl_legacy_files to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_policy_throtl to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_throtl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kthrotld_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @throtl_service_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @throtl_pd_alloc(i32 noundef %gfp, ptr nocapture noundef readnone %q, ptr nocapture noundef readnone %blkcg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc_node.exit_crit_edge, label %if.end.i.i.i, !prof !137

entry.kzalloc_node.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %kzalloc_node.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc_node.exit_crit_edge

if.end.i.i.i.kzalloc_node.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc_node.exit_crit_edge, %entry.kzalloc_node.exit_crit_edge
  %retval.0.i1.i.i = phi i32 [ 0, %entry.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i1.i.i, i32 11
  %0 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 1240) #19
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kzalloc_node.exit.cleanup_crit_edge, label %if.end

kzalloc_node.exit.cleanup_crit_edge:              ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %kzalloc_node.exit
  %stat_bytes = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 33
  %call1 = tail call i32 @blkg_rwstat_init(ptr noundef %stat_bytes, i32 noundef %gfp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_free_tg_crit_edge

if.end.err_free_tg_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_tg

if.end4:                                          ; preds = %if.end
  %stat_ios = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 34
  %call5 = tail call i32 @blkg_rwstat_init(ptr noundef %stat_ios, i32 noundef %gfp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %err_exit_stat_bytes

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %queued.i = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %queued.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queued.i, ptr %queued.i, align 4
  %prev.i.i = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queued.i, ptr %prev.i.i, align 8
  %arrayidx2.i = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %arrayidx2.i, ptr %arrayidx2.i, align 4
  %prev.i6.i = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 3, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i6.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx2.i, ptr %prev.i6.i, align 8
  %pending_tree.i = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %pending_tree.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pending_tree.i, align 4
  %.compoundliteral.sroa.2.0.pending_tree.sroa_idx.i = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 3, i32 3, i32 1
  %7 = ptrtoint ptr %.compoundliteral.sroa.2.0.pending_tree.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %.compoundliteral.sroa.2.0.pending_tree.sroa_idx.i, align 8
  %pending_timer.i = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 3, i32 6
  tail call void @init_timer_key(ptr noundef %pending_timer.i, ptr noundef nonnull @throtl_pending_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @throtl_service_queue_init.__key) #16
  %arrayidx = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 4, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i.i62 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i62 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %prev.i.i62, align 8
  %bios.i = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 4, i32 0, i32 1
  %tail.i.i = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tail.i.i, align 8
  %11 = ptrtoint ptr %bios.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bios.i, align 4
  %tg1.i = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 4, i32 0, i32 2
  %12 = ptrtoint ptr %tg1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i.i, ptr %tg1.i, align 4
  %arrayidx9 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 5, i32 0
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx9, ptr %arrayidx9, align 4
  %prev.i.i63 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx9, ptr %prev.i.i63, align 8
  %bios.i64 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 1
  %tail.i.i65 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %tail.i.i65 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tail.i.i65, align 8
  %16 = ptrtoint ptr %bios.i64 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bios.i64, align 4
  %tg1.i66 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 5, i32 0, i32 2
  %17 = ptrtoint ptr %tg1.i66 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i.i, ptr %tg1.i66, align 4
  %arrayidx.1 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 8
  %prev.i.i62.1 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 4, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i62.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.1, ptr %prev.i.i62.1, align 4
  %bios.i.1 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 4, i32 1, i32 1
  %tail.i.i.1 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 4, i32 1, i32 1, i32 1
  %20 = ptrtoint ptr %tail.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tail.i.i.1, align 4
  %21 = ptrtoint ptr %bios.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bios.i.1, align 8
  %tg1.i.1 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 4, i32 1, i32 2
  %22 = ptrtoint ptr %tg1.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i.i, ptr %tg1.i.1, align 8
  %arrayidx9.1 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx9.1, ptr %arrayidx9.1, align 8
  %prev.i.i63.1 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 5, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i63.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx9.1, ptr %prev.i.i63.1, align 4
  %bios.i64.1 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 5, i32 1, i32 1
  %tail.i.i65.1 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 5, i32 1, i32 1, i32 1
  %25 = ptrtoint ptr %tail.i.i65.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %tail.i.i65.1, align 4
  %26 = ptrtoint ptr %bios.i64.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %bios.i64.1, align 8
  %tg1.i66.1 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 5, i32 1, i32 2
  %27 = ptrtoint ptr %tg1.i66.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i.i, ptr %tg1.i66.1, align 8
  %rb_node = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %rb_node to i32
  %29 = ptrtoint ptr %rb_node to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rb_node, align 8
  %arrayidx12 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 9, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %arrayidx12, align 8
  %arrayidx15 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 9, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 11, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %arrayidx17, align 4
  %arrayidx20 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 11, i32 1, i32 1
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %arrayidx20, align 4
  %arrayidx22 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 10, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %arrayidx22, align 8
  %arrayidx25 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 10, i32 1, i32 1
  %35 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %arrayidx25, align 8
  %arrayidx27 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 12, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %arrayidx27, align 4
  %arrayidx30 = getelementptr %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 12, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %arrayidx30, align 4
  %latency_target = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 19
  %38 = ptrtoint ptr %latency_target to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %latency_target, align 4
  %latency_target_conf = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 20
  %39 = ptrtoint ptr %latency_target_conf to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %latency_target_conf, align 8
  %idletime_threshold = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 26
  %40 = ptrtoint ptr %idletime_threshold to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %idletime_threshold, align 8
  %idletime_threshold_conf = getelementptr inbounds %struct.throtl_grp, ptr %call.i.i.i, i32 0, i32 27
  %41 = ptrtoint ptr %idletime_threshold_conf to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %idletime_threshold_conf, align 4
  br label %cleanup

err_exit_stat_bytes:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @blkg_rwstat_exit(ptr noundef %stat_bytes) #16
  br label %err_free_tg

err_free_tg:                                      ; preds = %err_exit_stat_bytes, %if.end.err_free_tg_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %err_free_tg, %if.end8, %kzalloc_node.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_free_tg ], [ %call.i.i.i, %if.end8 ], [ null, %kzalloc_node.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @throtl_pd_init(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %pd, null
  br i1 %tobool.not.i.i, label %entry.tg_to_blkg.exit_crit_edge, label %cond.true.i.i

entry.tg_to_blkg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %tg_to_blkg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  br label %tg_to_blkg.exit

tg_to_blkg.exit:                                  ; preds = %cond.true.i.i, %entry.tg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %1, %cond.true.i.i ], [ null, %entry.tg_to_blkg.exit_crit_edge ]
  %2 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond.i.i, align 8
  %td2 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 56
  %4 = ptrtoint ptr %td2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %td2, align 8
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 3
  %6 = ptrtoint ptr %service_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %service_queue, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @io_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@throtl_pd_init, %if.end)) #16
          to label %land.lhs.true [label %if.end], !srcloc !138

land.lhs.true:                                    ; preds = %tg_to_blkg.exit
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %blkg_to_tg.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

blkg_to_tg.exit:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %9 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %8, i32 0, i32 9, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %service_queue11 = getelementptr inbounds %struct.throtl_grp, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %service_queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %service_queue11, ptr %service_queue, align 4
  br label %if.end

if.end:                                           ; preds = %blkg_to_tg.exit, %land.lhs.true.if.end_crit_edge, %tg_to_blkg.exit
  %td13 = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 2
  %13 = ptrtoint ptr %td13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %td13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @throtl_pd_online(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tg_update_has_rules(ptr noundef %pd)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @throtl_pd_offline(ptr nocapture noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bps = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 9
  %0 = ptrtoint ptr %bps to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %bps, align 8
  %arrayidx3 = getelementptr %struct.throtl_grp, ptr %pd, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %arrayidx3, align 8
  %iops = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 11
  %2 = ptrtoint ptr %iops to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %iops, align 8
  %arrayidx8 = getelementptr %struct.throtl_grp, ptr %pd, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx8, align 8
  %td = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 2
  %4 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %td, align 4
  tail call fastcc void @blk_throtl_update_limit_valid(ptr noundef %5)
  %6 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %td, align 4
  %limit_index = getelementptr inbounds %struct.throtl_data, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %limit_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limit_index, align 4
  %arrayidx12 = getelementptr %struct.throtl_data, ptr %7, i32 0, i32 6, i32 %9
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @throtl_upgrade_state(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @throtl_pd_free(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_timer = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 3, i32 6
  %call1 = tail call i32 @del_timer_sync(ptr noundef %pending_timer) #16
  %stat_bytes = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 33
  tail call void @blkg_rwstat_exit(ptr noundef %stat_bytes) #16
  %stat_ios = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 34
  tail call void @blkg_rwstat_exit(ptr noundef %stat_ios) #16
  tail call void @kfree(ptr noundef %pd) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_throtl_charge_bio_split(ptr nocapture noundef readonly %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %0 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_blkg, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.blkg_to_tg.exit_crit_edge, label %cond.true.i.i

entry.blkg_to_tg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %1, i32 0, i32 9, i32 %2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_tg.exit

blkg_to_tg.exit:                                  ; preds = %cond.true.i.i, %entry.blkg_to_tg.exit_crit_edge
  %cond.i.i = phi ptr [ %4, %cond.true.i.i ], [ null, %entry.blkg_to_tg.exit_crit_edge ]
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %5 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %6, 1
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.i.do.body_crit_edge, %blkg_to_tg.exit
  %parent.0 = phi ptr [ %cond.i.i, %blkg_to_tg.exit ], [ %add.ptr.i, %land.lhs.true.i.do.body_crit_edge ]
  %arrayidx = getelementptr %struct.throtl_grp, ptr %parent.0, i32 0, i32 8, i32 %and.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end:                                           ; preds = %do.body
  %arrayidx6 = getelementptr %struct.throtl_grp, ptr %parent.0, i32 0, i32 31, i32 %and.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx6, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %arrayidx6, i32 1, i32 3, i32 1) #16
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx6, ptr %arrayidx6, i32 1, ptr elementtype(i32) %arrayidx6) #16, !srcloc !140
  %arrayidx9 = getelementptr %struct.throtl_grp, ptr %parent.0, i32 0, i32 32, i32 %and.i
  %call.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %arrayidx9, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx9, ptr %arrayidx9, i32 1, ptr elementtype(i32) %arrayidx9) #16, !srcloc !140
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %parent.0, i32 0, i32 3
  %11 = ptrtoint ptr %service_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %service_queue, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %land.lhs.true.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.end
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  %add.ptr.i = getelementptr i8, ptr %12, i32 -24
  %tobool12.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %tobool1.not.i, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %land.lhs.true.i.do.end_crit_edge, label %land.lhs.true.i.do.body_crit_edge

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.i.do.end_crit_edge, %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__blk_throtl_bio(ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  %avg_latency.i = alloca [2 x [9 x %struct.avg_latency_bucket]], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i, align 4
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %4 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_blkg, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.blkg_to_tg.exit_crit_edge, label %cond.true.i.i

entry.blkg_to_tg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %5, i32 0, i32 9, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_tg.exit

blkg_to_tg.exit:                                  ; preds = %cond.true.i.i, %entry.blkg_to_tg.exit_crit_edge
  %cond.i.i = phi ptr [ %8, %cond.true.i.i ], [ null, %entry.blkg_to_tg.exit_crit_edge ]
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %9 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %td3 = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %td3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %td3, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %blkg_to_tg.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

blkg_to_tg.exit.rcu_read_lock.exit_crit_edge:     ; preds = %blkg_to_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %blkg_to_tg.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %blkg_to_tg.exit.rcu_read_lock.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @io_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@__blk_throtl_bio, %if.then)) #16
          to label %if.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %rcu_read_lock.exit
  %17 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_size, align 8
  %conv = zext i32 %20 to i64
  %and.i.i = and i32 %18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %if.then.i304, label %if.else.i

if.then.i304:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 33, i32 0, i32 4
  br label %blkg_rwstat_add.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %stat_bytes = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 33
  %and.i25.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.i.not.i = icmp eq i32 %and.i25.i, 0
  %arrayidx4.i = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 33, i32 0, i32 1
  %spec.select.i = select i1 %tobool.i.not.i, ptr %stat_bytes, ptr %arrayidx4.i
  br label %blkg_rwstat_add.exit

blkg_rwstat_add.exit:                             ; preds = %if.else.i, %if.then.i304
  %cnt.0.i = phi ptr [ %arrayidx.i, %if.then.i304 ], [ %spec.select.i, %if.else.i ]
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.0.i, i64 noundef %conv, i32 noundef 1073741823) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i27.i = icmp eq i32 %and.i.i, 0
  %21 = and i32 %18, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i28.i = icmp ne i32 %21, 0
  %22 = or i1 %cmp.i27.i, %tobool.i28.i
  %arrayidx12.i = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 33, i32 0, i32 2
  %arrayidx15.i = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 33, i32 0, i32 3
  %cnt.1.i = select i1 %22, ptr %arrayidx12.i, ptr %arrayidx15.i
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.1.i, i64 noundef %conv, i32 noundef 1073741823) #16
  %23 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_opf, align 8
  %and.i.i305 = and i32 %24, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i305)
  %cmp.i.i306 = icmp eq i32 %and.i.i305, 3
  br i1 %cmp.i.i306, label %if.then.i308, label %if.else.i313

if.then.i308:                                     ; preds = %blkg_rwstat_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i307 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 34, i32 0, i32 4
  br label %blkg_rwstat_add.exit320

if.else.i313:                                     ; preds = %blkg_rwstat_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  %stat_ios = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 34
  %and.i25.i309 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i309)
  %tobool.i.not.i310 = icmp eq i32 %and.i25.i309, 0
  %arrayidx4.i311 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 34, i32 0, i32 1
  %spec.select.i312 = select i1 %tobool.i.not.i310, ptr %stat_ios, ptr %arrayidx4.i311
  br label %blkg_rwstat_add.exit320

blkg_rwstat_add.exit320:                          ; preds = %if.else.i313, %if.then.i308
  %cnt.0.i314 = phi ptr [ %arrayidx.i307, %if.then.i308 ], [ %spec.select.i312, %if.else.i313 ]
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.0.i314, i64 noundef 1, i32 noundef 1073741823) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i305)
  %cmp.i27.i315 = icmp eq i32 %and.i.i305, 0
  %25 = and i32 %24, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i28.i316 = icmp ne i32 %25, 0
  %26 = or i1 %cmp.i27.i315, %tobool.i28.i316
  %arrayidx12.i317 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 34, i32 0, i32 2
  %arrayidx15.i318 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 34, i32 0, i32 3
  %cnt.1.i319 = select i1 %26, ptr %arrayidx12.i317, ptr %arrayidx15.i318
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.1.i319, i64 noundef 1, i32 noundef 1073741823) #16
  br label %if.end

if.end:                                           ; preds = %blkg_rwstat_add.exit320, %rcu_read_lock.exit
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %avg_latency.i) #16
  %queue.i = getelementptr inbounds %struct.throtl_data, ptr %12, i32 0, i32 1
  %27 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queue.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %queue_flags.i, align 4
  %31 = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i321 = icmp eq i32 %31, 0
  br i1 %tobool.not.i321, label %if.end.throtl_update_latency_buckets.exit_crit_edge, label %lor.lhs.false.i

if.end.throtl_update_latency_buckets.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_update_latency_buckets.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %limit_valid.i = getelementptr inbounds %struct.throtl_data, ptr %12, i32 0, i32 6
  %32 = ptrtoint ptr %limit_valid.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %limit_valid.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool1.not.i = icmp eq i8 %33, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.throtl_update_latency_buckets.exit_crit_edge, label %if.end.i

lor.lhs.false.i.throtl_update_latency_buckets.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_update_latency_buckets.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %last_calculate_time.i = getelementptr inbounds %struct.throtl_data, ptr %12, i32 0, i32 13
  %35 = ptrtoint ptr %last_calculate_time.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_calculate_time.i, align 4
  %add.neg.i = add i32 %34, -100
  %sub.i = sub i32 %add.neg.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.throtl_update_latency_buckets.exit_crit_edge, label %if.end3.i

if.end.i.throtl_update_latency_buckets.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_update_latency_buckets.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %38 = ptrtoint ptr %last_calculate_time.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %last_calculate_time.i, align 4
  %39 = call ptr @memset(ptr %avg_latency.i, i32 0, i32 144)
  %arrayidx16.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 12, i32 0
  br label %for.body8.i

for.body8.i:                                      ; preds = %cleanup49.i.for.body8.i_crit_edge, %if.end3.i
  %i.0399.i = phi i32 [ 0, %if.end3.i ], [ %inc.i, %cleanup49.i.for.body8.i_crit_edge ]
  %arrayidx10.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 10, i32 0, i32 %i.0399.i
  %call12396.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12396.i, i32 %40)
  %cmp13397.i = icmp ult i32 %call12396.i, %40
  br i1 %cmp13397.i, label %for.body14.lr.ph.i, label %for.body8.i.for.end.i_crit_edge

for.body8.i.for.end.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body14.lr.ph.i:                               ; preds = %for.body8.i
  %samples24.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 10, i32 0, i32 %i.0399.i, i32 1
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.body14.lr.ph.i
  %call12398.i = phi i32 [ %call12396.i, %for.body14.lr.ph.i ], [ %call12.i, %for.body14.i.for.body14.i_crit_edge ]
  %41 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx16.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %arrayidx18.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call12398.i
  %44 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %45, %43
  %46 = inttoptr i32 %add19.i to ptr
  %arrayidx20.i = getelementptr %struct.latency_bucket, ptr %46, i32 %i.0399.i
  %47 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx20.i, align 4
  %49 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx10.i, align 4
  %add22.i = add i32 %50, %48
  store i32 %add22.i, ptr %arrayidx10.i, align 4
  %samples.i = getelementptr %struct.latency_bucket, ptr %46, i32 %i.0399.i, i32 1
  %51 = ptrtoint ptr %samples.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %samples.i, align 4
  %53 = ptrtoint ptr %samples24.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %samples24.i, align 4
  %add25.i = add i32 %54, %52
  store i32 %add25.i, ptr %samples24.i, align 4
  store i32 0, ptr %arrayidx20.i, align 4
  store i32 0, ptr %samples.i, align 4
  %call12.i = tail call i32 @cpumask_next(i32 noundef %call12398.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %55 = load i32, ptr @nr_cpu_ids, align 4
  %cmp13.i = icmp ult i32 %call12.i, %55
  br i1 %cmp13.i, label %for.body14.i.for.body14.i_crit_edge, label %for.body14.i.for.end.i_crit_edge

for.body14.i.for.end.i_crit_edge:                 ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body14.i

for.end.i:                                        ; preds = %for.body14.i.for.end.i_crit_edge, %for.body8.i.for.end.i_crit_edge
  %samples30.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 10, i32 0, i32 %i.0399.i, i32 1
  %56 = ptrtoint ptr %samples30.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %samples30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %57)
  %cmp31.i = icmp sgt i32 %57, 31
  br i1 %cmp31.i, label %if.then32.i, label %for.end.i.cleanup49.i_crit_edge

for.end.i.cleanup49.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49.i

if.then32.i:                                      ; preds = %for.end.i
  %58 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx10.i, align 4
  store i32 0, ptr %arrayidx10.i, align 4
  %60 = ptrtoint ptr %samples30.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %samples30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp41.i = icmp ugt i32 %57, %59
  br i1 %cmp41.i, label %if.then32.i.cleanup49.i_crit_edge, label %if.end43.i

if.then32.i.cleanup49.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49.i

if.end43.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #18
  %div.i = udiv i32 %59, %57
  %arrayidx46.i = getelementptr [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 0, i32 %i.0399.i
  %61 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div.i, ptr %arrayidx46.i, align 4
  br label %cleanup49.i

cleanup49.i:                                      ; preds = %if.end43.i, %if.then32.i.cleanup49.i_crit_edge, %for.end.i.cleanup49.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0399.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.inc53.i, label %cleanup49.i.for.body8.i_crit_edge

cleanup49.i.for.body8.i_crit_edge:                ; preds = %cleanup49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body8.i

for.inc53.i:                                      ; preds = %cleanup49.i
  %arrayidx16.1.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 12, i32 1
  br label %for.body8.1.i

for.body8.1.i:                                    ; preds = %cleanup49.1.i.for.body8.1.i_crit_edge, %for.inc53.i
  %i.0399.1.i = phi i32 [ 0, %for.inc53.i ], [ %inc.1.i, %cleanup49.1.i.for.body8.1.i_crit_edge ]
  %arrayidx10.1.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 10, i32 1, i32 %i.0399.1.i
  %call12396.1.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %62 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12396.1.i, i32 %62)
  %cmp13397.1.i = icmp ult i32 %call12396.1.i, %62
  br i1 %cmp13397.1.i, label %for.body14.lr.ph.1.i, label %for.body8.1.i.for.end.1.i_crit_edge

for.body8.1.i.for.end.1.i_crit_edge:              ; preds = %for.body8.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.1.i

for.body14.lr.ph.1.i:                             ; preds = %for.body8.1.i
  %samples24.1.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 10, i32 1, i32 %i.0399.1.i, i32 1
  br label %for.body14.1.i

for.body14.1.i:                                   ; preds = %for.body14.1.i.for.body14.1.i_crit_edge, %for.body14.lr.ph.1.i
  %call12398.1.i = phi i32 [ %call12396.1.i, %for.body14.lr.ph.1.i ], [ %call12.1.i, %for.body14.1.i.for.body14.1.i_crit_edge ]
  %63 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx16.1.i, align 4
  %65 = ptrtoint ptr %64 to i32
  %arrayidx18.1.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call12398.1.i
  %66 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx18.1.i, align 4
  %add19.1.i = add i32 %67, %65
  %68 = inttoptr i32 %add19.1.i to ptr
  %arrayidx20.1.i = getelementptr %struct.latency_bucket, ptr %68, i32 %i.0399.1.i
  %69 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx20.1.i, align 4
  %71 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx10.1.i, align 4
  %add22.1.i = add i32 %72, %70
  store i32 %add22.1.i, ptr %arrayidx10.1.i, align 4
  %samples.1.i = getelementptr %struct.latency_bucket, ptr %68, i32 %i.0399.1.i, i32 1
  %73 = ptrtoint ptr %samples.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %samples.1.i, align 4
  %75 = ptrtoint ptr %samples24.1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %samples24.1.i, align 4
  %add25.1.i = add i32 %76, %74
  store i32 %add25.1.i, ptr %samples24.1.i, align 4
  store i32 0, ptr %arrayidx20.1.i, align 4
  store i32 0, ptr %samples.1.i, align 4
  %call12.1.i = tail call i32 @cpumask_next(i32 noundef %call12398.1.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %77 = load i32, ptr @nr_cpu_ids, align 4
  %cmp13.1.i = icmp ult i32 %call12.1.i, %77
  br i1 %cmp13.1.i, label %for.body14.1.i.for.body14.1.i_crit_edge, label %for.body14.1.i.for.end.1.i_crit_edge

for.body14.1.i.for.end.1.i_crit_edge:             ; preds = %for.body14.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.1.i

for.body14.1.i.for.body14.1.i_crit_edge:          ; preds = %for.body14.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body14.1.i

for.end.1.i:                                      ; preds = %for.body14.1.i.for.end.1.i_crit_edge, %for.body8.1.i.for.end.1.i_crit_edge
  %samples30.1.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 10, i32 1, i32 %i.0399.1.i, i32 1
  %78 = ptrtoint ptr %samples30.1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %samples30.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %79)
  %cmp31.1.i = icmp sgt i32 %79, 31
  br i1 %cmp31.1.i, label %if.then32.1.i, label %for.end.1.i.cleanup49.1.i_crit_edge

for.end.1.i.cleanup49.1.i_crit_edge:              ; preds = %for.end.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49.1.i

if.then32.1.i:                                    ; preds = %for.end.1.i
  %80 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx10.1.i, align 4
  store i32 0, ptr %arrayidx10.1.i, align 4
  %82 = ptrtoint ptr %samples30.1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %samples30.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp41.1.i = icmp ugt i32 %79, %81
  br i1 %cmp41.1.i, label %if.then32.1.i.cleanup49.1.i_crit_edge, label %if.end43.1.i

if.then32.1.i.cleanup49.1.i_crit_edge:            ; preds = %if.then32.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49.1.i

if.end43.1.i:                                     ; preds = %if.then32.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %div.1.i = udiv i32 %81, %79
  %arrayidx46.1.i = getelementptr [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 1, i32 %i.0399.1.i
  %83 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %div.1.i, ptr %arrayidx46.1.i, align 4
  br label %cleanup49.1.i

cleanup49.1.i:                                    ; preds = %if.end43.1.i, %if.then32.1.i.cleanup49.1.i_crit_edge, %for.end.1.i.cleanup49.1.i_crit_edge
  %inc.1.i = add nuw nsw i32 %i.0399.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 9
  br i1 %exitcond.1.not.i, label %for.body61.i.preheader, label %cleanup49.1.i.for.body8.1.i_crit_edge

cleanup49.1.i.for.body8.1.i_crit_edge:            ; preds = %cleanup49.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body8.1.i

for.body61.i.preheader:                           ; preds = %cleanup49.1.i
  %84 = ptrtoint ptr %avg_latency.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %avg_latency.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool65.not.i = icmp eq i32 %85, 0
  %arrayidx68.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 0
  br i1 %tobool65.not.i, label %for.body61.i.preheader.for.inc116.i_crit_edge, label %if.end79.i

for.body61.i.preheader.for.inc116.i_crit_edge:    ; preds = %for.body61.i.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.i

if.end79.i:                                       ; preds = %for.body61.i.preheader
  %valid.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %valid.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool83.not.i = icmp eq i8 %87, 0
  br i1 %tobool83.not.i, label %if.end79.i.if.end98.i_crit_edge, label %if.else.i322

if.end79.i.if.end98.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.i

if.else.i322:                                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  %88 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx68.i, align 4
  %mul.i = mul i32 %89, 7
  %add96.i = add i32 %mul.i, %85
  %shr.i = lshr i32 %add96.i, 3
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.else.i322, %if.end79.i.if.end98.i_crit_edge
  %latency.sroa.0.0.i = phi i32 [ %shr.i, %if.else.i322 ], [ %85, %if.end79.i.if.end98.i_crit_edge ]
  %90 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %latency.sroa.0.0.i, ptr %arrayidx68.i, align 4
  %91 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %valid.i, align 4
  br label %for.inc116.i

for.inc116.i:                                     ; preds = %if.end98.i, %for.body61.i.preheader.for.inc116.i_crit_edge
  %last_latency.sroa.0.1.i = phi i32 [ %latency.sroa.0.0.i, %if.end98.i ], [ 0, %for.body61.i.preheader.for.inc116.i_crit_edge ]
  %arrayidx63.i.1 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx63.i.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx63.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool65.not.i.1 = icmp eq i32 %93, 0
  %arrayidx68.i.1 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 1
  br i1 %tobool65.not.i.1, label %if.then66.i.1, label %if.end79.i.1

if.end79.i.1:                                     ; preds = %for.inc116.i
  %valid.i.1 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %valid.i.1 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %valid.i.1, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool83.not.i.1 = icmp eq i8 %95, 0
  br i1 %tobool83.not.i.1, label %if.end79.i.1.if.end98.i.1_crit_edge, label %if.else.i322.1

if.end79.i.1.if.end98.i.1_crit_edge:              ; preds = %if.end79.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.i.1

if.else.i322.1:                                   ; preds = %if.end79.i.1
  call void @__sanitizer_cov_trace_pc() #18
  %96 = ptrtoint ptr %arrayidx68.i.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx68.i.1, align 4
  %mul.i.1 = mul i32 %97, 7
  %add96.i.1 = add i32 %mul.i.1, %93
  %shr.i.1 = lshr i32 %add96.i.1, 3
  br label %if.end98.i.1

if.end98.i.1:                                     ; preds = %if.else.i322.1, %if.end79.i.1.if.end98.i.1_crit_edge
  %latency.sroa.0.0.i.1 = phi i32 [ %shr.i.1, %if.else.i322.1 ], [ %93, %if.end79.i.1.if.end98.i.1_crit_edge ]
  %98 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.0.0.i.1, i32 %last_latency.sroa.0.1.i) #16
  %99 = ptrtoint ptr %arrayidx68.i.1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx68.i.1, align 4
  %100 = ptrtoint ptr %valid.i.1 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %valid.i.1, align 4
  br label %for.inc116.i.1

if.then66.i.1:                                    ; preds = %for.inc116.i
  %101 = ptrtoint ptr %arrayidx68.i.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx68.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %last_latency.sroa.0.1.i)
  %cmp71.i.1 = icmp ult i32 %102, %last_latency.sroa.0.1.i
  br i1 %cmp71.i.1, label %if.then72.i.1, label %if.then66.i.1.for.inc116.i.1_crit_edge

if.then66.i.1.for.inc116.i.1_crit_edge:           ; preds = %if.then66.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.i.1

if.then72.i.1:                                    ; preds = %if.then66.i.1
  call void @__sanitizer_cov_trace_pc() #18
  %103 = ptrtoint ptr %arrayidx68.i.1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %last_latency.sroa.0.1.i, ptr %arrayidx68.i.1, align 4
  br label %for.inc116.i.1

for.inc116.i.1:                                   ; preds = %if.then72.i.1, %if.then66.i.1.for.inc116.i.1_crit_edge, %if.end98.i.1
  %last_latency.sroa.0.1.i.1 = phi i32 [ %last_latency.sroa.0.1.i, %if.then72.i.1 ], [ %last_latency.sroa.0.1.i, %if.then66.i.1.for.inc116.i.1_crit_edge ], [ %98, %if.end98.i.1 ]
  %arrayidx63.i.2 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx63.i.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx63.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool65.not.i.2 = icmp eq i32 %105, 0
  %arrayidx68.i.2 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 2
  br i1 %tobool65.not.i.2, label %if.then66.i.2, label %if.end79.i.2

if.end79.i.2:                                     ; preds = %for.inc116.i.1
  %valid.i.2 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %valid.i.2 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %valid.i.2, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool83.not.i.2 = icmp eq i8 %107, 0
  br i1 %tobool83.not.i.2, label %if.end79.i.2.if.end98.i.2_crit_edge, label %if.else.i322.2

if.end79.i.2.if.end98.i.2_crit_edge:              ; preds = %if.end79.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.i.2

if.else.i322.2:                                   ; preds = %if.end79.i.2
  call void @__sanitizer_cov_trace_pc() #18
  %108 = ptrtoint ptr %arrayidx68.i.2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx68.i.2, align 4
  %mul.i.2 = mul i32 %109, 7
  %add96.i.2 = add i32 %mul.i.2, %105
  %shr.i.2 = lshr i32 %add96.i.2, 3
  br label %if.end98.i.2

if.end98.i.2:                                     ; preds = %if.else.i322.2, %if.end79.i.2.if.end98.i.2_crit_edge
  %latency.sroa.0.0.i.2 = phi i32 [ %shr.i.2, %if.else.i322.2 ], [ %105, %if.end79.i.2.if.end98.i.2_crit_edge ]
  %110 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.0.0.i.2, i32 %last_latency.sroa.0.1.i.1) #16
  %111 = ptrtoint ptr %arrayidx68.i.2 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx68.i.2, align 4
  %112 = ptrtoint ptr %valid.i.2 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %valid.i.2, align 4
  br label %for.inc116.i.2

if.then66.i.2:                                    ; preds = %for.inc116.i.1
  %113 = ptrtoint ptr %arrayidx68.i.2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx68.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %last_latency.sroa.0.1.i.1)
  %cmp71.i.2 = icmp ult i32 %114, %last_latency.sroa.0.1.i.1
  br i1 %cmp71.i.2, label %if.then72.i.2, label %if.then66.i.2.for.inc116.i.2_crit_edge

if.then66.i.2.for.inc116.i.2_crit_edge:           ; preds = %if.then66.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.i.2

if.then72.i.2:                                    ; preds = %if.then66.i.2
  call void @__sanitizer_cov_trace_pc() #18
  %115 = ptrtoint ptr %arrayidx68.i.2 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %last_latency.sroa.0.1.i.1, ptr %arrayidx68.i.2, align 4
  br label %for.inc116.i.2

for.inc116.i.2:                                   ; preds = %if.then72.i.2, %if.then66.i.2.for.inc116.i.2_crit_edge, %if.end98.i.2
  %last_latency.sroa.0.1.i.2 = phi i32 [ %last_latency.sroa.0.1.i.1, %if.then72.i.2 ], [ %last_latency.sroa.0.1.i.1, %if.then66.i.2.for.inc116.i.2_crit_edge ], [ %110, %if.end98.i.2 ]
  %arrayidx63.i.3 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 0, i32 3
  %116 = ptrtoint ptr %arrayidx63.i.3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx63.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool65.not.i.3 = icmp eq i32 %117, 0
  %arrayidx68.i.3 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 3
  br i1 %tobool65.not.i.3, label %if.then66.i.3, label %if.end79.i.3

if.end79.i.3:                                     ; preds = %for.inc116.i.2
  %valid.i.3 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 3, i32 1
  %118 = ptrtoint ptr %valid.i.3 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %valid.i.3, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool83.not.i.3 = icmp eq i8 %119, 0
  br i1 %tobool83.not.i.3, label %if.end79.i.3.if.end98.i.3_crit_edge, label %if.else.i322.3

if.end79.i.3.if.end98.i.3_crit_edge:              ; preds = %if.end79.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.i.3

if.else.i322.3:                                   ; preds = %if.end79.i.3
  call void @__sanitizer_cov_trace_pc() #18
  %120 = ptrtoint ptr %arrayidx68.i.3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx68.i.3, align 4
  %mul.i.3 = mul i32 %121, 7
  %add96.i.3 = add i32 %mul.i.3, %117
  %shr.i.3 = lshr i32 %add96.i.3, 3
  br label %if.end98.i.3

if.end98.i.3:                                     ; preds = %if.else.i322.3, %if.end79.i.3.if.end98.i.3_crit_edge
  %latency.sroa.0.0.i.3 = phi i32 [ %shr.i.3, %if.else.i322.3 ], [ %117, %if.end79.i.3.if.end98.i.3_crit_edge ]
  %122 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.0.0.i.3, i32 %last_latency.sroa.0.1.i.2) #16
  %123 = ptrtoint ptr %arrayidx68.i.3 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %arrayidx68.i.3, align 4
  %124 = ptrtoint ptr %valid.i.3 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %valid.i.3, align 4
  br label %for.inc116.i.3

if.then66.i.3:                                    ; preds = %for.inc116.i.2
  %125 = ptrtoint ptr %arrayidx68.i.3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx68.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %last_latency.sroa.0.1.i.2)
  %cmp71.i.3 = icmp ult i32 %126, %last_latency.sroa.0.1.i.2
  br i1 %cmp71.i.3, label %if.then72.i.3, label %if.then66.i.3.for.inc116.i.3_crit_edge

if.then66.i.3.for.inc116.i.3_crit_edge:           ; preds = %if.then66.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.i.3

if.then72.i.3:                                    ; preds = %if.then66.i.3
  call void @__sanitizer_cov_trace_pc() #18
  %127 = ptrtoint ptr %arrayidx68.i.3 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %last_latency.sroa.0.1.i.2, ptr %arrayidx68.i.3, align 4
  br label %for.inc116.i.3

for.inc116.i.3:                                   ; preds = %if.then72.i.3, %if.then66.i.3.for.inc116.i.3_crit_edge, %if.end98.i.3
  %last_latency.sroa.0.1.i.3 = phi i32 [ %last_latency.sroa.0.1.i.2, %if.then72.i.3 ], [ %last_latency.sroa.0.1.i.2, %if.then66.i.3.for.inc116.i.3_crit_edge ], [ %122, %if.end98.i.3 ]
  %arrayidx63.i.4 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 0, i32 4
  %128 = ptrtoint ptr %arrayidx63.i.4 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx63.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool65.not.i.4 = icmp eq i32 %129, 0
  %arrayidx68.i.4 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 4
  br i1 %tobool65.not.i.4, label %if.then66.i.4, label %if.end79.i.4

if.end79.i.4:                                     ; preds = %for.inc116.i.3
  %valid.i.4 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 4, i32 1
  %130 = ptrtoint ptr %valid.i.4 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %valid.i.4, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool83.not.i.4 = icmp eq i8 %131, 0
  br i1 %tobool83.not.i.4, label %if.end79.i.4.if.end98.i.4_crit_edge, label %if.else.i322.4

if.end79.i.4.if.end98.i.4_crit_edge:              ; preds = %if.end79.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.i.4

if.else.i322.4:                                   ; preds = %if.end79.i.4
  call void @__sanitizer_cov_trace_pc() #18
  %132 = ptrtoint ptr %arrayidx68.i.4 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx68.i.4, align 4
  %mul.i.4 = mul i32 %133, 7
  %add96.i.4 = add i32 %mul.i.4, %129
  %shr.i.4 = lshr i32 %add96.i.4, 3
  br label %if.end98.i.4

if.end98.i.4:                                     ; preds = %if.else.i322.4, %if.end79.i.4.if.end98.i.4_crit_edge
  %latency.sroa.0.0.i.4 = phi i32 [ %shr.i.4, %if.else.i322.4 ], [ %129, %if.end79.i.4.if.end98.i.4_crit_edge ]
  %134 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.0.0.i.4, i32 %last_latency.sroa.0.1.i.3) #16
  %135 = ptrtoint ptr %arrayidx68.i.4 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %arrayidx68.i.4, align 4
  %136 = ptrtoint ptr %valid.i.4 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %valid.i.4, align 4
  br label %for.inc116.i.4

if.then66.i.4:                                    ; preds = %for.inc116.i.3
  %137 = ptrtoint ptr %arrayidx68.i.4 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx68.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %last_latency.sroa.0.1.i.3)
  %cmp71.i.4 = icmp ult i32 %138, %last_latency.sroa.0.1.i.3
  br i1 %cmp71.i.4, label %if.then72.i.4, label %if.then66.i.4.for.inc116.i.4_crit_edge

if.then66.i.4.for.inc116.i.4_crit_edge:           ; preds = %if.then66.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.i.4

if.then72.i.4:                                    ; preds = %if.then66.i.4
  call void @__sanitizer_cov_trace_pc() #18
  %139 = ptrtoint ptr %arrayidx68.i.4 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %last_latency.sroa.0.1.i.3, ptr %arrayidx68.i.4, align 4
  br label %for.inc116.i.4

for.inc116.i.4:                                   ; preds = %if.then72.i.4, %if.then66.i.4.for.inc116.i.4_crit_edge, %if.end98.i.4
  %last_latency.sroa.0.1.i.4 = phi i32 [ %last_latency.sroa.0.1.i.3, %if.then72.i.4 ], [ %last_latency.sroa.0.1.i.3, %if.then66.i.4.for.inc116.i.4_crit_edge ], [ %134, %if.end98.i.4 ]
  %arrayidx63.i.5 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 0, i32 5
  %140 = ptrtoint ptr %arrayidx63.i.5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx63.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool65.not.i.5 = icmp eq i32 %141, 0
  %arrayidx68.i.5 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 5
  br i1 %tobool65.not.i.5, label %if.then66.i.5, label %if.end79.i.5

if.end79.i.5:                                     ; preds = %for.inc116.i.4
  %valid.i.5 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 5, i32 1
  %142 = ptrtoint ptr %valid.i.5 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %valid.i.5, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool83.not.i.5 = icmp eq i8 %143, 0
  br i1 %tobool83.not.i.5, label %if.end79.i.5.if.end98.i.5_crit_edge, label %if.else.i322.5

if.end79.i.5.if.end98.i.5_crit_edge:              ; preds = %if.end79.i.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.i.5

if.else.i322.5:                                   ; preds = %if.end79.i.5
  call void @__sanitizer_cov_trace_pc() #18
  %144 = ptrtoint ptr %arrayidx68.i.5 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx68.i.5, align 4
  %mul.i.5 = mul i32 %145, 7
  %add96.i.5 = add i32 %mul.i.5, %141
  %shr.i.5 = lshr i32 %add96.i.5, 3
  br label %if.end98.i.5

if.end98.i.5:                                     ; preds = %if.else.i322.5, %if.end79.i.5.if.end98.i.5_crit_edge
  %latency.sroa.0.0.i.5 = phi i32 [ %shr.i.5, %if.else.i322.5 ], [ %141, %if.end79.i.5.if.end98.i.5_crit_edge ]
  %146 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.0.0.i.5, i32 %last_latency.sroa.0.1.i.4) #16
  %147 = ptrtoint ptr %arrayidx68.i.5 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %arrayidx68.i.5, align 4
  %148 = ptrtoint ptr %valid.i.5 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %valid.i.5, align 4
  br label %for.inc116.i.5

if.then66.i.5:                                    ; preds = %for.inc116.i.4
  %149 = ptrtoint ptr %arrayidx68.i.5 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx68.i.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %last_latency.sroa.0.1.i.4)
  %cmp71.i.5 = icmp ult i32 %150, %last_latency.sroa.0.1.i.4
  br i1 %cmp71.i.5, label %if.then72.i.5, label %if.then66.i.5.for.inc116.i.5_crit_edge

if.then66.i.5.for.inc116.i.5_crit_edge:           ; preds = %if.then66.i.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.i.5

if.then72.i.5:                                    ; preds = %if.then66.i.5
  call void @__sanitizer_cov_trace_pc() #18
  %151 = ptrtoint ptr %arrayidx68.i.5 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %last_latency.sroa.0.1.i.4, ptr %arrayidx68.i.5, align 4
  br label %for.inc116.i.5

for.inc116.i.5:                                   ; preds = %if.then72.i.5, %if.then66.i.5.for.inc116.i.5_crit_edge, %if.end98.i.5
  %last_latency.sroa.0.1.i.5 = phi i32 [ %last_latency.sroa.0.1.i.4, %if.then72.i.5 ], [ %last_latency.sroa.0.1.i.4, %if.then66.i.5.for.inc116.i.5_crit_edge ], [ %146, %if.end98.i.5 ]
  %arrayidx63.i.6 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 0, i32 6
  %152 = ptrtoint ptr %arrayidx63.i.6 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx63.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool65.not.i.6 = icmp eq i32 %153, 0
  %arrayidx68.i.6 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 6
  br i1 %tobool65.not.i.6, label %if.then66.i.6, label %if.end79.i.6

if.end79.i.6:                                     ; preds = %for.inc116.i.5
  %valid.i.6 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 6, i32 1
  %154 = ptrtoint ptr %valid.i.6 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %valid.i.6, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool83.not.i.6 = icmp eq i8 %155, 0
  br i1 %tobool83.not.i.6, label %if.end79.i.6.if.end98.i.6_crit_edge, label %if.else.i322.6

if.end79.i.6.if.end98.i.6_crit_edge:              ; preds = %if.end79.i.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.i.6

if.else.i322.6:                                   ; preds = %if.end79.i.6
  call void @__sanitizer_cov_trace_pc() #18
  %156 = ptrtoint ptr %arrayidx68.i.6 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx68.i.6, align 4
  %mul.i.6 = mul i32 %157, 7
  %add96.i.6 = add i32 %mul.i.6, %153
  %shr.i.6 = lshr i32 %add96.i.6, 3
  br label %if.end98.i.6

if.end98.i.6:                                     ; preds = %if.else.i322.6, %if.end79.i.6.if.end98.i.6_crit_edge
  %latency.sroa.0.0.i.6 = phi i32 [ %shr.i.6, %if.else.i322.6 ], [ %153, %if.end79.i.6.if.end98.i.6_crit_edge ]
  %158 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.0.0.i.6, i32 %last_latency.sroa.0.1.i.5) #16
  %159 = ptrtoint ptr %arrayidx68.i.6 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %arrayidx68.i.6, align 4
  %160 = ptrtoint ptr %valid.i.6 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %valid.i.6, align 4
  br label %for.inc116.i.6

if.then66.i.6:                                    ; preds = %for.inc116.i.5
  %161 = ptrtoint ptr %arrayidx68.i.6 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx68.i.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %last_latency.sroa.0.1.i.5)
  %cmp71.i.6 = icmp ult i32 %162, %last_latency.sroa.0.1.i.5
  br i1 %cmp71.i.6, label %if.then72.i.6, label %if.then66.i.6.for.inc116.i.6_crit_edge

if.then66.i.6.for.inc116.i.6_crit_edge:           ; preds = %if.then66.i.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.i.6

if.then72.i.6:                                    ; preds = %if.then66.i.6
  call void @__sanitizer_cov_trace_pc() #18
  %163 = ptrtoint ptr %arrayidx68.i.6 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %last_latency.sroa.0.1.i.5, ptr %arrayidx68.i.6, align 4
  br label %for.inc116.i.6

for.inc116.i.6:                                   ; preds = %if.then72.i.6, %if.then66.i.6.for.inc116.i.6_crit_edge, %if.end98.i.6
  %last_latency.sroa.0.1.i.6 = phi i32 [ %last_latency.sroa.0.1.i.5, %if.then72.i.6 ], [ %last_latency.sroa.0.1.i.5, %if.then66.i.6.for.inc116.i.6_crit_edge ], [ %158, %if.end98.i.6 ]
  %arrayidx63.i.7 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 0, i32 7
  %164 = ptrtoint ptr %arrayidx63.i.7 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx63.i.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool65.not.i.7 = icmp eq i32 %165, 0
  %arrayidx68.i.7 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 7
  br i1 %tobool65.not.i.7, label %if.then66.i.7, label %if.end79.i.7

if.end79.i.7:                                     ; preds = %for.inc116.i.6
  %valid.i.7 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 7, i32 1
  %166 = ptrtoint ptr %valid.i.7 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %valid.i.7, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool83.not.i.7 = icmp eq i8 %167, 0
  br i1 %tobool83.not.i.7, label %if.end79.i.7.if.end98.i.7_crit_edge, label %if.else.i322.7

if.end79.i.7.if.end98.i.7_crit_edge:              ; preds = %if.end79.i.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.i.7

if.else.i322.7:                                   ; preds = %if.end79.i.7
  call void @__sanitizer_cov_trace_pc() #18
  %168 = ptrtoint ptr %arrayidx68.i.7 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx68.i.7, align 4
  %mul.i.7 = mul i32 %169, 7
  %add96.i.7 = add i32 %mul.i.7, %165
  %shr.i.7 = lshr i32 %add96.i.7, 3
  br label %if.end98.i.7

if.end98.i.7:                                     ; preds = %if.else.i322.7, %if.end79.i.7.if.end98.i.7_crit_edge
  %latency.sroa.0.0.i.7 = phi i32 [ %shr.i.7, %if.else.i322.7 ], [ %165, %if.end79.i.7.if.end98.i.7_crit_edge ]
  %170 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.0.0.i.7, i32 %last_latency.sroa.0.1.i.6) #16
  %171 = ptrtoint ptr %arrayidx68.i.7 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %arrayidx68.i.7, align 4
  %172 = ptrtoint ptr %valid.i.7 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %valid.i.7, align 4
  br label %for.inc116.i.7

if.then66.i.7:                                    ; preds = %for.inc116.i.6
  %173 = ptrtoint ptr %arrayidx68.i.7 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx68.i.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %last_latency.sroa.0.1.i.6)
  %cmp71.i.7 = icmp ult i32 %174, %last_latency.sroa.0.1.i.6
  br i1 %cmp71.i.7, label %if.then72.i.7, label %if.then66.i.7.for.inc116.i.7_crit_edge

if.then66.i.7.for.inc116.i.7_crit_edge:           ; preds = %if.then66.i.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.i.7

if.then72.i.7:                                    ; preds = %if.then66.i.7
  call void @__sanitizer_cov_trace_pc() #18
  %175 = ptrtoint ptr %arrayidx68.i.7 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %last_latency.sroa.0.1.i.6, ptr %arrayidx68.i.7, align 4
  br label %for.inc116.i.7

for.inc116.i.7:                                   ; preds = %if.then72.i.7, %if.then66.i.7.for.inc116.i.7_crit_edge, %if.end98.i.7
  %last_latency.sroa.0.1.i.7 = phi i32 [ %last_latency.sroa.0.1.i.6, %if.then72.i.7 ], [ %last_latency.sroa.0.1.i.6, %if.then66.i.7.for.inc116.i.7_crit_edge ], [ %170, %if.end98.i.7 ]
  %arrayidx63.i.8 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 0, i32 8
  %176 = ptrtoint ptr %arrayidx63.i.8 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx63.i.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool65.not.i.8 = icmp eq i32 %177, 0
  %arrayidx68.i.8 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 8
  br i1 %tobool65.not.i.8, label %if.then66.i.8, label %if.end79.i.8

if.end79.i.8:                                     ; preds = %for.inc116.i.7
  %valid.i.8 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 0, i32 8, i32 1
  %178 = ptrtoint ptr %valid.i.8 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %valid.i.8, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool83.not.i.8 = icmp eq i8 %179, 0
  br i1 %tobool83.not.i.8, label %if.end79.i.8.if.end98.i.8_crit_edge, label %if.else.i322.8

if.end79.i.8.if.end98.i.8_crit_edge:              ; preds = %if.end79.i.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.i.8

if.else.i322.8:                                   ; preds = %if.end79.i.8
  call void @__sanitizer_cov_trace_pc() #18
  %180 = ptrtoint ptr %arrayidx68.i.8 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx68.i.8, align 4
  %mul.i.8 = mul i32 %181, 7
  %add96.i.8 = add i32 %mul.i.8, %177
  %shr.i.8 = lshr i32 %add96.i.8, 3
  br label %if.end98.i.8

if.end98.i.8:                                     ; preds = %if.else.i322.8, %if.end79.i.8.if.end98.i.8_crit_edge
  %latency.sroa.0.0.i.8 = phi i32 [ %shr.i.8, %if.else.i322.8 ], [ %177, %if.end79.i.8.if.end98.i.8_crit_edge ]
  %182 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.0.0.i.8, i32 %last_latency.sroa.0.1.i.7) #16
  %183 = ptrtoint ptr %arrayidx68.i.8 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %arrayidx68.i.8, align 4
  %184 = ptrtoint ptr %valid.i.8 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %valid.i.8, align 4
  br label %for.inc116.i.8

if.then66.i.8:                                    ; preds = %for.inc116.i.7
  %185 = ptrtoint ptr %arrayidx68.i.8 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx68.i.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %last_latency.sroa.0.1.i.7)
  %cmp71.i.8 = icmp ult i32 %186, %last_latency.sroa.0.1.i.7
  br i1 %cmp71.i.8, label %if.then72.i.8, label %if.then66.i.8.for.inc116.i.8_crit_edge

if.then66.i.8.for.inc116.i.8_crit_edge:           ; preds = %if.then66.i.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.i.8

if.then72.i.8:                                    ; preds = %if.then66.i.8
  call void @__sanitizer_cov_trace_pc() #18
  %187 = ptrtoint ptr %arrayidx68.i.8 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %last_latency.sroa.0.1.i.7, ptr %arrayidx68.i.8, align 4
  br label %for.inc116.i.8

for.inc116.i.8:                                   ; preds = %if.then72.i.8, %if.then66.i.8.for.inc116.i.8_crit_edge, %if.end98.i.8
  %arrayidx63.1.i = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 1, i32 0
  %188 = ptrtoint ptr %arrayidx63.1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx63.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool65.not.1.i = icmp eq i32 %189, 0
  %arrayidx68.1.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 0
  br i1 %tobool65.not.1.i, label %for.inc116.i.8.for.inc116.1.i_crit_edge, label %if.end79.1.i

for.inc116.i.8.for.inc116.1.i_crit_edge:          ; preds = %for.inc116.i.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.1.i

if.end79.1.i:                                     ; preds = %for.inc116.i.8
  %valid.1.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 0, i32 1
  %190 = ptrtoint ptr %valid.1.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %valid.1.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool83.not.1.i = icmp eq i8 %191, 0
  br i1 %tobool83.not.1.i, label %if.end79.1.i.if.end98.1.i_crit_edge, label %if.else.1.i

if.end79.1.i.if.end98.1.i_crit_edge:              ; preds = %if.end79.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.1.i

if.else.1.i:                                      ; preds = %if.end79.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %192 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx68.1.i, align 4
  %mul.1.i = mul i32 %193, 7
  %add96.1.i = add i32 %mul.1.i, %189
  %shr.1.i = lshr i32 %add96.1.i, 3
  br label %if.end98.1.i

if.end98.1.i:                                     ; preds = %if.else.1.i, %if.end79.1.i.if.end98.1.i_crit_edge
  %latency.sroa.8.0.i = phi i32 [ %shr.1.i, %if.else.1.i ], [ %189, %if.end79.1.i.if.end98.1.i_crit_edge ]
  %194 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %latency.sroa.8.0.i, ptr %arrayidx68.1.i, align 4
  %195 = ptrtoint ptr %valid.1.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 1, ptr %valid.1.i, align 4
  br label %for.inc116.1.i

for.inc116.1.i:                                   ; preds = %if.end98.1.i, %for.inc116.i.8.for.inc116.1.i_crit_edge
  %last_latency.sroa.6.1.i = phi i32 [ %latency.sroa.8.0.i, %if.end98.1.i ], [ 0, %for.inc116.i.8.for.inc116.1.i_crit_edge ]
  %arrayidx63.1.i.1 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 1, i32 1
  %196 = ptrtoint ptr %arrayidx63.1.i.1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx63.1.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool65.not.1.i.1 = icmp eq i32 %197, 0
  %arrayidx68.1.i.1 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 1
  br i1 %tobool65.not.1.i.1, label %if.then66.1.i.1, label %if.end79.1.i.1

if.end79.1.i.1:                                   ; preds = %for.inc116.1.i
  %valid.1.i.1 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 1, i32 1
  %198 = ptrtoint ptr %valid.1.i.1 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %valid.1.i.1, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool83.not.1.i.1 = icmp eq i8 %199, 0
  br i1 %tobool83.not.1.i.1, label %if.end79.1.i.1.if.end98.1.i.1_crit_edge, label %if.else.1.i.1

if.end79.1.i.1.if.end98.1.i.1_crit_edge:          ; preds = %if.end79.1.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.1.i.1

if.else.1.i.1:                                    ; preds = %if.end79.1.i.1
  call void @__sanitizer_cov_trace_pc() #18
  %200 = ptrtoint ptr %arrayidx68.1.i.1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx68.1.i.1, align 4
  %mul.1.i.1 = mul i32 %201, 7
  %add96.1.i.1 = add i32 %mul.1.i.1, %197
  %shr.1.i.1 = lshr i32 %add96.1.i.1, 3
  br label %if.end98.1.i.1

if.end98.1.i.1:                                   ; preds = %if.else.1.i.1, %if.end79.1.i.1.if.end98.1.i.1_crit_edge
  %latency.sroa.8.0.i.1 = phi i32 [ %shr.1.i.1, %if.else.1.i.1 ], [ %197, %if.end79.1.i.1.if.end98.1.i.1_crit_edge ]
  %202 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.8.0.i.1, i32 %last_latency.sroa.6.1.i) #16
  %203 = ptrtoint ptr %arrayidx68.1.i.1 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %arrayidx68.1.i.1, align 4
  %204 = ptrtoint ptr %valid.1.i.1 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 1, ptr %valid.1.i.1, align 4
  br label %for.inc116.1.i.1

if.then66.1.i.1:                                  ; preds = %for.inc116.1.i
  %205 = ptrtoint ptr %arrayidx68.1.i.1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx68.1.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %last_latency.sroa.6.1.i)
  %cmp71.1.i.1 = icmp ult i32 %206, %last_latency.sroa.6.1.i
  br i1 %cmp71.1.i.1, label %if.then72.1.i.1, label %if.then66.1.i.1.for.inc116.1.i.1_crit_edge

if.then66.1.i.1.for.inc116.1.i.1_crit_edge:       ; preds = %if.then66.1.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.1.i.1

if.then72.1.i.1:                                  ; preds = %if.then66.1.i.1
  call void @__sanitizer_cov_trace_pc() #18
  %207 = ptrtoint ptr %arrayidx68.1.i.1 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %last_latency.sroa.6.1.i, ptr %arrayidx68.1.i.1, align 4
  br label %for.inc116.1.i.1

for.inc116.1.i.1:                                 ; preds = %if.then72.1.i.1, %if.then66.1.i.1.for.inc116.1.i.1_crit_edge, %if.end98.1.i.1
  %last_latency.sroa.6.1.i.1 = phi i32 [ %last_latency.sroa.6.1.i, %if.then72.1.i.1 ], [ %last_latency.sroa.6.1.i, %if.then66.1.i.1.for.inc116.1.i.1_crit_edge ], [ %202, %if.end98.1.i.1 ]
  %arrayidx63.1.i.2 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 1, i32 2
  %208 = ptrtoint ptr %arrayidx63.1.i.2 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx63.1.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool65.not.1.i.2 = icmp eq i32 %209, 0
  %arrayidx68.1.i.2 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 2
  br i1 %tobool65.not.1.i.2, label %if.then66.1.i.2, label %if.end79.1.i.2

if.end79.1.i.2:                                   ; preds = %for.inc116.1.i.1
  %valid.1.i.2 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 2, i32 1
  %210 = ptrtoint ptr %valid.1.i.2 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %valid.1.i.2, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool83.not.1.i.2 = icmp eq i8 %211, 0
  br i1 %tobool83.not.1.i.2, label %if.end79.1.i.2.if.end98.1.i.2_crit_edge, label %if.else.1.i.2

if.end79.1.i.2.if.end98.1.i.2_crit_edge:          ; preds = %if.end79.1.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.1.i.2

if.else.1.i.2:                                    ; preds = %if.end79.1.i.2
  call void @__sanitizer_cov_trace_pc() #18
  %212 = ptrtoint ptr %arrayidx68.1.i.2 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx68.1.i.2, align 4
  %mul.1.i.2 = mul i32 %213, 7
  %add96.1.i.2 = add i32 %mul.1.i.2, %209
  %shr.1.i.2 = lshr i32 %add96.1.i.2, 3
  br label %if.end98.1.i.2

if.end98.1.i.2:                                   ; preds = %if.else.1.i.2, %if.end79.1.i.2.if.end98.1.i.2_crit_edge
  %latency.sroa.8.0.i.2 = phi i32 [ %shr.1.i.2, %if.else.1.i.2 ], [ %209, %if.end79.1.i.2.if.end98.1.i.2_crit_edge ]
  %214 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.8.0.i.2, i32 %last_latency.sroa.6.1.i.1) #16
  %215 = ptrtoint ptr %arrayidx68.1.i.2 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %arrayidx68.1.i.2, align 4
  %216 = ptrtoint ptr %valid.1.i.2 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 1, ptr %valid.1.i.2, align 4
  br label %for.inc116.1.i.2

if.then66.1.i.2:                                  ; preds = %for.inc116.1.i.1
  %217 = ptrtoint ptr %arrayidx68.1.i.2 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx68.1.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %last_latency.sroa.6.1.i.1)
  %cmp71.1.i.2 = icmp ult i32 %218, %last_latency.sroa.6.1.i.1
  br i1 %cmp71.1.i.2, label %if.then72.1.i.2, label %if.then66.1.i.2.for.inc116.1.i.2_crit_edge

if.then66.1.i.2.for.inc116.1.i.2_crit_edge:       ; preds = %if.then66.1.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.1.i.2

if.then72.1.i.2:                                  ; preds = %if.then66.1.i.2
  call void @__sanitizer_cov_trace_pc() #18
  %219 = ptrtoint ptr %arrayidx68.1.i.2 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %last_latency.sroa.6.1.i.1, ptr %arrayidx68.1.i.2, align 4
  br label %for.inc116.1.i.2

for.inc116.1.i.2:                                 ; preds = %if.then72.1.i.2, %if.then66.1.i.2.for.inc116.1.i.2_crit_edge, %if.end98.1.i.2
  %last_latency.sroa.6.1.i.2 = phi i32 [ %last_latency.sroa.6.1.i.1, %if.then72.1.i.2 ], [ %last_latency.sroa.6.1.i.1, %if.then66.1.i.2.for.inc116.1.i.2_crit_edge ], [ %214, %if.end98.1.i.2 ]
  %arrayidx63.1.i.3 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 1, i32 3
  %220 = ptrtoint ptr %arrayidx63.1.i.3 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx63.1.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool65.not.1.i.3 = icmp eq i32 %221, 0
  %arrayidx68.1.i.3 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 3
  br i1 %tobool65.not.1.i.3, label %if.then66.1.i.3, label %if.end79.1.i.3

if.end79.1.i.3:                                   ; preds = %for.inc116.1.i.2
  %valid.1.i.3 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 3, i32 1
  %222 = ptrtoint ptr %valid.1.i.3 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %valid.1.i.3, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool83.not.1.i.3 = icmp eq i8 %223, 0
  br i1 %tobool83.not.1.i.3, label %if.end79.1.i.3.if.end98.1.i.3_crit_edge, label %if.else.1.i.3

if.end79.1.i.3.if.end98.1.i.3_crit_edge:          ; preds = %if.end79.1.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.1.i.3

if.else.1.i.3:                                    ; preds = %if.end79.1.i.3
  call void @__sanitizer_cov_trace_pc() #18
  %224 = ptrtoint ptr %arrayidx68.1.i.3 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx68.1.i.3, align 4
  %mul.1.i.3 = mul i32 %225, 7
  %add96.1.i.3 = add i32 %mul.1.i.3, %221
  %shr.1.i.3 = lshr i32 %add96.1.i.3, 3
  br label %if.end98.1.i.3

if.end98.1.i.3:                                   ; preds = %if.else.1.i.3, %if.end79.1.i.3.if.end98.1.i.3_crit_edge
  %latency.sroa.8.0.i.3 = phi i32 [ %shr.1.i.3, %if.else.1.i.3 ], [ %221, %if.end79.1.i.3.if.end98.1.i.3_crit_edge ]
  %226 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.8.0.i.3, i32 %last_latency.sroa.6.1.i.2) #16
  %227 = ptrtoint ptr %arrayidx68.1.i.3 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %arrayidx68.1.i.3, align 4
  %228 = ptrtoint ptr %valid.1.i.3 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 1, ptr %valid.1.i.3, align 4
  br label %for.inc116.1.i.3

if.then66.1.i.3:                                  ; preds = %for.inc116.1.i.2
  %229 = ptrtoint ptr %arrayidx68.1.i.3 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx68.1.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %last_latency.sroa.6.1.i.2)
  %cmp71.1.i.3 = icmp ult i32 %230, %last_latency.sroa.6.1.i.2
  br i1 %cmp71.1.i.3, label %if.then72.1.i.3, label %if.then66.1.i.3.for.inc116.1.i.3_crit_edge

if.then66.1.i.3.for.inc116.1.i.3_crit_edge:       ; preds = %if.then66.1.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.1.i.3

if.then72.1.i.3:                                  ; preds = %if.then66.1.i.3
  call void @__sanitizer_cov_trace_pc() #18
  %231 = ptrtoint ptr %arrayidx68.1.i.3 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %last_latency.sroa.6.1.i.2, ptr %arrayidx68.1.i.3, align 4
  br label %for.inc116.1.i.3

for.inc116.1.i.3:                                 ; preds = %if.then72.1.i.3, %if.then66.1.i.3.for.inc116.1.i.3_crit_edge, %if.end98.1.i.3
  %last_latency.sroa.6.1.i.3 = phi i32 [ %last_latency.sroa.6.1.i.2, %if.then72.1.i.3 ], [ %last_latency.sroa.6.1.i.2, %if.then66.1.i.3.for.inc116.1.i.3_crit_edge ], [ %226, %if.end98.1.i.3 ]
  %arrayidx63.1.i.4 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 1, i32 4
  %232 = ptrtoint ptr %arrayidx63.1.i.4 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx63.1.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool65.not.1.i.4 = icmp eq i32 %233, 0
  %arrayidx68.1.i.4 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 4
  br i1 %tobool65.not.1.i.4, label %if.then66.1.i.4, label %if.end79.1.i.4

if.end79.1.i.4:                                   ; preds = %for.inc116.1.i.3
  %valid.1.i.4 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 4, i32 1
  %234 = ptrtoint ptr %valid.1.i.4 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %valid.1.i.4, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool83.not.1.i.4 = icmp eq i8 %235, 0
  br i1 %tobool83.not.1.i.4, label %if.end79.1.i.4.if.end98.1.i.4_crit_edge, label %if.else.1.i.4

if.end79.1.i.4.if.end98.1.i.4_crit_edge:          ; preds = %if.end79.1.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.1.i.4

if.else.1.i.4:                                    ; preds = %if.end79.1.i.4
  call void @__sanitizer_cov_trace_pc() #18
  %236 = ptrtoint ptr %arrayidx68.1.i.4 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx68.1.i.4, align 4
  %mul.1.i.4 = mul i32 %237, 7
  %add96.1.i.4 = add i32 %mul.1.i.4, %233
  %shr.1.i.4 = lshr i32 %add96.1.i.4, 3
  br label %if.end98.1.i.4

if.end98.1.i.4:                                   ; preds = %if.else.1.i.4, %if.end79.1.i.4.if.end98.1.i.4_crit_edge
  %latency.sroa.8.0.i.4 = phi i32 [ %shr.1.i.4, %if.else.1.i.4 ], [ %233, %if.end79.1.i.4.if.end98.1.i.4_crit_edge ]
  %238 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.8.0.i.4, i32 %last_latency.sroa.6.1.i.3) #16
  %239 = ptrtoint ptr %arrayidx68.1.i.4 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %arrayidx68.1.i.4, align 4
  %240 = ptrtoint ptr %valid.1.i.4 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 1, ptr %valid.1.i.4, align 4
  br label %for.inc116.1.i.4

if.then66.1.i.4:                                  ; preds = %for.inc116.1.i.3
  %241 = ptrtoint ptr %arrayidx68.1.i.4 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx68.1.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %242, i32 %last_latency.sroa.6.1.i.3)
  %cmp71.1.i.4 = icmp ult i32 %242, %last_latency.sroa.6.1.i.3
  br i1 %cmp71.1.i.4, label %if.then72.1.i.4, label %if.then66.1.i.4.for.inc116.1.i.4_crit_edge

if.then66.1.i.4.for.inc116.1.i.4_crit_edge:       ; preds = %if.then66.1.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.1.i.4

if.then72.1.i.4:                                  ; preds = %if.then66.1.i.4
  call void @__sanitizer_cov_trace_pc() #18
  %243 = ptrtoint ptr %arrayidx68.1.i.4 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %last_latency.sroa.6.1.i.3, ptr %arrayidx68.1.i.4, align 4
  br label %for.inc116.1.i.4

for.inc116.1.i.4:                                 ; preds = %if.then72.1.i.4, %if.then66.1.i.4.for.inc116.1.i.4_crit_edge, %if.end98.1.i.4
  %last_latency.sroa.6.1.i.4 = phi i32 [ %last_latency.sroa.6.1.i.3, %if.then72.1.i.4 ], [ %last_latency.sroa.6.1.i.3, %if.then66.1.i.4.for.inc116.1.i.4_crit_edge ], [ %238, %if.end98.1.i.4 ]
  %arrayidx63.1.i.5 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 1, i32 5
  %244 = ptrtoint ptr %arrayidx63.1.i.5 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx63.1.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool65.not.1.i.5 = icmp eq i32 %245, 0
  %arrayidx68.1.i.5 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 5
  br i1 %tobool65.not.1.i.5, label %if.then66.1.i.5, label %if.end79.1.i.5

if.end79.1.i.5:                                   ; preds = %for.inc116.1.i.4
  %valid.1.i.5 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 5, i32 1
  %246 = ptrtoint ptr %valid.1.i.5 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %valid.1.i.5, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool83.not.1.i.5 = icmp eq i8 %247, 0
  br i1 %tobool83.not.1.i.5, label %if.end79.1.i.5.if.end98.1.i.5_crit_edge, label %if.else.1.i.5

if.end79.1.i.5.if.end98.1.i.5_crit_edge:          ; preds = %if.end79.1.i.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.1.i.5

if.else.1.i.5:                                    ; preds = %if.end79.1.i.5
  call void @__sanitizer_cov_trace_pc() #18
  %248 = ptrtoint ptr %arrayidx68.1.i.5 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx68.1.i.5, align 4
  %mul.1.i.5 = mul i32 %249, 7
  %add96.1.i.5 = add i32 %mul.1.i.5, %245
  %shr.1.i.5 = lshr i32 %add96.1.i.5, 3
  br label %if.end98.1.i.5

if.end98.1.i.5:                                   ; preds = %if.else.1.i.5, %if.end79.1.i.5.if.end98.1.i.5_crit_edge
  %latency.sroa.8.0.i.5 = phi i32 [ %shr.1.i.5, %if.else.1.i.5 ], [ %245, %if.end79.1.i.5.if.end98.1.i.5_crit_edge ]
  %250 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.8.0.i.5, i32 %last_latency.sroa.6.1.i.4) #16
  %251 = ptrtoint ptr %arrayidx68.1.i.5 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %arrayidx68.1.i.5, align 4
  %252 = ptrtoint ptr %valid.1.i.5 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 1, ptr %valid.1.i.5, align 4
  br label %for.inc116.1.i.5

if.then66.1.i.5:                                  ; preds = %for.inc116.1.i.4
  %253 = ptrtoint ptr %arrayidx68.1.i.5 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx68.1.i.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %254, i32 %last_latency.sroa.6.1.i.4)
  %cmp71.1.i.5 = icmp ult i32 %254, %last_latency.sroa.6.1.i.4
  br i1 %cmp71.1.i.5, label %if.then72.1.i.5, label %if.then66.1.i.5.for.inc116.1.i.5_crit_edge

if.then66.1.i.5.for.inc116.1.i.5_crit_edge:       ; preds = %if.then66.1.i.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.1.i.5

if.then72.1.i.5:                                  ; preds = %if.then66.1.i.5
  call void @__sanitizer_cov_trace_pc() #18
  %255 = ptrtoint ptr %arrayidx68.1.i.5 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %last_latency.sroa.6.1.i.4, ptr %arrayidx68.1.i.5, align 4
  br label %for.inc116.1.i.5

for.inc116.1.i.5:                                 ; preds = %if.then72.1.i.5, %if.then66.1.i.5.for.inc116.1.i.5_crit_edge, %if.end98.1.i.5
  %last_latency.sroa.6.1.i.5 = phi i32 [ %last_latency.sroa.6.1.i.4, %if.then72.1.i.5 ], [ %last_latency.sroa.6.1.i.4, %if.then66.1.i.5.for.inc116.1.i.5_crit_edge ], [ %250, %if.end98.1.i.5 ]
  %arrayidx63.1.i.6 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 1, i32 6
  %256 = ptrtoint ptr %arrayidx63.1.i.6 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx63.1.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool65.not.1.i.6 = icmp eq i32 %257, 0
  %arrayidx68.1.i.6 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 6
  br i1 %tobool65.not.1.i.6, label %if.then66.1.i.6, label %if.end79.1.i.6

if.end79.1.i.6:                                   ; preds = %for.inc116.1.i.5
  %valid.1.i.6 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 6, i32 1
  %258 = ptrtoint ptr %valid.1.i.6 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %valid.1.i.6, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool83.not.1.i.6 = icmp eq i8 %259, 0
  br i1 %tobool83.not.1.i.6, label %if.end79.1.i.6.if.end98.1.i.6_crit_edge, label %if.else.1.i.6

if.end79.1.i.6.if.end98.1.i.6_crit_edge:          ; preds = %if.end79.1.i.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.1.i.6

if.else.1.i.6:                                    ; preds = %if.end79.1.i.6
  call void @__sanitizer_cov_trace_pc() #18
  %260 = ptrtoint ptr %arrayidx68.1.i.6 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx68.1.i.6, align 4
  %mul.1.i.6 = mul i32 %261, 7
  %add96.1.i.6 = add i32 %mul.1.i.6, %257
  %shr.1.i.6 = lshr i32 %add96.1.i.6, 3
  br label %if.end98.1.i.6

if.end98.1.i.6:                                   ; preds = %if.else.1.i.6, %if.end79.1.i.6.if.end98.1.i.6_crit_edge
  %latency.sroa.8.0.i.6 = phi i32 [ %shr.1.i.6, %if.else.1.i.6 ], [ %257, %if.end79.1.i.6.if.end98.1.i.6_crit_edge ]
  %262 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.8.0.i.6, i32 %last_latency.sroa.6.1.i.5) #16
  %263 = ptrtoint ptr %arrayidx68.1.i.6 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %arrayidx68.1.i.6, align 4
  %264 = ptrtoint ptr %valid.1.i.6 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 1, ptr %valid.1.i.6, align 4
  br label %for.inc116.1.i.6

if.then66.1.i.6:                                  ; preds = %for.inc116.1.i.5
  %265 = ptrtoint ptr %arrayidx68.1.i.6 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx68.1.i.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %266, i32 %last_latency.sroa.6.1.i.5)
  %cmp71.1.i.6 = icmp ult i32 %266, %last_latency.sroa.6.1.i.5
  br i1 %cmp71.1.i.6, label %if.then72.1.i.6, label %if.then66.1.i.6.for.inc116.1.i.6_crit_edge

if.then66.1.i.6.for.inc116.1.i.6_crit_edge:       ; preds = %if.then66.1.i.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.1.i.6

if.then72.1.i.6:                                  ; preds = %if.then66.1.i.6
  call void @__sanitizer_cov_trace_pc() #18
  %267 = ptrtoint ptr %arrayidx68.1.i.6 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %last_latency.sroa.6.1.i.5, ptr %arrayidx68.1.i.6, align 4
  br label %for.inc116.1.i.6

for.inc116.1.i.6:                                 ; preds = %if.then72.1.i.6, %if.then66.1.i.6.for.inc116.1.i.6_crit_edge, %if.end98.1.i.6
  %last_latency.sroa.6.1.i.6 = phi i32 [ %last_latency.sroa.6.1.i.5, %if.then72.1.i.6 ], [ %last_latency.sroa.6.1.i.5, %if.then66.1.i.6.for.inc116.1.i.6_crit_edge ], [ %262, %if.end98.1.i.6 ]
  %arrayidx63.1.i.7 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 1, i32 7
  %268 = ptrtoint ptr %arrayidx63.1.i.7 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx63.1.i.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool65.not.1.i.7 = icmp eq i32 %269, 0
  %arrayidx68.1.i.7 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 7
  br i1 %tobool65.not.1.i.7, label %if.then66.1.i.7, label %if.end79.1.i.7

if.end79.1.i.7:                                   ; preds = %for.inc116.1.i.6
  %valid.1.i.7 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 7, i32 1
  %270 = ptrtoint ptr %valid.1.i.7 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %valid.1.i.7, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool83.not.1.i.7 = icmp eq i8 %271, 0
  br i1 %tobool83.not.1.i.7, label %if.end79.1.i.7.if.end98.1.i.7_crit_edge, label %if.else.1.i.7

if.end79.1.i.7.if.end98.1.i.7_crit_edge:          ; preds = %if.end79.1.i.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.1.i.7

if.else.1.i.7:                                    ; preds = %if.end79.1.i.7
  call void @__sanitizer_cov_trace_pc() #18
  %272 = ptrtoint ptr %arrayidx68.1.i.7 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx68.1.i.7, align 4
  %mul.1.i.7 = mul i32 %273, 7
  %add96.1.i.7 = add i32 %mul.1.i.7, %269
  %shr.1.i.7 = lshr i32 %add96.1.i.7, 3
  br label %if.end98.1.i.7

if.end98.1.i.7:                                   ; preds = %if.else.1.i.7, %if.end79.1.i.7.if.end98.1.i.7_crit_edge
  %latency.sroa.8.0.i.7 = phi i32 [ %shr.1.i.7, %if.else.1.i.7 ], [ %269, %if.end79.1.i.7.if.end98.1.i.7_crit_edge ]
  %274 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.8.0.i.7, i32 %last_latency.sroa.6.1.i.6) #16
  %275 = ptrtoint ptr %arrayidx68.1.i.7 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %274, ptr %arrayidx68.1.i.7, align 4
  %276 = ptrtoint ptr %valid.1.i.7 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 1, ptr %valid.1.i.7, align 4
  br label %for.inc116.1.i.7

if.then66.1.i.7:                                  ; preds = %for.inc116.1.i.6
  %277 = ptrtoint ptr %arrayidx68.1.i.7 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %arrayidx68.1.i.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %278, i32 %last_latency.sroa.6.1.i.6)
  %cmp71.1.i.7 = icmp ult i32 %278, %last_latency.sroa.6.1.i.6
  br i1 %cmp71.1.i.7, label %if.then72.1.i.7, label %if.then66.1.i.7.for.inc116.1.i.7_crit_edge

if.then66.1.i.7.for.inc116.1.i.7_crit_edge:       ; preds = %if.then66.1.i.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.1.i.7

if.then72.1.i.7:                                  ; preds = %if.then66.1.i.7
  call void @__sanitizer_cov_trace_pc() #18
  %279 = ptrtoint ptr %arrayidx68.1.i.7 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %last_latency.sroa.6.1.i.6, ptr %arrayidx68.1.i.7, align 4
  br label %for.inc116.1.i.7

for.inc116.1.i.7:                                 ; preds = %if.then72.1.i.7, %if.then66.1.i.7.for.inc116.1.i.7_crit_edge, %if.end98.1.i.7
  %last_latency.sroa.6.1.i.7 = phi i32 [ %last_latency.sroa.6.1.i.6, %if.then72.1.i.7 ], [ %last_latency.sroa.6.1.i.6, %if.then66.1.i.7.for.inc116.1.i.7_crit_edge ], [ %274, %if.end98.1.i.7 ]
  %arrayidx63.1.i.8 = getelementptr inbounds [2 x [9 x %struct.avg_latency_bucket]], ptr %avg_latency.i, i32 0, i32 1, i32 8
  %280 = ptrtoint ptr %arrayidx63.1.i.8 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx63.1.i.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool65.not.1.i.8 = icmp eq i32 %281, 0
  %arrayidx68.1.i.8 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 8
  br i1 %tobool65.not.1.i.8, label %if.then66.1.i.8, label %if.end79.1.i.8

if.end79.1.i.8:                                   ; preds = %for.inc116.1.i.7
  %valid.1.i.8 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 8, i32 1
  %282 = ptrtoint ptr %valid.1.i.8 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %valid.1.i.8, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool83.not.1.i.8 = icmp eq i8 %283, 0
  br i1 %tobool83.not.1.i.8, label %if.end79.1.i.8.if.end98.1.i.8_crit_edge, label %if.else.1.i.8

if.end79.1.i.8.if.end98.1.i.8_crit_edge:          ; preds = %if.end79.1.i.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98.1.i.8

if.else.1.i.8:                                    ; preds = %if.end79.1.i.8
  call void @__sanitizer_cov_trace_pc() #18
  %284 = ptrtoint ptr %arrayidx68.1.i.8 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx68.1.i.8, align 4
  %mul.1.i.8 = mul i32 %285, 7
  %add96.1.i.8 = add i32 %mul.1.i.8, %281
  %shr.1.i.8 = lshr i32 %add96.1.i.8, 3
  br label %if.end98.1.i.8

if.end98.1.i.8:                                   ; preds = %if.else.1.i.8, %if.end79.1.i.8.if.end98.1.i.8_crit_edge
  %latency.sroa.8.0.i.8 = phi i32 [ %shr.1.i.8, %if.else.1.i.8 ], [ %281, %if.end79.1.i.8.if.end98.1.i.8_crit_edge ]
  %286 = tail call i32 @llvm.umax.i32(i32 %latency.sroa.8.0.i.8, i32 %last_latency.sroa.6.1.i.7) #16
  %287 = ptrtoint ptr %arrayidx68.1.i.8 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %arrayidx68.1.i.8, align 4
  %288 = ptrtoint ptr %valid.1.i.8 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 1, ptr %valid.1.i.8, align 4
  br label %for.inc116.1.i.8

if.then66.1.i.8:                                  ; preds = %for.inc116.1.i.7
  %289 = ptrtoint ptr %arrayidx68.1.i.8 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx68.1.i.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %290, i32 %last_latency.sroa.6.1.i.7)
  %cmp71.1.i.8 = icmp ult i32 %290, %last_latency.sroa.6.1.i.7
  br i1 %cmp71.1.i.8, label %if.then72.1.i.8, label %if.then66.1.i.8.for.inc116.1.i.8_crit_edge

if.then66.1.i.8.for.inc116.1.i.8_crit_edge:       ; preds = %if.then66.1.i.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc116.1.i.8

if.then72.1.i.8:                                  ; preds = %if.then66.1.i.8
  call void @__sanitizer_cov_trace_pc() #18
  %291 = ptrtoint ptr %arrayidx68.1.i.8 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %last_latency.sroa.6.1.i.7, ptr %arrayidx68.1.i.8, align 4
  br label %for.inc116.1.i.8

for.inc116.1.i.8:                                 ; preds = %if.then72.1.i.8, %if.then66.1.i.8.for.inc116.1.i.8_crit_edge, %if.end98.1.i.8
  %tobool.not.i378.i = icmp eq ptr %12, null
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 -24
  %tobool.not.i380.i = icmp eq ptr %add.ptr.i.i, null
  %td.i.i = getelementptr i8, ptr %12, i32 -4
  br label %do.body125.i

do.body125.i:                                     ; preds = %cleanup241.i.do.body125.i_crit_edge, %for.inc116.1.i.8
  %i.2406.i = phi i32 [ 0, %for.inc116.1.i.8 ], [ %inc248.i, %cleanup241.i.do.body125.i_crit_edge ]
  br i1 %tobool.not.i378.i, label %sq_to_td.exit.thread.i, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body125.i
  %292 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %12, align 4
  %tobool1.not.i.i = icmp eq ptr %293, null
  %spec.select.i.i = select i1 %tobool1.not.i.i, ptr null, ptr %add.ptr.i.i
  %or.cond.i.i = or i1 %tobool.not.i380.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.i.sq_to_td.exit.i_crit_edge, label %if.then.i381.i

land.lhs.true.i.i.i.sq_to_td.exit.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit.i

if.then.i381.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %294 = ptrtoint ptr %td.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %td.i.i, align 4
  br label %sq_to_td.exit.i

sq_to_td.exit.i:                                  ; preds = %if.then.i381.i, %land.lhs.true.i.i.i.sq_to_td.exit.i_crit_edge
  %retval.0.i382.i = phi ptr [ %295, %if.then.i381.i ], [ %12, %land.lhs.true.i.i.i.sq_to_td.exit.i_crit_edge ]
  %queue129.i = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i382.i, i32 0, i32 1
  %296 = ptrtoint ptr %queue129.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %queue129.i, align 4
  %call130.i = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %297) #16
  br i1 %call130.i, label %if.end135.i, label %sq_to_td.exit.i.cleanup241.i_crit_edge, !prof !142

sq_to_td.exit.i.cleanup241.i_crit_edge:           ; preds = %sq_to_td.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup241.i

sq_to_td.exit.thread.i:                           ; preds = %do.body125.i
  call void @__asan_load4_noabort(i32 92)
  %298 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call130389.i = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %298) #16
  br i1 %call130389.i, label %sq_to_td.exit.thread.i.do.body188.i_crit_edge, label %sq_to_td.exit.thread.i.cleanup241.i_crit_edge, !prof !142

sq_to_td.exit.thread.i.cleanup241.i_crit_edge:    ; preds = %sq_to_td.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup241.i

sq_to_td.exit.thread.i.do.body188.i_crit_edge:    ; preds = %sq_to_td.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body188.i

if.end135.i:                                      ; preds = %sq_to_td.exit.i
  %tobool136.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool136.not.i, label %if.end135.i.do.body188.i_crit_edge, label %do.body138.i

if.end135.i.do.body188.i_crit_edge:               ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body188.i

do.body138.i:                                     ; preds = %if.end135.i
  %299 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i.i = and i32 %299, -16384
  %300 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %300, i32 0, i32 1
  %301 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %302, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %do.body138.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

do.body138.i.rcu_read_lock.exit.i_crit_edge:      ; preds = %do.body138.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %do.body138.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i323 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i323, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %do.body138.i.rcu_read_lock.exit.i_crit_edge
  %303 = ptrtoint ptr %queue129.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %queue129.i, align 4
  %blk_trace.i = getelementptr inbounds %struct.request_queue, ptr %304, i32 0, i32 46
  %305 = ptrtoint ptr %blk_trace.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load volatile ptr, ptr %blk_trace.i, align 8
  %call145.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %tobool146.not.i = icmp eq i32 %call145.i, 0
  br i1 %tobool146.not.i, label %land.lhs.true.i324, label %rcu_read_lock.exit.i.do.end154.i_crit_edge

rcu_read_lock.exit.i.do.end154.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end154.i

land.lhs.true.i324:                               ; preds = %rcu_read_lock.exit.i
  %call147.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i)
  %tobool148.not.i = icmp eq i32 %call147.i, 0
  br i1 %tobool148.not.i, label %land.lhs.true.i324.do.end154.i_crit_edge, label %land.lhs.true149.i

land.lhs.true.i324.do.end154.i_crit_edge:         ; preds = %land.lhs.true.i324
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end154.i

land.lhs.true149.i:                               ; preds = %land.lhs.true.i324
  %.b366.i = load i1, ptr @throtl_update_latency_buckets.__warned, align 1
  br i1 %.b366.i, label %land.lhs.true149.i.do.end154.i_crit_edge, label %if.then151.i

land.lhs.true149.i.do.end154.i_crit_edge:         ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end154.i

if.then151.i:                                     ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_update_latency_buckets.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2038, ptr noundef nonnull @.str.1) #16
  br label %do.end154.i

do.end154.i:                                      ; preds = %if.then151.i, %land.lhs.true149.i.do.end154.i_crit_edge, %land.lhs.true.i324.do.end154.i_crit_edge, %rcu_read_lock.exit.i.do.end154.i_crit_edge
  %tobool156.not.i = icmp eq ptr %306, null
  br i1 %tobool156.not.i, label %do.end154.i.cleanup241.sink.split.i_crit_edge, label %tg_to_blkg.exit.i, !prof !137

do.end154.i.cleanup241.sink.split.i_crit_edge:    ; preds = %do.end154.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup241.sink.split.i

tg_to_blkg.exit.i:                                ; preds = %do.end154.i
  call void @__sanitizer_cov_trace_pc() #18
  %307 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %spec.select.i.i, align 4
  %blkcg.i = getelementptr inbounds %struct.blkcg_gq, ptr %308, i32 0, i32 3
  %309 = ptrtoint ptr %blkcg.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %blkcg.i, align 4
  %arrayidx167.i = getelementptr [9 x %struct.avg_latency_bucket], ptr %arrayidx68.i, i32 0, i32 %i.2406.i
  %311 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx167.i, align 4
  %valid172.i = getelementptr [9 x %struct.avg_latency_bucket], ptr %arrayidx68.i, i32 0, i32 %i.2406.i, i32 1
  %313 = ptrtoint ptr %valid172.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %valid172.i, align 4, !range !139
  %315 = zext i8 %314 to i32
  %arrayidx176.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 %i.2406.i
  %316 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx176.i, align 4
  %valid181.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 %i.2406.i, i32 1
  %318 = ptrtoint ptr %valid181.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %valid181.i, align 4, !range !139
  %320 = zext i8 %319 to i32
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %306, ptr noundef %310, ptr noundef nonnull @.str.29, i32 noundef %i.2406.i, i32 noundef %312, i32 noundef %315, i32 noundef %317, i32 noundef %320) #16
  br label %cleanup241.sink.split.i

do.body188.i:                                     ; preds = %if.end135.i.do.body188.i_crit_edge, %sq_to_td.exit.thread.i.do.body188.i_crit_edge
  %queue129391395.i = phi ptr [ %queue129.i, %if.end135.i.do.body188.i_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit.thread.i.do.body188.i_crit_edge ]
  %321 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i367.i = and i32 %321, -16384
  %322 = inttoptr i32 %and.i.i.i.i.i367.i to ptr
  %preempt_count.i.i.i.i368.i = getelementptr inbounds %struct.thread_info, ptr %322, i32 0, i32 1
  %323 = ptrtoint ptr %preempt_count.i.i.i.i368.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load volatile i32, ptr %preempt_count.i.i.i.i368.i, align 4
  %add.i.i.i369.i = add i32 %324, 1
  store volatile i32 %add.i.i.i369.i, ptr %preempt_count.i.i.i.i368.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i370.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i370.i, label %do.body188.i.rcu_read_lock.exit377.i_crit_edge, label %land.lhs.true.i373.i

do.body188.i.rcu_read_lock.exit377.i_crit_edge:   ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit377.i

land.lhs.true.i373.i:                             ; preds = %do.body188.i
  %call1.i371.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i371.i)
  %tobool.not.i372.i = icmp eq i32 %call1.i371.i, 0
  br i1 %tobool.not.i372.i, label %land.lhs.true.i373.i.rcu_read_lock.exit377.i_crit_edge, label %land.lhs.true2.i375.i

land.lhs.true.i373.i.rcu_read_lock.exit377.i_crit_edge: ; preds = %land.lhs.true.i373.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit377.i

land.lhs.true2.i375.i:                            ; preds = %land.lhs.true.i373.i
  %.b4.i374.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i374.i, label %land.lhs.true2.i375.i.rcu_read_lock.exit377.i_crit_edge, label %if.then.i376.i

land.lhs.true2.i375.i.rcu_read_lock.exit377.i_crit_edge: ; preds = %land.lhs.true2.i375.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit377.i

if.then.i376.i:                                   ; preds = %land.lhs.true2.i375.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit377.i

rcu_read_lock.exit377.i:                          ; preds = %if.then.i376.i, %land.lhs.true2.i375.i.rcu_read_lock.exit377.i_crit_edge, %land.lhs.true.i373.i.rcu_read_lock.exit377.i_crit_edge, %do.body188.i.rcu_read_lock.exit377.i_crit_edge
  %325 = ptrtoint ptr %queue129391395.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %queue129391395.i, align 4
  %blk_trace195.i = getelementptr inbounds %struct.request_queue, ptr %326, i32 0, i32 46
  %327 = ptrtoint ptr %blk_trace195.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load volatile ptr, ptr %blk_trace195.i, align 8
  %call197.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197.i)
  %tobool198.not.i = icmp eq i32 %call197.i, 0
  br i1 %tobool198.not.i, label %land.lhs.true199.i, label %rcu_read_lock.exit377.i.do.end207.i_crit_edge

rcu_read_lock.exit377.i.do.end207.i_crit_edge:    ; preds = %rcu_read_lock.exit377.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end207.i

land.lhs.true199.i:                               ; preds = %rcu_read_lock.exit377.i
  %call200.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200.i)
  %tobool201.not.i = icmp eq i32 %call200.i, 0
  br i1 %tobool201.not.i, label %land.lhs.true199.i.do.end207.i_crit_edge, label %land.lhs.true202.i

land.lhs.true199.i.do.end207.i_crit_edge:         ; preds = %land.lhs.true199.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end207.i

land.lhs.true202.i:                               ; preds = %land.lhs.true199.i
  %.b364365.i = load i1, ptr @throtl_update_latency_buckets.__warned.30, align 1
  br i1 %.b364365.i, label %land.lhs.true202.i.do.end207.i_crit_edge, label %if.then204.i

land.lhs.true202.i.do.end207.i_crit_edge:         ; preds = %land.lhs.true202.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end207.i

if.then204.i:                                     ; preds = %land.lhs.true202.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_update_latency_buckets.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2038, ptr noundef nonnull @.str.1) #16
  br label %do.end207.i

do.end207.i:                                      ; preds = %if.then204.i, %land.lhs.true202.i.do.end207.i_crit_edge, %land.lhs.true199.i.do.end207.i_crit_edge, %rcu_read_lock.exit377.i.do.end207.i_crit_edge
  %tobool209.not.i = icmp eq ptr %328, null
  br i1 %tobool209.not.i, label %do.end207.i.cleanup241.sink.split.i_crit_edge, label %if.then216.i, !prof !137

do.end207.i.cleanup241.sink.split.i_crit_edge:    ; preds = %do.end207.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup241.sink.split.i

if.then216.i:                                     ; preds = %do.end207.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx219.i = getelementptr [9 x %struct.avg_latency_bucket], ptr %arrayidx68.i, i32 0, i32 %i.2406.i
  %329 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx219.i, align 4
  %valid224.i = getelementptr [9 x %struct.avg_latency_bucket], ptr %arrayidx68.i, i32 0, i32 %i.2406.i, i32 1
  %331 = ptrtoint ptr %valid224.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %valid224.i, align 4, !range !139
  %333 = zext i8 %332 to i32
  %arrayidx229.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 %i.2406.i
  %334 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx229.i, align 4
  %valid234.i = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 11, i32 1, i32 %i.2406.i, i32 1
  %336 = ptrtoint ptr %valid234.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %valid234.i, align 4, !range !139
  %338 = zext i8 %337 to i32
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %328, ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef %i.2406.i, i32 noundef %330, i32 noundef %333, i32 noundef %335, i32 noundef %338) #16
  br label %cleanup241.sink.split.i

cleanup241.sink.split.i:                          ; preds = %if.then216.i, %do.end207.i.cleanup241.sink.split.i_crit_edge, %tg_to_blkg.exit.i, %do.end154.i.cleanup241.sink.split.i_crit_edge
  tail call fastcc void @rcu_read_unlock() #16
  br label %cleanup241.i

cleanup241.i:                                     ; preds = %cleanup241.sink.split.i, %sq_to_td.exit.thread.i.cleanup241.i_crit_edge, %sq_to_td.exit.i.cleanup241.i_crit_edge
  %inc248.i = add nuw nsw i32 %i.2406.i, 1
  %exitcond414.not.i = icmp eq i32 %inc248.i, 9
  br i1 %exitcond414.not.i, label %cleanup241.i.throtl_update_latency_buckets.exit_crit_edge, label %cleanup241.i.do.body125.i_crit_edge

cleanup241.i.do.body125.i_crit_edge:              ; preds = %cleanup241.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body125.i

cleanup241.i.throtl_update_latency_buckets.exit_crit_edge: ; preds = %cleanup241.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_update_latency_buckets.exit

throtl_update_latency_buckets.exit:               ; preds = %cleanup241.i.throtl_update_latency_buckets.exit_crit_edge, %if.end.i.throtl_update_latency_buckets.exit_crit_edge, %lor.lhs.false.i.throtl_update_latency_buckets.exit_crit_edge, %if.end.throtl_update_latency_buckets.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %avg_latency.i) #16
  %last_finish_time1.i = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 23
  %339 = ptrtoint ptr %last_finish_time1.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %last_finish_time1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %cmp.i325 = icmp eq i32 %340, 0
  br i1 %cmp.i325, label %throtl_update_latency_buckets.exit.blk_throtl_update_idletime.exit_crit_edge, label %if.end.i328

throtl_update_latency_buckets.exit.blk_throtl_update_idletime.exit_crit_edge: ; preds = %throtl_update_latency_buckets.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %blk_throtl_update_idletime.exit

if.end.i328:                                      ; preds = %throtl_update_latency_buckets.exit
  %call.i.i326 = tail call i64 @ktime_get() #16
  %shr.i327 = lshr i64 %call.i.i326, 10
  %conv.i = trunc i64 %shr.i327 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %340, i32 %conv.i)
  %cmp2.not.i = icmp ult i32 %340, %conv.i
  br i1 %cmp2.not.i, label %lor.lhs.false.i329, label %if.end.i328.blk_throtl_update_idletime.exit_crit_edge

if.end.i328.blk_throtl_update_idletime.exit_crit_edge: ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #18
  br label %blk_throtl_update_idletime.exit

lor.lhs.false.i329:                               ; preds = %if.end.i328
  %checked_last_finish_time.i = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 24
  %341 = ptrtoint ptr %checked_last_finish_time.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %checked_last_finish_time.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %340, i32 %342)
  %cmp4.i = icmp eq i32 %340, %342
  br i1 %cmp4.i, label %lor.lhs.false.i329.blk_throtl_update_idletime.exit_crit_edge, label %if.end7.i

lor.lhs.false.i329.blk_throtl_update_idletime.exit_crit_edge: ; preds = %lor.lhs.false.i329
  call void @__sanitizer_cov_trace_pc() #18
  br label %blk_throtl_update_idletime.exit

if.end7.i:                                        ; preds = %lor.lhs.false.i329
  call void @__sanitizer_cov_trace_pc() #18
  %avg_idletime.i = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 25
  %343 = ptrtoint ptr %avg_idletime.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %avg_idletime.i, align 4
  %mul.i330 = mul i32 %344, 7
  %add.i = sub i32 %conv.i, %340
  %sub.i331 = add i32 %add.i, %mul.i330
  %shr8.i = lshr i32 %sub.i331, 3
  store i32 %shr8.i, ptr %avg_idletime.i, align 4
  %345 = ptrtoint ptr %checked_last_finish_time.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %340, ptr %checked_last_finish_time.i, align 8
  br label %blk_throtl_update_idletime.exit

blk_throtl_update_idletime.exit:                  ; preds = %if.end7.i, %lor.lhs.false.i329.blk_throtl_update_idletime.exit_crit_edge, %if.end.i328.blk_throtl_update_idletime.exit_crit_edge, %throtl_update_latency_buckets.exit.blk_throtl_update_idletime.exit_crit_edge
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 3
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %land.lhs.true.i372.while.cond.outer_crit_edge, %blk_throtl_update_idletime.exit
  %sq.1.ph = phi ptr [ %service_queue, %blk_throtl_update_idletime.exit ], [ %525, %land.lhs.true.i372.while.cond.outer_crit_edge ]
  %tg.1.ph = phi ptr [ %cond.i.i, %blk_throtl_update_idletime.exit ], [ %add.ptr.i, %land.lhs.true.i372.while.cond.outer_crit_edge ]
  %qn.1.ph = phi ptr [ null, %blk_throtl_update_idletime.exit ], [ %arrayidx39, %land.lhs.true.i372.while.cond.outer_crit_edge ]
  %arrayidx = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 15, i32 %and.i
  %td.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 2
  %tobool.not.i.i.i = icmp eq ptr %tg.1.ph, null
  %last_check_time.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 18
  %bps21.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 9
  %last_bytes_disp.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 16
  %last_low_overflow_time.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 15
  %arrayidx224.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 9, i32 1
  %arrayidx229.i344 = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 16, i32 1
  %arrayidx459.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 15, i32 1
  %iops462.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 11
  %last_io_split_cnt.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 32
  %last_io_disp.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 17
  %last_low_overflow_time481.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 15
  %arrayidx486.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 11, i32 1
  %arrayidx491.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 32, i32 1
  %arrayidx494.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 17, i32 1
  %arrayidx507.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 15, i32 1
  %last_bytes_disp514.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 16
  %last_check_time.i352 = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 18
  %bps.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 9
  %iops.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 11
  %last_low_overflow_time.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 15
  %arrayidx7.i.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 9, i32 1
  %arrayidx12.i.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 11, i32 1
  %arrayidx17.i.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 15, i32 1
  %arrayidx22 = getelementptr %struct.throtl_service_queue, ptr %sq.1.ph, i32 0, i32 2, i32 %and.i
  br label %while.cond

while.cond:                                       ; preds = %if.then33, %while.cond.outer
  %346 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %cmp = icmp eq i32 %347, 0
  br i1 %cmp, label %if.then14, label %while.cond.if.end19_crit_edge

while.cond.if.end19_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then14:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %348 = load volatile i32, ptr @jiffies, align 128
  %349 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %arrayidx, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %while.cond.if.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %350 = load volatile i32, ptr @jiffies, align 128
  %351 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %td.i, align 4
  %limit_index.i = getelementptr inbounds %struct.throtl_data, ptr %352, i32 0, i32 5
  %353 = ptrtoint ptr %limit_index.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %limit_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %354)
  %cmp.not.i = icmp eq i32 %354, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i334, label %if.end19.throtl_downgrade_check.exit_crit_edge

if.end19.throtl_downgrade_check.exit_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_downgrade_check.exit

lor.lhs.false.i334:                               ; preds = %if.end19
  %limit_valid.i332 = getelementptr inbounds %struct.throtl_data, ptr %352, i32 0, i32 6
  %355 = ptrtoint ptr %limit_valid.i332 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %limit_valid.i332, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %tobool.not.i333 = icmp eq i8 %356, 0
  br i1 %tobool.not.i333, label %lor.lhs.false.i334.throtl_downgrade_check.exit_crit_edge, label %if.end.i335

lor.lhs.false.i334.throtl_downgrade_check.exit_crit_edge: ; preds = %lor.lhs.false.i334
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_downgrade_check.exit

if.end.i335:                                      ; preds = %lor.lhs.false.i334
  br i1 %tobool.not.i.i.i, label %if.end.i335.tg_to_blkg.exit.i337_crit_edge, label %cond.true.i.i.i

if.end.i335.tg_to_blkg.exit.i337_crit_edge:       ; preds = %if.end.i335
  call void @__sanitizer_cov_trace_pc() #18
  br label %tg_to_blkg.exit.i337

cond.true.i.i.i:                                  ; preds = %if.end.i335
  call void @__sanitizer_cov_trace_pc() #18
  %357 = ptrtoint ptr %tg.1.ph to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %tg.1.ph, align 4
  br label %tg_to_blkg.exit.i337

tg_to_blkg.exit.i337:                             ; preds = %cond.true.i.i.i, %if.end.i335.tg_to_blkg.exit.i337_crit_edge
  %cond.i.i.i = phi ptr [ %358, %cond.true.i.i.i ], [ null, %if.end.i335.tg_to_blkg.exit.i337_crit_edge ]
  %blkcg.i336 = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i.i, i32 0, i32 3
  %359 = ptrtoint ptr %blkcg.i336 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %blkcg.i336, align 4
  %children.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %360, i32 0, i32 4
  %361 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not.i = icmp eq ptr %362, %children.i
  br i1 %cmp.i.not.i, label %if.end5.i, label %tg_to_blkg.exit.i337.throtl_downgrade_check.exit_crit_edge

tg_to_blkg.exit.i337.throtl_downgrade_check.exit_crit_edge: ; preds = %tg_to_blkg.exit.i337
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_downgrade_check.exit

if.end5.i:                                        ; preds = %tg_to_blkg.exit.i337
  %363 = ptrtoint ptr %last_check_time.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %last_check_time.i, align 8
  %throtl_slice.i = getelementptr inbounds %struct.throtl_data, ptr %352, i32 0, i32 3
  %365 = ptrtoint ptr %throtl_slice.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %throtl_slice.i, align 4
  %367 = add i32 %364, %366
  %sub.i338 = sub i32 %350, %367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i338)
  %cmp7.i = icmp slt i32 %sub.i338, 0
  br i1 %cmp7.i, label %if.end5.i.throtl_downgrade_check.exit_crit_edge, label %if.end9.i

if.end5.i.throtl_downgrade_check.exit_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_downgrade_check.exit

if.end9.i:                                        ; preds = %if.end5.i
  %sub11.i = sub i32 %350, %364
  %368 = ptrtoint ptr %last_check_time.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %350, ptr %last_check_time.i, align 8
  %call13.i = tail call fastcc i32 @tg_last_low_overflow_time(ptr noundef %tg.1.ph) #16
  %369 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %td.i, align 4
  %throtl_slice15.i = getelementptr inbounds %struct.throtl_data, ptr %370, i32 0, i32 3
  %371 = ptrtoint ptr %throtl_slice15.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %throtl_slice15.i, align 4
  %373 = add i32 %call13.i, %372
  %sub17.i = sub i32 %350, %373
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17.i)
  %cmp18.i = icmp slt i32 %sub17.i, 0
  br i1 %cmp18.i, label %if.end9.i.throtl_downgrade_check.exit_crit_edge, label %if.end20.i

if.end9.i.throtl_downgrade_check.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_downgrade_check.exit

if.end20.i:                                       ; preds = %if.end9.i
  %374 = ptrtoint ptr %bps21.i to i32
  call void @__asan_load8_noabort(i32 %374)
  %375 = load i64, ptr %bps21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %375)
  %tobool24.not.i = icmp eq i64 %375, 0
  br i1 %tobool24.not.i, label %if.end20.i.if.end222.i_crit_edge, label %if.then25.i

if.end20.i.if.end222.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end222.i

if.then25.i:                                      ; preds = %if.end20.i
  %376 = ptrtoint ptr %last_bytes_disp.i to i32
  call void @__asan_load8_noabort(i32 %376)
  %377 = load i64, ptr %last_bytes_disp.i, align 8
  %mul.i339 = mul i64 %377, 100
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i339)
  %cmp198.i = icmp ult i64 %mul.i339, 4294967296
  br i1 %cmp198.i, label %if.then202.i, label %if.else208.i, !prof !137

if.then202.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv203.i = trunc i64 %mul.i339 to i32
  %div206.i = udiv i32 %conv203.i, %sub11.i
  %conv207.i = zext i32 %div206.i to i64
  br label %if.end212.i

if.else208.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #18
  %378 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub11.i, i64 %mul.i339) #21, !srcloc !143
  %asmresult1.i.i = extractvalue { i64, i64 } %378, 1
  br label %if.end212.i

if.end212.i:                                      ; preds = %if.else208.i, %if.then202.i
  %bps.0.i = phi i64 [ %conv207.i, %if.then202.i ], [ %asmresult1.i.i, %if.else208.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %bps.0.i, i64 %375)
  %cmp217.not.i = icmp ult i64 %bps.0.i, %375
  br i1 %cmp217.not.i, label %if.end212.i.if.end222.i_crit_edge, label %if.then219.i

if.end212.i.if.end222.i_crit_edge:                ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end222.i

if.then219.i:                                     ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #18
  %379 = ptrtoint ptr %last_low_overflow_time.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %350, ptr %last_low_overflow_time.i, align 8
  br label %if.end222.i

if.end222.i:                                      ; preds = %if.then219.i, %if.end212.i.if.end222.i_crit_edge, %if.end20.i.if.end222.i_crit_edge
  %380 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_load8_noabort(i32 %380)
  %381 = load i64, ptr %arrayidx224.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %381)
  %tobool226.not.i = icmp eq i64 %381, 0
  br i1 %tobool226.not.i, label %if.end222.i.if.end461.i_crit_edge, label %if.then227.i

if.end222.i.if.end461.i_crit_edge:                ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end461.i

if.then227.i:                                     ; preds = %if.end222.i
  %382 = ptrtoint ptr %arrayidx229.i344 to i32
  call void @__asan_load8_noabort(i32 %382)
  %383 = load i64, ptr %arrayidx229.i344, align 8
  %mul230.i = mul i64 %383, 100
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul230.i)
  %cmp432.i = icmp ult i64 %mul230.i, 4294967296
  br i1 %cmp432.i, label %if.then440.i, label %if.else446.i, !prof !137

if.then440.i:                                     ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv441.i = trunc i64 %mul230.i to i32
  %div444.i = udiv i32 %conv441.i, %sub11.i
  %conv445.i = zext i32 %div444.i to i64
  br label %if.end450.i

if.else446.i:                                     ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #18
  %384 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub11.i, i64 %mul230.i) #21, !srcloc !143
  %asmresult1.i739.i = extractvalue { i64, i64 } %384, 1
  br label %if.end450.i

if.end450.i:                                      ; preds = %if.else446.i, %if.then440.i
  %bps.1.i = phi i64 [ %conv445.i, %if.then440.i ], [ %asmresult1.i739.i, %if.else446.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %bps.1.i, i64 %381)
  %cmp455.not.i = icmp ult i64 %bps.1.i, %381
  br i1 %cmp455.not.i, label %if.end450.i.if.end461.i_crit_edge, label %if.then457.i

if.end450.i.if.end461.i_crit_edge:                ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end461.i

if.then457.i:                                     ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #18
  %385 = ptrtoint ptr %arrayidx459.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %350, ptr %arrayidx459.i, align 4
  br label %if.end461.i

if.end461.i:                                      ; preds = %if.then457.i, %if.end450.i.if.end461.i_crit_edge, %if.end222.i.if.end461.i_crit_edge
  %386 = ptrtoint ptr %iops462.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %iops462.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %tobool465.not.i = icmp eq i32 %387, 0
  br i1 %tobool465.not.i, label %if.end461.i.if.end484.i_crit_edge, label %if.then466.i

if.end461.i.if.end484.i_crit_edge:                ; preds = %if.end461.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end484.i

if.then466.i:                                     ; preds = %if.end461.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_io_split_cnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !144
  tail call void @llvm.prefetch.p0(ptr %last_io_split_cnt.i, i32 1, i32 3, i32 1) #16
  %388 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %last_io_split_cnt.i) #16, !srcloc !145
  %asmresult.i.i.i = extractvalue { i32, i32 } %388, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !146
  %389 = ptrtoint ptr %last_io_disp.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %last_io_disp.i, align 8
  %add470.i = add i32 %390, %asmresult.i.i.i
  store i32 %add470.i, ptr %last_io_disp.i, align 8
  %mul473.i = mul i32 %add470.i, 100
  %div474.i = udiv i32 %mul473.i, %sub11.i
  %391 = ptrtoint ptr %iops462.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %iops462.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div474.i, i32 %392)
  %cmp478.not.i = icmp ult i32 %div474.i, %392
  br i1 %cmp478.not.i, label %if.then466.i.if.end484.i_crit_edge, label %if.then480.i

if.then466.i.if.end484.i_crit_edge:               ; preds = %if.then466.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end484.i

if.then480.i:                                     ; preds = %if.then466.i
  call void @__sanitizer_cov_trace_pc() #18
  %393 = ptrtoint ptr %last_low_overflow_time481.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %350, ptr %last_low_overflow_time481.i, align 8
  br label %if.end484.i

if.end484.i:                                      ; preds = %if.then480.i, %if.then466.i.if.end484.i_crit_edge, %if.end461.i.if.end484.i_crit_edge
  %394 = ptrtoint ptr %arrayidx486.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %arrayidx486.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %395)
  %tobool488.not.i = icmp eq i32 %395, 0
  br i1 %tobool488.not.i, label %if.end484.i.while.body.i.i.preheader_crit_edge, label %if.then489.i

if.end484.i.while.body.i.i.preheader_crit_edge:   ; preds = %if.end484.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.preheader

if.then489.i:                                     ; preds = %if.end484.i
  %call.i.i730.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx491.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !144
  tail call void @llvm.prefetch.p0(ptr %arrayidx491.i, i32 1, i32 3, i32 1) #16
  %396 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx491.i) #16, !srcloc !145
  %asmresult.i.i731.i = extractvalue { i32, i32 } %396, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !146
  %397 = ptrtoint ptr %arrayidx494.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %arrayidx494.i, align 4
  %add495.i = add i32 %398, %asmresult.i.i731.i
  store i32 %add495.i, ptr %arrayidx494.i, align 4
  %mul498.i = mul i32 %add495.i, 100
  %div499.i = udiv i32 %mul498.i, %sub11.i
  %399 = ptrtoint ptr %arrayidx486.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %arrayidx486.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div499.i, i32 %400)
  %cmp503.not.i = icmp ult i32 %div499.i, %400
  br i1 %cmp503.not.i, label %if.then489.i.while.body.i.i.preheader_crit_edge, label %if.then505.i

if.then489.i.while.body.i.i.preheader_crit_edge:  ; preds = %if.then489.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.preheader

if.then505.i:                                     ; preds = %if.then489.i
  call void @__sanitizer_cov_trace_pc() #18
  %401 = ptrtoint ptr %arrayidx507.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %350, ptr %arrayidx507.i, align 4
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %if.then505.i, %if.then489.i.while.body.i.i.preheader_crit_edge, %if.end484.i.while.body.i.i.preheader_crit_edge
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %tg_to_blkg.exit.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %tg.addr.0.i.i = phi ptr [ %add.ptr.i.i.i, %tg_to_blkg.exit.i.i.while.body.i.i_crit_edge ], [ %tg.1.ph, %while.body.i.i.preheader ]
  %td1.i.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.addr.0.i.i, i32 0, i32 2
  %402 = ptrtoint ptr %td1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %td1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %404 = load volatile i32, ptr @jiffies, align 128
  %low_upgrade_time.i.i.i = getelementptr inbounds %struct.throtl_data, ptr %403, i32 0, i32 7
  %405 = ptrtoint ptr %low_upgrade_time.i.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %low_upgrade_time.i.i.i, align 4
  %throtl_slice.i.i.i = getelementptr inbounds %struct.throtl_data, ptr %403, i32 0, i32 3
  %407 = ptrtoint ptr %throtl_slice.i.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %throtl_slice.i.i.i, align 4
  %409 = add i32 %406, %408
  %sub.i.i.i = sub i32 %404, %409
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i345, label %while.body.i.i.if.end513.i_crit_edge

while.body.i.i.if.end513.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end513.i

land.lhs.true.i.i.i345:                           ; preds = %while.body.i.i
  %call.i.i740.i = tail call fastcc i32 @tg_last_low_overflow_time(ptr noundef %tg.addr.0.i.i) #16
  %410 = ptrtoint ptr %throtl_slice.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %throtl_slice.i.i.i, align 4
  %412 = add i32 %call.i.i740.i, %411
  %sub4.i.i.i = sub i32 %404, %412
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub4.i.i.i)
  %cmp5.i.i.i = icmp sgt i32 %sub4.i.i.i, -1
  br i1 %cmp5.i.i.i, label %land.lhs.true6.i.i.i, label %land.lhs.true.i.i.i345.if.end513.i_crit_edge

land.lhs.true.i.i.i345.if.end513.i_crit_edge:     ; preds = %land.lhs.true.i.i.i345
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end513.i

land.lhs.true6.i.i.i:                             ; preds = %land.lhs.true.i.i.i345
  %call7.i.i.i = tail call fastcc zeroext i1 @throtl_tg_is_idle(ptr noundef %tg.addr.0.i.i) #16
  br i1 %call7.i.i.i, label %lor.lhs.false.i.i.i, label %land.lhs.true6.i.i.i.if.end.i.i_crit_edge

land.lhs.true6.i.i.i.if.end.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true6.i.i.i
  %tobool.not.i.i.i.i.i = icmp eq ptr %tg.addr.0.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %lor.lhs.false.i.i.i.tg_to_blkg.exit.i.i.i_crit_edge, label %cond.true.i.i.i.i.i

lor.lhs.false.i.i.i.tg_to_blkg.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tg_to_blkg.exit.i.i.i

cond.true.i.i.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %413 = ptrtoint ptr %tg.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %tg.addr.0.i.i, align 4
  br label %tg_to_blkg.exit.i.i.i

tg_to_blkg.exit.i.i.i:                            ; preds = %cond.true.i.i.i.i.i, %lor.lhs.false.i.i.i.tg_to_blkg.exit.i.i.i_crit_edge
  %cond.i.i.i.i.i = phi ptr [ %414, %cond.true.i.i.i.i.i ], [ null, %lor.lhs.false.i.i.i.tg_to_blkg.exit.i.i.i_crit_edge ]
  %blkcg.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i.i.i.i, i32 0, i32 3
  %415 = ptrtoint ptr %blkcg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %blkcg.i.i.i, align 4
  %children.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %416, i32 0, i32 4
  %417 = ptrtoint ptr %children.i.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load volatile ptr, ptr %children.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %418, %children.i.i.i
  br i1 %cmp.i.not.i.i.i, label %tg_to_blkg.exit.i.i.i.if.end513.i_crit_edge, label %tg_to_blkg.exit.i.i.i.if.end.i.i_crit_edge

tg_to_blkg.exit.i.i.i.if.end.i.i_crit_edge:       ; preds = %tg_to_blkg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

tg_to_blkg.exit.i.i.i.if.end513.i_crit_edge:      ; preds = %tg_to_blkg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end513.i

if.end.i.i:                                       ; preds = %tg_to_blkg.exit.i.i.i.if.end.i.i_crit_edge, %land.lhs.true6.i.i.i.if.end.i.i_crit_edge
  %service_queue.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.addr.0.i.i, i32 0, i32 3
  %419 = ptrtoint ptr %service_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %service_queue.i.i, align 8
  %tobool.not.i.i741.i = icmp eq ptr %420, null
  br i1 %tobool.not.i.i741.i, label %if.end.i.i.if.then511.i_crit_edge, label %land.lhs.true.i9.i.i

if.end.i.i.if.then511.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then511.i

land.lhs.true.i9.i.i:                             ; preds = %if.end.i.i
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %420, align 4
  %tobool1.not.i.i.i = icmp eq ptr %422, null
  %add.ptr.i.i.i = getelementptr i8, ptr %420, i32 -24
  %tobool.not.i.i346 = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond.i.i347 = select i1 %tobool1.not.i.i.i, i1 true, i1 %tobool.not.i.i346
  br i1 %or.cond.i.i347, label %land.lhs.true.i9.i.i.if.then511.i_crit_edge, label %tg_to_blkg.exit.i.i

land.lhs.true.i9.i.i.if.then511.i_crit_edge:      ; preds = %land.lhs.true.i9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then511.i

tg_to_blkg.exit.i.i:                              ; preds = %land.lhs.true.i9.i.i
  %423 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %add.ptr.i.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %424, i32 0, i32 4
  %425 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %parent.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %426, null
  br i1 %tobool3.not.i.i, label %tg_to_blkg.exit.i.i.if.then511.i_crit_edge, label %tg_to_blkg.exit.i.i.while.body.i.i_crit_edge

tg_to_blkg.exit.i.i.while.body.i.i_crit_edge:     ; preds = %tg_to_blkg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

tg_to_blkg.exit.i.i.if.then511.i_crit_edge:       ; preds = %tg_to_blkg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then511.i

if.then511.i:                                     ; preds = %tg_to_blkg.exit.i.i.if.then511.i_crit_edge, %land.lhs.true.i9.i.i.if.then511.i_crit_edge, %if.end.i.i.if.then511.i_crit_edge
  %427 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %td.i, align 4
  %scale.i.i = getelementptr inbounds %struct.throtl_data, ptr %428, i32 0, i32 9
  %429 = ptrtoint ptr %scale.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %scale.i.i, align 4
  %div96.i.i = lshr i32 %430, 1
  store i32 %div96.i.i, ptr %scale.i.i, align 4
  %tobool.not.i110.i.i = icmp eq ptr %428, null
  br i1 %tobool.not.i110.i.i, label %sq_to_td.exit.thread.i.i, label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then511.i
  %431 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %428, align 4
  %tobool1.not.i.i742.i = icmp eq ptr %432, null
  %add.ptr.i.i743.i = getelementptr i8, ptr %428, i32 -24
  %spec.select.i.i.i = select i1 %tobool1.not.i.i742.i, ptr null, ptr %add.ptr.i.i743.i
  %tobool.not.i112.i.i = icmp eq ptr %add.ptr.i.i743.i, null
  %or.cond.i.i.i = or i1 %tobool.not.i112.i.i, %tobool1.not.i.i742.i
  br i1 %or.cond.i.i.i, label %land.lhs.true.i.i.i.i.sq_to_td.exit.i.i_crit_edge, label %if.then.i113.i.i

land.lhs.true.i.i.i.i.sq_to_td.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit.i.i

if.then.i113.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %td.i.i.i = getelementptr i8, ptr %428, i32 -4
  %433 = ptrtoint ptr %td.i.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %td.i.i.i, align 4
  br label %sq_to_td.exit.i.i

sq_to_td.exit.i.i:                                ; preds = %if.then.i113.i.i, %land.lhs.true.i.i.i.i.sq_to_td.exit.i.i_crit_edge
  %retval.0.i114.i.i = phi ptr [ %434, %if.then.i113.i.i ], [ %428, %land.lhs.true.i.i.i.i.sq_to_td.exit.i.i_crit_edge ]
  %queue.i.i = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i114.i.i, i32 0, i32 1
  %435 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %queue.i.i, align 4
  %call3.i.i = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %436) #16
  br i1 %call3.i.i, label %if.end.i744.i, label %sq_to_td.exit.i.i.cleanup.i.i_crit_edge, !prof !142

sq_to_td.exit.i.i.cleanup.i.i_crit_edge:          ; preds = %sq_to_td.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

sq_to_td.exit.thread.i.i:                         ; preds = %if.then511.i
  call void @__asan_load4_noabort(i32 92)
  %437 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call3121.i.i = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %437) #16
  br i1 %call3121.i.i, label %sq_to_td.exit.thread.i.i.do.body36.i.i_crit_edge, label %sq_to_td.exit.thread.i.i.cleanup.i.i_crit_edge, !prof !142

sq_to_td.exit.thread.i.i.cleanup.i.i_crit_edge:   ; preds = %sq_to_td.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i.i

sq_to_td.exit.thread.i.i.do.body36.i.i_crit_edge: ; preds = %sq_to_td.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body36.i.i

if.end.i744.i:                                    ; preds = %sq_to_td.exit.i.i
  %tobool6.not.i.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.end.i744.i.do.body36.i.i_crit_edge, label %do.body8.i.i

if.end.i744.i.do.body36.i.i_crit_edge:            ; preds = %if.end.i744.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body36.i.i

do.body8.i.i:                                     ; preds = %if.end.i744.i
  %438 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i.i.i = and i32 %438, -16384
  %439 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %439, i32 0, i32 1
  %440 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %441, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i745.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i745.i, label %do.body8.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i747.i

do.body8.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i747.i:                           ; preds = %do.body8.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i746.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i746.i, label %land.lhs.true.i.i747.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i747.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i747.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i747.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i747.i.rcu_read_lock.exit.i.i_crit_edge, %do.body8.i.i.rcu_read_lock.exit.i.i_crit_edge
  %442 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %queue.i.i, align 4
  %blk_trace.i.i = getelementptr inbounds %struct.request_queue, ptr %443, i32 0, i32 46
  %444 = ptrtoint ptr %blk_trace.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load volatile ptr, ptr %blk_trace.i.i, align 8
  %call12.i.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %land.lhs.true.i.i348, label %rcu_read_lock.exit.i.i.do.end21.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end21.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21.i.i

land.lhs.true.i.i348:                             ; preds = %rcu_read_lock.exit.i.i
  %call14.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true.i.i348.do.end21.i.i_crit_edge, label %land.lhs.true16.i.i

land.lhs.true.i.i348.do.end21.i.i_crit_edge:      ; preds = %land.lhs.true.i.i348
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21.i.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true.i.i348
  %.b98.i.i = load i1, ptr @throtl_downgrade_state.__warned, align 1
  br i1 %.b98.i.i, label %land.lhs.true16.i.i.do.end21.i.i_crit_edge, label %if.then18.i.i

land.lhs.true16.i.i.do.end21.i.i_crit_edge:       ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_downgrade_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1843, ptr noundef nonnull @.str.1) #16
  br label %do.end21.i.i

do.end21.i.i:                                     ; preds = %if.then18.i.i, %land.lhs.true16.i.i.do.end21.i.i_crit_edge, %land.lhs.true.i.i348.do.end21.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end21.i.i_crit_edge
  %tobool23.not.i.i = icmp eq ptr %445, null
  br i1 %tobool23.not.i.i, label %do.end21.i.i.cleanup.sink.split.i.i_crit_edge, label %tg_to_blkg.exit.i748.i, !prof !137

do.end21.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %do.end21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i.i

tg_to_blkg.exit.i748.i:                           ; preds = %do.end21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %446 = ptrtoint ptr %spec.select.i.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %spec.select.i.i.i, align 4
  %blkcg.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %447, i32 0, i32 3
  %448 = ptrtoint ptr %blkcg.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %blkcg.i.i, align 4
  %450 = ptrtoint ptr %scale.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %scale.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %445, ptr noundef %449, ptr noundef nonnull @.str.33, i32 noundef %451) #16
  br label %cleanup.sink.split.i.i

do.body36.i.i:                                    ; preds = %if.end.i744.i.do.body36.i.i_crit_edge, %sq_to_td.exit.thread.i.i.do.body36.i.i_crit_edge
  %queue123127.i.i = phi ptr [ %queue.i.i, %if.end.i744.i.do.body36.i.i_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit.thread.i.i.do.body36.i.i_crit_edge ]
  %452 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i99.i.i = and i32 %452, -16384
  %453 = inttoptr i32 %and.i.i.i.i.i99.i.i to ptr
  %preempt_count.i.i.i.i100.i.i = getelementptr inbounds %struct.thread_info, ptr %453, i32 0, i32 1
  %454 = ptrtoint ptr %preempt_count.i.i.i.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load volatile i32, ptr %preempt_count.i.i.i.i100.i.i, align 4
  %add.i.i.i101.i.i = add i32 %455, 1
  store volatile i32 %add.i.i.i101.i.i, ptr %preempt_count.i.i.i.i100.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i102.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i102.i.i, label %do.body36.i.i.rcu_read_lock.exit109.i.i_crit_edge, label %land.lhs.true.i105.i.i

do.body36.i.i.rcu_read_lock.exit109.i.i_crit_edge: ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit109.i.i

land.lhs.true.i105.i.i:                           ; preds = %do.body36.i.i
  %call1.i103.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103.i.i)
  %tobool.not.i104.i.i = icmp eq i32 %call1.i103.i.i, 0
  br i1 %tobool.not.i104.i.i, label %land.lhs.true.i105.i.i.rcu_read_lock.exit109.i.i_crit_edge, label %land.lhs.true2.i107.i.i

land.lhs.true.i105.i.i.rcu_read_lock.exit109.i.i_crit_edge: ; preds = %land.lhs.true.i105.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit109.i.i

land.lhs.true2.i107.i.i:                          ; preds = %land.lhs.true.i105.i.i
  %.b4.i106.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i106.i.i, label %land.lhs.true2.i107.i.i.rcu_read_lock.exit109.i.i_crit_edge, label %if.then.i108.i.i

land.lhs.true2.i107.i.i.rcu_read_lock.exit109.i.i_crit_edge: ; preds = %land.lhs.true2.i107.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit109.i.i

if.then.i108.i.i:                                 ; preds = %land.lhs.true2.i107.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit109.i.i

rcu_read_lock.exit109.i.i:                        ; preds = %if.then.i108.i.i, %land.lhs.true2.i107.i.i.rcu_read_lock.exit109.i.i_crit_edge, %land.lhs.true.i105.i.i.rcu_read_lock.exit109.i.i_crit_edge, %do.body36.i.i.rcu_read_lock.exit109.i.i_crit_edge
  %456 = ptrtoint ptr %queue123127.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %queue123127.i.i, align 4
  %blk_trace43.i.i = getelementptr inbounds %struct.request_queue, ptr %457, i32 0, i32 46
  %458 = ptrtoint ptr %blk_trace43.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load volatile ptr, ptr %blk_trace43.i.i, align 8
  %call45.i.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %tobool46.not.i.i = icmp eq i32 %call45.i.i, 0
  br i1 %tobool46.not.i.i, label %land.lhs.true47.i.i, label %rcu_read_lock.exit109.i.i.do.end55.i.i_crit_edge

rcu_read_lock.exit109.i.i.do.end55.i.i_crit_edge: ; preds = %rcu_read_lock.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end55.i.i

land.lhs.true47.i.i:                              ; preds = %rcu_read_lock.exit109.i.i
  %call48.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %land.lhs.true47.i.i.do.end55.i.i_crit_edge, label %land.lhs.true50.i.i

land.lhs.true47.i.i.do.end55.i.i_crit_edge:       ; preds = %land.lhs.true47.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end55.i.i

land.lhs.true50.i.i:                              ; preds = %land.lhs.true47.i.i
  %.b9597.i.i = load i1, ptr @throtl_downgrade_state.__warned.34, align 1
  br i1 %.b9597.i.i, label %land.lhs.true50.i.i.do.end55.i.i_crit_edge, label %if.then52.i.i

land.lhs.true50.i.i.do.end55.i.i_crit_edge:       ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end55.i.i

if.then52.i.i:                                    ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_downgrade_state.__warned.34, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1843, ptr noundef nonnull @.str.1) #16
  br label %do.end55.i.i

do.end55.i.i:                                     ; preds = %if.then52.i.i, %land.lhs.true50.i.i.do.end55.i.i_crit_edge, %land.lhs.true47.i.i.do.end55.i.i_crit_edge, %rcu_read_lock.exit109.i.i.do.end55.i.i_crit_edge
  %tobool57.not.i.i = icmp eq ptr %459, null
  br i1 %tobool57.not.i.i, label %do.end55.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then64.i.i, !prof !137

do.end55.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %do.end55.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i.i

if.then64.i.i:                                    ; preds = %do.end55.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %460 = ptrtoint ptr %scale.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %scale.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %459, ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef %461) #16
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then64.i.i, %do.end55.i.i.cleanup.sink.split.i.i_crit_edge, %tg_to_blkg.exit.i748.i, %do.end21.i.i.cleanup.sink.split.i.i_crit_edge
  tail call fastcc void @rcu_read_unlock() #16
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.sink.split.i.i, %sq_to_td.exit.thread.i.i.cleanup.i.i_crit_edge, %sq_to_td.exit.i.i.cleanup.i.i_crit_edge
  %462 = ptrtoint ptr %scale.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %scale.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %463)
  %tobool74.not.i.i = icmp eq i32 %463, 0
  br i1 %tobool74.not.i.i, label %if.end77.i.i, label %if.then75.i.i

if.then75.i.i:                                    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %464 = load volatile i32, ptr @jiffies, align 128
  %throtl_slice.i.i = getelementptr inbounds %struct.throtl_data, ptr %428, i32 0, i32 3
  %465 = ptrtoint ptr %throtl_slice.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %throtl_slice.i.i, align 4
  %mul.i.i = mul i32 %466, %463
  %sub.i749.i = sub i32 %464, %mul.i.i
  %low_upgrade_time.i.i = getelementptr inbounds %struct.throtl_data, ptr %428, i32 0, i32 7
  %467 = ptrtoint ptr %low_upgrade_time.i.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 %sub.i749.i, ptr %low_upgrade_time.i.i, align 4
  br label %if.end513.i

if.end77.i.i:                                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %limit_index.i.i = getelementptr inbounds %struct.throtl_data, ptr %428, i32 0, i32 5
  %468 = ptrtoint ptr %limit_index.i.i to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 0, ptr %limit_index.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %469 = load volatile i32, ptr @jiffies, align 128
  %low_downgrade_time.i.i = getelementptr inbounds %struct.throtl_data, ptr %428, i32 0, i32 8
  %470 = ptrtoint ptr %low_downgrade_time.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %469, ptr %low_downgrade_time.i.i, align 4
  br label %if.end513.i

if.end513.i:                                      ; preds = %if.end77.i.i, %if.then75.i.i, %tg_to_blkg.exit.i.i.i.if.end513.i_crit_edge, %land.lhs.true.i.i.i345.if.end513.i_crit_edge, %while.body.i.i.if.end513.i_crit_edge
  %471 = call ptr @memset(ptr %last_bytes_disp514.i, i32 0, i32 24)
  br label %throtl_downgrade_check.exit

throtl_downgrade_check.exit:                      ; preds = %if.end513.i, %if.end9.i.throtl_downgrade_check.exit_crit_edge, %if.end5.i.throtl_downgrade_check.exit_crit_edge, %tg_to_blkg.exit.i337.throtl_downgrade_check.exit_crit_edge, %lor.lhs.false.i334.throtl_downgrade_check.exit_crit_edge, %if.end19.throtl_downgrade_check.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %472 = load volatile i32, ptr @jiffies, align 128
  %473 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %td.i, align 4
  %limit_index.i350 = getelementptr inbounds %struct.throtl_data, ptr %474, i32 0, i32 5
  %475 = ptrtoint ptr %limit_index.i350 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %limit_index.i350, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %476)
  %cmp.not.i351 = icmp eq i32 %476, 0
  br i1 %cmp.not.i351, label %if.end.i355, label %throtl_downgrade_check.exit.throtl_upgrade_check.exit_crit_edge

throtl_downgrade_check.exit.throtl_upgrade_check.exit_crit_edge: ; preds = %throtl_downgrade_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_upgrade_check.exit

if.end.i355:                                      ; preds = %throtl_downgrade_check.exit
  %477 = ptrtoint ptr %last_check_time.i352 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %last_check_time.i352, align 8
  %throtl_slice.i353 = getelementptr inbounds %struct.throtl_data, ptr %474, i32 0, i32 3
  %479 = ptrtoint ptr %throtl_slice.i353 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %throtl_slice.i353, align 4
  %481 = add i32 %478, %480
  %sub.i354 = sub i32 %472, %481
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i354)
  %cmp2.i = icmp slt i32 %sub.i354, 0
  br i1 %cmp2.i, label %if.end.i355.throtl_upgrade_check.exit_crit_edge, label %if.end4.i

if.end.i355.throtl_upgrade_check.exit_crit_edge:  ; preds = %if.end.i355
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_upgrade_check.exit

if.end4.i:                                        ; preds = %if.end.i355
  %482 = ptrtoint ptr %last_check_time.i352 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %472, ptr %last_check_time.i352, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %483 = load volatile i32, ptr @jiffies, align 128
  %484 = load volatile i32, ptr @jiffies, align 128
  %485 = ptrtoint ptr %bps.i.i to i32
  call void @__asan_load8_noabort(i32 %485)
  %486 = load i64, ptr %bps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %486)
  %tobool.not.i.i356 = icmp eq i64 %486, 0
  br i1 %tobool.not.i.i356, label %lor.lhs.false.i.i, label %if.end4.i.if.then.i.i357_crit_edge

if.end4.i.if.then.i.i357_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i357

lor.lhs.false.i.i:                                ; preds = %if.end4.i
  %487 = ptrtoint ptr %iops.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %iops.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %488)
  %tobool4.not.i.i = icmp eq i32 %488, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.if.end.i.i358_crit_edge, label %lor.lhs.false.i.i.if.then.i.i357_crit_edge

lor.lhs.false.i.i.if.then.i.i357_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i357

lor.lhs.false.i.i.if.end.i.i358_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i358

if.then.i.i357:                                   ; preds = %lor.lhs.false.i.i.if.then.i.i357_crit_edge, %if.end4.i.if.then.i.i357_crit_edge
  %489 = ptrtoint ptr %last_low_overflow_time.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %last_low_overflow_time.i.i, align 8
  br label %if.end.i.i358

if.end.i.i358:                                    ; preds = %if.then.i.i357, %lor.lhs.false.i.i.if.end.i.i358_crit_edge
  %rtime.0.i.i = phi i32 [ %490, %if.then.i.i357 ], [ %483, %lor.lhs.false.i.i.if.end.i.i358_crit_edge ]
  %491 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load8_noabort(i32 %491)
  %492 = load i64, ptr %arrayidx7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %492)
  %tobool9.not.i.i = icmp eq i64 %492, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false10.i.i, label %if.end.i.i358.if.then15.i.i_crit_edge

if.end.i.i358.if.then15.i.i_crit_edge:            ; preds = %if.end.i.i358
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i.i

lor.lhs.false10.i.i:                              ; preds = %if.end.i.i358
  %493 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %arrayidx12.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %494)
  %tobool14.not.i.i = icmp eq i32 %494, 0
  br i1 %tobool14.not.i.i, label %lor.lhs.false10.i.i.__tg_last_low_overflow_time.exit.i_crit_edge, label %lor.lhs.false10.i.i.if.then15.i.i_crit_edge

lor.lhs.false10.i.i.if.then15.i.i_crit_edge:      ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i.i

lor.lhs.false10.i.i.__tg_last_low_overflow_time.exit.i_crit_edge: ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__tg_last_low_overflow_time.exit.i

if.then15.i.i:                                    ; preds = %lor.lhs.false10.i.i.if.then15.i.i_crit_edge, %if.end.i.i358.if.then15.i.i_crit_edge
  %495 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %arrayidx17.i.i, align 4
  br label %__tg_last_low_overflow_time.exit.i

__tg_last_low_overflow_time.exit.i:               ; preds = %if.then15.i.i, %lor.lhs.false10.i.i.__tg_last_low_overflow_time.exit.i_crit_edge
  %wtime.0.i.i = phi i32 [ %496, %if.then15.i.i ], [ %484, %lor.lhs.false10.i.i.__tg_last_low_overflow_time.exit.i_crit_edge ]
  %497 = tail call i32 @llvm.umin.i32(i32 %rtime.0.i.i, i32 %wtime.0.i.i) #16
  %498 = ptrtoint ptr %throtl_slice.i353 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %throtl_slice.i353, align 4
  %500 = add i32 %497, %499
  %sub9.i = sub i32 %472, %500
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub9.i)
  %cmp10.i = icmp sgt i32 %sub9.i, -1
  br i1 %cmp10.i, label %if.end12.i, label %__tg_last_low_overflow_time.exit.i.throtl_upgrade_check.exit_crit_edge

__tg_last_low_overflow_time.exit.i.throtl_upgrade_check.exit_crit_edge: ; preds = %__tg_last_low_overflow_time.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_upgrade_check.exit

if.end12.i:                                       ; preds = %__tg_last_low_overflow_time.exit.i
  %call14.i = tail call fastcc zeroext i1 @throtl_can_upgrade(ptr noundef %474, ptr noundef null) #16
  br i1 %call14.i, label %if.then15.i, label %if.end12.i.throtl_upgrade_check.exit_crit_edge

if.end12.i.throtl_upgrade_check.exit_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_upgrade_check.exit

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %501 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %td.i, align 4
  tail call fastcc void @throtl_upgrade_state(ptr noundef %502) #16
  br label %throtl_upgrade_check.exit

throtl_upgrade_check.exit:                        ; preds = %if.then15.i, %if.end12.i.throtl_upgrade_check.exit_crit_edge, %__tg_last_low_overflow_time.exit.i.throtl_upgrade_check.exit_crit_edge, %if.end.i355.throtl_upgrade_check.exit_crit_edge, %throtl_downgrade_check.exit.throtl_upgrade_check.exit_crit_edge
  %503 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %504)
  %tobool23.not = icmp eq i32 %504, 0
  br i1 %tobool23.not, label %if.end25, label %throtl_upgrade_check.exit.do.body_crit_edge

throtl_upgrade_check.exit.do.body_crit_edge:      ; preds = %throtl_upgrade_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end25:                                         ; preds = %throtl_upgrade_check.exit
  %call26 = tail call fastcc zeroext i1 @tg_may_dispatch(ptr noundef %tg.1.ph, ptr noundef %bio, ptr noundef null)
  br i1 %call26, label %if.end35, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %505 = load volatile i32, ptr @jiffies, align 128
  %506 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 %505, ptr %arrayidx, align 4
  %call32 = tail call fastcc zeroext i1 @throtl_can_upgrade(ptr noundef %12, ptr noundef %tg.1.ph)
  br i1 %call32, label %if.then33, label %if.then27.do.body_crit_edge

if.then27.do.body_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then33:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @throtl_upgrade_state(ptr noundef %12)
  br label %while.cond

if.end35:                                         ; preds = %if.end25
  %507 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %bi_opf, align 8
  %and.i359 = and i32 %508, 255
  %and.i.i360 = and i32 %508, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i359)
  %cmp.i.i361 = icmp eq i32 %and.i359, 3
  br i1 %cmp.i.i361, label %if.end35.throtl_bio_data_size.exit.i_crit_edge, label %if.end.i.i362, !prof !142

if.end35.throtl_bio_data_size.exit.i_crit_edge:   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_bio_data_size.exit.i

if.end.i.i362:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %509 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %bi_size.i.i, align 8
  br label %throtl_bio_data_size.exit.i

throtl_bio_data_size.exit.i:                      ; preds = %if.end.i.i362, %if.end35.throtl_bio_data_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %510, %if.end.i.i362 ], [ 512, %if.end35.throtl_bio_data_size.exit.i_crit_edge ]
  %conv.i363 = zext i32 %retval.0.i.i to i64
  %arrayidx.i364 = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 13, i32 %and.i.i360
  %511 = ptrtoint ptr %arrayidx.i364 to i32
  call void @__asan_load8_noabort(i32 %511)
  %512 = load i64, ptr %arrayidx.i364, align 8
  %add.i365 = add i64 %512, %conv.i363
  store i64 %add.i365, ptr %arrayidx.i364, align 8
  %arrayidx5.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 14, i32 %and.i.i360
  %513 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %arrayidx5.i, align 4
  %inc.i366 = add i32 %514, 1
  store i32 %inc.i366, ptr %arrayidx5.i, align 4
  %arrayidx9.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 16, i32 %and.i.i360
  %515 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %515)
  %516 = load i64, ptr %arrayidx9.i, align 8
  %add10.i = add i64 %516, %conv.i363
  store i64 %add10.i, ptr %arrayidx9.i, align 8
  %arrayidx13.i = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 17, i32 %and.i.i360
  %517 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %arrayidx13.i, align 4
  %inc14.i = add i32 %518, 1
  store i32 %inc14.i, ptr %arrayidx13.i, align 4
  %519 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %519)
  %520 = load i16, ptr %bi_flags.i.i, align 4
  %521 = and i16 %520, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %521)
  %cmp.i27.not.i = icmp eq i16 %521, 0
  br i1 %cmp.i27.not.i, label %if.then.i367, label %throtl_bio_data_size.exit.i.throtl_charge_bio.exit_crit_edge

throtl_bio_data_size.exit.i.throtl_charge_bio.exit_crit_edge: ; preds = %throtl_bio_data_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_charge_bio.exit

if.then.i367:                                     ; preds = %throtl_bio_data_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %522 = or i16 %520, 128
  %523 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %523)
  store i16 %522, ptr %bi_flags.i.i, align 4
  br label %throtl_charge_bio.exit

throtl_charge_bio.exit:                           ; preds = %if.then.i367, %throtl_bio_data_size.exit.i.throtl_charge_bio.exit_crit_edge
  tail call fastcc void @throtl_trim_slice(ptr noundef %tg.1.ph, i1 noundef zeroext %tobool.i)
  %524 = ptrtoint ptr %sq.1.ph to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %sq.1.ph, align 4
  %tobool.not.i369 = icmp eq ptr %525, null
  br i1 %tobool.not.i369, label %throtl_charge_bio.exit.out_unlock_crit_edge, label %land.lhs.true.i372

throtl_charge_bio.exit.out_unlock_crit_edge:      ; preds = %throtl_charge_bio.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

land.lhs.true.i372:                               ; preds = %throtl_charge_bio.exit
  %arrayidx39 = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 5, i32 %and.i
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %525, align 4
  %tobool1.not.i370 = icmp eq ptr %527, null
  %add.ptr.i = getelementptr i8, ptr %525, i32 -24
  %tobool41.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %tobool1.not.i370, i1 true, i1 %tobool41.not
  br i1 %or.cond, label %land.lhs.true.i372.out_unlock_crit_edge, label %land.lhs.true.i372.while.cond.outer_crit_edge

land.lhs.true.i372.while.cond.outer_crit_edge:    ; preds = %land.lhs.true.i372
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer

land.lhs.true.i372.out_unlock_crit_edge:          ; preds = %land.lhs.true.i372
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

do.body:                                          ; preds = %if.then27.do.body_crit_edge, %throtl_upgrade_check.exit.do.body_crit_edge
  %nr_queued508 = getelementptr inbounds %struct.throtl_service_queue, ptr %sq.1.ph, i32 0, i32 2
  %tobool.not.i374 = icmp eq ptr %sq.1.ph, null
  br i1 %tobool.not.i374, label %sq_to_td.exit.thread, label %land.lhs.true.i.i386

land.lhs.true.i.i386:                             ; preds = %do.body
  %528 = ptrtoint ptr %sq.1.ph to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %sq.1.ph, align 4
  %tobool1.not.i375 = icmp eq ptr %529, null
  %add.ptr.i376 = getelementptr i8, ptr %sq.1.ph, i32 -24
  %spec.select.i377 = select i1 %tobool1.not.i375, ptr null, ptr %add.ptr.i376
  %tobool.not.i384 = icmp eq ptr %add.ptr.i376, null
  %or.cond.i385 = or i1 %tobool.not.i384, %tobool1.not.i375
  br i1 %or.cond.i385, label %land.lhs.true.i.i386.sq_to_td.exit_crit_edge, label %if.then.i388

land.lhs.true.i.i386.sq_to_td.exit_crit_edge:     ; preds = %land.lhs.true.i.i386
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit

if.then.i388:                                     ; preds = %land.lhs.true.i.i386
  call void @__sanitizer_cov_trace_pc() #18
  %td.i387 = getelementptr i8, ptr %sq.1.ph, i32 -4
  %530 = ptrtoint ptr %td.i387 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %td.i387, align 4
  br label %sq_to_td.exit

sq_to_td.exit:                                    ; preds = %if.then.i388, %land.lhs.true.i.i386.sq_to_td.exit_crit_edge
  %retval.0.i389 = phi ptr [ %531, %if.then.i388 ], [ %sq.1.ph, %land.lhs.true.i.i386.sq_to_td.exit_crit_edge ]
  %queue = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i389, i32 0, i32 1
  %532 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %queue, align 4
  %call46 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %533)
  br i1 %call46, label %if.end56, label %sq_to_td.exit.cleanup_crit_edge, !prof !142

sq_to_td.exit.cleanup_crit_edge:                  ; preds = %sq_to_td.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread:                             ; preds = %do.body
  call void @__asan_load4_noabort(i32 92)
  %534 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call46463 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %534)
  br i1 %call46463, label %sq_to_td.exit.thread.do.body110_crit_edge, label %sq_to_td.exit.thread.cleanup_crit_edge, !prof !142

sq_to_td.exit.thread.cleanup_crit_edge:           ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread.do.body110_crit_edge:        ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body110

if.end56:                                         ; preds = %sq_to_td.exit
  %tobool57.not = icmp eq ptr %spec.select.i377, null
  br i1 %tobool57.not, label %if.end56.do.body110_crit_edge, label %do.body59

if.end56.do.body110_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body110

do.body59:                                        ; preds = %if.end56
  %535 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i282 = and i32 %535, -16384
  %536 = inttoptr i32 %and.i.i.i.i.i282 to ptr
  %preempt_count.i.i.i.i283 = getelementptr inbounds %struct.thread_info, ptr %536, i32 0, i32 1
  %537 = ptrtoint ptr %preempt_count.i.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load volatile i32, ptr %preempt_count.i.i.i.i283, align 4
  %add.i.i.i284 = add i32 %538, 1
  store volatile i32 %add.i.i.i284, ptr %preempt_count.i.i.i.i283, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i285 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i285, label %do.body59.rcu_read_lock.exit292_crit_edge, label %land.lhs.true.i288

do.body59.rcu_read_lock.exit292_crit_edge:        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit292

land.lhs.true.i288:                               ; preds = %do.body59
  %call1.i286 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i286)
  %tobool.not.i287 = icmp eq i32 %call1.i286, 0
  br i1 %tobool.not.i287, label %land.lhs.true.i288.rcu_read_lock.exit292_crit_edge, label %land.lhs.true2.i290

land.lhs.true.i288.rcu_read_lock.exit292_crit_edge: ; preds = %land.lhs.true.i288
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit292

land.lhs.true2.i290:                              ; preds = %land.lhs.true.i288
  %.b4.i289 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i289, label %land.lhs.true2.i290.rcu_read_lock.exit292_crit_edge, label %if.then.i291

land.lhs.true2.i290.rcu_read_lock.exit292_crit_edge: ; preds = %land.lhs.true2.i290
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit292

if.then.i291:                                     ; preds = %land.lhs.true2.i290
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit292

rcu_read_lock.exit292:                            ; preds = %if.then.i291, %land.lhs.true2.i290.rcu_read_lock.exit292_crit_edge, %land.lhs.true.i288.rcu_read_lock.exit292_crit_edge, %do.body59.rcu_read_lock.exit292_crit_edge
  %539 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %queue, align 4
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %540, i32 0, i32 46
  %541 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load volatile ptr, ptr %blk_trace, align 8
  %call64 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true, label %rcu_read_lock.exit292.do.end73_crit_edge

rcu_read_lock.exit292.do.end73_crit_edge:         ; preds = %rcu_read_lock.exit292
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end73

land.lhs.true:                                    ; preds = %rcu_read_lock.exit292
  %call66 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true.do.end73_crit_edge, label %land.lhs.true68

land.lhs.true.do.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end73

land.lhs.true68:                                  ; preds = %land.lhs.true
  %.b281 = load i1, ptr @__blk_throtl_bio.__warned, align 1
  br i1 %.b281, label %land.lhs.true68.do.end73_crit_edge, label %if.then70

land.lhs.true68.do.end73_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end73

if.then70:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__blk_throtl_bio.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2146, ptr noundef nonnull @.str.1) #16
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %land.lhs.true68.do.end73_crit_edge, %land.lhs.true.do.end73_crit_edge, %rcu_read_lock.exit292.do.end73_crit_edge
  %tobool75.not = icmp eq ptr %542, null
  br i1 %tobool75.not, label %do.end73.cleanup.sink.split_crit_edge, label %tg_to_blkg.exit, !prof !137

do.end73.cleanup.sink.split_crit_edge:            ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

tg_to_blkg.exit:                                  ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #18
  %543 = ptrtoint ptr %spec.select.i377 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %spec.select.i377, align 4
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %544, i32 0, i32 3
  %545 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %blkcg, align 4
  %cond88 = select i1 %tobool.i, i32 87, i32 82
  %arrayidx91 = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 13, i32 %and.i
  %547 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load8_noabort(i32 %547)
  %548 = load i64, ptr %arrayidx91, align 8
  %549 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %bi_size.i.i, align 8
  %call96 = tail call fastcc i64 @tg_bps_limit(ptr noundef %tg.1.ph, i32 noundef %and.i)
  %arrayidx99 = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 14, i32 %and.i
  %551 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %arrayidx99, align 4
  %call102 = tail call fastcc i32 @tg_iops_limit(ptr noundef %tg.1.ph, i32 noundef %and.i)
  %553 = ptrtoint ptr %nr_queued508 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %nr_queued508, align 4
  %arrayidx106 = getelementptr %struct.throtl_service_queue, ptr %sq.1.ph, i32 0, i32 2, i32 1
  %555 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %arrayidx106, align 4
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %542, ptr noundef %546, ptr noundef nonnull @.str.2, i32 noundef %cond88, i64 noundef %548, i32 noundef %550, i64 noundef %call96, i32 noundef %552, i32 noundef %call102, i32 noundef %554, i32 noundef %556) #16
  br label %cleanup.sink.split

do.body110:                                       ; preds = %if.end56.do.body110_crit_edge, %sq_to_td.exit.thread.do.body110_crit_edge
  %queue465469 = phi ptr [ %queue, %if.end56.do.body110_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit.thread.do.body110_crit_edge ]
  %557 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i293 = and i32 %557, -16384
  %558 = inttoptr i32 %and.i.i.i.i.i293 to ptr
  %preempt_count.i.i.i.i294 = getelementptr inbounds %struct.thread_info, ptr %558, i32 0, i32 1
  %559 = ptrtoint ptr %preempt_count.i.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load volatile i32, ptr %preempt_count.i.i.i.i294, align 4
  %add.i.i.i295 = add i32 %560, 1
  store volatile i32 %add.i.i.i295, ptr %preempt_count.i.i.i.i294, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i296 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i296, label %do.body110.rcu_read_lock.exit303_crit_edge, label %land.lhs.true.i299

do.body110.rcu_read_lock.exit303_crit_edge:       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit303

land.lhs.true.i299:                               ; preds = %do.body110
  %call1.i297 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i297)
  %tobool.not.i298 = icmp eq i32 %call1.i297, 0
  br i1 %tobool.not.i298, label %land.lhs.true.i299.rcu_read_lock.exit303_crit_edge, label %land.lhs.true2.i301

land.lhs.true.i299.rcu_read_lock.exit303_crit_edge: ; preds = %land.lhs.true.i299
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit303

land.lhs.true2.i301:                              ; preds = %land.lhs.true.i299
  %.b4.i300 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i300, label %land.lhs.true2.i301.rcu_read_lock.exit303_crit_edge, label %if.then.i302

land.lhs.true2.i301.rcu_read_lock.exit303_crit_edge: ; preds = %land.lhs.true2.i301
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit303

if.then.i302:                                     ; preds = %land.lhs.true2.i301
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit303

rcu_read_lock.exit303:                            ; preds = %if.then.i302, %land.lhs.true2.i301.rcu_read_lock.exit303_crit_edge, %land.lhs.true.i299.rcu_read_lock.exit303_crit_edge, %do.body110.rcu_read_lock.exit303_crit_edge
  %561 = ptrtoint ptr %queue465469 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %queue465469, align 4
  %blk_trace117 = getelementptr inbounds %struct.request_queue, ptr %562, i32 0, i32 46
  %563 = ptrtoint ptr %blk_trace117 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load volatile ptr, ptr %blk_trace117, align 8
  %call119 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %land.lhs.true121, label %rcu_read_lock.exit303.do.end129_crit_edge

rcu_read_lock.exit303.do.end129_crit_edge:        ; preds = %rcu_read_lock.exit303
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end129

land.lhs.true121:                                 ; preds = %rcu_read_lock.exit303
  %call122 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.lhs.true121.do.end129_crit_edge, label %land.lhs.true124

land.lhs.true121.do.end129_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end129

land.lhs.true124:                                 ; preds = %land.lhs.true121
  %.b279280 = load i1, ptr @__blk_throtl_bio.__warned.3, align 1
  br i1 %.b279280, label %land.lhs.true124.do.end129_crit_edge, label %if.then126

land.lhs.true124.do.end129_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end129

if.then126:                                       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__blk_throtl_bio.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2146, ptr noundef nonnull @.str.1) #16
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %land.lhs.true124.do.end129_crit_edge, %land.lhs.true121.do.end129_crit_edge, %rcu_read_lock.exit303.do.end129_crit_edge
  %tobool131.not = icmp eq ptr %564, null
  br i1 %tobool131.not, label %do.end129.cleanup.sink.split_crit_edge, label %if.then138, !prof !137

do.end129.cleanup.sink.split_crit_edge:           ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then138:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #18
  %cond143 = select i1 %tobool.i, i32 87, i32 82
  %arrayidx147 = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 13, i32 %and.i
  %565 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load8_noabort(i32 %565)
  %566 = load i64, ptr %arrayidx147, align 8
  %567 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %bi_size.i.i, align 8
  %call152 = tail call fastcc i64 @tg_bps_limit(ptr noundef %tg.1.ph, i32 noundef %and.i)
  %arrayidx156 = getelementptr %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 14, i32 %and.i
  %569 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %arrayidx156, align 4
  %call159 = tail call fastcc i32 @tg_iops_limit(ptr noundef %tg.1.ph, i32 noundef %and.i)
  %571 = ptrtoint ptr %nr_queued508 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %nr_queued508, align 4
  %arrayidx163 = getelementptr %struct.throtl_service_queue, ptr %sq.1.ph, i32 0, i32 2, i32 1
  %573 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %arrayidx163, align 4
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %564, ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %cond143, i64 noundef %566, i32 noundef %568, i64 noundef %call152, i32 noundef %570, i32 noundef %call159, i32 noundef %572, i32 noundef %574) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then138, %do.end129.cleanup.sink.split_crit_edge, %tg_to_blkg.exit, %do.end73.cleanup.sink.split_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sq_to_td.exit.thread.cleanup_crit_edge, %sq_to_td.exit.cleanup_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %575 = load volatile i32, ptr @jiffies, align 128
  %576 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %576)
  store i32 %575, ptr %arrayidx, align 4
  %arrayidx178 = getelementptr %struct.throtl_data, ptr %12, i32 0, i32 2, i32 %and.i
  %577 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %arrayidx178, align 4
  %inc = add i32 %578, 1
  store i32 %inc, ptr %arrayidx178, align 4
  tail call fastcc void @throtl_add_bio_tg(ptr noundef %bio, ptr noundef %qn.1.ph, ptr noundef %tg.1.ph)
  %flags = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 7
  %579 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %flags, align 8
  %and179 = and i32 %580, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %cleanup.out_unlock_crit_edge, label %if.then181

cleanup.out_unlock_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then181:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @tg_update_disptime(ptr noundef %tg.1.ph)
  %service_queue182 = getelementptr inbounds %struct.throtl_grp, ptr %tg.1.ph, i32 0, i32 3
  %581 = ptrtoint ptr %service_queue182 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %service_queue182, align 8
  %call184 = tail call fastcc zeroext i1 @throtl_schedule_next_dispatch(ptr noundef %582, i1 noundef zeroext true)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then181, %cleanup.out_unlock_crit_edge, %land.lhs.true.i372.out_unlock_crit_edge, %throtl_charge_bio.exit.out_unlock_crit_edge
  %throttled.0.off0 = phi i1 [ true, %if.then181 ], [ true, %cleanup.out_unlock_crit_edge ], [ false, %throtl_charge_bio.exit.out_unlock_crit_edge ], [ false, %land.lhs.true.i372.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #16
  %583 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %583)
  %584 = load i16, ptr %bi_flags.i.i, align 4
  %585 = or i16 %584, 128
  store i16 %585, ptr %bi_flags.i.i, align 4
  br i1 %throttled.0.off0, label %out_unlock.if.then190_crit_edge, label %lor.lhs.false

out_unlock.if.then190_crit_edge:                  ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then190

lor.lhs.false:                                    ; preds = %out_unlock
  %track_bio_latency = getelementptr inbounds %struct.throtl_data, ptr %12, i32 0, i32 15
  %586 = ptrtoint ptr %track_bio_latency to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %track_bio_latency, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %587)
  %tobool189.not = icmp eq i8 %587, 0
  br i1 %tobool189.not, label %lor.lhs.false.if.then190_crit_edge, label %lor.lhs.false.if.end191_crit_edge

lor.lhs.false.if.end191_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end191

lor.lhs.false.if.then190_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then190

if.then190:                                       ; preds = %lor.lhs.false.if.then190_crit_edge, %out_unlock.if.then190_crit_edge
  %bi_issue = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 13
  %588 = ptrtoint ptr %bi_issue to i32
  call void @__asan_load8_noabort(i32 %588)
  %589 = load i64, ptr %bi_issue, align 8
  %or = or i64 %589, -9223372036854775808
  store i64 %or, ptr %bi_issue, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %lor.lhs.false.if.end191_crit_edge
  %call.i393 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i393, label %if.end191.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i396

if.end191.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i396:                               ; preds = %if.end191
  %call1.i394 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i394)
  %tobool.not.i395 = icmp eq i32 %call1.i394, 0
  br i1 %tobool.not.i395, label %land.lhs.true.i396.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i398

land.lhs.true.i396.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i396
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i398:                              ; preds = %land.lhs.true.i396
  %.b4.i397 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i397, label %land.lhs.true2.i398.rcu_read_unlock.exit_crit_edge, label %if.then.i399

land.lhs.true2.i398.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i398
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i399:                                     ; preds = %land.lhs.true2.i398
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i399, %land.lhs.true2.i398.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i396.rcu_read_unlock.exit_crit_edge, %if.end191.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  %590 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i400 = and i32 %590, -16384
  %591 = inttoptr i32 %and.i.i.i.i.i400 to ptr
  %preempt_count.i.i.i.i401 = getelementptr inbounds %struct.thread_info, ptr %591, i32 0, i32 1
  %592 = ptrtoint ptr %preempt_count.i.i.i.i401 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load volatile i32, ptr %preempt_count.i.i.i.i401, align 4
  %sub.i.i.i402 = add i32 %593, -1
  store volatile i32 %sub.i.i.i402, ptr %preempt_count.i.i.i.i401, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret i1 %throttled.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tg_may_dispatch(ptr noundef %tg, ptr noundef readonly %bio, ptr noundef writeonly %wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %call2 = tail call fastcc i64 @tg_bps_limit(ptr noundef %tg, i32 noundef %and.i)
  %call5 = tail call fastcc i32 @tg_iops_limit(ptr noundef %tg, i32 noundef %and.i)
  %arrayidx = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 3, i32 2, i32 %and.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %entry.do.end21_crit_edge, label %land.rhs

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

land.rhs:                                         ; preds = %entry
  %arrayidx11 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 3, i32 1, i32 %and.i
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx11, align 4
  %cmp.i.not.i = icmp eq ptr %5, %arrayidx11
  br i1 %cmp.i.not.i, label %land.rhs.throtl_peek_queued.exit_crit_edge, label %if.end.i

land.rhs.throtl_peek_queued.exit_crit_edge:       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_peek_queued.exit

if.end.i:                                         ; preds = %land.rhs
  %bios.i = getelementptr inbounds %struct.throtl_qnode, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.rhs.i, label %if.end.i.throtl_peek_queued.exit_crit_edge

if.end.i.throtl_peek_queued.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_peek_queued.exit

land.rhs.i:                                       ; preds = %if.end.i
  %.b47.i = load i1, ptr @throtl_peek_queued.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.throtl_peek_queued.exit_crit_edge, label %if.then11.i, !prof !137

land.rhs.i.throtl_peek_queued.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_peek_queued.exit

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_peek_queued.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #16
  br label %throtl_peek_queued.exit

throtl_peek_queued.exit:                          ; preds = %if.then11.i, %land.rhs.i.throtl_peek_queued.exit_crit_edge, %if.end.i.throtl_peek_queued.exit_crit_edge, %land.rhs.throtl_peek_queued.exit_crit_edge
  %retval.0.i = phi ptr [ null, %land.rhs.throtl_peek_queued.exit_crit_edge ], [ %7, %if.end.i.throtl_peek_queued.exit_crit_edge ], [ null, %if.then11.i ], [ null, %land.rhs.i.throtl_peek_queued.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i, %bio
  br i1 %cmp.not, label %throtl_peek_queued.exit.do.end21_crit_edge, label %do.body16, !prof !137

throtl_peek_queued.exit.do.end21_crit_edge:       ; preds = %throtl_peek_queued.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

do.body16:                                        ; preds = %throtl_peek_queued.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-throttle.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 871, 0\0A.popsection", ""() #16, !srcloc !148
  unreachable

do.end21:                                         ; preds = %throtl_peek_queued.exit.do.end21_crit_edge, %entry.do.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call2)
  %cmp22 = icmp eq i64 %call2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp24 = icmp eq i32 %call5, -1
  %or.cond = select i1 %cmp22, i1 %cmp24, i1 false
  br i1 %or.cond, label %if.then26, label %if.end30

if.then26:                                        ; preds = %do.end21
  %tobool27.not = icmp eq ptr %wait, null
  br i1 %tobool27.not, label %if.then26.cleanup_crit_edge, label %if.then28

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 21, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end30.land.lhs.true34_crit_edge

if.end30.land.lhs.true34_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true34

land.lhs.true.i:                                  ; preds = %if.end30
  %arrayidx3.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 22, i32 %and.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub4.i = sub i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub4.i)
  %cmp5.i = icmp sgt i32 %sub4.i, -1
  br i1 %cmp5.i, label %land.lhs.true.i.if.else_crit_edge, label %land.lhs.true.i.land.lhs.true34_crit_edge

land.lhs.true.i.land.lhs.true34_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true34

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true34:                                  ; preds = %land.lhs.true.i.land.lhs.true34_crit_edge, %if.end30.land.lhs.true34_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool40.not = icmp eq i32 %16, 0
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true34.if.else_crit_edge

land.lhs.true34.if.else_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then41:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @throtl_start_new_slice(ptr noundef %tg, i1 noundef zeroext %tobool.i)
  br label %if.end54

if.else:                                          ; preds = %land.lhs.true34.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge
  %arrayidx45 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 22, i32 %and.i
  %17 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx45, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %td = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %20 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %td, align 4
  %throtl_slice = getelementptr inbounds %struct.throtl_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %throtl_slice to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %throtl_slice, align 4
  %24 = add i32 %19, %23
  %sub = sub i32 %18, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp46 = icmp slt i32 %sub, 0
  br i1 %cmp46, label %if.then48, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add52 = add i32 %25, %23
  tail call fastcc void @throtl_extend_slice(ptr noundef %tg, i1 noundef zeroext %tobool.i, i32 noundef %add52)
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.else.if.end54_crit_edge, %if.then41
  br i1 %cmp24, label %if.end54.if.end66_crit_edge, label %if.then57

if.end54.if.end66_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx60 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 31, i32 %and.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx60, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !144
  tail call void @llvm.prefetch.p0(ptr %arrayidx60, i32 1, i32 3, i32 1) #16
  %26 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx60) #16, !srcloc !145
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !146
  %arrayidx64 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 14, i32 %and.i
  %27 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx64, align 4
  %add65 = add i32 %28, %asmresult.i.i
  store i32 %add65, ptr %arrayidx64, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then57, %if.end54.if.end66_crit_edge
  %29 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_opf, align 8
  %and.i146 = and i32 %30, 255
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i146)
  %cmp.i.i = icmp eq i32 %and.i146, 3
  br i1 %cmp.i.i, label %if.end66.throtl_bio_data_size.exit.i_crit_edge, label %if.end.i.i, !prof !142

if.end66.throtl_bio_data_size.exit.i_crit_edge:   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_bio_data_size.exit.i

if.end.i.i:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bi_size.i.i, align 8
  br label %throtl_bio_data_size.exit.i

throtl_bio_data_size.exit.i:                      ; preds = %if.end.i.i, %if.end66.throtl_bio_data_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %32, %if.end.i.i ], [ 512, %if.end66.throtl_bio_data_size.exit.i_crit_edge ]
  br i1 %cmp22, label %throtl_bio_data_size.exit.i.land.lhs.true69_crit_edge, label %if.end4.i

throtl_bio_data_size.exit.i.land.lhs.true69_crit_edge: ; preds = %throtl_bio_data_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true69

if.end4.i:                                        ; preds = %throtl_bio_data_size.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i148 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 21, i32 %and.i.i
  %34 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i148, align 4
  %sub.i149 = sub i32 %33, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i149)
  %tobool6.not.i = icmp eq i32 %sub.i149, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end4.i.if.end205.i_crit_edge

if.end4.i.if.end205.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end205.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %td.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %36 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %td.i, align 4
  %throtl_slice.i = getelementptr inbounds %struct.throtl_data, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %throtl_slice.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %throtl_slice.i, align 4
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.then7.i, %if.end4.i.if.end205.i_crit_edge
  %jiffy_elapsed_rnd.0.i = phi i32 [ %sub.i149, %if.end4.i.if.end205.i_crit_edge ], [ %39, %if.then7.i ]
  %td9.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %40 = ptrtoint ptr %td9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %td9.i, align 4
  %throtl_slice10.i = getelementptr inbounds %struct.throtl_data, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %throtl_slice10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %throtl_slice10.i, align 4
  %sub12.i = add i32 %jiffy_elapsed_rnd.0.i, -1
  %add.i = add i32 %sub12.i, %43
  %44 = urem i32 %add.i, %43
  %mul.i = sub i32 %add.i, %44
  %conv.i = zext i32 %mul.i to i64
  %mul13.i = mul i64 %call2, %conv.i
  %45 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul13.i, i32 0) #21, !srcloc !149
  %asmresult.i.i150 = extractvalue { i64, i32 } %45, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %45, 1
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul13.i, i64 %asmresult.i.i150, i32 %asmresult4.i.i) #21, !srcloc !150
  %asmresult10.i.i = extractvalue { i64, i32 } %46, 0
  %tmp.0.i = lshr i64 %asmresult10.i.i, 6
  %arrayidx209.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 13, i32 %and.i.i
  %47 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx209.i, align 8
  %conv210.i = zext i32 %retval.0.i.i to i64
  %add211.i = add i64 %48, %conv210.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add211.i, i64 %tmp.0.i)
  %cmp212.not.i = icmp ugt i64 %add211.i, %tmp.0.i
  br i1 %cmp212.not.i, label %tg_with_in_bps_limit.exit, label %if.end205.i.land.lhs.true69_crit_edge

if.end205.i.land.lhs.true69_crit_edge:            ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true69

tg_with_in_bps_limit.exit:                        ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub225.i = sub i64 %add211.i, %tmp.0.i
  %mul226.i = mul i64 %sub225.i, 100
  %call227.i = tail call i64 @div64_u64(i64 noundef %mul226.i, i64 noundef %call2) #16
  %conv228.i = trunc i64 %call227.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv228.i)
  %tobool229.not.i = icmp eq i32 %conv228.i, 0
  %spec.store.select.i = select i1 %tobool229.not.i, i32 1, i32 %conv228.i
  %sub232.i = sub i32 %mul.i, %sub.i149
  %add233.i = add i32 %sub232.i, %spec.store.select.i
  br label %if.end76

land.lhs.true69:                                  ; preds = %if.end205.i.land.lhs.true69_crit_edge, %throtl_bio_data_size.exit.i.land.lhs.true69_crit_edge
  br i1 %cmp24, label %land.lhs.true69.if.then72_crit_edge, label %if.end201.i

land.lhs.true69.if.then72_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then72

if.end201.i:                                      ; preds = %land.lhs.true69
  %49 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bi_opf, align 8
  %and.i.i155 = and i32 %50, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i156 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 21, i32 %and.i.i155
  %52 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i156, align 4
  %sub.i157 = sub i32 %51, %53
  %td.i158 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %54 = ptrtoint ptr %td.i158 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %td.i158, align 4
  %throtl_slice.i159 = getelementptr inbounds %struct.throtl_data, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %throtl_slice.i159 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %throtl_slice.i159, align 4
  %add7.i = add i32 %57, %sub.i157
  %58 = urem i32 %add7.i, %57
  %mul.i160 = sub i32 %add7.i, %58
  %conv.i161 = zext i32 %call5 to i64
  %conv8.i = zext i32 %mul.i160 to i64
  %mul9.i = mul nuw i64 %conv8.i, %conv.i161
  %59 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul9.i, i32 0) #21, !srcloc !149
  %asmresult.i.i162 = extractvalue { i64, i32 } %59, 0
  %asmresult4.i.i163 = extractvalue { i64, i32 } %59, 1
  %60 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul9.i, i64 %asmresult.i.i162, i32 %asmresult4.i.i163) #21, !srcloc !150
  %asmresult10.i.i164 = extractvalue { i64, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906943, i64 %asmresult10.i.i164)
  %cmp203.i = icmp ugt i64 %asmresult10.i.i164, 274877906943
  %tmp.0.i165 = lshr i64 %asmresult10.i.i164, 6
  %conv207.i = trunc i64 %tmp.0.i165 to i32
  %io_allowed.0.i = select i1 %cmp203.i, i32 -1, i32 %conv207.i
  %arrayidx211.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 14, i32 %and.i.i155
  %61 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx211.i, align 4
  %add212.i = add i32 %62, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add212.i, i32 %io_allowed.0.i)
  %cmp213.not.i = icmp ugt i32 %add212.i, %io_allowed.0.i
  br i1 %cmp213.not.i, label %tg_with_in_iops_limit.exit, label %if.end201.i.if.then72_crit_edge

if.end201.i.if.then72_crit_edge:                  ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then72

tg_with_in_iops_limit.exit:                       ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub220.i = sub i32 %mul.i160, %sub.i157
  br label %if.end76

if.then72:                                        ; preds = %if.end201.i.if.then72_crit_edge, %land.lhs.true69.if.then72_crit_edge
  %tobool73.not = icmp eq ptr %wait, null
  br i1 %tobool73.not, label %if.then72.cleanup_crit_edge, label %if.then74

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then74:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #18
  %63 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %wait, align 4
  br label %cleanup

if.end76:                                         ; preds = %tg_with_in_iops_limit.exit, %tg_with_in_bps_limit.exit
  %add233.sink.i171 = phi i32 [ 0, %tg_with_in_iops_limit.exit ], [ %add233.i, %tg_with_in_bps_limit.exit ]
  %iops_wait.0 = phi i32 [ %sub220.i, %tg_with_in_iops_limit.exit ], [ 0, %tg_with_in_bps_limit.exit ]
  %64 = tail call i32 @llvm.umax.i32(i32 %add233.sink.i171, i32 %iops_wait.0)
  %tobool80.not = icmp eq ptr %wait, null
  br i1 %tobool80.not, label %if.end76.if.end82_crit_edge, label %if.then81

if.end76.if.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  %65 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %wait, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end76.if.end82_crit_edge
  %arrayidx86 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 22, i32 %and.i
  %66 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx86, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %69 = add i32 %64, %68
  %sub88 = sub i32 %67, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub88)
  %cmp89 = icmp slt i32 %sub88, 0
  br i1 %cmp89, label %if.then91, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then91:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %add93 = add i32 %70, %64
  tail call fastcc void @throtl_extend_slice(ptr noundef %tg, i1 noundef zeroext %tobool.i, i32 noundef %add93)
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.end82.cleanup_crit_edge, %if.then74, %if.then72.cleanup_crit_edge, %if.then28, %if.then26.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then28 ], [ true, %if.then26.cleanup_crit_edge ], [ true, %if.then74 ], [ true, %if.then72.cleanup_crit_edge ], [ false, %if.then91 ], [ false, %if.end82.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @throtl_can_upgrade(ptr nocapture noundef readonly %td, ptr noundef readnone %this_tg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %limit_index = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 5
  %0 = ptrtoint ptr %limit_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %limit_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup30_crit_edge

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup30

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %low_downgrade_time = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 8
  %3 = ptrtoint ptr %low_downgrade_time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %low_downgrade_time, align 4
  %throtl_slice = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 3
  %5 = ptrtoint ptr %throtl_slice to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %throtl_slice, align 4
  %7 = add i32 %4, %6
  %sub = sub i32 %2, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %if.end.cleanup30_crit_edge, label %if.end3

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup30

if.end3:                                          ; preds = %if.end
  %8 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  %queue = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 1
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue, align 4
  %root_blkg = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 35
  %14 = ptrtoint ptr %root_blkg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root_blkg, align 8
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %blkcg, align 4
  %call = tail call ptr @css_next_descendant_post(ptr noundef null, ptr noundef %17) #16
  %tobool.not81 = icmp eq ptr %call, null
  br i1 %tobool.not81, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pos_css.082 = phi ptr [ %call29, %for.inc.for.body_crit_edge ], [ %call, %rcu_read_lock.exit.for.body_crit_edge ]
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queue, align 4
  %root_blkg6 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 35
  %20 = ptrtoint ptr %root_blkg6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %root_blkg6, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %cmp.i = icmp eq ptr %pos_css.082, @blkcg_root
  br i1 %cmp.i, label %if.then.i41, label %if.end.i

if.then.i41:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %root_blkg.i = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 35
  %24 = ptrtoint ptr %root_blkg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %root_blkg.i, align 8
  br label %__blkg_lookup.exit

if.end.i:                                         ; preds = %for.body
  %blkg_hint.i = getelementptr inbounds %struct.blkcg, ptr %pos_css.082, i32 0, i32 4
  %26 = ptrtoint ptr %blkg_hint.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %blkg_hint.i, align 4
  %call.i42 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44, label %if.end.i.do.end9.i_crit_edge

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

land.lhs.true.i44:                                ; preds = %if.end.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i44.do.end9.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i44.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i44
  %.b1.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end9.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 340, ptr noundef nonnull @.str.1) #16
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true4.i.do.end9.i_crit_edge, %land.lhs.true.i44.do.end9.i_crit_edge, %if.end.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %27, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end16.i_crit_edge, label %land.lhs.true12.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %do.end9.i
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %cmp14.i = icmp eq ptr %29, %23
  br i1 %cmp14.i, label %land.lhs.true12.i.blkg_to_tg.exit_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

land.lhs.true12.i.blkg_to_tg.exit_crit_edge:      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %call18.i = tail call ptr @blkg_lookup_slowpath(ptr noundef nonnull %pos_css.082, ptr noundef %23, i1 noundef zeroext false) #16
  br label %__blkg_lookup.exit

__blkg_lookup.exit:                               ; preds = %if.end16.i, %if.then.i41
  %retval.0.i = phi ptr [ %25, %if.then.i41 ], [ %call18.i, %if.end16.i ]
  %tobool8.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool8.not, label %__blkg_lookup.exit.for.inc_crit_edge, label %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge

__blkg_lookup.exit.blkg_to_tg.exit_crit_edge:     ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

__blkg_lookup.exit.for.inc_crit_edge:             ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

blkg_to_tg.exit:                                  ; preds = %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge, %land.lhs.true12.i.blkg_to_tg.exit_crit_edge
  %retval.0.i75 = phi ptr [ %retval.0.i, %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge ], [ %27, %land.lhs.true12.i.blkg_to_tg.exit_crit_edge ]
  %30 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %retval.0.i75, i32 0, i32 9, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp11 = icmp eq ptr %32, %this_tg
  br i1 %cmp11, label %blkg_to_tg.exit.for.inc_crit_edge, label %if.end13

blkg_to_tg.exit.for.inc_crit_edge:                ; preds = %blkg_to_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end13:                                         ; preds = %blkg_to_tg.exit
  %tobool.not.i.i45 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i45, label %if.end13.tg_to_blkg.exit_crit_edge, label %cond.true.i.i46

if.end13.tg_to_blkg.exit_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %tg_to_blkg.exit

cond.true.i.i46:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  br label %tg_to_blkg.exit

tg_to_blkg.exit:                                  ; preds = %cond.true.i.i46, %if.end13.tg_to_blkg.exit_crit_edge
  %cond.i.i47 = phi ptr [ %34, %cond.true.i.i46 ], [ null, %if.end13.tg_to_blkg.exit_crit_edge ]
  %blkcg15 = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i47, i32 0, i32 3
  %35 = ptrtoint ptr %blkcg15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %blkcg15, align 4
  %children = getelementptr inbounds %struct.cgroup_subsys_state, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %children, align 4
  %cmp.i48.not = icmp eq ptr %38, %children
  br i1 %cmp.i48.not, label %tg_to_blkg.exit.while.body.i_crit_edge, label %tg_to_blkg.exit.for.inc_crit_edge

tg_to_blkg.exit.for.inc_crit_edge:                ; preds = %tg_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

tg_to_blkg.exit.while.body.i_crit_edge:           ; preds = %tg_to_blkg.exit
  br label %while.body.i

while.body.i:                                     ; preds = %tg_to_blkg.exit.i.while.body.i_crit_edge, %tg_to_blkg.exit.while.body.i_crit_edge
  %tg.addr.0.i = phi ptr [ %add.ptr.i.i, %tg_to_blkg.exit.i.while.body.i_crit_edge ], [ %32, %tg_to_blkg.exit.while.body.i_crit_edge ]
  %bps.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.addr.0.i, i32 0, i32 9
  %39 = ptrtoint ptr %bps.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %bps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool.not.i.i49 = icmp eq i64 %40, 0
  br i1 %tobool.not.i.i49, label %lor.rhs.i.i, label %while.body.i.lor.end.i.i_crit_edge

while.body.i.lor.end.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end.i.i

lor.rhs.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %iops.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.addr.0.i, i32 0, i32 11
  %41 = ptrtoint ptr %iops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iops.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool4.i.i = icmp ne i32 %42, 0
  br label %lor.end.i.i

lor.end.i.i:                                      ; preds = %lor.rhs.i.i, %while.body.i.lor.end.i.i_crit_edge
  %43 = phi i1 [ true, %while.body.i.lor.end.i.i_crit_edge ], [ %tobool4.i.i, %lor.rhs.i.i ]
  %arrayidx6.i.i = getelementptr %struct.throtl_grp, ptr %tg.addr.0.i, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx6.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool8.not.i.i = icmp eq i64 %45, 0
  br i1 %tobool8.not.i.i, label %lor.end14.i.i, label %lor.end.i.i.if.end.i.i_crit_edge

lor.end.i.i.if.end.i.i_crit_edge:                 ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

lor.end14.i.i:                                    ; preds = %lor.end.i.i
  %arrayidx11.i.i = getelementptr %struct.throtl_grp, ptr %tg.addr.0.i, i32 0, i32 11, i32 1
  %46 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx11.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool13.i.i = icmp ne i32 %47, 0
  %brmerge.i.i = select i1 %43, i1 true, i1 %tobool13.i.i
  br i1 %brmerge.i.i, label %lor.end14.i.i.if.end.i.i_crit_edge, label %lor.end14.i.i.for.inc_crit_edge

lor.end14.i.i.for.inc_crit_edge:                  ; preds = %lor.end14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.end14.i.i.if.end.i.i_crit_edge:               ; preds = %lor.end14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %lor.end14.i.i.if.end.i.i_crit_edge, %lor.end.i.i.if.end.i.i_crit_edge
  %48 = phi i1 [ %tobool13.i.i, %lor.end14.i.i.if.end.i.i_crit_edge ], [ true, %lor.end.i.i.if.end.i.i_crit_edge ]
  br i1 %43, label %land.lhs.true19.i.i, label %if.end.i.i.if.end28.i.i_crit_edge

if.end.i.i.if.end28.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i.i

land.lhs.true19.i.i:                              ; preds = %if.end.i.i
  %nr_queued.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.addr.0.i, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %nr_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_queued.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool21.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool21.not.i.i, label %land.lhs.true19.i.i.if.end28.i.i_crit_edge, label %land.lhs.true22.i.i

land.lhs.true19.i.i.if.end28.i.i_crit_edge:       ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i.i

land.lhs.true22.i.i:                              ; preds = %land.lhs.true19.i.i
  br i1 %48, label %lor.lhs.false.i.i, label %land.lhs.true22.i.i.for.inc_crit_edge

land.lhs.true22.i.i.for.inc_crit_edge:            ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false.i.i:                                ; preds = %land.lhs.true22.i.i
  %arrayidx25.i.i = getelementptr %struct.throtl_grp, ptr %tg.addr.0.i, i32 0, i32 3, i32 2, i32 1
  %51 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx25.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool26.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool26.not.i.i, label %lor.lhs.false.i.i.if.end41.i.i_crit_edge, label %lor.lhs.false.i.i.for.inc_crit_edge

lor.lhs.false.i.i.for.inc_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false.i.i.if.end41.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41.i.i

if.end28.i.i:                                     ; preds = %land.lhs.true19.i.i.if.end28.i.i_crit_edge, %if.end.i.i.if.end28.i.i_crit_edge
  br i1 %48, label %land.lhs.true30.i.i, label %if.end28.i.i.if.end41.i.i_crit_edge

if.end28.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41.i.i

land.lhs.true30.i.i:                              ; preds = %if.end28.i.i
  %arrayidx32.i.i = getelementptr %struct.throtl_grp, ptr %tg.addr.0.i, i32 0, i32 3, i32 2, i32 1
  %53 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx32.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool33.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool33.not.i.i, label %land.lhs.true30.i.i.if.end41.i.i_crit_edge, label %land.lhs.true34.i.i

land.lhs.true30.i.i.if.end41.i.i_crit_edge:       ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41.i.i

land.lhs.true34.i.i:                              ; preds = %land.lhs.true30.i.i
  br i1 %43, label %lor.lhs.false36.i.i, label %land.lhs.true34.i.i.for.inc_crit_edge

land.lhs.true34.i.i.for.inc_crit_edge:            ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false36.i.i:                              ; preds = %land.lhs.true34.i.i
  %nr_queued316668.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.addr.0.i, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %nr_queued316668.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_queued316668.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool39.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool39.not.i.i, label %lor.lhs.false36.i.i.if.end41.i.i_crit_edge, label %lor.lhs.false36.i.i.for.inc_crit_edge

lor.lhs.false36.i.i.for.inc_crit_edge:            ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false36.i.i.if.end41.i.i_crit_edge:       ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %lor.lhs.false36.i.i.if.end41.i.i_crit_edge, %land.lhs.true30.i.i.if.end41.i.i_crit_edge, %if.end28.i.i.if.end41.i.i_crit_edge, %lor.lhs.false.i.i.if.end41.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call fastcc i32 @tg_last_low_overflow_time(ptr noundef %tg.addr.0.i) #16
  %td.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.addr.0.i, i32 0, i32 2
  %58 = ptrtoint ptr %td.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %td.i.i, align 4
  %throtl_slice.i.i = getelementptr inbounds %struct.throtl_data, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %throtl_slice.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %throtl_slice.i.i, align 4
  %62 = add i32 %call.i.i, %61
  %sub.i.i = sub i32 %57, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i.i, label %land.lhs.true42.i.i, label %if.end41.i.i.if.end.i50_crit_edge

if.end41.i.i.if.end.i50_crit_edge:                ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i50

land.lhs.true42.i.i:                              ; preds = %if.end41.i.i
  %call43.i.i = tail call fastcc zeroext i1 @throtl_tg_is_idle(ptr noundef %tg.addr.0.i) #16
  br i1 %call43.i.i, label %land.lhs.true42.i.i.for.inc_crit_edge, label %land.lhs.true42.i.i.if.end.i50_crit_edge

land.lhs.true42.i.i.if.end.i50_crit_edge:         ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i50

land.lhs.true42.i.i.for.inc_crit_edge:            ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i50:                                       ; preds = %land.lhs.true42.i.i.if.end.i50_crit_edge, %if.end41.i.i.if.end.i50_crit_edge
  %service_queue.i = getelementptr inbounds %struct.throtl_grp, ptr %tg.addr.0.i, i32 0, i32 3
  %63 = ptrtoint ptr %service_queue.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %service_queue.i, align 8
  %tobool.not.i9.i = icmp eq ptr %64, null
  br i1 %tobool.not.i9.i, label %if.end.i50.if.then22_crit_edge, label %land.lhs.true.i.i

if.end.i50.if.then22_crit_edge:                   ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

land.lhs.true.i.i:                                ; preds = %if.end.i50
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool1.not.i.i = icmp eq ptr %66, null
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 -24
  %tobool.not.i51 = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i = select i1 %tobool1.not.i.i, i1 true, i1 %tobool.not.i51
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.then22_crit_edge, label %tg_to_blkg.exit.i

land.lhs.true.i.i.if.then22_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

tg_to_blkg.exit.i:                                ; preds = %land.lhs.true.i.i
  %67 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i.i, align 4
  %parent.i = getelementptr inbounds %struct.blkcg_gq, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %parent.i, align 8
  %tobool3.not.i52 = icmp eq ptr %70, null
  br i1 %tobool3.not.i52, label %tg_to_blkg.exit.i.if.then22_crit_edge, label %tg_to_blkg.exit.i.while.body.i_crit_edge

tg_to_blkg.exit.i.while.body.i_crit_edge:         ; preds = %tg_to_blkg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

tg_to_blkg.exit.i.if.then22_crit_edge:            ; preds = %tg_to_blkg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.then22:                                        ; preds = %tg_to_blkg.exit.i.if.then22_crit_edge, %land.lhs.true.i.i.if.then22_crit_edge, %if.end.i50.if.then22_crit_edge
  %call.i53 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i53, label %if.then22.cleanup_crit_edge, label %land.lhs.true.i56

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i56:                                ; preds = %if.then22
  %call1.i54 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.cleanup_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.cleanup_crit_edge:              ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.cleanup_crit_edge, label %if.then.i59

land.lhs.true2.i58.cleanup_crit_edge:             ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i59, %land.lhs.true2.i58.cleanup_crit_edge, %land.lhs.true.i56.cleanup_crit_edge, %if.then22.cleanup_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  br label %cleanup30.sink.split

for.inc:                                          ; preds = %land.lhs.true42.i.i.for.inc_crit_edge, %lor.lhs.false36.i.i.for.inc_crit_edge, %land.lhs.true34.i.i.for.inc_crit_edge, %lor.lhs.false.i.i.for.inc_crit_edge, %land.lhs.true22.i.i.for.inc_crit_edge, %lor.end14.i.i.for.inc_crit_edge, %tg_to_blkg.exit.for.inc_crit_edge, %blkg_to_tg.exit.for.inc_crit_edge, %__blkg_lookup.exit.for.inc_crit_edge
  %71 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queue, align 4
  %root_blkg26 = getelementptr inbounds %struct.request_queue, ptr %72, i32 0, i32 35
  %73 = ptrtoint ptr %root_blkg26 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %root_blkg26, align 8
  %blkcg27 = getelementptr inbounds %struct.blkcg_gq, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %blkcg27 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %blkcg27, align 4
  %call29 = tail call ptr @css_next_descendant_post(ptr noundef nonnull %pos_css.082, ptr noundef %76) #16
  %tobool.not = icmp eq ptr %call29, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i62, label %for.end.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true.i65

for.end.rcu_read_unlock.exit72_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit72

land.lhs.true.i65:                                ; preds = %for.end
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit72

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit72

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit72

rcu_read_unlock.exit72:                           ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, %for.end.rcu_read_unlock.exit72_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  br label %cleanup30.sink.split

cleanup30.sink.split:                             ; preds = %rcu_read_unlock.exit72, %cleanup
  %retval.3.ph = phi i1 [ true, %rcu_read_unlock.exit72 ], [ false, %cleanup ]
  %77 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i69 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i = add i32 %80, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup30.sink.split, %if.end.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.3 = phi i1 [ false, %entry.cleanup30_crit_edge ], [ false, %if.end.cleanup30_crit_edge ], [ %retval.3.ph, %cleanup30.sink.split ]
  ret i1 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @throtl_upgrade_state(ptr noundef %td) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i142 = icmp eq ptr %td, null
  br i1 %tobool.not.i142, label %sq_to_td.exit.thread, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %0 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %td, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %td, i32 -24
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %add.ptr.i
  %tobool.not.i144 = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %tobool.not.i144, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.sq_to_td.exit_crit_edge, label %if.then.i145

land.lhs.true.i.i.sq_to_td.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit

if.then.i145:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %td.i = getelementptr i8, ptr %td, i32 -4
  %2 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %td.i, align 4
  br label %sq_to_td.exit

sq_to_td.exit:                                    ; preds = %if.then.i145, %land.lhs.true.i.i.sq_to_td.exit_crit_edge
  %retval.0.i146 = phi ptr [ %3, %if.then.i145 ], [ %td, %land.lhs.true.i.i.sq_to_td.exit_crit_edge ]
  %queue = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i146, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %call3 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %5)
  br i1 %call3, label %if.end, label %sq_to_td.exit.cleanup_crit_edge, !prof !142

sq_to_td.exit.cleanup_crit_edge:                  ; preds = %sq_to_td.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 92)
  %6 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call3171 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %6)
  br i1 %call3171, label %sq_to_td.exit.thread.do.body35_crit_edge, label %sq_to_td.exit.thread.cleanup_crit_edge, !prof !142

sq_to_td.exit.thread.cleanup_crit_edge:           ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread.do.body35_crit_edge:         ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

if.end:                                           ; preds = %sq_to_td.exit
  %tobool6.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool6.not, label %if.end.do.body35_crit_edge, label %do.body8

if.end.do.body35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

do.body8:                                         ; preds = %if.end
  %7 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %do.body8.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body8.rcu_read_lock.exit_crit_edge:            ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body8
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body8.rcu_read_lock.exit_crit_edge
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %blk_trace, align 8
  %call12 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end21_crit_edge

rcu_read_lock.exit.do.end21_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b119 = load i1, ptr @throtl_upgrade_state.__warned, align 1
  br i1 %.b119, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_upgrade_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1820, ptr noundef nonnull @.str.1) #16
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %rcu_read_lock.exit.do.end21_crit_edge
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %do.end21.cleanup.sink.split_crit_edge, label %tg_to_blkg.exit, !prof !137

do.end21.cleanup.sink.split_crit_edge:            ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

tg_to_blkg.exit:                                  ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spec.select.i, align 4
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %blkcg, align 4
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %14, ptr noundef %18, ptr noundef nonnull @.str.37) #16
  br label %cleanup.sink.split

do.body35:                                        ; preds = %if.end.do.body35_crit_edge, %sq_to_td.exit.thread.do.body35_crit_edge
  %queue173177 = phi ptr [ %queue, %if.end.do.body35_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit.thread.do.body35_crit_edge ]
  %19 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i120 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i120 to ptr
  %preempt_count.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i121, align 4
  %add.i.i.i122 = add i32 %22, 1
  store volatile i32 %add.i.i.i122, ptr %preempt_count.i.i.i.i121, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i123 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i123, label %do.body35.rcu_read_lock.exit130_crit_edge, label %land.lhs.true.i126

do.body35.rcu_read_lock.exit130_crit_edge:        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit130

land.lhs.true.i126:                               ; preds = %do.body35
  %call1.i124 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i124)
  %tobool.not.i125 = icmp eq i32 %call1.i124, 0
  br i1 %tobool.not.i125, label %land.lhs.true.i126.rcu_read_lock.exit130_crit_edge, label %land.lhs.true2.i128

land.lhs.true.i126.rcu_read_lock.exit130_crit_edge: ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit130

land.lhs.true2.i128:                              ; preds = %land.lhs.true.i126
  %.b4.i127 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i127, label %land.lhs.true2.i128.rcu_read_lock.exit130_crit_edge, label %if.then.i129

land.lhs.true2.i128.rcu_read_lock.exit130_crit_edge: ; preds = %land.lhs.true2.i128
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit130

if.then.i129:                                     ; preds = %land.lhs.true2.i128
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit130

rcu_read_lock.exit130:                            ; preds = %if.then.i129, %land.lhs.true2.i128.rcu_read_lock.exit130_crit_edge, %land.lhs.true.i126.rcu_read_lock.exit130_crit_edge, %do.body35.rcu_read_lock.exit130_crit_edge
  %23 = ptrtoint ptr %queue173177 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue173177, align 4
  %blk_trace42 = getelementptr inbounds %struct.request_queue, ptr %24, i32 0, i32 46
  %25 = ptrtoint ptr %blk_trace42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %blk_trace42, align 8
  %call44 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %rcu_read_lock.exit130.do.end54_crit_edge

rcu_read_lock.exit130.do.end54_crit_edge:         ; preds = %rcu_read_lock.exit130
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end54

land.lhs.true46:                                  ; preds = %rcu_read_lock.exit130
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true46.do.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %.b117118 = load i1, ptr @throtl_upgrade_state.__warned.38, align 1
  br i1 %.b117118, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_upgrade_state.__warned.38, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1820, ptr noundef nonnull @.str.1) #16
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true46.do.end54_crit_edge, %rcu_read_lock.exit130.do.end54_crit_edge
  %tobool56.not = icmp eq ptr %26, null
  br i1 %tobool56.not, label %do.end54.cleanup.sink.split_crit_edge, label %if.then63, !prof !137

do.end54.cleanup.sink.split_crit_edge:            ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then63:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %26, ptr noundef null, ptr noundef nonnull @.str.37) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then63, %do.end54.cleanup.sink.split_crit_edge, %tg_to_blkg.exit, %do.end21.cleanup.sink.split_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sq_to_td.exit.thread.cleanup_crit_edge, %sq_to_td.exit.cleanup_crit_edge
  %limit_index = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 5
  %27 = ptrtoint ptr %limit_index to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %limit_index, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %low_upgrade_time = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 7
  %29 = ptrtoint ptr %low_upgrade_time to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %low_upgrade_time, align 4
  %scale = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 9
  %30 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %scale, align 4
  %31 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i131 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i131 to ptr
  %preempt_count.i.i.i.i132 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i132, align 4
  %add.i.i.i133 = add i32 %34, 1
  store volatile i32 %add.i.i.i133, ptr %preempt_count.i.i.i.i132, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i134 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i134, label %cleanup.rcu_read_lock.exit141_crit_edge, label %land.lhs.true.i137

cleanup.rcu_read_lock.exit141_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit141

land.lhs.true.i137:                               ; preds = %cleanup
  %call1.i135 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135)
  %tobool.not.i136 = icmp eq i32 %call1.i135, 0
  br i1 %tobool.not.i136, label %land.lhs.true.i137.rcu_read_lock.exit141_crit_edge, label %land.lhs.true2.i139

land.lhs.true.i137.rcu_read_lock.exit141_crit_edge: ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit141

land.lhs.true2.i139:                              ; preds = %land.lhs.true.i137
  %.b4.i138 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i138, label %land.lhs.true2.i139.rcu_read_lock.exit141_crit_edge, label %if.then.i140

land.lhs.true2.i139.rcu_read_lock.exit141_crit_edge: ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit141

if.then.i140:                                     ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit141

rcu_read_lock.exit141:                            ; preds = %if.then.i140, %land.lhs.true2.i139.rcu_read_lock.exit141_crit_edge, %land.lhs.true.i137.rcu_read_lock.exit141_crit_edge, %cleanup.rcu_read_lock.exit141_crit_edge
  %queue71 = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 1
  %35 = ptrtoint ptr %queue71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue71, align 4
  %root_blkg = getelementptr inbounds %struct.request_queue, ptr %36, i32 0, i32 35
  %37 = ptrtoint ptr %root_blkg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %root_blkg, align 8
  %blkcg72 = getelementptr inbounds %struct.blkcg_gq, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %blkcg72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %blkcg72, align 4
  %call73 = tail call ptr @css_next_descendant_post(ptr noundef null, ptr noundef %40) #16
  %tobool74.not181 = icmp eq ptr %call73, null
  br i1 %tobool74.not181, label %rcu_read_lock.exit141.for.end_crit_edge, label %rcu_read_lock.exit141.for.body_crit_edge

rcu_read_lock.exit141.for.body_crit_edge:         ; preds = %rcu_read_lock.exit141
  br label %for.body

rcu_read_lock.exit141.for.end_crit_edge:          ; preds = %rcu_read_lock.exit141
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit141.for.body_crit_edge
  %pos_css.0182 = phi ptr [ %call90, %for.inc.for.body_crit_edge ], [ %call73, %rcu_read_lock.exit141.for.body_crit_edge ]
  %41 = ptrtoint ptr %queue71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue71, align 4
  %root_blkg77 = getelementptr inbounds %struct.request_queue, ptr %42, i32 0, i32 35
  %43 = ptrtoint ptr %root_blkg77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %root_blkg77, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %cmp.i = icmp eq ptr %pos_css.0182, @blkcg_root
  br i1 %cmp.i, label %if.then.i148, label %if.end.i

if.then.i148:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %root_blkg.i = getelementptr inbounds %struct.request_queue, ptr %46, i32 0, i32 35
  %47 = ptrtoint ptr %root_blkg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %root_blkg.i, align 8
  br label %__blkg_lookup.exit

if.end.i:                                         ; preds = %for.body
  %blkg_hint.i = getelementptr inbounds %struct.blkcg, ptr %pos_css.0182, i32 0, i32 4
  %49 = ptrtoint ptr %blkg_hint.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %blkg_hint.i, align 4
  %call.i149 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i150 = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i150, label %land.lhs.true.i151, label %if.end.i.do.end9.i_crit_edge

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

land.lhs.true.i151:                               ; preds = %if.end.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i151.do.end9.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i151.do.end9.i_crit_edge:           ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i151
  %.b1.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end9.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 340, ptr noundef nonnull @.str.1) #16
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true4.i.do.end9.i_crit_edge, %land.lhs.true.i151.do.end9.i_crit_edge, %if.end.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %50, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end16.i_crit_edge, label %land.lhs.true12.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %do.end9.i
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %cmp14.i = icmp eq ptr %52, %46
  br i1 %cmp14.i, label %land.lhs.true12.i.blkg_to_tg.exit_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

land.lhs.true12.i.blkg_to_tg.exit_crit_edge:      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %call18.i = tail call ptr @blkg_lookup_slowpath(ptr noundef nonnull %pos_css.0182, ptr noundef %46, i1 noundef zeroext false) #16
  br label %__blkg_lookup.exit

__blkg_lookup.exit:                               ; preds = %if.end16.i, %if.then.i148
  %retval.0.i152 = phi ptr [ %48, %if.then.i148 ], [ %call18.i, %if.end16.i ]
  %tobool79.not = icmp eq ptr %retval.0.i152, null
  br i1 %tobool79.not, label %__blkg_lookup.exit.for.inc_crit_edge, label %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge

__blkg_lookup.exit.blkg_to_tg.exit_crit_edge:     ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

__blkg_lookup.exit.for.inc_crit_edge:             ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

blkg_to_tg.exit:                                  ; preds = %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge, %land.lhs.true12.i.blkg_to_tg.exit_crit_edge
  %retval.0.i152180 = phi ptr [ %retval.0.i152, %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge ], [ %50, %land.lhs.true12.i.blkg_to_tg.exit_crit_edge ]
  %53 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %retval.0.i152180, i32 0, i32 9, i32 %53
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i, align 4
  %service_queue82 = getelementptr inbounds %struct.throtl_grp, ptr %55, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %56, -1
  %disptime = getelementptr inbounds %struct.throtl_grp, ptr %55, i32 0, i32 6
  %57 = ptrtoint ptr %disptime to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub, ptr %disptime, align 4
  %call83 = tail call fastcc i32 @throtl_select_dispatch(ptr noundef %service_queue82)
  %call84 = tail call fastcc zeroext i1 @throtl_schedule_next_dispatch(ptr noundef %service_queue82, i1 noundef zeroext true)
  br label %for.inc

for.inc:                                          ; preds = %blkg_to_tg.exit, %__blkg_lookup.exit.for.inc_crit_edge
  %58 = ptrtoint ptr %queue71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %queue71, align 4
  %root_blkg87 = getelementptr inbounds %struct.request_queue, ptr %59, i32 0, i32 35
  %60 = ptrtoint ptr %root_blkg87 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %root_blkg87, align 8
  %blkcg88 = getelementptr inbounds %struct.blkcg_gq, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %blkcg88 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %blkcg88, align 4
  %call90 = tail call ptr @css_next_descendant_post(ptr noundef nonnull %pos_css.0182, ptr noundef %63) #16
  %tobool74.not = icmp eq ptr %call90, null
  br i1 %tobool74.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit141.for.end_crit_edge
  %call.i156 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i156, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i159

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i159:                               ; preds = %for.end
  %call1.i157 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i157)
  %tobool.not.i158 = icmp eq i32 %call1.i157, 0
  br i1 %tobool.not.i158, label %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i161

land.lhs.true.i159.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i161:                              ; preds = %land.lhs.true.i159
  %.b4.i160 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i160, label %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, label %if.then.i162

land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i162:                                     ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i162, %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  %64 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i163 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i163 to ptr
  %preempt_count.i.i.i.i164 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i164, align 4
  %sub.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i164, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %call92 = tail call fastcc i32 @throtl_select_dispatch(ptr noundef %td)
  %call94 = tail call fastcc zeroext i1 @throtl_schedule_next_dispatch(ptr noundef %td, i1 noundef zeroext true)
  %68 = load ptr, ptr @kthrotld_workqueue, align 4
  %dispatch_work = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 4
  %call.i165 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %dispatch_work) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @throtl_trim_slice(ptr noundef %tg, i1 noundef zeroext %rw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom = zext i1 %rw to i32
  %arrayidx = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 22, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 21, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body6, label %do.end11, !prof !142

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-throttle.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 701, 0\0A.popsection", ""() #16, !srcloc !151
  unreachable

do.end11:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %land.lhs.true.i562, label %do.end11.cleanup394_crit_edge

do.end11.cleanup394_crit_edge:                    ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup394

land.lhs.true.i562:                               ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub4.i = sub i32 %1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub4.i)
  %cmp5.i = icmp sgt i32 %sub4.i, -1
  br i1 %cmp5.i, label %if.end14, label %land.lhs.true.i562.cleanup394_crit_edge

land.lhs.true.i562.cleanup394_crit_edge:          ; preds = %land.lhs.true.i562
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup394

if.end14:                                         ; preds = %land.lhs.true.i562
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %td = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %7 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %td, align 4
  %throtl_slice = getelementptr inbounds %struct.throtl_data, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %throtl_slice to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %throtl_slice, align 4
  %factor = shl i32 %10, 1
  %sub.i563 = add i32 %6, -1
  %add.i = add i32 %sub.i563, %factor
  %11 = urem i32 %add.i, %10
  %mul.i = sub i32 %add.i, %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i, ptr %arrayidx, align 4
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub20 = sub i32 %13, %3
  %14 = load i32, ptr %throtl_slice, align 4
  %div = udiv i32 %sub20, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub20)
  %tobool23.not = icmp ugt i32 %14, %sub20
  br i1 %tobool23.not, label %if.end14.cleanup394_crit_edge, label %if.end226

if.end14.cleanup394_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup394

if.end226:                                        ; preds = %if.end14
  %call27 = tail call fastcc i64 @tg_bps_limit(ptr noundef %tg, i32 noundef %idxprom)
  %15 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %td, align 4
  %throtl_slice29 = getelementptr inbounds %struct.throtl_data, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %throtl_slice29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %throtl_slice29, align 4
  %conv30 = zext i32 %18 to i64
  %conv31 = zext i32 %div to i64
  %mul = mul i64 %call27, %conv31
  %mul32 = mul i64 %mul, %conv30
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul32, i32 0) #21, !srcloc !149
  %asmresult.i = extractvalue { i64, i32 } %19, 0
  %asmresult4.i = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul32, i64 %asmresult.i, i32 %asmresult4.i) #21, !srcloc !150
  %asmresult10.i = extractvalue { i64, i32 } %20, 0
  %tmp.0 = lshr i64 %asmresult10.i, 6
  %call230 = tail call fastcc i32 @tg_iops_limit(ptr noundef %tg, i32 noundef %idxprom)
  %21 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %td, align 4
  %throtl_slice232 = getelementptr inbounds %struct.throtl_data, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %throtl_slice232 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %throtl_slice232, align 4
  %mul233 = mul i32 %call230, %div
  %mul234 = mul i32 %mul233, %24
  %div235 = udiv i32 %mul234, 100
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %asmresult10.i)
  %tobool236.not = icmp ult i64 %asmresult10.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul234)
  %25 = icmp ult i32 %mul234, 100
  %or.cond = select i1 %tobool236.not, i1 %25, i1 false
  br i1 %or.cond, label %if.end226.cleanup394_crit_edge, label %if.end240

if.end226.cleanup394_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup394

if.end240:                                        ; preds = %if.end226
  %arrayidx243 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 13, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx243, align 8
  %28 = tail call i64 @llvm.usub.sat.i64(i64 %27, i64 %tmp.0)
  %29 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx243, align 8
  %arrayidx260 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 14, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx260, align 4
  %32 = tail call i32 @llvm.usub.sat.i32(i32 %31, i32 %div235)
  %33 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx260, align 4
  %34 = ptrtoint ptr %throtl_slice232 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %throtl_slice232, align 4
  %mul277 = mul i32 %35, %div
  %36 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx3, align 4
  %add282 = add i32 %37, %mul277
  store i32 %add282, ptr %arrayidx3, align 4
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3
  %tobool.not.i566 = icmp eq ptr %service_queue, null
  br i1 %tobool.not.i566, label %sq_to_td.exit.thread, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end240
  %38 = ptrtoint ptr %service_queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %service_queue, align 4
  %tobool1.not.i = icmp eq ptr %39, null
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %tg
  %tobool.not.i569 = icmp eq ptr %tg, null
  %or.cond.i = or i1 %tobool.not.i569, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.sq_to_td.exit_crit_edge, label %if.then.i571

land.lhs.true.i.i.sq_to_td.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit

if.then.i571:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %td, align 4
  br label %sq_to_td.exit

sq_to_td.exit:                                    ; preds = %if.then.i571, %land.lhs.true.i.i.sq_to_td.exit_crit_edge
  %retval.0.i572 = phi ptr [ %41, %if.then.i571 ], [ %service_queue, %land.lhs.true.i.i.sq_to_td.exit_crit_edge ]
  %queue = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i572, i32 0, i32 1
  %42 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %queue, align 4
  %call287 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %43)
  br i1 %call287, label %if.end297, label %sq_to_td.exit.cleanup394_crit_edge, !prof !142

sq_to_td.exit.cleanup394_crit_edge:               ; preds = %sq_to_td.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup394

sq_to_td.exit.thread:                             ; preds = %if.end240
  call void @__asan_load4_noabort(i32 92)
  %44 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call287580 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %44)
  br i1 %call287580, label %sq_to_td.exit.thread.do.body345_crit_edge, label %sq_to_td.exit.thread.cleanup394_crit_edge, !prof !142

sq_to_td.exit.thread.cleanup394_crit_edge:        ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup394

sq_to_td.exit.thread.do.body345_crit_edge:        ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body345

if.end297:                                        ; preds = %sq_to_td.exit
  %tobool298.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool298.not, label %if.end297.do.body345_crit_edge, label %do.body300

if.end297.do.body345_crit_edge:                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body345

do.body300:                                       ; preds = %if.end297
  %45 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %do.body300.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body300.rcu_read_lock.exit_crit_edge:          ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body300
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body300.rcu_read_lock.exit_crit_edge
  %49 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %queue, align 4
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %blk_trace, align 8
  %call307 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %land.lhs.true309, label %rcu_read_lock.exit.do.end317_crit_edge

rcu_read_lock.exit.do.end317_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end317

land.lhs.true309:                                 ; preds = %rcu_read_lock.exit
  %call310 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %land.lhs.true309.do.end317_crit_edge, label %land.lhs.true312

land.lhs.true309.do.end317_crit_edge:             ; preds = %land.lhs.true309
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end317

land.lhs.true312:                                 ; preds = %land.lhs.true309
  %.b550 = load i1, ptr @throtl_trim_slice.__warned, align 1
  br i1 %.b550, label %land.lhs.true312.do.end317_crit_edge, label %if.then314

land.lhs.true312.do.end317_crit_edge:             ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end317

if.then314:                                       ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_trim_slice.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 752, ptr noundef nonnull @.str.1) #16
  br label %do.end317

do.end317:                                        ; preds = %if.then314, %land.lhs.true312.do.end317_crit_edge, %land.lhs.true309.do.end317_crit_edge, %rcu_read_lock.exit.do.end317_crit_edge
  %tobool319.not = icmp eq ptr %52, null
  br i1 %tobool319.not, label %do.end317.cleanup394.sink.split_crit_edge, label %tg_to_blkg.exit, !prof !137

do.end317.cleanup394.sink.split_crit_edge:        ; preds = %do.end317
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup394.sink.split

tg_to_blkg.exit:                                  ; preds = %do.end317
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spec.select.i, align 4
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %blkcg, align 4
  %cond332 = select i1 %rw, i32 87, i32 82
  %57 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx3, align 4
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %52, ptr noundef %56, ptr noundef nonnull @.str.41, i32 noundef %cond332, i32 noundef %div, i64 noundef %tmp.0, i32 noundef %div235, i32 noundef %58, i32 noundef %60, i32 noundef %61) #16
  br label %cleanup394.sink.split

do.body345:                                       ; preds = %if.end297.do.body345_crit_edge, %sq_to_td.exit.thread.do.body345_crit_edge
  %queue582586 = phi ptr [ %queue, %if.end297.do.body345_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit.thread.do.body345_crit_edge ]
  %62 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i551 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i551 to ptr
  %preempt_count.i.i.i.i552 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i552 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i552, align 4
  %add.i.i.i553 = add i32 %65, 1
  store volatile i32 %add.i.i.i553, ptr %preempt_count.i.i.i.i552, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i554 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i554, label %do.body345.rcu_read_lock.exit561_crit_edge, label %land.lhs.true.i557

do.body345.rcu_read_lock.exit561_crit_edge:       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit561

land.lhs.true.i557:                               ; preds = %do.body345
  %call1.i555 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i555)
  %tobool.not.i556 = icmp eq i32 %call1.i555, 0
  br i1 %tobool.not.i556, label %land.lhs.true.i557.rcu_read_lock.exit561_crit_edge, label %land.lhs.true2.i559

land.lhs.true.i557.rcu_read_lock.exit561_crit_edge: ; preds = %land.lhs.true.i557
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit561

land.lhs.true2.i559:                              ; preds = %land.lhs.true.i557
  %.b4.i558 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i558, label %land.lhs.true2.i559.rcu_read_lock.exit561_crit_edge, label %if.then.i560

land.lhs.true2.i559.rcu_read_lock.exit561_crit_edge: ; preds = %land.lhs.true2.i559
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit561

if.then.i560:                                     ; preds = %land.lhs.true2.i559
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit561

rcu_read_lock.exit561:                            ; preds = %if.then.i560, %land.lhs.true2.i559.rcu_read_lock.exit561_crit_edge, %land.lhs.true.i557.rcu_read_lock.exit561_crit_edge, %do.body345.rcu_read_lock.exit561_crit_edge
  %66 = ptrtoint ptr %queue582586 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %queue582586, align 4
  %blk_trace352 = getelementptr inbounds %struct.request_queue, ptr %67, i32 0, i32 46
  %68 = ptrtoint ptr %blk_trace352 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %blk_trace352, align 8
  %call354 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %land.lhs.true356, label %rcu_read_lock.exit561.do.end364_crit_edge

rcu_read_lock.exit561.do.end364_crit_edge:        ; preds = %rcu_read_lock.exit561
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end364

land.lhs.true356:                                 ; preds = %rcu_read_lock.exit561
  %call357 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call357)
  %tobool358.not = icmp eq i32 %call357, 0
  br i1 %tobool358.not, label %land.lhs.true356.do.end364_crit_edge, label %land.lhs.true359

land.lhs.true356.do.end364_crit_edge:             ; preds = %land.lhs.true356
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end364

land.lhs.true359:                                 ; preds = %land.lhs.true356
  %.b546549 = load i1, ptr @throtl_trim_slice.__warned.42, align 1
  br i1 %.b546549, label %land.lhs.true359.do.end364_crit_edge, label %if.then361

land.lhs.true359.do.end364_crit_edge:             ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end364

if.then361:                                       ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_trim_slice.__warned.42, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 752, ptr noundef nonnull @.str.1) #16
  br label %do.end364

do.end364:                                        ; preds = %if.then361, %land.lhs.true359.do.end364_crit_edge, %land.lhs.true356.do.end364_crit_edge, %rcu_read_lock.exit561.do.end364_crit_edge
  %tobool366.not = icmp eq ptr %69, null
  br i1 %tobool366.not, label %do.end364.cleanup394.sink.split_crit_edge, label %if.then373, !prof !137

do.end364.cleanup394.sink.split_crit_edge:        ; preds = %do.end364
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup394.sink.split

if.then373:                                       ; preds = %do.end364
  call void @__sanitizer_cov_trace_pc() #18
  %cond378 = select i1 %rw, i32 87, i32 82
  %70 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx3, align 4
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %69, ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef %cond378, i32 noundef %div, i64 noundef %tmp.0, i32 noundef %div235, i32 noundef %71, i32 noundef %73, i32 noundef %74) #16
  br label %cleanup394.sink.split

cleanup394.sink.split:                            ; preds = %if.then373, %do.end364.cleanup394.sink.split_crit_edge, %tg_to_blkg.exit, %do.end317.cleanup394.sink.split_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup394

cleanup394:                                       ; preds = %cleanup394.sink.split, %sq_to_td.exit.thread.cleanup394_crit_edge, %sq_to_td.exit.cleanup394_crit_edge, %if.end226.cleanup394_crit_edge, %if.end14.cleanup394_crit_edge, %land.lhs.true.i562.cleanup394_crit_edge, %do.end11.cleanup394_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 46
  %4 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %blk_trace, align 8
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @blk_trace_note_message_enabled.__warned, align 1
  br i1 %.b13, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @blk_trace_note_message_enabled.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 70, ptr noundef nonnull @.str.1) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.land.end_crit_edge, label %land.rhs

do.end7.land.end_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  %act_mask = getelementptr inbounds %struct.blk_trace, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %act_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %act_mask, align 8
  %8 = and i16 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool10 = icmp ne i16 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end7.land.end_crit_edge
  %9 = phi i1 [ false, %do.end7.land.end_crit_edge ], [ %tobool10, %land.rhs ]
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i14, label %land.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

land.end.rcu_read_unlock.exit_crit_edge:          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %land.end
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %land.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  %10 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i21 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_note_message(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @tg_bps_limit(ptr noundef readonly %tg, i32 noundef %rw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %tg, null
  br i1 %tobool.not.i.i, label %entry.tg_to_blkg.exit_crit_edge, label %cond.true.i.i

entry.tg_to_blkg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %tg_to_blkg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tg, align 4
  br label %tg_to_blkg.exit

tg_to_blkg.exit:                                  ; preds = %cond.true.i.i, %entry.tg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %1, %cond.true.i.i ], [ null, %entry.tg_to_blkg.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @io_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@tg_bps_limit, %if.end)) #16
          to label %land.lhs.true [label %if.end], !srcloc !138

land.lhs.true:                                    ; preds = %tg_to_blkg.exit
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %tg_to_blkg.exit
  %td6 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %4 = ptrtoint ptr %td6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %td6, align 4
  %arrayidx = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 9, i32 %rw
  %limit_index = getelementptr inbounds %struct.throtl_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %limit_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %limit_index, align 4
  %arrayidx7 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 9, i32 %rw, i32 %7
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp eq i64 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10 = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %blkcg, align 4
  %children = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %children, align 4
  %cmp.i.not = icmp eq ptr %13, %children
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx16 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 11, i32 %rw, i32 0
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  %spec.select = select i1 %tobool17.not, i64 327680, i64 -1
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp21 = icmp eq i32 %7, 1
  br i1 %cmp21, label %land.lhs.true22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true22:                                  ; preds = %if.end19
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool26.not = icmp eq i64 %17, 0
  br i1 %tobool26.not, label %land.lhs.true22.cleanup_crit_edge, label %land.lhs.true27

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %arrayidx33 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 9, i32 %rw, i32 1
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp34.not = icmp eq i64 %17, %19
  br i1 %cmp34.not, label %land.lhs.true27.cleanup_crit_edge, label %if.then35

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then35:                                        ; preds = %land.lhs.true27
  %scale.i = getelementptr inbounds %struct.throtl_data, ptr %5, i32 0, i32 9
  %20 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp.i71 = icmp ult i32 %21, 4096
  br i1 %cmp.i71, label %land.lhs.true.i, label %if.then35.throtl_adjusted_limit.exit_crit_edge

if.then35.throtl_adjusted_limit.exit_crit_edge:   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_adjusted_limit.exit

land.lhs.true.i:                                  ; preds = %if.then35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %low_upgrade_time.i = getelementptr inbounds %struct.throtl_data, ptr %5, i32 0, i32 7
  %23 = ptrtoint ptr %low_upgrade_time.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %low_upgrade_time.i, align 4
  %throtl_slice.i = getelementptr inbounds %struct.throtl_data, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %throtl_slice.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %throtl_slice.i, align 4
  %mul.i = mul i32 %26, %21
  %27 = add i32 %24, %mul.i
  %sub.i = sub i32 %22, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp2.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.throtl_adjusted_limit.exit_crit_edge

land.lhs.true.i.throtl_adjusted_limit.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_adjusted_limit.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub4.i = sub i32 %28, %24
  %div.i = udiv i32 %sub4.i, %26
  %29 = ptrtoint ptr %scale.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div.i, ptr %scale.i, align 4
  br label %throtl_adjusted_limit.exit

throtl_adjusted_limit.exit:                       ; preds = %if.then.i, %land.lhs.true.i.throtl_adjusted_limit.exit_crit_edge, %if.then35.throtl_adjusted_limit.exit_crit_edge
  %shr.i = lshr i64 %17, 1
  %30 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scale.i, align 4
  %conv.i72 = zext i32 %31 to i64
  %mul8.i = mul i64 %shr.i, %conv.i72
  %add9.i = add i64 %mul8.i, %17
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx33, align 8
  %34 = tail call i64 @llvm.umin.i64(i64 %33, i64 %add9.i)
  br label %cleanup

cleanup:                                          ; preds = %throtl_adjusted_limit.exit, %land.lhs.true27.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %lor.lhs.false, %if.then11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i64 [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.then11.cleanup_crit_edge ], [ %34, %throtl_adjusted_limit.exit ], [ %9, %land.lhs.true27.cleanup_crit_edge ], [ %9, %land.lhs.true22.cleanup_crit_edge ], [ %9, %if.end19.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tg_iops_limit(ptr noundef readonly %tg, i32 noundef %rw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %tg, null
  br i1 %tobool.not.i.i, label %entry.tg_to_blkg.exit_crit_edge, label %cond.true.i.i

entry.tg_to_blkg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %tg_to_blkg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tg, align 4
  br label %tg_to_blkg.exit

tg_to_blkg.exit:                                  ; preds = %cond.true.i.i, %entry.tg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %1, %cond.true.i.i ], [ null, %entry.tg_to_blkg.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @io_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@tg_iops_limit, %if.end)) #16
          to label %land.lhs.true [label %if.end], !srcloc !138

land.lhs.true:                                    ; preds = %tg_to_blkg.exit
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %tg_to_blkg.exit
  %td6 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %4 = ptrtoint ptr %td6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %td6, align 4
  %arrayidx = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 11, i32 %rw
  %limit_index = getelementptr inbounds %struct.throtl_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %limit_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %limit_index, align 4
  %arrayidx7 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 11, i32 %rw, i32 %7
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %blkcg, align 4
  %children = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %children, align 4
  %cmp.i.not = icmp eq ptr %13, %children
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx17 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 9, i32 %rw, i32 0
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx17, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool18.not = icmp eq i64 %15, 0
  %spec.select = select i1 %tobool18.not, i32 10, i32 -1
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp22 = icmp eq i32 %7, 1
  br i1 %cmp22, label %land.lhs.true23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end20
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool27.not = icmp eq i32 %17, 0
  br i1 %tobool27.not, label %land.lhs.true23.cleanup_crit_edge, label %land.lhs.true28

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %arrayidx34 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 11, i32 %rw, i32 1
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp35.not = icmp eq i32 %17, %19
  br i1 %cmp35.not, label %land.lhs.true28.cleanup_crit_edge, label %if.then36

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then36:                                        ; preds = %land.lhs.true28
  %conv = zext i32 %17 to i64
  %scale.i = getelementptr inbounds %struct.throtl_data, ptr %5, i32 0, i32 9
  %20 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp.i79 = icmp ult i32 %21, 4096
  br i1 %cmp.i79, label %land.lhs.true.i, label %if.then36.throtl_adjusted_limit.exit_crit_edge

if.then36.throtl_adjusted_limit.exit_crit_edge:   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_adjusted_limit.exit

land.lhs.true.i:                                  ; preds = %if.then36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %low_upgrade_time.i = getelementptr inbounds %struct.throtl_data, ptr %5, i32 0, i32 7
  %23 = ptrtoint ptr %low_upgrade_time.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %low_upgrade_time.i, align 4
  %throtl_slice.i = getelementptr inbounds %struct.throtl_data, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %throtl_slice.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %throtl_slice.i, align 4
  %mul.i = mul i32 %26, %21
  %27 = add i32 %24, %mul.i
  %sub.i = sub i32 %22, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp2.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.throtl_adjusted_limit.exit_crit_edge

land.lhs.true.i.throtl_adjusted_limit.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_adjusted_limit.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub4.i = sub i32 %28, %24
  %div.i = udiv i32 %sub4.i, %26
  %29 = ptrtoint ptr %scale.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div.i, ptr %scale.i, align 4
  br label %throtl_adjusted_limit.exit

throtl_adjusted_limit.exit:                       ; preds = %if.then.i, %land.lhs.true.i.throtl_adjusted_limit.exit_crit_edge, %if.then36.throtl_adjusted_limit.exit_crit_edge
  %shr.i = lshr i64 %conv, 1
  %30 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scale.i, align 4
  %conv.i80 = zext i32 %31 to i64
  %mul8.i = mul nuw nsw i64 %shr.i, %conv.i80
  %add9.i = add nuw nsw i64 %mul8.i, %conv
  %32 = tail call i64 @llvm.umin.i64(i64 %add9.i, i64 4294967295)
  %33 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx34, align 4
  %conv48 = trunc i64 %32 to i32
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %conv48)
  br label %cleanup

cleanup:                                          ; preds = %throtl_adjusted_limit.exit, %land.lhs.true28.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %lor.lhs.false, %if.then12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.then12.cleanup_crit_edge ], [ %35, %throtl_adjusted_limit.exit ], [ %9, %land.lhs.true28.cleanup_crit_edge ], [ %9, %land.lhs.true23.cleanup_crit_edge ], [ %9, %if.end20.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @throtl_add_bio_tg(ptr noundef %bio, ptr noundef %qn, ptr noundef %tg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %1, 1
  %tobool1.not = icmp eq ptr %qn, null
  %arrayidx = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 4, i32 %and.i
  %qn.addr.0 = select i1 %tobool1.not, ptr %arrayidx, ptr %qn
  %arrayidx5 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 3, i32 2, i32 %and.i
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.then7, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 2
  store i32 %or, ptr %flags, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %entry.if.end8_crit_edge
  %arrayidx11 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 3, i32 1, i32 %and.i
  tail call fastcc void @throtl_qnode_add_bio(ptr noundef %bio, ptr noundef %qn.addr.0, ptr noundef %arrayidx11)
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %arrayidx5, align 4
  %flags.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 7
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 8
  %and.i26 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end8.throtl_enqueue_tg.exit_crit_edge

if.end8.throtl_enqueue_tg.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_enqueue_tg.exit

if.then.i:                                        ; preds = %if.end8
  %service_queue.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3
  %10 = ptrtoint ptr %service_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %service_queue.i.i, align 8
  %pending_tree.i.i = getelementptr inbounds %struct.throtl_service_queue, ptr %11, i32 0, i32 3
  %disptime.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 6
  %12 = ptrtoint ptr %disptime.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %disptime.i.i, align 4
  %14 = ptrtoint ptr %pending_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pending_tree.i.i, align 4
  %cmp.not17.i.i = icmp eq ptr %15, null
  br i1 %cmp.not17.i.i, label %while.end.thread.i.i, label %if.then.i.while.body.i.i_crit_edge

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

while.end.thread.i.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_node424.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1
  %16 = ptrtoint ptr %rb_node424.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rb_node424.i.i, align 4
  %rb_right.i25.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %rb_right.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_right.i25.i.i, align 4
  %rb_left.i26.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %rb_left.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_left.i26.i.i, align 4
  %19 = ptrtoint ptr %pending_tree.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rb_node424.i.i, ptr %pending_tree.i.i, align 4
  br label %if.then.i.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %20 = phi ptr [ %24, %while.body.i.i.while.body.i.i_crit_edge ], [ %15, %if.then.i.while.body.i.i_crit_edge ]
  %leftmost.0.off018.i.i = phi i1 [ %leftmost.1.off0.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ true, %if.then.i.while.body.i.i_crit_edge ]
  %disptime2.i.i = getelementptr i8, ptr %20, i32 188
  %21 = ptrtoint ptr %disptime2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %disptime2.i.i, align 4
  %sub.i.i = sub i32 %13, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 1
  %leftmost.1.off0.i.i = select i1 %cmp3.i.i, i1 %leftmost.0.off018.i.i, i1 false
  %node.1.i.i = select i1 %cmp3.i.i, ptr %rb_left.i.i, ptr %rb_right.i.i
  %23 = ptrtoint ptr %node.1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node.1.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %24, null
  br i1 %cmp.not.i.i, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  %phi.cast.le.i.i = ptrtoint ptr %20 to i32
  %rb_node4.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1
  %25 = ptrtoint ptr %rb_node4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %phi.cast.le.i.i, ptr %rb_node4.i.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %28 = ptrtoint ptr %node.1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rb_node4.i.i, ptr %node.1.i.i, align 4
  br i1 %leftmost.1.off0.i.i, label %while.end.i.i.if.then.i.i.i_crit_edge, label %while.end.i.i.tg_service_queue_add.exit.i_crit_edge

while.end.i.i.tg_service_queue_add.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tg_service_queue_add.exit.i

while.end.i.i.if.then.i.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %while.end.i.i.if.then.i.i.i_crit_edge, %while.end.thread.i.i
  %rb_node428.i.i = phi ptr [ %rb_node424.i.i, %while.end.thread.i.i ], [ %rb_node4.i.i, %while.end.i.i.if.then.i.i.i_crit_edge ]
  %rb_leftmost.i.i.i = getelementptr inbounds %struct.throtl_service_queue, ptr %11, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rb_node428.i.i, ptr %rb_leftmost.i.i.i, align 4
  br label %tg_service_queue_add.exit.i

tg_service_queue_add.exit.i:                      ; preds = %if.then.i.i.i, %while.end.i.i.tg_service_queue_add.exit.i_crit_edge
  %rb_node427.i.i = phi ptr [ %rb_node4.i.i, %while.end.i.i.tg_service_queue_add.exit.i_crit_edge ], [ %rb_node428.i.i, %if.then.i.i.i ]
  tail call void @rb_insert_color(ptr noundef %rb_node427.i.i, ptr noundef %pending_tree.i.i) #16
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %31, 1
  store i32 %or.i, ptr %flags.i, align 8
  %32 = ptrtoint ptr %service_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %service_queue.i.i, align 8
  %nr_pending.i = getelementptr inbounds %struct.throtl_service_queue, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %nr_pending.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_pending.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %nr_pending.i, align 4
  br label %throtl_enqueue_tg.exit

throtl_enqueue_tg.exit:                           ; preds = %tg_service_queue_add.exit.i, %if.end8.throtl_enqueue_tg.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tg_update_disptime(ptr noundef %tg) unnamed_addr #0 align 64 {
entry:
  %read_wait = alloca i32, align 4
  %write_wait = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_wait) #16
  %0 = ptrtoint ptr %read_wait to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read_wait, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %write_wait) #16
  %1 = ptrtoint ptr %write_wait to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %write_wait, align 4
  %queued = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queued, align 4
  %cmp.i.not.i = icmp eq ptr %3, %queued
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %entry
  %bios.i = getelementptr inbounds %struct.throtl_qnode, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.rhs.i, label %if.then

land.rhs.i:                                       ; preds = %if.end.i
  %.b47.i = load i1, ptr @throtl_peek_queued.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.if.end_crit_edge, label %if.then11.i, !prof !137

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_peek_queued.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = call fastcc zeroext i1 @tg_may_dispatch(ptr noundef %tg, ptr noundef nonnull %5, ptr noundef nonnull %read_wait)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then11.i, %land.rhs.i.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx3 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx3, align 4
  %cmp.i.not.i23 = icmp eq ptr %7, %arrayidx3
  br i1 %cmp.i.not.i23, label %if.end.if.end8_crit_edge, label %if.end.i26

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end.i26:                                       ; preds = %if.end
  %bios.i24 = getelementptr inbounds %struct.throtl_qnode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bios.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios.i24, align 4
  %tobool2.not.i25 = icmp eq ptr %9, null
  br i1 %tobool2.not.i25, label %land.rhs.i28, label %if.then6

land.rhs.i28:                                     ; preds = %if.end.i26
  %.b47.i27 = load i1, ptr @throtl_peek_queued.__already_done, align 1
  br i1 %.b47.i27, label %land.rhs.i28.if.end8_crit_edge, label %if.then11.i29, !prof !137

land.rhs.i28.if.end8_crit_edge:                   ; preds = %land.rhs.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then11.i29:                                    ; preds = %land.rhs.i28
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_peek_queued.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #16
  br label %if.end8

if.then6:                                         ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = call fastcc zeroext i1 @tg_may_dispatch(ptr noundef %tg, ptr noundef nonnull %9, ptr noundef nonnull %write_wait)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then11.i29, %land.rhs.i28.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %10 = ptrtoint ptr %read_wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_wait, align 4
  %12 = ptrtoint ptr %write_wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %write_wait, align 4
  %14 = call i32 @llvm.umin.i32(i32 %11, i32 %13)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, %14
  %flags.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 7
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end8.throtl_dequeue_tg.exit_crit_edge, label %if.then.i

if.end8.throtl_dequeue_tg.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_dequeue_tg.exit

if.then.i:                                        ; preds = %if.end8
  %rb_node.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1
  %service_queue.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3
  %18 = ptrtoint ptr %service_queue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %service_queue.i, align 8
  %rb_leftmost.i.i.i = getelementptr inbounds %struct.throtl_service_queue, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rb_leftmost.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %21, %rb_node.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.throtl_rb_erase.exit.i_crit_edge

if.then.i.throtl_rb_erase.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_rb_erase.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call ptr @rb_next(ptr noundef %rb_node.i) #16
  %22 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i.i, ptr %rb_leftmost.i.i.i, align 4
  br label %throtl_rb_erase.exit.i

throtl_rb_erase.exit.i:                           ; preds = %if.then.i.i.i, %if.then.i.throtl_rb_erase.exit.i_crit_edge
  %pending_tree.i.i = getelementptr inbounds %struct.throtl_service_queue, ptr %19, i32 0, i32 3
  call void @rb_erase(ptr noundef %rb_node.i, ptr noundef %pending_tree.i.i) #16
  %23 = ptrtoint ptr %rb_node.i to i32
  %24 = ptrtoint ptr %rb_node.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rb_node.i, align 4
  %nr_pending.i.i = getelementptr inbounds %struct.throtl_service_queue, ptr %19, i32 0, i32 4
  %25 = ptrtoint ptr %nr_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_pending.i.i, align 4
  %dec.i.i = add i32 %26, -1
  store i32 %dec.i.i, ptr %nr_pending.i.i, align 4
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 8
  %and2.i = and i32 %28, -2
  store i32 %and2.i, ptr %flags.i, align 8
  br label %throtl_dequeue_tg.exit

throtl_dequeue_tg.exit:                           ; preds = %throtl_rb_erase.exit.i, %if.end8.throtl_dequeue_tg.exit_crit_edge
  %disptime9 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 6
  %29 = ptrtoint ptr %disptime9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %disptime9, align 4
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 8
  %and.i34 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i35, label %if.then.i37, label %throtl_dequeue_tg.exit.throtl_enqueue_tg.exit_crit_edge

throtl_dequeue_tg.exit.throtl_enqueue_tg.exit_crit_edge: ; preds = %throtl_dequeue_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_enqueue_tg.exit

if.then.i37:                                      ; preds = %throtl_dequeue_tg.exit
  %service_queue.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3
  %32 = ptrtoint ptr %service_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %service_queue.i.i, align 8
  %pending_tree.i.i36 = getelementptr inbounds %struct.throtl_service_queue, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %pending_tree.i.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pending_tree.i.i36, align 4
  %cmp.not17.i.i = icmp eq ptr %35, null
  br i1 %cmp.not17.i.i, label %while.end.thread.i.i, label %if.then.i37.while.body.i.i_crit_edge

if.then.i37.while.body.i.i_crit_edge:             ; preds = %if.then.i37
  br label %while.body.i.i

while.end.thread.i.i:                             ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #18
  %rb_node424.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1
  %36 = ptrtoint ptr %rb_node424.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rb_node424.i.i, align 4
  %rb_right.i25.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %rb_right.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rb_right.i25.i.i, align 4
  %rb_left.i26.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %rb_left.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rb_left.i26.i.i, align 4
  %39 = ptrtoint ptr %pending_tree.i.i36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rb_node424.i.i, ptr %pending_tree.i.i36, align 4
  br label %if.then.i.i.i39

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i37.while.body.i.i_crit_edge
  %40 = phi ptr [ %44, %while.body.i.i.while.body.i.i_crit_edge ], [ %35, %if.then.i37.while.body.i.i_crit_edge ]
  %leftmost.0.off018.i.i = phi i1 [ %leftmost.1.off0.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ true, %if.then.i37.while.body.i.i_crit_edge ]
  %disptime2.i.i = getelementptr i8, ptr %40, i32 188
  %41 = ptrtoint ptr %disptime2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %disptime2.i.i, align 4
  %sub.i.i = sub i32 %add, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 1
  %leftmost.1.off0.i.i = select i1 %cmp3.i.i, i1 %leftmost.0.off018.i.i, i1 false
  %node.1.i.i = select i1 %cmp3.i.i, ptr %rb_left.i.i, ptr %rb_right.i.i
  %43 = ptrtoint ptr %node.1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %node.1.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %44, null
  br i1 %cmp.not.i.i, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  %phi.cast.le.i.i = ptrtoint ptr %40 to i32
  %rb_node4.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1
  %45 = ptrtoint ptr %rb_node4.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %phi.cast.le.i.i, ptr %rb_node4.i.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %48 = ptrtoint ptr %node.1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %rb_node4.i.i, ptr %node.1.i.i, align 4
  br i1 %leftmost.1.off0.i.i, label %while.end.i.i.if.then.i.i.i39_crit_edge, label %while.end.i.i.tg_service_queue_add.exit.i_crit_edge

while.end.i.i.tg_service_queue_add.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tg_service_queue_add.exit.i

while.end.i.i.if.then.i.i.i39_crit_edge:          ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i39

if.then.i.i.i39:                                  ; preds = %while.end.i.i.if.then.i.i.i39_crit_edge, %while.end.thread.i.i
  %rb_node428.i.i = phi ptr [ %rb_node424.i.i, %while.end.thread.i.i ], [ %rb_node4.i.i, %while.end.i.i.if.then.i.i.i39_crit_edge ]
  %rb_leftmost.i.i.i38 = getelementptr inbounds %struct.throtl_service_queue, ptr %33, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %rb_leftmost.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %rb_node428.i.i, ptr %rb_leftmost.i.i.i38, align 4
  br label %tg_service_queue_add.exit.i

tg_service_queue_add.exit.i:                      ; preds = %if.then.i.i.i39, %while.end.i.i.tg_service_queue_add.exit.i_crit_edge
  %rb_node427.i.i = phi ptr [ %rb_node4.i.i, %while.end.i.i.tg_service_queue_add.exit.i_crit_edge ], [ %rb_node428.i.i, %if.then.i.i.i39 ]
  call void @rb_insert_color(ptr noundef %rb_node427.i.i, ptr noundef %pending_tree.i.i36) #16
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %51, 1
  store i32 %or.i, ptr %flags.i, align 8
  %52 = ptrtoint ptr %service_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %service_queue.i.i, align 8
  %nr_pending.i = getelementptr inbounds %struct.throtl_service_queue, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %nr_pending.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_pending.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %nr_pending.i, align 4
  br label %throtl_enqueue_tg.exit

throtl_enqueue_tg.exit:                           ; preds = %tg_service_queue_add.exit.i, %throtl_dequeue_tg.exit.throtl_enqueue_tg.exit_crit_edge
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 8
  %and = and i32 %57, -3
  store i32 %and, ptr %flags.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_wait) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_wait) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @throtl_schedule_next_dispatch(ptr noundef %sq, i1 noundef zeroext %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_pending = getelementptr inbounds %struct.throtl_service_queue, ptr %sq, i32 0, i32 4
  %0 = ptrtoint ptr %nr_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %rb_leftmost.i.i = getelementptr inbounds %struct.throtl_service_queue, ptr %sq, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %throtl_rb_first.exit.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b45.i.i = load i1, ptr @throtl_rb_first.__already_done, align 1
  br i1 %.b45.i.i, label %land.rhs.i.i.update_min_dispatch_time.exit_crit_edge, label %if.then.i.i, !prof !137

land.rhs.i.i.update_min_dispatch_time.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %update_min_dispatch_time.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_rb_first.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 506, i32 noundef 9, ptr noundef null) #16
  br label %update_min_dispatch_time.exit

throtl_rb_first.exit.i:                           ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -8
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %throtl_rb_first.exit.i.update_min_dispatch_time.exit_crit_edge, label %if.end.i

throtl_rb_first.exit.i.update_min_dispatch_time.exit_crit_edge: ; preds = %throtl_rb_first.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %update_min_dispatch_time.exit

if.end.i:                                         ; preds = %throtl_rb_first.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %disptime.i = getelementptr i8, ptr %3, i32 188
  %4 = ptrtoint ptr %disptime.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %disptime.i, align 4
  %first_pending_disptime.i = getelementptr inbounds %struct.throtl_service_queue, ptr %sq, i32 0, i32 5
  %6 = ptrtoint ptr %first_pending_disptime.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %first_pending_disptime.i, align 4
  br label %update_min_dispatch_time.exit

update_min_dispatch_time.exit:                    ; preds = %if.end.i, %throtl_rb_first.exit.i.update_min_dispatch_time.exit_crit_edge, %if.then.i.i, %land.rhs.i.i.update_min_dispatch_time.exit_crit_edge
  br i1 %force, label %update_min_dispatch_time.exit.if.then2_crit_edge, label %lor.lhs.false

update_min_dispatch_time.exit.if.then2_crit_edge: ; preds = %update_min_dispatch_time.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2

lor.lhs.false:                                    ; preds = %update_min_dispatch_time.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %first_pending_disptime = getelementptr inbounds %struct.throtl_service_queue, ptr %sq, i32 0, i32 5
  %8 = ptrtoint ptr %first_pending_disptime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %first_pending_disptime, align 4
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.if.then2_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %update_min_dispatch_time.exit.if.then2_crit_edge
  %first_pending_disptime3 = getelementptr inbounds %struct.throtl_service_queue, ptr %sq, i32 0, i32 5
  %10 = ptrtoint ptr %first_pending_disptime3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %first_pending_disptime3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i.i = icmp eq ptr %sq, null
  br i1 %tobool.not.i.i.i, label %if.then2.sq_to_td.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then2.sq_to_td.exit.i_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then2
  %13 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sq, align 4
  %tobool1.not.i.i.i = icmp eq ptr %14, null
  %add.ptr.i.i.i = getelementptr i8, ptr %sq, i32 -24
  %tobool.not.i104.i = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond.i.i = or i1 %tobool.not.i104.i, %tobool1.not.i.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.i.sq_to_td.exit.i_crit_edge, label %if.then.i105.i

land.lhs.true.i.i.i.sq_to_td.exit.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit.i

if.then.i105.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %td.i.i = getelementptr i8, ptr %sq, i32 -4
  %15 = ptrtoint ptr %td.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %td.i.i, align 4
  br label %sq_to_td.exit.i

sq_to_td.exit.i:                                  ; preds = %if.then.i105.i, %land.lhs.true.i.i.i.sq_to_td.exit.i_crit_edge, %if.then2.sq_to_td.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.then.i105.i ], [ null, %if.then2.sq_to_td.exit.i_crit_edge ], [ %sq, %land.lhs.true.i.i.i.sq_to_td.exit.i_crit_edge ]
  %throtl_slice.i = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %throtl_slice.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %throtl_slice.i, align 4
  %mul.i = shl i32 %18, 3
  %add.i = add i32 %mul.i, %12
  %sub.i = sub i32 %add.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %11
  %pending_timer.i = getelementptr inbounds %struct.throtl_service_queue, ptr %sq, i32 0, i32 6
  %call1.i = tail call i32 @mod_timer(ptr noundef %pending_timer.i, i32 noundef %spec.select.i) #16
  br i1 %tobool.not.i.i.i, label %sq_to_td.exit118.thread.i, label %land.lhs.true.i.i114.i

land.lhs.true.i.i114.i:                           ; preds = %sq_to_td.exit.i
  %19 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sq, align 4
  %tobool1.not.i.i = icmp eq ptr %20, null
  %add.ptr.i.i9 = getelementptr i8, ptr %sq, i32 -24
  %spec.select.i.i = select i1 %tobool1.not.i.i, ptr null, ptr %add.ptr.i.i9
  %tobool.not.i112.i = icmp eq ptr %add.ptr.i.i9, null
  %or.cond.i113.i = or i1 %tobool.not.i112.i, %tobool1.not.i.i
  br i1 %or.cond.i113.i, label %land.lhs.true.i.i114.i.sq_to_td.exit118.i_crit_edge, label %if.then.i116.i

land.lhs.true.i.i114.i.sq_to_td.exit118.i_crit_edge: ; preds = %land.lhs.true.i.i114.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit118.i

if.then.i116.i:                                   ; preds = %land.lhs.true.i.i114.i
  call void @__sanitizer_cov_trace_pc() #18
  %td.i115.i = getelementptr i8, ptr %sq, i32 -4
  %21 = ptrtoint ptr %td.i115.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %td.i115.i, align 4
  br label %sq_to_td.exit118.i

sq_to_td.exit118.i:                               ; preds = %if.then.i116.i, %land.lhs.true.i.i114.i.sq_to_td.exit118.i_crit_edge
  %retval.0.i117.i = phi ptr [ %22, %if.then.i116.i ], [ %sq, %land.lhs.true.i.i114.i.sq_to_td.exit118.i_crit_edge ]
  %queue.i = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i117.i, i32 0, i32 1
  %23 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue.i, align 4
  %call4.i = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %24) #16
  br i1 %call4.i, label %if.end8.i, label %sq_to_td.exit118.i.return_crit_edge, !prof !142

sq_to_td.exit118.i.return_crit_edge:              ; preds = %sq_to_td.exit118.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sq_to_td.exit118.thread.i:                        ; preds = %sq_to_td.exit.i
  call void @__asan_load4_noabort(i32 92)
  %25 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call4125.i = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %25) #16
  br i1 %call4125.i, label %sq_to_td.exit118.thread.i.do.body39.i_crit_edge, label %sq_to_td.exit118.thread.i.return_crit_edge, !prof !142

sq_to_td.exit118.thread.i.return_crit_edge:       ; preds = %sq_to_td.exit118.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sq_to_td.exit118.thread.i.do.body39.i_crit_edge:  ; preds = %sq_to_td.exit118.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body39.i

if.end8.i:                                        ; preds = %sq_to_td.exit118.i
  %tobool9.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool9.not.i, label %if.end8.i.do.body39.i_crit_edge, label %do.body11.i

if.end8.i.do.body39.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body39.i

do.body11.i:                                      ; preds = %if.end8.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %do.body11.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

do.body11.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %do.body11.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i10 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i10, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i11

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i11:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i11, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %do.body11.i.rcu_read_lock.exit.i_crit_edge
  %30 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue.i, align 4
  %blk_trace.i = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %blk_trace.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %blk_trace.i, align 8
  %call15.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end24.i_crit_edge

rcu_read_lock.exit.i.do.end24.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end24.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call17.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.do.end24.i_crit_edge, label %land.lhs.true19.i

land.lhs.true.i.do.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end24.i

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %.b92.i = load i1, ptr @throtl_schedule_pending_timer.__warned, align 1
  br i1 %.b92.i, label %land.lhs.true19.i.do.end24.i_crit_edge, label %if.then21.i

land.lhs.true19.i.do.end24.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end24.i

if.then21.i:                                      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_schedule_pending_timer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 591, ptr noundef nonnull @.str.1) #16
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then21.i, %land.lhs.true19.i.do.end24.i_crit_edge, %land.lhs.true.i.do.end24.i_crit_edge, %rcu_read_lock.exit.i.do.end24.i_crit_edge
  %tobool26.not.i = icmp eq ptr %33, null
  br i1 %tobool26.not.i, label %do.end24.i.cleanup.sink.split.i_crit_edge, label %tg_to_blkg.exit.i, !prof !137

do.end24.i.cleanup.sink.split.i_crit_edge:        ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

tg_to_blkg.exit.i:                                ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spec.select.i.i, align 4
  %blkcg.i = getelementptr inbounds %struct.blkcg_gq, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %blkcg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %blkcg.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub35.i = sub i32 %spec.select.i, %38
  %39 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %33, ptr noundef %37, ptr noundef nonnull @.str.45, i32 noundef %sub35.i, i32 noundef %39) #16
  br label %cleanup.sink.split.i

do.body39.i:                                      ; preds = %if.end8.i.do.body39.i_crit_edge, %sq_to_td.exit118.thread.i.do.body39.i_crit_edge
  %queue127131.i = phi ptr [ %queue.i, %if.end8.i.do.body39.i_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit118.thread.i.do.body39.i_crit_edge ]
  %40 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i93.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i93.i to ptr
  %preempt_count.i.i.i.i94.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i94.i, align 4
  %add.i.i.i95.i = add i32 %43, 1
  store volatile i32 %add.i.i.i95.i, ptr %preempt_count.i.i.i.i94.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i96.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i96.i, label %do.body39.i.rcu_read_lock.exit103.i_crit_edge, label %land.lhs.true.i99.i

do.body39.i.rcu_read_lock.exit103.i_crit_edge:    ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit103.i

land.lhs.true.i99.i:                              ; preds = %do.body39.i
  %call1.i97.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97.i)
  %tobool.not.i98.i = icmp eq i32 %call1.i97.i, 0
  br i1 %tobool.not.i98.i, label %land.lhs.true.i99.i.rcu_read_lock.exit103.i_crit_edge, label %land.lhs.true2.i101.i

land.lhs.true.i99.i.rcu_read_lock.exit103.i_crit_edge: ; preds = %land.lhs.true.i99.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit103.i

land.lhs.true2.i101.i:                            ; preds = %land.lhs.true.i99.i
  %.b4.i100.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i100.i, label %land.lhs.true2.i101.i.rcu_read_lock.exit103.i_crit_edge, label %if.then.i102.i

land.lhs.true2.i101.i.rcu_read_lock.exit103.i_crit_edge: ; preds = %land.lhs.true2.i101.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit103.i

if.then.i102.i:                                   ; preds = %land.lhs.true2.i101.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit103.i

rcu_read_lock.exit103.i:                          ; preds = %if.then.i102.i, %land.lhs.true2.i101.i.rcu_read_lock.exit103.i_crit_edge, %land.lhs.true.i99.i.rcu_read_lock.exit103.i_crit_edge, %do.body39.i.rcu_read_lock.exit103.i_crit_edge
  %44 = ptrtoint ptr %queue127131.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %queue127131.i, align 4
  %blk_trace46.i = getelementptr inbounds %struct.request_queue, ptr %45, i32 0, i32 46
  %46 = ptrtoint ptr %blk_trace46.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %blk_trace46.i, align 8
  %call48.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %land.lhs.true50.i, label %rcu_read_lock.exit103.i.do.end58.i_crit_edge

rcu_read_lock.exit103.i.do.end58.i_crit_edge:     ; preds = %rcu_read_lock.exit103.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end58.i

land.lhs.true50.i:                                ; preds = %rcu_read_lock.exit103.i
  %call51.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true50.i.do.end58.i_crit_edge, label %land.lhs.true53.i

land.lhs.true50.i.do.end58.i_crit_edge:           ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end58.i

land.lhs.true53.i:                                ; preds = %land.lhs.true50.i
  %.b9091.i = load i1, ptr @throtl_schedule_pending_timer.__warned.46, align 1
  br i1 %.b9091.i, label %land.lhs.true53.i.do.end58.i_crit_edge, label %if.then55.i

land.lhs.true53.i.do.end58.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end58.i

if.then55.i:                                      ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_schedule_pending_timer.__warned.46, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 591, ptr noundef nonnull @.str.1) #16
  br label %do.end58.i

do.end58.i:                                       ; preds = %if.then55.i, %land.lhs.true53.i.do.end58.i_crit_edge, %land.lhs.true50.i.do.end58.i_crit_edge, %rcu_read_lock.exit103.i.do.end58.i_crit_edge
  %tobool60.not.i = icmp eq ptr %47, null
  br i1 %tobool60.not.i, label %do.end58.i.cleanup.sink.split.i_crit_edge, label %if.then67.i, !prof !137

do.end58.i.cleanup.sink.split.i_crit_edge:        ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

if.then67.i:                                      ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub68.i = sub i32 %spec.select.i, %48
  %49 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %47, ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef %sub68.i, i32 noundef %49) #16
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then67.i, %do.end58.i.cleanup.sink.split.i_crit_edge, %tg_to_blkg.exit.i, %do.end24.i.cleanup.sink.split.i_crit_edge
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %cleanup.sink.split.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

cleanup.sink.split.i.rcu_read_unlock.exit_crit_edge: ; preds = %cleanup.sink.split.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %cleanup.sink.split.i
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i14
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %cleanup.sink.split.i.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  %50 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %return

return:                                           ; preds = %rcu_read_unlock.exit, %sq_to_td.exit118.thread.i.return_crit_edge, %sq_to_td.exit118.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ true, %sq_to_td.exit118.i.return_crit_edge ], [ true, %sq_to_td.exit118.thread.i.return_crit_edge ], [ true, %rcu_read_unlock.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_throtl_stat_add(ptr nocapture noundef readonly %rq, i64 noundef %time_ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %td2 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %td2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %td2, align 8
  %stats_sectors.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 18
  %4 = ptrtoint ptr %stats_sectors.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %stats_sectors.i, align 2
  %conv.i = zext i16 %5 to i32
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %7, 255
  %shr = lshr i64 %time_ns, 10
  %conv3 = trunc i64 %shr to i32
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.throtl_track_latency.exit_crit_edge, label %lor.lhs.false.i

entry.throtl_track_latency.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_track_latency.exit

lor.lhs.false.i:                                  ; preds = %entry
  %limit_index.i = getelementptr inbounds %struct.throtl_data, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %limit_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limit_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %switch.i = icmp ult i32 %and, 2
  %or.cond.i = and i1 %switch.i, %cmp.not.i
  br i1 %or.cond.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.throtl_track_latency.exit_crit_edge

lor.lhs.false.i.throtl_track_latency.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_track_latency.exit

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %queue.i = getelementptr inbounds %struct.throtl_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %queue_flags.i, align 4
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not.i = icmp eq i32 %14, 0
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.throtl_track_latency.exit_crit_edge, label %cond.false25.i

lor.lhs.false5.i.throtl_track_latency.exit_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_track_latency.exit

cond.false25.i:                                   ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.i.i = icmp ugt i16 %5, 1
  %sub.i88.i = add nsw i32 %conv.i, -1
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i88.i, i1 false) #16, !range !152
  %add.i89.i = sub nuw nsw i32 32, %15
  %16 = call i32 @llvm.smax.i32(i32 %add.i89.i, i32 3)
  %.op = add nsw i32 %16, -3
  %17 = call i32 @llvm.umin.i32(i32 %.op, i32 8)
  %18 = select i1 %cmp.i.i, i32 %17, i32 0
  %19 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %22, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !153
  %arrayidx.i = getelementptr %struct.throtl_data, ptr %3, i32 0, i32 12, i32 %and
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx50.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx50.i, align 4
  %add51.i = add i32 %31, %25
  %32 = inttoptr i32 %add51.i to ptr
  %arrayidx52.i = getelementptr %struct.latency_bucket, ptr %32, i32 %18
  %33 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx52.i, align 4
  %add53.i = add i32 %34, %conv3
  store i32 %add53.i, ptr %arrayidx52.i, align 4
  %samples.i = getelementptr %struct.latency_bucket, ptr %32, i32 %18, i32 1
  %35 = ptrtoint ptr %samples.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %samples.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %samples.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !154
  %37 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i85.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i85.i to ptr
  %preempt_count.i.i86.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i86.i, align 4
  %sub.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i86.i, align 4
  br label %throtl_track_latency.exit

throtl_track_latency.exit:                        ; preds = %cond.false25.i, %lor.lhs.false5.i.throtl_track_latency.exit_crit_edge, %lor.lhs.false.i.throtl_track_latency.exit_crit_edge, %entry.throtl_track_latency.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_throtl_bio_endio(ptr nocapture noundef readonly %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %1, 1
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %2 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_blkg, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %blkg_to_tg.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

blkg_to_tg.exit:                                  ; preds = %entry
  %4 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %3, i32 0, i32 9, i32 %4
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %td = getelementptr inbounds %struct.throtl_grp, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %td, align 4
  %limit_valid = getelementptr inbounds %struct.throtl_data, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %limit_valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %limit_valid, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %blkg_to_tg.exit.cleanup_crit_edge, label %if.end4

blkg_to_tg.exit.cleanup_crit_edge:                ; preds = %blkg_to_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %blkg_to_tg.exit
  %call.i = tail call i64 @ktime_get() #16
  %shr = lshr i64 %call.i, 10
  %conv = trunc i64 %shr to i32
  %last_finish_time = getelementptr inbounds %struct.throtl_grp, ptr %6, i32 0, i32 23
  %11 = ptrtoint ptr %last_finish_time to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %last_finish_time, align 4
  %bi_issue = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 13
  %12 = ptrtoint ptr %bi_issue to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bi_issue, align 8
  %and.i.i = lshr i64 %13, 10
  %conv8 = trunc i64 %and.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %tobool12.not = icmp ne i32 %conv8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv8)
  %cmp.not = icmp ugt i32 %conv, %conv8
  %or.cond = select i1 %tobool12.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end15, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %sub = sub i32 %conv, %conv8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %tobool18.not = icmp sgt i64 %13, -1
  br i1 %tobool18.not, label %if.then19, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then19:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %td, align 4
  %and.i111 = lshr i64 %13, 51
  %16 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_opf, align 8
  %and24 = and i32 %17, 255
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then19.if.end25_crit_edge, label %lor.lhs.false.i

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

lor.lhs.false.i:                                  ; preds = %if.then19
  %limit_index.i = getelementptr inbounds %struct.throtl_data, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %limit_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %limit_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and24)
  %switch.i = icmp ult i32 %and24, 2
  %or.cond.i = and i1 %switch.i, %cmp.not.i
  br i1 %or.cond.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.end25_crit_edge

lor.lhs.false.i.if.end25_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %queue.i = getelementptr inbounds %struct.throtl_data, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %queue_flags.i, align 4
  %24 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not.i = icmp eq i32 %24, 0
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.if.end25_crit_edge, label %cond.false25.i

lor.lhs.false5.i.if.end25_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

cond.false25.i:                                   ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = trunc i64 %and.i111 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i)
  %cmp.i.i = icmp ugt i32 %conv.i, 1
  %sub.i88.i = add nsw i32 %conv.i, -1
  %25 = tail call i32 @llvm.ctlz.i32(i32 %sub.i88.i, i1 false) #16, !range !152
  %add.i89.i = sub nuw nsw i32 32, %25
  %26 = call i32 @llvm.smax.i32(i32 %add.i89.i, i32 3)
  %.op = add nsw i32 %26, -3
  %27 = call i32 @llvm.umin.i32(i32 %.op, i32 8)
  %28 = select i1 %cmp.i.i, i32 %27, i32 0
  %29 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %32, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !153
  %arrayidx.i = getelementptr %struct.throtl_data, ptr %15, i32 0, i32 12, i32 %and24
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i113 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i113 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx50.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx50.i, align 4
  %add51.i = add i32 %41, %35
  %42 = inttoptr i32 %add51.i to ptr
  %arrayidx52.i = getelementptr %struct.latency_bucket, ptr %42, i32 %28
  %43 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx52.i, align 4
  %add53.i = add i32 %44, %sub
  store i32 %add53.i, ptr %arrayidx52.i, align 4
  %samples.i = getelementptr %struct.latency_bucket, ptr %42, i32 %28, i32 1
  %45 = ptrtoint ptr %samples.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %samples.i, align 4
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %samples.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !154
  %47 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i85.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i85.i to ptr
  %preempt_count.i.i86.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i86.i, align 4
  %sub.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i86.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %cond.false25.i, %lor.lhs.false5.i.if.end25_crit_edge, %lor.lhs.false.i.if.end25_crit_edge, %if.then19.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %latency_target = getelementptr inbounds %struct.throtl_grp, ptr %6, i32 0, i32 19
  %51 = ptrtoint ptr %latency_target to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %latency_target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool26.not = icmp eq i32 %52, 0
  br i1 %tobool26.not, label %if.end25.if.end55_crit_edge, label %land.lhs.true

if.end25.if.end55_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end25
  %53 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %td, align 4
  %filtered_latency = getelementptr inbounds %struct.throtl_data, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %filtered_latency to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %filtered_latency, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %56)
  %cmp28.not = icmp ult i32 %sub, %56
  br i1 %cmp28.not, label %land.lhs.true.if.end55_crit_edge, label %if.then30

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then30:                                        ; preds = %land.lhs.true
  %57 = ptrtoint ptr %bi_issue to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %bi_issue, align 8
  %and.i114 = lshr i64 %58, 51
  %59 = trunc i64 %and.i114 to i32
  %conv33 = and i32 %59, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv33)
  %cmp.i = icmp ugt i32 %conv33, 1
  %sub.i116 = add nsw i32 %conv33, -1
  %60 = tail call i32 @llvm.ctlz.i32(i32 %sub.i116, i1 false) #16, !range !152
  %phi.bo = sub nsw i32 29, %60
  %61 = call i32 @llvm.smax.i32(i32 %phi.bo, i32 0)
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 8)
  %63 = select i1 %cmp.i, i32 %62, i32 0
  %arrayidx48 = getelementptr %struct.throtl_data, ptr %54, i32 0, i32 11, i32 %and.i, i32 %63
  %64 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx48, align 4
  %add = add i32 %65, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add)
  %cmp50 = icmp ugt i32 %sub, %add
  br i1 %cmp50, label %if.then52, label %if.then30.if.end53_crit_edge

if.then30.if.end53_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then52:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  %bad_bio_cnt = getelementptr inbounds %struct.throtl_grp, ptr %6, i32 0, i32 29
  %66 = ptrtoint ptr %bad_bio_cnt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bad_bio_cnt, align 4
  %inc = add i32 %67, 1
  store i32 %inc, ptr %bad_bio_cnt, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then30.if.end53_crit_edge
  %bio_cnt = getelementptr inbounds %struct.throtl_grp, ptr %6, i32 0, i32 28
  %68 = ptrtoint ptr %bio_cnt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bio_cnt, align 8
  %inc54 = add i32 %69, 1
  store i32 %inc54, ptr %bio_cnt, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %land.lhs.true.if.end55_crit_edge, %if.end25.if.end55_crit_edge
  %bio_cnt_reset_time = getelementptr inbounds %struct.throtl_grp, ptr %6, i32 0, i32 30
  %70 = ptrtoint ptr %bio_cnt_reset_time to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bio_cnt_reset_time, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %sub56 = sub i32 %71, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub56)
  %cmp57 = icmp slt i32 %sub56, 0
  br i1 %cmp57, label %if.end55.if.then63_crit_edge, label %lor.lhs.false59

if.end55.if.then63_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then63

lor.lhs.false59:                                  ; preds = %if.end55
  %bio_cnt60 = getelementptr inbounds %struct.throtl_grp, ptr %6, i32 0, i32 28
  %73 = ptrtoint ptr %bio_cnt60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bio_cnt60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %74)
  %cmp61 = icmp ugt i32 %74, 1024
  br i1 %cmp61, label %lor.lhs.false59.if.then63_crit_edge, label %lor.lhs.false59.cleanup_crit_edge

lor.lhs.false59.cleanup_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false59.if.then63_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then63

if.then63:                                        ; preds = %lor.lhs.false59.if.then63_crit_edge, %if.end55.if.then63_crit_edge
  %75 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %td, align 4
  %throtl_slice = getelementptr inbounds %struct.throtl_data, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %throtl_slice to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %throtl_slice, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %add65 = add i32 %79, %78
  %80 = ptrtoint ptr %bio_cnt_reset_time to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add65, ptr %bio_cnt_reset_time, align 8
  %bio_cnt67 = getelementptr inbounds %struct.throtl_grp, ptr %6, i32 0, i32 28
  %81 = ptrtoint ptr %bio_cnt67 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bio_cnt67, align 8
  %div108 = lshr i32 %82, 1
  store i32 %div108, ptr %bio_cnt67, align 8
  %bad_bio_cnt68 = getelementptr inbounds %struct.throtl_grp, ptr %6, i32 0, i32 29
  %83 = ptrtoint ptr %bad_bio_cnt68 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bad_bio_cnt68, align 4
  %div69109 = lshr i32 %84, 1
  store i32 %div69109, ptr %bad_bio_cnt68, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %lor.lhs.false59.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %blkg_to_tg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_throtl_init(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 480) #19
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @__alloc_percpu(i32 noundef 72, i32 noundef 8) #22
  %latency_buckets = getelementptr inbounds %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 12
  %1 = ptrtoint ptr %latency_buckets to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %latency_buckets, align 4
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %call7 = tail call noalias ptr @__alloc_percpu(i32 noundef 72, i32 noundef 8) #22
  %arrayidx9 = getelementptr %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %arrayidx9, align 8
  %tobool12.not = icmp eq ptr %call7, null
  br i1 %tobool12.not, label %if.end6.cleanup.sink.split.sink.split_crit_edge, label %do.body

if.end6.cleanup.sink.split.sink.split_crit_edge:  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.sink.split

do.body:                                          ; preds = %if.end6
  %dispatch_work = getelementptr inbounds %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %dispatch_work, i32 noundef 0) #16
  %3 = ptrtoint ptr %dispatch_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %dispatch_work, align 4
  %lockdep_map = getelementptr inbounds %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @blk_throtl_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry20 = getelementptr inbounds %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry20, ptr %entry20, align 8
  %prev.i = getelementptr inbounds %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry20, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @blk_throtl_dispatch_work_fn, ptr %func, align 8
  %queued.i = getelementptr inbounds %struct.throtl_service_queue, ptr %call.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %queued.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %queued.i, ptr %queued.i, align 4
  %prev.i.i = getelementptr inbounds %struct.throtl_service_queue, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queued.i, ptr %prev.i.i, align 8
  %arrayidx2.i = getelementptr %struct.throtl_service_queue, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx2.i, ptr %arrayidx2.i, align 4
  %prev.i6.i = getelementptr %struct.throtl_service_queue, ptr %call.i.i.i, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx2.i, ptr %prev.i6.i, align 8
  %pending_tree.i = getelementptr inbounds %struct.throtl_service_queue, ptr %call.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %pending_tree.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pending_tree.i, align 4
  %.compoundliteral.sroa.2.0.pending_tree.sroa_idx.i = getelementptr inbounds %struct.throtl_service_queue, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %.compoundliteral.sroa.2.0.pending_tree.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %.compoundliteral.sroa.2.0.pending_tree.sroa_idx.i, align 8
  %pending_timer.i = getelementptr inbounds %struct.throtl_service_queue, ptr %call.i.i.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %pending_timer.i, ptr noundef nonnull @throtl_pending_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @throtl_service_queue_init.__key) #16
  %td22 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 56
  %13 = ptrtoint ptr %td22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.i, ptr %td22, align 8
  %queue = getelementptr inbounds %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %q, ptr %queue, align 4
  %arrayidx23 = getelementptr %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx23, align 1
  %limit_index = getelementptr inbounds %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %limit_index to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %limit_index, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %low_upgrade_time = getelementptr inbounds %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %low_upgrade_time to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %low_upgrade_time, align 8
  %19 = load volatile i32, ptr @jiffies, align 128
  %low_downgrade_time = getelementptr inbounds %struct.throtl_data, ptr %call.i.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %low_downgrade_time to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %low_downgrade_time, align 4
  %call24 = tail call i32 @blkcg_activate_policy(ptr noundef %q, ptr noundef nonnull @blkcg_policy_throtl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body.cleanup_crit_edge, label %if.then26

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %latency_buckets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %latency_buckets, align 4
  tail call void @free_percpu(ptr noundef %22) #16
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then26, %if.end6.cleanup.sink.split.sink.split_crit_edge
  %.sink.in = phi ptr [ %arrayidx9, %if.then26 ], [ %latency_buckets, %if.end6.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %call24, %if.then26 ], [ -12, %if.end6.cleanup.sink.split.sink.split_crit_edge ]
  %23 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %.sink = load ptr, ptr %.sink.in, align 4
  tail call void @free_percpu(ptr noundef %.sink) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_throtl_dispatch_work_fn(ptr noundef %work) #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #16
  %2 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #16
  %queued = getelementptr i8, ptr %work, i32 -104
  %call20 = tail call fastcc ptr @throtl_pop_queued(ptr noundef %queued, ptr noundef null)
  %tobool.not21 = icmp eq ptr %call20, null
  br i1 %tobool.not21, label %entry.for.inc_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

while.body:                                       ; preds = %bio_list_add.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %call24 = phi ptr [ %call, %bio_list_add.exit.while.body_crit_edge ], [ %call20, %entry.while.body_crit_edge ]
  %bio_list_on_stack.sroa.0.123 = phi ptr [ %bio_list_on_stack.sroa.0.2, %bio_list_add.exit.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %bio_list_on_stack.sroa.8.122 = phi ptr [ %call24, %bio_list_add.exit.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %call24 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call24, align 8
  %tobool.not.i = icmp eq ptr %bio_list_on_stack.sroa.8.122, null
  br i1 %tobool.not.i, label %while.body.bio_list_add.exit_crit_edge, label %if.then.i

while.body.bio_list_add.exit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_list_add.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %bio_list_on_stack.sroa.8.122 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call24, ptr %bio_list_on_stack.sroa.8.122, align 8
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.then.i, %while.body.bio_list_add.exit_crit_edge
  %bio_list_on_stack.sroa.0.2 = phi ptr [ %bio_list_on_stack.sroa.0.123, %if.then.i ], [ %call24, %while.body.bio_list_add.exit_crit_edge ]
  %call = tail call fastcc ptr @throtl_pop_queued(ptr noundef %queued, ptr noundef null)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %bio_list_add.exit.for.inc_crit_edge, label %bio_list_add.exit.while.body_crit_edge

bio_list_add.exit.while.body_crit_edge:           ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

bio_list_add.exit.for.inc_crit_edge:              ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %bio_list_add.exit.for.inc_crit_edge, %entry.for.inc_crit_edge
  %bio_list_on_stack.sroa.8.1.lcssa = phi ptr [ null, %entry.for.inc_crit_edge ], [ %call24, %bio_list_add.exit.for.inc_crit_edge ]
  %bio_list_on_stack.sroa.0.1.lcssa = phi ptr [ null, %entry.for.inc_crit_edge ], [ %bio_list_on_stack.sroa.0.2, %bio_list_add.exit.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr i8, ptr %work, i32 -96
  %call20.1 = tail call fastcc ptr @throtl_pop_queued(ptr noundef %arrayidx.1, ptr noundef null)
  %tobool.not21.1 = icmp eq ptr %call20.1, null
  br i1 %tobool.not21.1, label %for.inc.for.inc.1_crit_edge, label %for.inc.while.body.1_crit_edge

for.inc.while.body.1_crit_edge:                   ; preds = %for.inc
  br label %while.body.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

while.body.1:                                     ; preds = %bio_list_add.exit.1.while.body.1_crit_edge, %for.inc.while.body.1_crit_edge
  %call24.1 = phi ptr [ %call.1, %bio_list_add.exit.1.while.body.1_crit_edge ], [ %call20.1, %for.inc.while.body.1_crit_edge ]
  %bio_list_on_stack.sroa.0.123.1 = phi ptr [ %bio_list_on_stack.sroa.0.2.1, %bio_list_add.exit.1.while.body.1_crit_edge ], [ %bio_list_on_stack.sroa.0.1.lcssa, %for.inc.while.body.1_crit_edge ]
  %bio_list_on_stack.sroa.8.122.1 = phi ptr [ %call24.1, %bio_list_add.exit.1.while.body.1_crit_edge ], [ %bio_list_on_stack.sroa.8.1.lcssa, %for.inc.while.body.1_crit_edge ]
  %5 = ptrtoint ptr %call24.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call24.1, align 8
  %tobool.not.i.1 = icmp eq ptr %bio_list_on_stack.sroa.8.122.1, null
  br i1 %tobool.not.i.1, label %while.body.1.bio_list_add.exit.1_crit_edge, label %if.then.i.1

while.body.1.bio_list_add.exit.1_crit_edge:       ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_list_add.exit.1

if.then.i.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %bio_list_on_stack.sroa.8.122.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call24.1, ptr %bio_list_on_stack.sroa.8.122.1, align 8
  br label %bio_list_add.exit.1

bio_list_add.exit.1:                              ; preds = %if.then.i.1, %while.body.1.bio_list_add.exit.1_crit_edge
  %bio_list_on_stack.sroa.0.2.1 = phi ptr [ %bio_list_on_stack.sroa.0.123.1, %if.then.i.1 ], [ %call24.1, %while.body.1.bio_list_add.exit.1_crit_edge ]
  %call.1 = tail call fastcc ptr @throtl_pop_queued(ptr noundef %arrayidx.1, ptr noundef null)
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %bio_list_add.exit.1.for.inc.1_crit_edge, label %bio_list_add.exit.1.while.body.1_crit_edge

bio_list_add.exit.1.while.body.1_crit_edge:       ; preds = %bio_list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.1

bio_list_add.exit.1.for.inc.1_crit_edge:          ; preds = %bio_list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %bio_list_add.exit.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %bio_list_on_stack.sroa.0.1.lcssa.1 = phi ptr [ %bio_list_on_stack.sroa.0.1.lcssa, %for.inc.for.inc.1_crit_edge ], [ %bio_list_on_stack.sroa.0.2.1, %bio_list_add.exit.1.for.inc.1_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #16
  %cmp.i.not = icmp eq ptr %bio_list_on_stack.sroa.0.1.lcssa.1, null
  br i1 %cmp.i.not, label %for.inc.1.if.end_crit_edge, label %if.then

for.inc.1.if.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %for.inc.1
  call void @blk_start_plug(ptr noundef nonnull %plug) #16
  br label %if.then.i16

if.then.i16:                                      ; preds = %if.then.i16.if.then.i16_crit_edge, %if.then
  %bio_list_on_stack.sroa.0.330 = phi ptr [ %bio_list_on_stack.sroa.0.1.lcssa.1, %if.then ], [ %8, %if.then.i16.if.then.i16_crit_edge ]
  %7 = ptrtoint ptr %bio_list_on_stack.sroa.0.330 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bio_list_on_stack.sroa.0.330, align 8
  store ptr null, ptr %bio_list_on_stack.sroa.0.330, align 8
  call void @submit_bio_noacct(ptr noundef nonnull %bio_list_on_stack.sroa.0.330) #16
  %tobool.not.i15 = icmp eq ptr %8, null
  br i1 %tobool.not.i15, label %while.end8, label %if.then.i16.if.then.i16_crit_edge

if.then.i16.if.then.i16_crit_edge:                ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i16

while.end8:                                       ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #18
  call void @blk_finish_plug(ptr noundef nonnull %plug) #16
  br label %if.end

if.end:                                           ; preds = %while.end8, %for.inc.1.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkcg_activate_policy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_throtl_exit(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %td = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 56
  %0 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %td, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !142

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-throttle.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2306, 0\0A.popsection", ""() #16, !srcloc !155
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pending_timer = getelementptr inbounds %struct.throtl_service_queue, ptr %1, i32 0, i32 6
  %call = tail call i32 @del_timer_sync(ptr noundef %pending_timer) #16
  %2 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %td, align 8
  %dispatch_work.i = getelementptr inbounds %struct.throtl_data, ptr %3, i32 0, i32 4
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %dispatch_work.i) #16
  tail call void @blkcg_deactivate_policy(ptr noundef %q, ptr noundef nonnull @blkcg_policy_throtl) #16
  %4 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %td, align 8
  %latency_buckets = getelementptr inbounds %struct.throtl_data, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %latency_buckets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %latency_buckets, align 4
  tail call void @free_percpu(ptr noundef %7) #16
  %8 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %td, align 8
  %arrayidx12 = getelementptr %struct.throtl_data, ptr %9, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  tail call void @free_percpu(ptr noundef %11) #16
  %12 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %td, align 8
  tail call void @kfree(ptr noundef %13) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_deactivate_policy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_throtl_register_queue(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %td1 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 56
  %0 = ptrtoint ptr %td1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %td1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !142

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-throttle.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2321, 0\0A.popsection", ""() #16, !srcloc !156
  unreachable

do.end10:                                         ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %2 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %queue_flags, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  %throtl_slice13 = getelementptr inbounds %struct.throtl_data, ptr %1, i32 0, i32 3
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %throtl_slice13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %throtl_slice13, align 4
  %filtered_latency = getelementptr inbounds %struct.throtl_data, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %filtered_latency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %filtered_latency, align 4
  br label %if.end20

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %throtl_slice13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %throtl_slice13, align 4
  %filtered_latency14 = getelementptr inbounds %struct.throtl_data, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %filtered_latency14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000, ptr %filtered_latency14, align 4
  %avg_buckets = getelementptr inbounds %struct.throtl_data, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %avg_buckets to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4000, ptr %avg_buckets, align 4
  %arrayidx18 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4000, ptr %arrayidx18, align 4
  %arrayidx15.1 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4000, ptr %arrayidx15.1, align 4
  %arrayidx18.1 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4000, ptr %arrayidx18.1, align 4
  %arrayidx15.2 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4000, ptr %arrayidx15.2, align 4
  %arrayidx18.2 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4000, ptr %arrayidx18.2, align 4
  %arrayidx15.3 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4000, ptr %arrayidx15.3, align 4
  %arrayidx18.3 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4000, ptr %arrayidx18.3, align 4
  %arrayidx15.4 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4000, ptr %arrayidx15.4, align 4
  %arrayidx18.4 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4000, ptr %arrayidx18.4, align 4
  %arrayidx15.5 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4000, ptr %arrayidx15.5, align 4
  %arrayidx18.5 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 1, i32 5
  %20 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4000, ptr %arrayidx18.5, align 4
  %arrayidx15.6 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 0, i32 6
  %21 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4000, ptr %arrayidx15.6, align 4
  %arrayidx18.6 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 1, i32 6
  %22 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4000, ptr %arrayidx18.6, align 4
  %arrayidx15.7 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 0, i32 7
  %23 = ptrtoint ptr %arrayidx15.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4000, ptr %arrayidx15.7, align 4
  %arrayidx18.7 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 1, i32 7
  %24 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4000, ptr %arrayidx18.7, align 4
  %arrayidx15.8 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 0, i32 8
  %25 = ptrtoint ptr %arrayidx15.8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4000, ptr %arrayidx15.8, align 4
  %arrayidx18.8 = getelementptr %struct.throtl_data, ptr %1, i32 0, i32 11, i32 1, i32 8
  %26 = ptrtoint ptr %arrayidx18.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4000, ptr %arrayidx18.8, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 5
  %27 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %28, null
  %track_bio_latency = getelementptr inbounds %struct.throtl_data, ptr %1, i32 0, i32 15
  %frombool = zext i1 %tobool.i.not to i8
  %29 = ptrtoint ptr %track_bio_latency to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %track_bio_latency, align 4
  br i1 %tobool.i.not, label %if.end20.if.end27_crit_edge, label %if.then26

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @blk_stat_enable_accounting(ptr noundef %q) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end20.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_enable_accounting(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_throtl_sample_time_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %td = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 56
  %0 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %td, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %throtl_slice = getelementptr inbounds %struct.throtl_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %throtl_slice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %throtl_slice, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %3) #16
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.5, i32 noundef %call)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_throtl_sample_time_store(ptr nocapture noundef readonly %q, ptr noundef %page, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #16
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !157
  %td = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 56
  %1 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %td, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.else.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %4) #16
  %5 = add i32 %call2.i, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %5)
  %6 = icmp ult i32 %5, -100
  br i1 %6, label %if.else.i.cleanup_crit_edge, label %if.end7

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %td, align 8
  %throtl_slice = getelementptr inbounds %struct.throtl_data, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %throtl_slice to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2.i, ptr %throtl_slice, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #16
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @throtl_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.53, i32 noundef 8, i32 noundef 0) #16
  store ptr %call, ptr @kthrotld_workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.54) #23
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 @blkcg_policy_register(ptr noundef nonnull @blkcg_policy_throtl) #16
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tg_print_limit(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #16
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %priv.i.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private, align 4
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @tg_prfill_limit, ptr noundef nonnull @blkcg_policy_throtl, i32 noundef %9, i1 noundef zeroext false) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tg_set_limit(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %ctx = alloca %struct.blkg_conf_ctx, align 4
  %tok = alloca [27 x i8], align 1
  %p = alloca ptr, align 4
  %val = alloca i64, align 8
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_css(ptr noundef %of) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ctx) #16
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ctx, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !157
  %3 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !157
  %5 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of, align 4
  %priv.i = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private, align 4
  %call3 = call i32 @blkg_conf_prep(ptr noundef %call, ptr noundef nonnull @blkcg_policy_throtl, ptr noundef %buf, ptr noundef nonnull %ctx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup293_crit_edge

entry.cleanup293_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup293

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.blkg_to_tg.exit_crit_edge, label %cond.true.i.i

if.end.blkg_to_tg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %13 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %12, i32 0, i32 9, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_tg.exit

blkg_to_tg.exit:                                  ; preds = %cond.true.i.i, %if.end.blkg_to_tg.exit_crit_edge
  %cond.i.i = phi ptr [ %15, %cond.true.i.i ], [ null, %if.end.blkg_to_tg.exit_crit_edge ]
  %bps_conf = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 10
  %arrayidx5 = getelementptr [2 x i64], ptr %bps_conf, i32 0, i32 %10
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx5, align 8
  %arrayidx8 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 10, i32 1
  %arrayidx9 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 10, i32 1, i32 %10
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx9, align 8
  %iops_conf = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 12
  %arrayidx12 = getelementptr [2 x i32], ptr %iops_conf, i32 0, i32 %10
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12, align 4
  %arrayidx15 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 12, i32 1
  %arrayidx16 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 12, i32 1, i32 %10
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16, align 4
  %idletime_threshold_conf = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 27
  %24 = ptrtoint ptr %idletime_threshold_conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idletime_threshold_conf, align 4
  %latency_target_conf = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 20
  %26 = ptrtoint ptr %latency_target_conf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %latency_target_conf, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp87 = icmp eq i64 %off, 0
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %tok) #16
  %28 = call ptr @memset(ptr %tok, i32 255, i32 27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #16
  %29 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %p, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #16
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %val, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #16
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %len, align 4, !annotation !157
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %call19493 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %33, ptr noundef nonnull @.str.13, ptr noundef nonnull %tok, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19493)
  %cmp.not494 = icmp eq i32 %call19493, 1
  br i1 %cmp.not494, label %blkg_to_tg.exit.if.end22_crit_edge, label %blkg_to_tg.exit.while.end_crit_edge

blkg_to_tg.exit.while.end_crit_edge:              ; preds = %blkg_to_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

blkg_to_tg.exit.if.end22_crit_edge:               ; preds = %blkg_to_tg.exit
  br label %if.end22

if.end22:                                         ; preds = %cleanup.if.end22_crit_edge, %blkg_to_tg.exit.if.end22_crit_edge
  %v.sroa.17.0.off0505 = phi i32 [ %v.sroa.17.2.off0, %cleanup.if.end22_crit_edge ], [ %23, %blkg_to_tg.exit.if.end22_crit_edge ]
  %v.sroa.12.0.off0503 = phi i32 [ %v.sroa.12.2.off0, %cleanup.if.end22_crit_edge ], [ %21, %blkg_to_tg.exit.if.end22_crit_edge ]
  %v.sroa.7.0501 = phi i64 [ %v.sroa.7.2, %cleanup.if.end22_crit_edge ], [ %19, %blkg_to_tg.exit.if.end22_crit_edge ]
  %v.sroa.0.0499 = phi i64 [ %v.sroa.0.2, %cleanup.if.end22_crit_edge ], [ %17, %blkg_to_tg.exit.if.end22_crit_edge ]
  %latency_time.0497 = phi i32 [ %latency_time.2, %cleanup.if.end22_crit_edge ], [ %27, %blkg_to_tg.exit.if.end22_crit_edge ]
  %idle_time.0495 = phi i32 [ %idle_time.2, %cleanup.if.end22_crit_edge ], [ %25, %blkg_to_tg.exit.if.end22_crit_edge ]
  %34 = ptrtoint ptr %tok to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tok, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp25 = icmp eq i8 %35, 0
  br i1 %cmp25, label %if.end22.while.end_crit_edge, label %if.end28

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end28:                                         ; preds = %if.end22
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %37
  store ptr %add.ptr, ptr %3, align 4
  %40 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tok, ptr %p, align 4
  %call31 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.14) #16
  %41 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p, align 4
  %tobool32.not = icmp eq ptr %42, null
  br i1 %tobool32.not, label %if.end28.out_finish_crit_edge, label %lor.lhs.false

if.end28.out_finish_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_finish

lor.lhs.false:                                    ; preds = %if.end28
  %call33 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %42, ptr noundef nonnull @.str.6, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 1
  br i1 %cmp34.not, label %lor.lhs.false.if.end39_crit_edge, label %land.lhs.true

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

land.lhs.true:                                    ; preds = %lor.lhs.false
  %43 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p, align 4
  %call36 = call i32 @strcmp(ptr noundef %44, ptr noundef nonnull dereferenceable(4) @.str.15) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true.out_finish_crit_edge

land.lhs.true.out_finish_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_finish

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool40.not = icmp eq i64 %46, 0
  br i1 %tobool40.not, label %if.end39.out_finish_crit_edge, label %if.end42

if.end39.out_finish_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_finish

if.end42:                                         ; preds = %if.end39
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %tok, ptr noundef nonnull dereferenceable(5) @.str.16, i32 5) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool45.not = icmp eq i32 %bcmp, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %46)
  %cmp47 = icmp ne i64 %46, 1
  %or.cond = select i1 %tobool45.not, i1 %cmp47, i1 false
  br i1 %or.cond, label %if.end42.cleanup_crit_edge, label %if.else

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %if.end42
  %bcmp425 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %tok, ptr noundef nonnull dereferenceable(5) @.str.17, i32 5) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp425)
  %tobool53.not = icmp eq i32 %bcmp425, 0
  br i1 %tobool53.not, label %land.lhs.true54, label %if.else59

land.lhs.true54:                                  ; preds = %if.else
  br i1 %cmp47, label %land.lhs.true54.cleanup_crit_edge, label %land.lhs.true54.if.else70_crit_edge

land.lhs.true54.cleanup_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true54.if.else70_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #18
  %.pre = xor i1 %cmp47, true
  br label %if.else70

if.else59:                                        ; preds = %if.else
  %bcmp426 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %tok, ptr noundef nonnull dereferenceable(6) @.str.18, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp426)
  %tobool62.not = icmp ne i32 %bcmp426, 0
  %cmp47.not = xor i1 %cmp47, true
  %brmerge = select i1 %tobool62.not, i1 true, i1 %cmp47.not
  br i1 %brmerge, label %if.else59.if.else70_crit_edge, label %if.then66

if.else59.if.else70_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else70

if.then66:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #18
  %47 = call i64 @llvm.umin.i64(i64 %46, i64 4294967295)
  %48 = trunc i64 %47 to i32
  br label %cleanup

if.else70:                                        ; preds = %if.else59.if.else70_crit_edge, %land.lhs.true54.if.else70_crit_edge
  %cmp47.not460.pre-phi = phi i1 [ %.pre, %land.lhs.true54.if.else70_crit_edge ], [ %cmp47.not, %if.else59.if.else70_crit_edge ]
  %bcmp427 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %tok, ptr noundef nonnull dereferenceable(6) @.str.19, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp427)
  %tobool73.not = icmp ne i32 %bcmp427, 0
  %brmerge461 = select i1 %tobool73.not, i1 true, i1 %cmp47.not460.pre-phi
  br i1 %brmerge461, label %if.else86, label %if.then77

if.then77:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #18
  %49 = call i64 @llvm.umin.i64(i64 %46, i64 4294967295)
  %50 = trunc i64 %49 to i32
  br label %cleanup

if.else86:                                        ; preds = %if.else70
  br i1 %cmp87, label %land.lhs.true89, label %if.else86.out_finish_crit_edge

if.else86.out_finish_crit_edge:                   ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_finish

land.lhs.true89:                                  ; preds = %if.else86
  %bcmp429 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %tok, ptr noundef nonnull dereferenceable(5) @.str.20, i32 5) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp429)
  %tobool92.not = icmp eq i32 %bcmp429, 0
  br i1 %tobool92.not, label %if.then93, label %land.lhs.true98.critedge

if.then93:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #18
  %conv94 = trunc i64 %46 to i32
  br label %cleanup

land.lhs.true98.critedge:                         ; preds = %land.lhs.true89
  %bcmp428 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %tok, ptr noundef nonnull dereferenceable(8) @.str.21, i32 8) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp428)
  %tobool101.not = icmp eq i32 %bcmp428, 0
  br i1 %tobool101.not, label %if.then102, label %land.lhs.true98.critedge.out_finish_crit_edge

land.lhs.true98.critedge.out_finish_crit_edge:    ; preds = %land.lhs.true98.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_finish

if.then102:                                       ; preds = %land.lhs.true98.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %conv103 = trunc i64 %46 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %if.then93, %if.then77, %if.then66, %land.lhs.true54.cleanup_crit_edge, %if.end42.cleanup_crit_edge
  %idle_time.2 = phi i32 [ %idle_time.0495, %if.then102 ], [ %conv94, %if.then93 ], [ %idle_time.0495, %if.then77 ], [ %idle_time.0495, %if.then66 ], [ %idle_time.0495, %if.end42.cleanup_crit_edge ], [ %idle_time.0495, %land.lhs.true54.cleanup_crit_edge ]
  %latency_time.2 = phi i32 [ %conv103, %if.then102 ], [ %latency_time.0497, %if.then93 ], [ %latency_time.0497, %if.then77 ], [ %latency_time.0497, %if.then66 ], [ %latency_time.0497, %if.end42.cleanup_crit_edge ], [ %latency_time.0497, %land.lhs.true54.cleanup_crit_edge ]
  %v.sroa.0.2 = phi i64 [ %v.sroa.0.0499, %if.then102 ], [ %v.sroa.0.0499, %if.then93 ], [ %v.sroa.0.0499, %if.then77 ], [ %v.sroa.0.0499, %if.then66 ], [ %46, %if.end42.cleanup_crit_edge ], [ %v.sroa.0.0499, %land.lhs.true54.cleanup_crit_edge ]
  %v.sroa.7.2 = phi i64 [ %v.sroa.7.0501, %if.then102 ], [ %v.sroa.7.0501, %if.then93 ], [ %v.sroa.7.0501, %if.then77 ], [ %v.sroa.7.0501, %if.then66 ], [ %v.sroa.7.0501, %if.end42.cleanup_crit_edge ], [ %46, %land.lhs.true54.cleanup_crit_edge ]
  %v.sroa.12.2.off0 = phi i32 [ %v.sroa.12.0.off0503, %if.then102 ], [ %v.sroa.12.0.off0503, %if.then93 ], [ %v.sroa.12.0.off0503, %if.then77 ], [ %48, %if.then66 ], [ %v.sroa.12.0.off0503, %if.end42.cleanup_crit_edge ], [ %v.sroa.12.0.off0503, %land.lhs.true54.cleanup_crit_edge ]
  %v.sroa.17.2.off0 = phi i32 [ %v.sroa.17.0.off0505, %if.then102 ], [ %v.sroa.17.0.off0505, %if.then93 ], [ %50, %if.then77 ], [ %v.sroa.17.0.off0505, %if.then66 ], [ %v.sroa.17.0.off0505, %if.end42.cleanup_crit_edge ], [ %v.sroa.17.0.off0505, %land.lhs.true54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #16
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %tok) #16
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %tok) #16
  %51 = call ptr @memset(ptr %tok, i32 255, i32 27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #16
  %52 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %p, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #16
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -1, ptr %val, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #16
  %54 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %len, align 4, !annotation !157
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %call19 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %56, ptr noundef nonnull @.str.13, ptr noundef nonnull %tok, ptr noundef nonnull %len)
  %cmp.not = icmp eq i32 %call19, 1
  br i1 %cmp.not, label %cleanup.if.end22_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

cleanup.if.end22_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end22.while.end_crit_edge, %blkg_to_tg.exit.while.end_crit_edge
  %idle_time.0.lcssa = phi i32 [ %25, %blkg_to_tg.exit.while.end_crit_edge ], [ %idle_time.0495, %if.end22.while.end_crit_edge ], [ %idle_time.2, %cleanup.while.end_crit_edge ]
  %latency_time.0.lcssa = phi i32 [ %27, %blkg_to_tg.exit.while.end_crit_edge ], [ %latency_time.0497, %if.end22.while.end_crit_edge ], [ %latency_time.2, %cleanup.while.end_crit_edge ]
  %v.sroa.0.0.lcssa = phi i64 [ %17, %blkg_to_tg.exit.while.end_crit_edge ], [ %v.sroa.0.0499, %if.end22.while.end_crit_edge ], [ %v.sroa.0.2, %cleanup.while.end_crit_edge ]
  %v.sroa.7.0.lcssa = phi i64 [ %19, %blkg_to_tg.exit.while.end_crit_edge ], [ %v.sroa.7.0501, %if.end22.while.end_crit_edge ], [ %v.sroa.7.2, %cleanup.while.end_crit_edge ]
  %v.sroa.12.0.off0.lcssa = phi i32 [ %21, %blkg_to_tg.exit.while.end_crit_edge ], [ %v.sroa.12.0.off0503, %if.end22.while.end_crit_edge ], [ %v.sroa.12.2.off0, %cleanup.while.end_crit_edge ]
  %v.sroa.17.0.off0.lcssa = phi i32 [ %23, %blkg_to_tg.exit.while.end_crit_edge ], [ %v.sroa.17.0.off0505, %if.end22.while.end_crit_edge ], [ %v.sroa.17.2.off0, %cleanup.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #16
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %tok) #16
  %57 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %v.sroa.0.0.lcssa, ptr %arrayidx5, align 8
  %58 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %v.sroa.7.0.lcssa, ptr %arrayidx9, align 8
  %59 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %v.sroa.12.0.off0.lcssa, ptr %arrayidx12, align 4
  %60 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %v.sroa.17.0.off0.lcssa, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp132 = icmp eq i32 %10, 1
  br i1 %cmp132, label %if.then134, label %while.end.if.end151_crit_edge

while.end.if.end151_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151

if.then134:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx137 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 9, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %v.sroa.0.0.lcssa, ptr %arrayidx137, align 8
  %arrayidx141 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 9, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %v.sroa.7.0.lcssa, ptr %arrayidx141, align 8
  %arrayidx145 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 11, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %v.sroa.12.0.off0.lcssa, ptr %arrayidx145, align 4
  %arrayidx150 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 11, i32 1, i32 1
  %64 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %v.sroa.17.0.off0.lcssa, ptr %arrayidx150, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then134, %while.end.if.end151_crit_edge
  %65 = ptrtoint ptr %bps_conf to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %bps_conf, align 8
  %arrayidx157 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 10, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx157, align 8
  %69 = call i64 @llvm.umin.i64(i64 %66, i64 %68)
  %bps165 = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 9
  %70 = ptrtoint ptr %bps165 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %bps165, align 8
  %71 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx8, align 8
  %arrayidx173 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 10, i32 1, i32 1
  %73 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx173, align 8
  %75 = call i64 @llvm.umin.i64(i64 %72, i64 %74)
  %arrayidx182 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 9, i32 1
  %76 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %arrayidx182, align 8
  %77 = ptrtoint ptr %iops_conf to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iops_conf, align 8
  %arrayidx189 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 12, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx189, align 4
  %81 = call i32 @llvm.umin.i32(i32 %78, i32 %80)
  %iops197 = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 11
  %82 = ptrtoint ptr %iops197 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %iops197, align 8
  %83 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx15, align 8
  %arrayidx205 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 12, i32 1, i32 1
  %85 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx205, align 4
  %87 = call i32 @llvm.umin.i32(i32 %84, i32 %86)
  %arrayidx214 = getelementptr %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 11, i32 1
  %88 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx214, align 8
  %89 = ptrtoint ptr %idletime_threshold_conf to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %idle_time.0.lcssa, ptr %idletime_threshold_conf, align 4
  %90 = ptrtoint ptr %latency_target_conf to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %latency_time.0.lcssa, ptr %latency_target_conf, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %tobool221.not = icmp eq i64 %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool226.not = icmp eq i32 %81, 0
  %or.cond462 = select i1 %tobool221.not, i1 %tobool226.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %tobool231.not = icmp eq i64 %75, 0
  %or.cond463 = select i1 %or.cond462, i1 %tobool231.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool236.not = icmp eq i32 %87, 0
  %or.cond464 = select i1 %or.cond463, i1 %tobool236.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idle_time.0.lcssa)
  %cmp239 = icmp eq i32 %idle_time.0.lcssa, 0
  %or.cond465 = select i1 %or.cond464, i1 true, i1 %cmp239
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %latency_time.0.lcssa)
  %cmp243 = icmp eq i32 %latency_time.0.lcssa, -1
  %or.cond466 = select i1 %or.cond465, i1 true, i1 %cmp243
  br i1 %or.cond466, label %if.then245, label %if.else258

if.then245:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %bps165 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %bps165, align 8
  %92 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 0, ptr %arrayidx182, align 8
  %93 = ptrtoint ptr %iops197 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %iops197, align 8
  %94 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %arrayidx214, align 8
  br label %if.end267.sink.split

if.else258:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp259 = icmp eq i32 %10, 0
  br i1 %cmp259, label %if.else258.if.end267.sink.split_crit_edge, label %if.else258.if.end267_crit_edge

if.else258.if.end267_crit_edge:                   ; preds = %if.else258
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end267

if.else258.if.end267.sink.split_crit_edge:        ; preds = %if.else258
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end267.sink.split

if.end267.sink.split:                             ; preds = %if.else258.if.end267.sink.split_crit_edge, %if.then245
  %idle_time.0.lcssa.sink = phi i32 [ 0, %if.then245 ], [ %idle_time.0.lcssa, %if.else258.if.end267.sink.split_crit_edge ]
  %latency_time.0.lcssa.sink = phi i32 [ -1, %if.then245 ], [ %latency_time.0.lcssa, %if.else258.if.end267.sink.split_crit_edge ]
  %idletime_threshold263 = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 26
  %95 = ptrtoint ptr %idletime_threshold263 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %idle_time.0.lcssa.sink, ptr %idletime_threshold263, align 8
  %latency_target265 = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 19
  %96 = ptrtoint ptr %latency_target265 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %latency_time.0.lcssa.sink, ptr %latency_target265, align 4
  br label %if.end267

if.end267:                                        ; preds = %if.end267.sink.split, %if.else258.if.end267_crit_edge
  %td = getelementptr inbounds %struct.throtl_grp, ptr %cond.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %td, align 4
  call fastcc void @blk_throtl_update_limit_valid(ptr noundef %98)
  %99 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %td, align 4
  %limit_valid = getelementptr inbounds %struct.throtl_data, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %limit_valid to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %limit_valid, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool270.not = icmp eq i8 %102, 0
  br i1 %tobool270.not, label %if.end280, label %if.then271

if.then271:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cond = icmp eq i32 %10, 0
  br i1 %cond, label %if.end280.thread, label %if.then271._crit_edge

if.then271._crit_edge:                            ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #18
  br label %109

if.end280.thread:                                 ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #18
  %limit_index = getelementptr inbounds %struct.throtl_data, ptr %100, i32 0, i32 5
  %103 = ptrtoint ptr %limit_index to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %limit_index, align 4
  br label %land.rhs

if.end280:                                        ; preds = %if.end267
  %limit_index279 = getelementptr inbounds %struct.throtl_data, ptr %100, i32 0, i32 5
  %104 = ptrtoint ptr %limit_index279 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %limit_index279, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp281 = icmp eq i32 %10, 0
  br i1 %cmp281, label %if.end280.land.rhs_crit_edge, label %if.end280._crit_edge

if.end280._crit_edge:                             ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #18
  br label %109

if.end280.land.rhs_crit_edge:                     ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

land.rhs:                                         ; preds = %if.end280.land.rhs_crit_edge, %if.end280.thread
  %105 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %td, align 4
  %limit_valid284 = getelementptr inbounds %struct.throtl_data, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %limit_valid284 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %limit_valid284, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool286 = icmp ne i8 %108, 0
  br label %109

out_finish:                                       ; preds = %land.lhs.true98.critedge.out_finish_crit_edge, %if.else86.out_finish_crit_edge, %if.end39.out_finish_crit_edge, %land.lhs.true.out_finish_crit_edge, %if.end28.out_finish_crit_edge
  %ret.1.ph = phi i32 [ -22, %land.lhs.true98.critedge.out_finish_crit_edge ], [ -22, %if.else86.out_finish_crit_edge ], [ -34, %if.end39.out_finish_crit_edge ], [ -22, %if.end28.out_finish_crit_edge ], [ -22, %land.lhs.true.out_finish_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #16
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %tok) #16
  br label %cleanup293.sink.split

109:                                              ; preds = %land.rhs, %if.end280._crit_edge, %if.then271._crit_edge
  %110 = phi i1 [ false, %if.end280._crit_edge ], [ %tobool286, %land.rhs ], [ false, %if.then271._crit_edge ]
  call fastcc void @tg_conf_updated(ptr noundef %cond.i.i, i1 noundef zeroext %110)
  br label %cleanup293.sink.split

cleanup293.sink.split:                            ; preds = %109, %out_finish
  %retval.0.ph = phi i32 [ %ret.1.ph, %out_finish ], [ %nbytes, %109 ]
  call void @blkg_conf_finish(ptr noundef nonnull %ctx) #16
  br label %cleanup293

cleanup293:                                       ; preds = %cleanup293.sink.split, %entry.cleanup293_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup293_crit_edge ], [ %retval.0.ph, %cleanup293.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ctx) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_print_blkgs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tg_prfill_limit(ptr noundef %sf, ptr nocapture noundef readonly %pd, i32 noundef %off) #0 align 64 {
entry:
  %bufs = alloca [4 x [21 x i8]], align 1
  %idle_time = alloca [26 x i8], align 1
  %latency_time = alloca [26 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %call1 = tail call ptr @blkg_dev_name(ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %bufs) #16
  %2 = call ptr @memcpy(ptr %bufs, ptr @__const.tg_prfill_limit.bufs, i32 84)
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %idle_time) #16
  %3 = call ptr @memset(ptr %idle_time, i32 0, i32 26)
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %latency_time) #16
  %4 = call ptr @memset(ptr %latency_time, i32 0, i32 26)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp = icmp eq i32 %off, 0
  %not.cmp = xor i1 %cmp, true
  %. = sext i1 %not.cmp to i64
  %.152 = sext i1 %not.cmp to i32
  %bps_conf = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 10
  %arrayidx4 = getelementptr [2 x i64], ptr %bps_conf, i32 0, i32 %off
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %.)
  %cmp5 = icmp eq i64 %6, %.
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %arrayidx8 = getelementptr %struct.throtl_grp, ptr %pd, i32 0, i32 10, i32 1, i32 %off
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %.)
  %cmp9 = icmp eq i64 %8, %.
  br i1 %cmp9, label %land.lhs.true10, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

land.lhs.true10:                                  ; preds = %land.lhs.true
  %iops_conf = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 12
  %arrayidx12 = getelementptr [2 x i32], ptr %iops_conf, i32 0, i32 %off
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %.152)
  %cmp13 = icmp eq i32 %10, %.152
  br i1 %cmp13, label %land.lhs.true14, label %land.lhs.true10.if.end25_crit_edge

land.lhs.true10.if.end25_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %arrayidx17 = getelementptr %struct.throtl_grp, ptr %pd, i32 0, i32 12, i32 1, i32 %off
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %.152)
  %cmp18 = icmp eq i32 %12, %.152
  br i1 %cmp18, label %land.lhs.true19, label %land.lhs.true14.if.end25_crit_edge

land.lhs.true14.if.end25_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

land.lhs.true19:                                  ; preds = %land.lhs.true14
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true19
  %idletime_threshold_conf = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 27
  %13 = ptrtoint ptr %idletime_threshold_conf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idletime_threshold_conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp21 = icmp eq i32 %14, 0
  br i1 %cmp21, label %land.lhs.true22, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %latency_target_conf = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 20
  %15 = ptrtoint ptr %latency_target_conf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %latency_target_conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp23 = icmp eq i32 %16, -1
  br i1 %cmp23, label %land.lhs.true22.cleanup_crit_edge, label %land.lhs.true22.if.end25_crit_edge

land.lhs.true22.if.end25_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true22.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge, %land.lhs.true14.if.end25_crit_edge, %land.lhs.true10.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp29.not = icmp eq i64 %6, -1
  br i1 %cmp29.not, label %if.end25.if.end36_crit_edge, label %if.then30

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %call35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bufs, i32 noundef 21, ptr noundef nonnull @.str.6, i64 noundef %6)
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end25.if.end36_crit_edge
  %arrayidx39 = getelementptr %struct.throtl_grp, ptr %pd, i32 0, i32 10, i32 1, i32 %off
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx39, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %cmp40.not = icmp eq i64 %18, -1
  br i1 %cmp40.not, label %if.end36.if.end48_crit_edge, label %if.then41

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx42 = getelementptr inbounds [4 x [21 x i8]], ptr %bufs, i32 0, i32 1
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx42, i32 noundef 21, ptr noundef nonnull @.str.6, i64 noundef %18)
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %if.end36.if.end48_crit_edge
  %iops_conf49 = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 12
  %arrayidx51 = getelementptr [2 x i32], ptr %iops_conf49, i32 0, i32 %off
  %19 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp52.not = icmp eq i32 %20, -1
  br i1 %cmp52.not, label %if.end48.if.end60_crit_edge, label %if.then53

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx54 = getelementptr inbounds [4 x [21 x i8]], ptr %bufs, i32 0, i32 2
  %call59 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx54, i32 noundef 21, ptr noundef nonnull @.str.7, i32 noundef %20)
  br label %if.end60

if.end60:                                         ; preds = %if.then53, %if.end48.if.end60_crit_edge
  %arrayidx63 = getelementptr %struct.throtl_grp, ptr %pd, i32 0, i32 12, i32 1, i32 %off
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp64.not = icmp eq i32 %22, -1
  br i1 %cmp64.not, label %if.end60.if.end72_crit_edge, label %if.then65

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx66 = getelementptr inbounds [4 x [21 x i8]], ptr %bufs, i32 0, i32 3
  %call71 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx66, i32 noundef 21, ptr noundef nonnull @.str.7, i32 noundef %22)
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %if.end60.if.end72_crit_edge
  br i1 %cmp, label %if.then74, label %if.end72.if.end95_crit_edge

if.end72.if.end95_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end95

if.then74:                                        ; preds = %if.end72
  %idletime_threshold_conf75 = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 27
  %23 = ptrtoint ptr %idletime_threshold_conf75 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idletime_threshold_conf75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp76 = icmp eq i32 %24, -1
  br i1 %cmp76, label %if.then77, label %if.else80

if.then77:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #18
  %25 = call ptr @memcpy(ptr %idle_time, ptr @.str.8, i32 10)
  br label %if.end84

if.else80:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #18
  %call83 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %idle_time, i32 noundef 26, ptr noundef nonnull @.str.9, i32 noundef %24)
  br label %if.end84

if.end84:                                         ; preds = %if.else80, %if.then77
  %latency_target_conf85 = getelementptr inbounds %struct.throtl_grp, ptr %pd, i32 0, i32 20
  %26 = ptrtoint ptr %latency_target_conf85 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %latency_target_conf85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp86 = icmp eq i32 %27, -1
  br i1 %cmp86, label %if.then87, label %if.else90

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  %28 = call ptr @memcpy(ptr %latency_time, ptr @.str.10, i32 13)
  br label %if.end95

if.else90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  %call93 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %latency_time, i32 noundef 26, ptr noundef nonnull @.str.11, i32 noundef %27)
  br label %if.end95

if.end95:                                         ; preds = %if.else90, %if.then87, %if.end72.if.end95_crit_edge
  %arrayidx98 = getelementptr inbounds [4 x [21 x i8]], ptr %bufs, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [4 x [21 x i8]], ptr %bufs, i32 0, i32 2
  %arrayidx102 = getelementptr inbounds [4 x [21 x i8]], ptr %bufs, i32 0, i32 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.12, ptr noundef nonnull %call1, ptr noundef nonnull %bufs, ptr noundef %arrayidx98, ptr noundef %arrayidx100, ptr noundef %arrayidx102, ptr noundef nonnull %idle_time, ptr noundef nonnull %latency_time) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %latency_time) #16
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %idle_time) #16
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %bufs) #16
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkg_dev_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkg_conf_prep(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_throtl_update_limit_valid(ptr nocapture noundef %td) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %queue = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %root_blkg = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %root_blkg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root_blkg, align 8
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blkcg, align 4
  %call = tail call ptr @css_next_descendant_post(ptr noundef null, ptr noundef %9) #16
  %tobool.not64 = icmp eq ptr %call, null
  br i1 %tobool.not64, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pos_css.065 = phi ptr [ %call28, %for.inc.for.body_crit_edge ], [ %call, %rcu_read_lock.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %root_blkg3 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 35
  %12 = ptrtoint ptr %root_blkg3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root_blkg3, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %cmp.i = icmp eq ptr %pos_css.065, @blkcg_root
  br i1 %cmp.i, label %if.then.i45, label %if.end.i

if.then.i45:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %root_blkg.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %root_blkg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root_blkg.i, align 8
  br label %__blkg_lookup.exit

if.end.i:                                         ; preds = %for.body
  %blkg_hint.i = getelementptr inbounds %struct.blkcg, ptr %pos_css.065, i32 0, i32 4
  %18 = ptrtoint ptr %blkg_hint.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %blkg_hint.i, align 4
  %call.i46 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48, label %if.end.i.do.end9.i_crit_edge

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

land.lhs.true.i48:                                ; preds = %if.end.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i48.do.end9.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i48.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i48
  %.b1.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end9.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 340, ptr noundef nonnull @.str.1) #16
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true4.i.do.end9.i_crit_edge, %land.lhs.true.i48.do.end9.i_crit_edge, %if.end.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %19, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end16.i_crit_edge, label %land.lhs.true12.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %do.end9.i
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %cmp14.i = icmp eq ptr %21, %15
  br i1 %cmp14.i, label %land.lhs.true12.i.blkg_to_tg.exit_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

land.lhs.true12.i.blkg_to_tg.exit_crit_edge:      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %call18.i = tail call ptr @blkg_lookup_slowpath(ptr noundef nonnull %pos_css.065, ptr noundef %15, i1 noundef zeroext false) #16
  br label %__blkg_lookup.exit

__blkg_lookup.exit:                               ; preds = %if.end16.i, %if.then.i45
  %retval.0.i = phi ptr [ %17, %if.then.i45 ], [ %call18.i, %if.end16.i ]
  %tobool5.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool5.not, label %__blkg_lookup.exit.for.inc_crit_edge, label %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge

__blkg_lookup.exit.blkg_to_tg.exit_crit_edge:     ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

__blkg_lookup.exit.for.inc_crit_edge:             ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

blkg_to_tg.exit:                                  ; preds = %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge, %land.lhs.true12.i.blkg_to_tg.exit_crit_edge
  %retval.0.i60 = phi ptr [ %retval.0.i, %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge ], [ %19, %land.lhs.true12.i.blkg_to_tg.exit_crit_edge ]
  %22 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %retval.0.i60, i32 0, i32 9, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %bps = getelementptr inbounds %struct.throtl_grp, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %bps to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bps, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool8.not = icmp eq i64 %26, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %blkg_to_tg.exit.for.end_crit_edge

blkg_to_tg.exit.for.end_crit_edge:                ; preds = %blkg_to_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false:                                    ; preds = %blkg_to_tg.exit
  %arrayidx10 = getelementptr %struct.throtl_grp, ptr %24, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool12.not = icmp eq i64 %28, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %iops = getelementptr inbounds %struct.throtl_grp, ptr %24, i32 0, i32 11
  %29 = ptrtoint ptr %iops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iops, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool16.not = icmp eq i32 %30, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %lor.lhs.false13.for.end_crit_edge

lor.lhs.false13.for.end_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %arrayidx19 = getelementptr %struct.throtl_grp, ptr %24, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool21.not = icmp eq i32 %32, 0
  br i1 %tobool21.not, label %lor.lhs.false17.for.inc_crit_edge, label %lor.lhs.false17.for.end_crit_edge

lor.lhs.false17.for.end_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false17.for.inc_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false17.for.inc_crit_edge, %__blkg_lookup.exit.for.inc_crit_edge
  %33 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queue, align 4
  %root_blkg25 = getelementptr inbounds %struct.request_queue, ptr %34, i32 0, i32 35
  %35 = ptrtoint ptr %root_blkg25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %root_blkg25, align 8
  %blkcg26 = getelementptr inbounds %struct.blkcg_gq, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %blkcg26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %blkcg26, align 4
  %call28 = tail call ptr @css_next_descendant_post(ptr noundef nonnull %pos_css.065, ptr noundef %38) #16
  %tobool.not = icmp eq ptr %call28, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false17.for.end_crit_edge, %lor.lhs.false13.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %blkg_to_tg.exit.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %tobool.not.lcssa = phi i1 [ false, %rcu_read_lock.exit.for.end_crit_edge ], [ true, %lor.lhs.false17.for.end_crit_edge ], [ true, %blkg_to_tg.exit.for.end_crit_edge ], [ true, %lor.lhs.false.for.end_crit_edge ], [ true, %lor.lhs.false13.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i49, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i52

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i52:                                ; preds = %for.end
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  %39 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i56 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %limit_valid = getelementptr inbounds %struct.throtl_data, ptr %td, i32 0, i32 6
  %frombool = zext i1 %tobool.not.lcssa to i8
  %43 = ptrtoint ptr %limit_valid to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool, ptr %limit_valid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tg_conf_updated(ptr noundef %tg, i1 noundef zeroext %global) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3
  %tobool.not.i219 = icmp eq ptr %service_queue, null
  br i1 %tobool.not.i219, label %sq_to_td.exit.thread, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %0 = ptrtoint ptr %service_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %service_queue, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %tg
  %tobool.not.i222 = icmp eq ptr %tg, null
  %or.cond.i = or i1 %tobool.not.i222, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.sq_to_td.exit_crit_edge, label %if.then.i223

land.lhs.true.i.i.sq_to_td.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit

if.then.i223:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %td.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %2 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %td.i, align 4
  br label %sq_to_td.exit

sq_to_td.exit:                                    ; preds = %if.then.i223, %land.lhs.true.i.i.sq_to_td.exit_crit_edge
  %retval.0.i224 = phi ptr [ %3, %if.then.i223 ], [ %service_queue, %land.lhs.true.i.i.sq_to_td.exit_crit_edge ]
  %queue = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i224, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %call4 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %5)
  br i1 %call4, label %if.end, label %sq_to_td.exit.cleanup_crit_edge, !prof !142

sq_to_td.exit.cleanup_crit_edge:                  ; preds = %sq_to_td.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 92)
  %6 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call4256 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %6)
  br i1 %call4256, label %sq_to_td.exit.thread.do.body40_crit_edge, label %sq_to_td.exit.thread.cleanup_crit_edge, !prof !142

sq_to_td.exit.thread.cleanup_crit_edge:           ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread.do.body40_crit_edge:         ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body40

if.end:                                           ; preds = %sq_to_td.exit
  %tobool7.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool7.not, label %if.end.do.body40_crit_edge, label %do.body9

if.end.do.body40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body40

do.body9:                                         ; preds = %if.end
  %7 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %do.body9.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body9.rcu_read_lock.exit_crit_edge:            ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body9
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body9.rcu_read_lock.exit_crit_edge
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %blk_trace, align 8
  %call13 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end22_crit_edge

rcu_read_lock.exit.do.end22_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b207 = load i1, ptr @tg_conf_updated.__warned, align 1
  br i1 %.b207, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @tg_conf_updated.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1272, ptr noundef nonnull @.str.1) #16
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %rcu_read_lock.exit.do.end22_crit_edge
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %do.end22.cleanup.sink.split_crit_edge, label %tg_to_blkg.exit, !prof !137

do.end22.cleanup.sink.split_crit_edge:            ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

tg_to_blkg.exit:                                  ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spec.select.i, align 4
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %blkcg, align 4
  %call33 = tail call fastcc i64 @tg_bps_limit(ptr noundef %tg, i32 noundef 0)
  %call34 = tail call fastcc i64 @tg_bps_limit(ptr noundef %tg, i32 noundef 1)
  %call35 = tail call fastcc i32 @tg_iops_limit(ptr noundef %tg, i32 noundef 0)
  %call36 = tail call fastcc i32 @tg_iops_limit(ptr noundef %tg, i32 noundef 1)
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %14, ptr noundef %18, ptr noundef nonnull @.str.23, i64 noundef %call33, i64 noundef %call34, i32 noundef %call35, i32 noundef %call36) #16
  br label %cleanup.sink.split

do.body40:                                        ; preds = %if.end.do.body40_crit_edge, %sq_to_td.exit.thread.do.body40_crit_edge
  %queue258262 = phi ptr [ %queue, %if.end.do.body40_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit.thread.do.body40_crit_edge ]
  %19 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i208 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i208 to ptr
  %preempt_count.i.i.i.i209 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i209, align 4
  %add.i.i.i210 = add i32 %22, 1
  store volatile i32 %add.i.i.i210, ptr %preempt_count.i.i.i.i209, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i211 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i211, label %do.body40.rcu_read_lock.exit218_crit_edge, label %land.lhs.true.i214

do.body40.rcu_read_lock.exit218_crit_edge:        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit218

land.lhs.true.i214:                               ; preds = %do.body40
  %call1.i212 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i212)
  %tobool.not.i213 = icmp eq i32 %call1.i212, 0
  br i1 %tobool.not.i213, label %land.lhs.true.i214.rcu_read_lock.exit218_crit_edge, label %land.lhs.true2.i216

land.lhs.true.i214.rcu_read_lock.exit218_crit_edge: ; preds = %land.lhs.true.i214
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit218

land.lhs.true2.i216:                              ; preds = %land.lhs.true.i214
  %.b4.i215 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i215, label %land.lhs.true2.i216.rcu_read_lock.exit218_crit_edge, label %if.then.i217

land.lhs.true2.i216.rcu_read_lock.exit218_crit_edge: ; preds = %land.lhs.true2.i216
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit218

if.then.i217:                                     ; preds = %land.lhs.true2.i216
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit218

rcu_read_lock.exit218:                            ; preds = %if.then.i217, %land.lhs.true2.i216.rcu_read_lock.exit218_crit_edge, %land.lhs.true.i214.rcu_read_lock.exit218_crit_edge, %do.body40.rcu_read_lock.exit218_crit_edge
  %23 = ptrtoint ptr %queue258262 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue258262, align 4
  %blk_trace47 = getelementptr inbounds %struct.request_queue, ptr %24, i32 0, i32 46
  %25 = ptrtoint ptr %blk_trace47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %blk_trace47, align 8
  %call49 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %rcu_read_lock.exit218.do.end59_crit_edge

rcu_read_lock.exit218.do.end59_crit_edge:         ; preds = %rcu_read_lock.exit218
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end59

land.lhs.true51:                                  ; preds = %rcu_read_lock.exit218
  %call52 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true51.do.end59_crit_edge, label %land.lhs.true54

land.lhs.true51.do.end59_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end59

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %.b205206 = load i1, ptr @tg_conf_updated.__warned.24, align 1
  br i1 %.b205206, label %land.lhs.true54.do.end59_crit_edge, label %if.then56

land.lhs.true54.do.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end59

if.then56:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @tg_conf_updated.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1272, ptr noundef nonnull @.str.1) #16
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %land.lhs.true54.do.end59_crit_edge, %land.lhs.true51.do.end59_crit_edge, %rcu_read_lock.exit218.do.end59_crit_edge
  %tobool61.not = icmp eq ptr %26, null
  br i1 %tobool61.not, label %do.end59.cleanup.sink.split_crit_edge, label %if.then68, !prof !137

do.end59.cleanup.sink.split_crit_edge:            ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then68:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  %call69 = tail call fastcc i64 @tg_bps_limit(ptr noundef %tg, i32 noundef 0)
  %call70 = tail call fastcc i64 @tg_bps_limit(ptr noundef %tg, i32 noundef 1)
  %call71 = tail call fastcc i32 @tg_iops_limit(ptr noundef %tg, i32 noundef 0)
  %call72 = tail call fastcc i32 @tg_iops_limit(ptr noundef %tg, i32 noundef 1)
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %26, ptr noundef null, ptr noundef nonnull @.str.23, i64 noundef %call69, i64 noundef %call70, i32 noundef %call71, i32 noundef %call72) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then68, %do.end59.cleanup.sink.split_crit_edge, %tg_to_blkg.exit, %do.end22.cleanup.sink.split_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sq_to_td.exit.thread.cleanup_crit_edge, %sq_to_td.exit.cleanup_crit_edge
  br i1 %global, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  %td = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %27 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %td, align 4
  %queue81 = getelementptr inbounds %struct.throtl_data, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %queue81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue81, align 4
  %root_blkg = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 35
  %31 = ptrtoint ptr %root_blkg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %root_blkg, align 8
  br label %cond.end

cond.false:                                       ; preds = %cleanup
  %tobool.not.i.i226 = icmp eq ptr %tg, null
  br i1 %tobool.not.i.i226, label %cond.false.cond.end_crit_edge, label %cond.true.i.i227

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true.i.i227:                                 ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tg, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i.i227, %cond.false.cond.end_crit_edge, %cond.true
  %cond = phi ptr [ %32, %cond.true ], [ %34, %cond.true.i.i227 ], [ null, %cond.false.cond.end_crit_edge ]
  %blkcg83 = getelementptr inbounds %struct.blkcg_gq, ptr %cond, i32 0, i32 3
  %35 = ptrtoint ptr %blkcg83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %blkcg83, align 4
  %call84 = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %36) #16
  %tobool85.not267 = icmp eq ptr %call84, null
  br i1 %tobool85.not267, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %tobool.not.i.i230 = icmp eq ptr %tg, null
  %td89 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cond.end148.for.body_crit_edge, %for.body.lr.ph
  %pos_css.0268 = phi ptr [ %call84, %for.body.lr.ph ], [ %call152, %cond.end148.for.body_crit_edge ]
  br i1 %global, label %cond.true88, label %cond.false92

cond.true88:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %td89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %td89, align 4
  %queue90 = getelementptr inbounds %struct.throtl_data, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %queue90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %queue90, align 4
  %root_blkg91 = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 35
  %41 = ptrtoint ptr %root_blkg91 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %root_blkg91, align 8
  br label %cond.end94

cond.false92:                                     ; preds = %for.body
  br i1 %tobool.not.i.i230, label %cond.false92.cond.end94_crit_edge, label %cond.true.i.i231

cond.false92.cond.end94_crit_edge:                ; preds = %cond.false92
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end94

cond.true.i.i231:                                 ; preds = %cond.false92
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tg, align 4
  br label %cond.end94

cond.end94:                                       ; preds = %cond.true.i.i231, %cond.false92.cond.end94_crit_edge, %cond.true88
  %cond95 = phi ptr [ %42, %cond.true88 ], [ %44, %cond.true.i.i231 ], [ null, %cond.false92.cond.end94_crit_edge ]
  %45 = ptrtoint ptr %cond95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cond95, align 8
  %cmp.i = icmp eq ptr %pos_css.0268, @blkcg_root
  br i1 %cmp.i, label %if.then.i234, label %if.end.i

if.then.i234:                                     ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #18
  %root_blkg.i = getelementptr inbounds %struct.request_queue, ptr %46, i32 0, i32 35
  %47 = ptrtoint ptr %root_blkg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %root_blkg.i, align 8
  br label %__blkg_lookup.exit

if.end.i:                                         ; preds = %cond.end94
  %blkg_hint.i = getelementptr inbounds %struct.blkcg, ptr %pos_css.0268, i32 0, i32 4
  %49 = ptrtoint ptr %blkg_hint.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %blkg_hint.i, align 4
  %call.i235 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool.not.i236 = icmp eq i32 %call.i235, 0
  br i1 %tobool.not.i236, label %land.lhs.true.i237, label %if.end.i.do.end9.i_crit_edge

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

land.lhs.true.i237:                               ; preds = %if.end.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i237.do.end9.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i237.do.end9.i_crit_edge:           ; preds = %land.lhs.true.i237
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i237
  %.b1.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end9.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 340, ptr noundef nonnull @.str.1) #16
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true4.i.do.end9.i_crit_edge, %land.lhs.true.i237.do.end9.i_crit_edge, %if.end.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %50, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end16.i_crit_edge, label %land.lhs.true12.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %do.end9.i
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %cmp14.i = icmp eq ptr %52, %46
  br i1 %cmp14.i, label %land.lhs.true12.i.blkg_to_tg.exit_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

land.lhs.true12.i.blkg_to_tg.exit_crit_edge:      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %call18.i = tail call ptr @blkg_lookup_slowpath(ptr noundef nonnull %pos_css.0268, ptr noundef %46, i1 noundef zeroext false) #16
  br label %__blkg_lookup.exit

__blkg_lookup.exit:                               ; preds = %if.end16.i, %if.then.i234
  %retval.0.i238 = phi ptr [ %48, %if.then.i234 ], [ %call18.i, %if.end16.i ]
  %tobool97.not = icmp eq ptr %retval.0.i238, null
  br i1 %tobool97.not, label %__blkg_lookup.exit.for.inc_crit_edge, label %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge

__blkg_lookup.exit.blkg_to_tg.exit_crit_edge:     ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

__blkg_lookup.exit.for.inc_crit_edge:             ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

blkg_to_tg.exit:                                  ; preds = %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge, %land.lhs.true12.i.blkg_to_tg.exit_crit_edge
  %retval.0.i238265 = phi ptr [ %retval.0.i238, %__blkg_lookup.exit.blkg_to_tg.exit_crit_edge ], [ %50, %land.lhs.true12.i.blkg_to_tg.exit_crit_edge ]
  %53 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %retval.0.i238265, i32 0, i32 9, i32 %53
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i, align 4
  tail call fastcc void @tg_update_has_rules(ptr noundef %55)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @io_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@tg_conf_updated, %for.inc)) #16
          to label %lor.lhs.false [label %for.inc], !srcloc !138

lor.lhs.false:                                    ; preds = %blkg_to_tg.exit
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %retval.0.i238265, i32 0, i32 4
  %56 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent, align 8
  %tobool112.not = icmp eq ptr %57, null
  br i1 %tobool112.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false113

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false113:                                 ; preds = %lor.lhs.false
  %parent115 = getelementptr inbounds %struct.blkcg_gq, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %parent115 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent115, align 8
  %tobool116.not = icmp eq ptr %59, null
  br i1 %tobool116.not, label %lor.lhs.false113.for.inc_crit_edge, label %blkg_to_tg.exit246

lor.lhs.false113.for.inc_crit_edge:               ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

blkg_to_tg.exit246:                               ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #18
  %60 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i243 = getelementptr %struct.blkcg_gq, ptr %57, i32 0, i32 9, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i243 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i243, align 4
  %idletime_threshold = getelementptr inbounds %struct.throtl_grp, ptr %55, i32 0, i32 26
  %63 = ptrtoint ptr %idletime_threshold to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %idletime_threshold, align 8
  %idletime_threshold121 = getelementptr inbounds %struct.throtl_grp, ptr %62, i32 0, i32 26
  %65 = ptrtoint ptr %idletime_threshold121 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %idletime_threshold121, align 8
  %67 = tail call i32 @llvm.umin.i32(i32 %64, i32 %66)
  %68 = ptrtoint ptr %idletime_threshold to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %idletime_threshold, align 8
  %latency_target = getelementptr inbounds %struct.throtl_grp, ptr %55, i32 0, i32 19
  %69 = ptrtoint ptr %latency_target to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %latency_target, align 4
  %latency_target128 = getelementptr inbounds %struct.throtl_grp, ptr %62, i32 0, i32 19
  %71 = ptrtoint ptr %latency_target128 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %latency_target128, align 4
  %73 = tail call i32 @llvm.umax.i32(i32 %70, i32 %72)
  %74 = ptrtoint ptr %latency_target to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %latency_target, align 4
  br label %for.inc

for.inc:                                          ; preds = %blkg_to_tg.exit246, %lor.lhs.false113.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %blkg_to_tg.exit, %__blkg_lookup.exit.for.inc_crit_edge
  br i1 %global, label %cond.true142, label %cond.false146

cond.true142:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %75 = ptrtoint ptr %td89 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %td89, align 4
  %queue144 = getelementptr inbounds %struct.throtl_data, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %queue144 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %queue144, align 4
  %root_blkg145 = getelementptr inbounds %struct.request_queue, ptr %78, i32 0, i32 35
  %79 = ptrtoint ptr %root_blkg145 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %root_blkg145, align 8
  br label %cond.end148

cond.false146:                                    ; preds = %for.inc
  br i1 %tobool.not.i.i230, label %cond.false146.cond.end148_crit_edge, label %cond.true.i.i248

cond.false146.cond.end148_crit_edge:              ; preds = %cond.false146
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end148

cond.true.i.i248:                                 ; preds = %cond.false146
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tg, align 4
  br label %cond.end148

cond.end148:                                      ; preds = %cond.true.i.i248, %cond.false146.cond.end148_crit_edge, %cond.true142
  %cond149 = phi ptr [ %80, %cond.true142 ], [ %82, %cond.true.i.i248 ], [ null, %cond.false146.cond.end148_crit_edge ]
  %blkcg150 = getelementptr inbounds %struct.blkcg_gq, ptr %cond149, i32 0, i32 3
  %83 = ptrtoint ptr %blkcg150 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %blkcg150, align 4
  %call152 = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %pos_css.0268, ptr noundef %84) #16
  %tobool85.not = icmp eq ptr %call152, null
  br i1 %tobool85.not, label %cond.end148.for.end_crit_edge, label %cond.end148.for.body_crit_edge

cond.end148.for.body_crit_edge:                   ; preds = %cond.end148
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cond.end148.for.end_crit_edge:                    ; preds = %cond.end148
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cond.end148.for.end_crit_edge, %cond.end.for.end_crit_edge
  tail call fastcc void @throtl_start_new_slice(ptr noundef %tg, i1 noundef zeroext false)
  tail call fastcc void @throtl_start_new_slice(ptr noundef %tg, i1 noundef zeroext true)
  %flags = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 7
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 8
  %and = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool153.not = icmp eq i32 %and, 0
  br i1 %tobool153.not, label %for.end.if.end156_crit_edge, label %if.then154

for.end.if.end156_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end156

if.then154:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @tg_update_disptime(ptr noundef %tg)
  %87 = ptrtoint ptr %service_queue to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %service_queue, align 4
  %call155 = tail call fastcc zeroext i1 @throtl_schedule_next_dispatch(ptr noundef %88, i1 noundef zeroext true)
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %for.end.if.end156_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkg_conf_finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_post(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkg_lookup_slowpath(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tg_update_has_rules(ptr noundef %tg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3
  %0 = ptrtoint ptr %service_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %service_queue, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sq_to_tg.exit.thread_crit_edge, label %land.lhs.true.i

entry.sq_to_tg.exit.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_tg.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -24
  br i1 %tobool1.not.i, label %land.lhs.true.i.sq_to_tg.exit.thread_crit_edge, label %sq_to_tg.exit

land.lhs.true.i.sq_to_tg.exit.thread_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_tg.exit.thread

sq_to_tg.exit.thread:                             ; preds = %land.lhs.true.i.sq_to_tg.exit.thread_crit_edge, %entry.sq_to_tg.exit.thread_crit_edge
  %td128 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %4 = ptrtoint ptr %td128 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %td128, align 4
  %limit_index30 = getelementptr inbounds %struct.throtl_data, ptr %5, i32 0, i32 5
  br label %lor.rhs

sq_to_tg.exit:                                    ; preds = %land.lhs.true.i
  %td1 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %6 = ptrtoint ptr %td1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %td1, align 4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %limit_index = getelementptr inbounds %struct.throtl_data, ptr %7, i32 0, i32 5
  br i1 %tobool.not, label %sq_to_tg.exit.lor.rhs_crit_edge, label %land.lhs.true

sq_to_tg.exit.lor.rhs_crit_edge:                  ; preds = %sq_to_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

land.lhs.true:                                    ; preds = %sq_to_tg.exit
  %arrayidx = getelementptr i8, ptr %1, i32 180
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %land.lhs.true.lor.rhs_crit_edge, label %lor.end10.thread

land.lhs.true.lor.rhs_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs

lor.end10.thread:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx1240 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 8, i32 0
  %10 = ptrtoint ptr %arrayidx1240 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx1240, align 1
  br label %land.lhs.true.1

lor.rhs:                                          ; preds = %land.lhs.true.lor.rhs_crit_edge, %sq_to_tg.exit.lor.rhs_crit_edge, %sq_to_tg.exit.thread
  %limit_index35 = phi ptr [ %limit_index30, %sq_to_tg.exit.thread ], [ %limit_index, %land.lhs.true.lor.rhs_crit_edge ], [ %limit_index, %sq_to_tg.exit.lor.rhs_crit_edge ]
  %tobool.not34 = phi i1 [ true, %sq_to_tg.exit.thread ], [ false, %land.lhs.true.lor.rhs_crit_edge ], [ true, %sq_to_tg.exit.lor.rhs_crit_edge ]
  %11 = phi ptr [ %5, %sq_to_tg.exit.thread ], [ %7, %land.lhs.true.lor.rhs_crit_edge ], [ %7, %sq_to_tg.exit.lor.rhs_crit_edge ]
  %retval.0.i32 = phi ptr [ null, %sq_to_tg.exit.thread ], [ %add.ptr.i, %land.lhs.true.lor.rhs_crit_edge ], [ null, %sq_to_tg.exit.lor.rhs_crit_edge ]
  %12 = ptrtoint ptr %limit_index35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %limit_index35, align 4
  %arrayidx3 = getelementptr %struct.throtl_data, ptr %11, i32 0, i32 6, i32 %13
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %lor.rhs.lor.end10_crit_edge, label %land.rhs

lor.rhs.lor.end10_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end10

land.rhs:                                         ; preds = %lor.rhs
  %call5 = tail call fastcc i64 @tg_bps_limit(ptr noundef %tg, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call5)
  %cmp6.not = icmp eq i64 %call5, -1
  br i1 %cmp6.not, label %lor.rhs7, label %land.rhs.lor.end10_crit_edge

land.rhs.lor.end10_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end10

lor.rhs7:                                         ; preds = %land.rhs
  %call8 = tail call fastcc i32 @tg_iops_limit(ptr noundef %tg, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp9 = icmp ne i32 %call8, -1
  %arrayidx1245 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 8, i32 0
  %frombool46 = zext i1 %cmp9 to i8
  %16 = ptrtoint ptr %arrayidx1245 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool46, ptr %arrayidx1245, align 1
  br i1 %tobool.not34, label %lor.rhs7.lor.rhs.1_crit_edge, label %lor.rhs7.land.lhs.true.1_crit_edge

lor.rhs7.land.lhs.true.1_crit_edge:               ; preds = %lor.rhs7
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.1

lor.rhs7.lor.rhs.1_crit_edge:                     ; preds = %lor.rhs7
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs.1

lor.end10:                                        ; preds = %land.rhs.lor.end10_crit_edge, %lor.rhs.lor.end10_crit_edge
  %17 = xor i1 %tobool4.not, true
  %arrayidx12 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 8, i32 0
  %frombool = zext i1 %17 to i8
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %arrayidx12, align 1
  br i1 %tobool.not34, label %lor.end10.lor.rhs.1_crit_edge, label %lor.end10.land.lhs.true.1_crit_edge

lor.end10.land.lhs.true.1_crit_edge:              ; preds = %lor.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.1

lor.end10.lor.rhs.1_crit_edge:                    ; preds = %lor.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs.1

land.lhs.true.1:                                  ; preds = %lor.end10.land.lhs.true.1_crit_edge, %lor.rhs7.land.lhs.true.1_crit_edge, %lor.end10.thread
  %retval.0.i3144 = phi ptr [ %add.ptr.i, %lor.end10.thread ], [ %retval.0.i32, %lor.end10.land.lhs.true.1_crit_edge ], [ %retval.0.i32, %lor.rhs7.land.lhs.true.1_crit_edge ]
  %19 = phi ptr [ %7, %lor.end10.thread ], [ %11, %lor.end10.land.lhs.true.1_crit_edge ], [ %11, %lor.rhs7.land.lhs.true.1_crit_edge ]
  %limit_index3642 = phi ptr [ %limit_index, %lor.end10.thread ], [ %limit_index35, %lor.end10.land.lhs.true.1_crit_edge ], [ %limit_index35, %lor.rhs7.land.lhs.true.1_crit_edge ]
  %arrayidx.1 = getelementptr %struct.throtl_grp, ptr %retval.0.i3144, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not.1 = icmp eq i8 %21, 0
  br i1 %tobool2.not.1, label %land.lhs.true.1.lor.rhs.1_crit_edge, label %land.lhs.true.1.lor.end10.1_crit_edge

land.lhs.true.1.lor.end10.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end10.1

land.lhs.true.1.lor.rhs.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs.1

lor.rhs.1:                                        ; preds = %land.lhs.true.1.lor.rhs.1_crit_edge, %lor.end10.lor.rhs.1_crit_edge, %lor.rhs7.lor.rhs.1_crit_edge
  %22 = phi ptr [ %19, %land.lhs.true.1.lor.rhs.1_crit_edge ], [ %11, %lor.end10.lor.rhs.1_crit_edge ], [ %11, %lor.rhs7.lor.rhs.1_crit_edge ]
  %limit_index3643 = phi ptr [ %limit_index3642, %land.lhs.true.1.lor.rhs.1_crit_edge ], [ %limit_index35, %lor.end10.lor.rhs.1_crit_edge ], [ %limit_index35, %lor.rhs7.lor.rhs.1_crit_edge ]
  %23 = ptrtoint ptr %limit_index3643 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %limit_index3643, align 4
  %arrayidx3.1 = getelementptr %struct.throtl_data, ptr %22, i32 0, i32 6, i32 %24
  %25 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx3.1, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool4.not.1 = icmp eq i8 %26, 0
  br i1 %tobool4.not.1, label %lor.rhs.1.lor.end10.1_crit_edge, label %land.rhs.1

lor.rhs.1.lor.end10.1_crit_edge:                  ; preds = %lor.rhs.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end10.1

land.rhs.1:                                       ; preds = %lor.rhs.1
  %call5.1 = tail call fastcc i64 @tg_bps_limit(ptr noundef %tg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call5.1)
  %cmp6.not.1 = icmp eq i64 %call5.1, -1
  br i1 %cmp6.not.1, label %lor.rhs7.1, label %land.rhs.1.lor.end10.1_crit_edge

land.rhs.1.lor.end10.1_crit_edge:                 ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end10.1

lor.rhs7.1:                                       ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #18
  %call8.1 = tail call fastcc i32 @tg_iops_limit(ptr noundef %tg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.1)
  %cmp9.1 = icmp ne i32 %call8.1, -1
  br label %lor.end10.1

lor.end10.1:                                      ; preds = %lor.rhs7.1, %land.rhs.1.lor.end10.1_crit_edge, %lor.rhs.1.lor.end10.1_crit_edge, %land.lhs.true.1.lor.end10.1_crit_edge
  %27 = phi i1 [ true, %land.lhs.true.1.lor.end10.1_crit_edge ], [ false, %lor.rhs.1.lor.end10.1_crit_edge ], [ true, %land.rhs.1.lor.end10.1_crit_edge ], [ %cmp9.1, %lor.rhs7.1 ]
  %arrayidx12.1 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 8, i32 1
  %frombool.1 = zext i1 %27 to i8
  %28 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool.1, ptr %arrayidx12.1, align 1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @throtl_start_new_slice(ptr noundef %tg, i1 noundef zeroext %rw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom = zext i1 %rw to i32
  %arrayidx = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 13, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 14, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %arrayidx3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %arrayidx6 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 21, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx6, align 4
  %4 = load volatile i32, ptr @jiffies, align 128
  %td = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %5 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %td, align 4
  %throtl_slice = getelementptr inbounds %struct.throtl_data, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %throtl_slice to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %throtl_slice, align 4
  %add = add i32 %8, %4
  %arrayidx9 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 22, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 31, i32 %idxprom
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx12, i32 noundef 4) #16
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %arrayidx12, align 4
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3
  %tobool.not.i149 = icmp eq ptr %service_queue, null
  br i1 %tobool.not.i149, label %sq_to_td.exit.thread, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %11 = ptrtoint ptr %service_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %service_queue, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %tg
  %tobool.not.i151 = icmp eq ptr %tg, null
  %or.cond.i = or i1 %tobool.not.i151, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.sq_to_td.exit_crit_edge, label %if.then.i152

land.lhs.true.i.i.sq_to_td.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit

if.then.i152:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %td, align 4
  br label %sq_to_td.exit

sq_to_td.exit:                                    ; preds = %if.then.i152, %land.lhs.true.i.i.sq_to_td.exit_crit_edge
  %retval.0.i153 = phi ptr [ %14, %if.then.i152 ], [ %service_queue, %land.lhs.true.i.i.sq_to_td.exit_crit_edge ]
  %queue = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i153, i32 0, i32 1
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue, align 4
  %call15 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %16)
  br i1 %call15, label %if.end, label %sq_to_td.exit.cleanup_crit_edge, !prof !142

sq_to_td.exit.cleanup_crit_edge:                  ; preds = %sq_to_td.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 92)
  %17 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call15160 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %17)
  br i1 %call15160, label %sq_to_td.exit.thread.do.body58_crit_edge, label %sq_to_td.exit.thread.cleanup_crit_edge, !prof !142

sq_to_td.exit.thread.cleanup_crit_edge:           ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread.do.body58_crit_edge:         ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body58

if.end:                                           ; preds = %sq_to_td.exit
  %tobool19.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool19.not, label %if.end.do.body58_crit_edge, label %do.body21

if.end.do.body58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body58

do.body21:                                        ; preds = %if.end
  %18 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %do.body21.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body21.rcu_read_lock.exit_crit_edge:           ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body21
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body21.rcu_read_lock.exit_crit_edge
  %22 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue, align 4
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %blk_trace, align 8
  %call25 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end34_crit_edge

rcu_read_lock.exit.do.end34_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true.do.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true
  %.b137 = load i1, ptr @throtl_start_new_slice.__warned, align 1
  br i1 %.b137, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_start_new_slice.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 667, ptr noundef nonnull @.str.1) #16
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true.do.end34_crit_edge, %rcu_read_lock.exit.do.end34_crit_edge
  %tobool36.not = icmp eq ptr %25, null
  br i1 %tobool36.not, label %do.end34.cleanup.sink.split_crit_edge, label %tg_to_blkg.exit, !prof !137

do.end34.cleanup.sink.split_crit_edge:            ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

tg_to_blkg.exit:                                  ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spec.select.i, align 4
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %blkcg, align 4
  %cond = select i1 %rw, i32 87, i32 82
  %30 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx6, align 4
  %32 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %25, ptr noundef %29, ptr noundef nonnull @.str.25, i32 noundef %cond, i32 noundef %31, i32 noundef %33, i32 noundef %34) #16
  br label %cleanup.sink.split

do.body58:                                        ; preds = %if.end.do.body58_crit_edge, %sq_to_td.exit.thread.do.body58_crit_edge
  %queue162166 = phi ptr [ %queue, %if.end.do.body58_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit.thread.do.body58_crit_edge ]
  %35 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i138 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i138 to ptr
  %preempt_count.i.i.i.i139 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i139, align 4
  %add.i.i.i140 = add i32 %38, 1
  store volatile i32 %add.i.i.i140, ptr %preempt_count.i.i.i.i139, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i141 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i141, label %do.body58.rcu_read_lock.exit148_crit_edge, label %land.lhs.true.i144

do.body58.rcu_read_lock.exit148_crit_edge:        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit148

land.lhs.true.i144:                               ; preds = %do.body58
  %call1.i142 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i142)
  %tobool.not.i143 = icmp eq i32 %call1.i142, 0
  br i1 %tobool.not.i143, label %land.lhs.true.i144.rcu_read_lock.exit148_crit_edge, label %land.lhs.true2.i146

land.lhs.true.i144.rcu_read_lock.exit148_crit_edge: ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit148

land.lhs.true2.i146:                              ; preds = %land.lhs.true.i144
  %.b4.i145 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i145, label %land.lhs.true2.i146.rcu_read_lock.exit148_crit_edge, label %if.then.i147

land.lhs.true2.i146.rcu_read_lock.exit148_crit_edge: ; preds = %land.lhs.true2.i146
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit148

if.then.i147:                                     ; preds = %land.lhs.true2.i146
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit148

rcu_read_lock.exit148:                            ; preds = %if.then.i147, %land.lhs.true2.i146.rcu_read_lock.exit148_crit_edge, %land.lhs.true.i144.rcu_read_lock.exit148_crit_edge, %do.body58.rcu_read_lock.exit148_crit_edge
  %39 = ptrtoint ptr %queue162166 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %queue162166, align 4
  %blk_trace65 = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %blk_trace65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %blk_trace65, align 8
  %call67 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true69, label %rcu_read_lock.exit148.do.end77_crit_edge

rcu_read_lock.exit148.do.end77_crit_edge:         ; preds = %rcu_read_lock.exit148
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end77

land.lhs.true69:                                  ; preds = %rcu_read_lock.exit148
  %call70 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true69.do.end77_crit_edge, label %land.lhs.true72

land.lhs.true69.do.end77_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end77

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %.b135136 = load i1, ptr @throtl_start_new_slice.__warned.26, align 1
  br i1 %.b135136, label %land.lhs.true72.do.end77_crit_edge, label %if.then74

land.lhs.true72.do.end77_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end77

if.then74:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_start_new_slice.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 667, ptr noundef nonnull @.str.1) #16
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %land.lhs.true72.do.end77_crit_edge, %land.lhs.true69.do.end77_crit_edge, %rcu_read_lock.exit148.do.end77_crit_edge
  %tobool79.not = icmp eq ptr %42, null
  br i1 %tobool79.not, label %do.end77.cleanup.sink.split_crit_edge, label %if.then86, !prof !137

do.end77.cleanup.sink.split_crit_edge:            ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then86:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #18
  %cond91 = select i1 %rw, i32 87, i32 82
  %43 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx6, align 4
  %45 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %42, ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef %cond91, i32 noundef %44, i32 noundef %46, i32 noundef %47) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then86, %do.end77.cleanup.sink.split_crit_edge, %tg_to_blkg.exit, %do.end34.cleanup.sink.split_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sq_to_td.exit.thread.cleanup_crit_edge, %sq_to_td.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tg_print_conf_u64(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #16
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %priv.i.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private, align 4
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @tg_prfill_conf_u64, ptr noundef nonnull @blkcg_policy_throtl, i32 noundef %9, i1 noundef zeroext false) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tg_set_conf_u64(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tg_set_conf(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tg_print_conf_uint(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #16
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %priv.i.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private, align 4
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @tg_prfill_conf_uint, ptr noundef nonnull @blkcg_policy_throtl, i32 noundef %9, i1 noundef zeroext false) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tg_set_conf_uint(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tg_set_conf(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tg_print_rwstat(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #16
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %priv.i.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private, align 4
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @blkg_prfill_rwstat, ptr noundef nonnull @blkcg_policy_throtl, i32 noundef %9, i1 noundef zeroext true) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tg_print_rwstat_recursive(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #16
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %priv.i.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private, align 4
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @tg_prfill_rwstat_recursive, ptr noundef nonnull @blkcg_policy_throtl, i32 noundef %9, i1 noundef zeroext true) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tg_prfill_conf_u64(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pd, i32 %off
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i64 @__blkg_prfill_u64(ptr noundef %sf, ptr noundef %pd, i64 noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__blkg_prfill_u64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tg_set_conf(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i1 noundef zeroext %is_u64) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.blkg_conf_ctx, align 4
  %v = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_css(ptr noundef %of) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ctx) #16
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ctx, align 4, !annotation !157
  %1 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !157
  %3 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #16
  %5 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %v, align 8, !annotation !157
  %call2 = call i32 @blkg_conf_prep(ptr noundef %call, ptr noundef nonnull @blkcg_policy_throtl, ptr noundef %buf, ptr noundef nonnull %ctx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %if.end5, label %if.end.out_finish_crit_edge

if.end.out_finish_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_finish

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool6.not = icmp eq i64 %9, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %v, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end8.blkg_to_tg.exit_crit_edge, label %cond.true.i.i

if.end8.blkg_to_tg.exit_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_to_tg.exit

cond.true.i.i:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %13 = load i32, ptr @blkcg_policy_throtl, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %12, i32 0, i32 9, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_tg.exit

blkg_to_tg.exit:                                  ; preds = %cond.true.i.i, %if.end8.blkg_to_tg.exit_crit_edge
  %cond.i.i = phi ptr [ %15, %cond.true.i.i ], [ null, %if.end8.blkg_to_tg.exit_crit_edge ]
  %16 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %v, align 8
  br i1 %is_u64, label %if.then11, label %if.else

if.then11:                                        ; preds = %blkg_to_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of, align 4
  %priv.i = getelementptr inbounds %struct.kernfs_node, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %private, align 4
  %add.ptr = getelementptr i8, ptr %cond.i.i, i32 %23
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %17, ptr %add.ptr, align 8
  br label %if.end16

if.else:                                          ; preds = %blkg_to_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  %conv = trunc i64 %17 to i32
  %25 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of, align 4
  %priv.i1 = getelementptr inbounds %struct.kernfs_node, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %priv.i1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i1, align 8
  %private14 = getelementptr inbounds %struct.cftype, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %private14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %private14, align 4
  %add.ptr15 = getelementptr i8, ptr %cond.i.i, i32 %30
  %31 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %add.ptr15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  call fastcc void @tg_conf_updated(ptr noundef %cond.i.i, i1 noundef zeroext false)
  br label %out_finish

out_finish:                                       ; preds = %if.end16, %if.end.out_finish_crit_edge
  %spec.select = phi i32 [ -22, %if.end.out_finish_crit_edge ], [ %nbytes, %if.end16 ]
  call void @blkg_conf_finish(ptr noundef nonnull %ctx) #16
  br label %cleanup

cleanup:                                          ; preds = %out_finish, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %out_finish ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ctx) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tg_prfill_conf_uint(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pd, i32 %off
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i32 %1 to i64
  %call1 = tail call i64 @__blkg_prfill_u64(ptr noundef %sf, ptr noundef %pd, i64 noundef %conv) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @blkg_prfill_rwstat(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tg_prfill_rwstat_recursive(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  %sum = alloca %struct.blkg_rwstat_sample, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sum) #16
  %tobool.not.i = icmp eq ptr %pd, null
  %0 = call ptr @memset(ptr %sum, i32 255, i32 40)
  br i1 %tobool.not.i, label %entry.pd_to_blkg.exit_crit_edge, label %cond.true.i

entry.pd_to_blkg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %pd_to_blkg.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pd, align 4
  br label %pd_to_blkg.exit

pd_to_blkg.exit:                                  ; preds = %cond.true.i, %entry.pd_to_blkg.exit_crit_edge
  %cond.i = phi ptr [ %2, %cond.true.i ], [ null, %entry.pd_to_blkg.exit_crit_edge ]
  call void @blkg_rwstat_recursive_sum(ptr noundef %cond.i, ptr noundef nonnull @blkcg_policy_throtl, i32 noundef %off, ptr noundef nonnull %sum) #16
  %call1 = call i64 @__blkg_prfill_rwstat(ptr noundef %sf, ptr noundef %pd, ptr noundef nonnull %sum) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sum) #16
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkg_rwstat_recursive_sum(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__blkg_prfill_rwstat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkg_rwstat_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkg_rwstat_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tg_last_low_overflow_time(ptr nocapture noundef readonly %tg) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load volatile i32, ptr @jiffies, align 128
  %bps.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 9
  %2 = ptrtoint ptr %bps.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %iops.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 11
  %4 = ptrtoint ptr %iops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iops.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %last_low_overflow_time.i = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 15
  %6 = ptrtoint ptr %last_low_overflow_time.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_low_overflow_time.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %rtime.0.i = phi i32 [ %7, %if.then.i ], [ %0, %lor.lhs.false.i.if.end.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool9.not.i = icmp eq i64 %9, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %if.end.i.if.then15.i_crit_edge

if.end.i.if.then15.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i

lor.lhs.false10.i:                                ; preds = %if.end.i
  %arrayidx12.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not.i = icmp eq i32 %11, 0
  br i1 %tobool14.not.i, label %lor.lhs.false10.i.__tg_last_low_overflow_time.exit_crit_edge, label %lor.lhs.false10.i.if.then15.i_crit_edge

lor.lhs.false10.i.if.then15.i_crit_edge:          ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i

lor.lhs.false10.i.__tg_last_low_overflow_time.exit_crit_edge: ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__tg_last_low_overflow_time.exit

if.then15.i:                                      ; preds = %lor.lhs.false10.i.if.then15.i_crit_edge, %if.end.i.if.then15.i_crit_edge
  %arrayidx17.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17.i, align 4
  br label %__tg_last_low_overflow_time.exit

__tg_last_low_overflow_time.exit:                 ; preds = %if.then15.i, %lor.lhs.false10.i.__tg_last_low_overflow_time.exit_crit_edge
  %wtime.0.i = phi i32 [ %13, %if.then15.i ], [ %1, %lor.lhs.false10.i.__tg_last_low_overflow_time.exit_crit_edge ]
  %14 = tail call i32 @llvm.umin.i32(i32 %rtime.0.i, i32 %wtime.0.i) #16
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %__tg_last_low_overflow_time.exit69, %__tg_last_low_overflow_time.exit
  %parent.0.ph.ph = phi ptr [ %add.ptr.i, %__tg_last_low_overflow_time.exit69 ], [ %tg, %__tg_last_low_overflow_time.exit ]
  %ret.0.ph.ph = phi i32 [ %53, %__tg_last_low_overflow_time.exit69 ], [ %14, %__tg_last_low_overflow_time.exit ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %__tg_last_low_overflow_time.exit51.while.cond.outer_crit_edge, %while.cond.outer.outer
  %parent.0.ph = phi ptr [ %add.ptr.i, %__tg_last_low_overflow_time.exit51.while.cond.outer_crit_edge ], [ %parent.0.ph.ph, %while.cond.outer.outer ]
  br label %while.cond

while.cond:                                       ; preds = %land.lhs.true13.while.cond_crit_edge, %while.cond.outer
  %parent.0 = phi ptr [ %add.ptr.i, %land.lhs.true13.while.cond_crit_edge ], [ %parent.0.ph, %while.cond.outer ]
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %parent.0, i32 0, i32 3
  %15 = ptrtoint ptr %service_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %service_queue, align 8
  %tobool.not.i33 = icmp eq ptr %16, null
  br i1 %tobool.not.i33, label %while.cond.while.end_crit_edge, label %land.lhs.true.i

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

land.lhs.true.i:                                  ; preds = %while.cond
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  %add.ptr.i = getelementptr i8, ptr %16, i32 -24
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %tobool1.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %land.lhs.true.i.while.end_crit_edge, label %if.end

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end:                                           ; preds = %land.lhs.true.i
  %bps = getelementptr i8, ptr %16, i32 184
  %19 = ptrtoint ptr %bps to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bps, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool4.not = icmp eq i64 %20, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.then.i40.sink.split_crit_edge

if.end.if.then.i40.sink.split_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i40.sink.split

land.lhs.true:                                    ; preds = %if.end
  %iops = getelementptr i8, ptr %16, i32 248
  %21 = ptrtoint ptr %iops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iops, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not = icmp eq i32 %22, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.then.i40.sink.split_crit_edge

land.lhs.true.if.then.i40.sink.split_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i40.sink.split

land.lhs.true8:                                   ; preds = %land.lhs.true
  %arrayidx10 = getelementptr i8, ptr %16, i32 200
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool12.not = icmp eq i64 %24, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %land.lhs.true8.lor.lhs.false.i38_crit_edge

land.lhs.true8.lor.lhs.false.i38_crit_edge:       ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i38

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %arrayidx15 = getelementptr i8, ptr %16, i32 256
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx15, align 8
  %tobool17.not = icmp eq i32 %26, 0
  br i1 %tobool17.not, label %land.lhs.true13.while.cond_crit_edge, label %land.lhs.true13.lor.lhs.false.i38_crit_edge

land.lhs.true13.lor.lhs.false.i38_crit_edge:      ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i38

land.lhs.true13.while.cond_crit_edge:             ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

lor.lhs.false.i38:                                ; preds = %land.lhs.true13.lor.lhs.false.i38_crit_edge, %land.lhs.true8.lor.lhs.false.i38_crit_edge
  %iops.le = getelementptr i8, ptr %16, i32 248
  %27 = ptrtoint ptr %iops.le to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %iops.le, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %29 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool4.not.i37 = icmp eq i32 %.pr, 0
  br i1 %tobool4.not.i37, label %lor.lhs.false.i38.if.end.i44_crit_edge, label %lor.lhs.false.i38.if.then.i40_crit_edge

lor.lhs.false.i38.if.then.i40_crit_edge:          ; preds = %lor.lhs.false.i38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i40

lor.lhs.false.i38.if.end.i44_crit_edge:           ; preds = %lor.lhs.false.i38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i44

if.then.i40.sink.split:                           ; preds = %land.lhs.true.if.then.i40.sink.split_crit_edge, %if.end.if.then.i40.sink.split_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %31 = load volatile i32, ptr @jiffies, align 128
  br label %if.then.i40

if.then.i40:                                      ; preds = %if.then.i40.sink.split, %lor.lhs.false.i38.if.then.i40_crit_edge
  %32 = phi i32 [ %29, %lor.lhs.false.i38.if.then.i40_crit_edge ], [ %31, %if.then.i40.sink.split ]
  %last_low_overflow_time.i39 = getelementptr i8, ptr %16, i32 304
  %33 = ptrtoint ptr %last_low_overflow_time.i39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_low_overflow_time.i39, align 8
  br label %if.end.i44

if.end.i44:                                       ; preds = %if.then.i40, %lor.lhs.false.i38.if.end.i44_crit_edge
  %35 = phi i32 [ %32, %if.then.i40 ], [ %29, %lor.lhs.false.i38.if.end.i44_crit_edge ]
  %rtime.0.i41 = phi i32 [ %34, %if.then.i40 ], [ %28, %lor.lhs.false.i38.if.end.i44_crit_edge ]
  %arrayidx7.i42 = getelementptr i8, ptr %16, i32 200
  %36 = ptrtoint ptr %arrayidx7.i42 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx7.i42, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool9.not.i43 = icmp eq i64 %37, 0
  br i1 %tobool9.not.i43, label %lor.lhs.false10.i47, label %if.end.i44.if.then15.i49_crit_edge

if.end.i44.if.then15.i49_crit_edge:               ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i49

lor.lhs.false10.i47:                              ; preds = %if.end.i44
  %arrayidx12.i45 = getelementptr i8, ptr %16, i32 256
  %38 = ptrtoint ptr %arrayidx12.i45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx12.i45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool14.not.i46 = icmp eq i32 %39, 0
  br i1 %tobool14.not.i46, label %lor.lhs.false10.i47.__tg_last_low_overflow_time.exit51_crit_edge, label %lor.lhs.false10.i47.if.then15.i49_crit_edge

lor.lhs.false10.i47.if.then15.i49_crit_edge:      ; preds = %lor.lhs.false10.i47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i49

lor.lhs.false10.i47.__tg_last_low_overflow_time.exit51_crit_edge: ; preds = %lor.lhs.false10.i47
  call void @__sanitizer_cov_trace_pc() #18
  br label %__tg_last_low_overflow_time.exit51

if.then15.i49:                                    ; preds = %lor.lhs.false10.i47.if.then15.i49_crit_edge, %if.end.i44.if.then15.i49_crit_edge
  %arrayidx17.i48 = getelementptr i8, ptr %16, i32 308
  %40 = ptrtoint ptr %arrayidx17.i48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx17.i48, align 4
  br label %__tg_last_low_overflow_time.exit51

__tg_last_low_overflow_time.exit51:               ; preds = %if.then15.i49, %lor.lhs.false10.i47.__tg_last_low_overflow_time.exit51_crit_edge
  %wtime.0.i50 = phi i32 [ %41, %if.then15.i49 ], [ %35, %lor.lhs.false10.i47.__tg_last_low_overflow_time.exit51_crit_edge ]
  %42 = tail call i32 @llvm.umin.i32(i32 %rtime.0.i41, i32 %wtime.0.i50) #16
  %sub = sub i32 %ret.0.ph.ph, %42
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then21, label %__tg_last_low_overflow_time.exit51.while.cond.outer_crit_edge

__tg_last_low_overflow_time.exit51.while.cond.outer_crit_edge: ; preds = %__tg_last_low_overflow_time.exit51
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer

if.then21:                                        ; preds = %__tg_last_low_overflow_time.exit51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %44 = load volatile i32, ptr @jiffies, align 128
  br i1 %tobool4.not, label %lor.lhs.false.i56, label %if.then21.if.then.i58_crit_edge

if.then21.if.then.i58_crit_edge:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i58

lor.lhs.false.i56:                                ; preds = %if.then21
  %iops.i54 = getelementptr i8, ptr %16, i32 248
  %45 = ptrtoint ptr %iops.i54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iops.i54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool4.not.i55 = icmp eq i32 %46, 0
  br i1 %tobool4.not.i55, label %lor.lhs.false.i56.if.end.i62_crit_edge, label %lor.lhs.false.i56.if.then.i58_crit_edge

lor.lhs.false.i56.if.then.i58_crit_edge:          ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i58

lor.lhs.false.i56.if.end.i62_crit_edge:           ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i62

if.then.i58:                                      ; preds = %lor.lhs.false.i56.if.then.i58_crit_edge, %if.then21.if.then.i58_crit_edge
  %last_low_overflow_time.i57 = getelementptr i8, ptr %16, i32 304
  %47 = ptrtoint ptr %last_low_overflow_time.i57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %last_low_overflow_time.i57, align 8
  br label %if.end.i62

if.end.i62:                                       ; preds = %if.then.i58, %lor.lhs.false.i56.if.end.i62_crit_edge
  %rtime.0.i59 = phi i32 [ %48, %if.then.i58 ], [ %43, %lor.lhs.false.i56.if.end.i62_crit_edge ]
  br i1 %tobool9.not.i43, label %lor.lhs.false10.i65, label %if.end.i62.if.then15.i67_crit_edge

if.end.i62.if.then15.i67_crit_edge:               ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i67

lor.lhs.false10.i65:                              ; preds = %if.end.i62
  %arrayidx12.i63 = getelementptr i8, ptr %16, i32 256
  %49 = ptrtoint ptr %arrayidx12.i63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx12.i63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool14.not.i64 = icmp eq i32 %50, 0
  br i1 %tobool14.not.i64, label %lor.lhs.false10.i65.__tg_last_low_overflow_time.exit69_crit_edge, label %lor.lhs.false10.i65.if.then15.i67_crit_edge

lor.lhs.false10.i65.if.then15.i67_crit_edge:      ; preds = %lor.lhs.false10.i65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i67

lor.lhs.false10.i65.__tg_last_low_overflow_time.exit69_crit_edge: ; preds = %lor.lhs.false10.i65
  call void @__sanitizer_cov_trace_pc() #18
  br label %__tg_last_low_overflow_time.exit69

if.then15.i67:                                    ; preds = %lor.lhs.false10.i65.if.then15.i67_crit_edge, %if.end.i62.if.then15.i67_crit_edge
  %arrayidx17.i66 = getelementptr i8, ptr %16, i32 308
  %51 = ptrtoint ptr %arrayidx17.i66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx17.i66, align 4
  br label %__tg_last_low_overflow_time.exit69

__tg_last_low_overflow_time.exit69:               ; preds = %if.then15.i67, %lor.lhs.false10.i65.__tg_last_low_overflow_time.exit69_crit_edge
  %wtime.0.i68 = phi i32 [ %52, %if.then15.i67 ], [ %44, %lor.lhs.false10.i65.__tg_last_low_overflow_time.exit69_crit_edge ]
  %53 = tail call i32 @llvm.umin.i32(i32 %rtime.0.i59, i32 %wtime.0.i68) #16
  br label %while.cond.outer.outer

while.end:                                        ; preds = %land.lhs.true.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  ret i32 %ret.0.ph.ph
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @throtl_tg_is_idle(ptr noundef readonly %tg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %idletime_threshold = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 26
  %0 = ptrtoint ptr %idletime_threshold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idletime_threshold, align 8
  %latency_target = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 19
  %2 = ptrtoint ptr %latency_target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %latency_target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp eq i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp3
  br i1 %or.cond, label %entry.lor.end_crit_edge, label %lor.lhs.false4

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.lhs.false4:                                   ; preds = %entry
  %mul = shl i32 %1, 2
  %4 = tail call i32 @llvm.umin.i32(i32 %mul, i32 5000000)
  %call.i156 = tail call i64 @ktime_get() #16
  %shr = lshr i64 %call.i156, 10
  %last_finish_time = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 23
  %5 = ptrtoint ptr %last_finish_time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_finish_time, align 4
  %conv = zext i32 %6 to i64
  %sub = sub nsw i64 %shr, %conv
  %conv5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv5)
  %cmp6 = icmp ugt i64 %sub, %conv5
  br i1 %cmp6, label %lor.lhs.false4.lor.end_crit_edge, label %lor.lhs.false8

lor.lhs.false4.lor.end_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %avg_idletime = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 25
  %7 = ptrtoint ptr %avg_idletime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %avg_idletime, align 4
  %9 = ptrtoint ptr %idletime_threshold to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idletime_threshold, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp10 = icmp ugt i32 %8, %10
  br i1 %cmp10, label %lor.lhs.false8.lor.end_crit_edge, label %lor.rhs

lor.lhs.false8.lor.end_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false8
  %11 = ptrtoint ptr %latency_target to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %latency_target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.rhs.lor.end_crit_edge, label %land.lhs.true

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.rhs
  %bio_cnt = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 28
  %13 = ptrtoint ptr %bio_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bio_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %land.lhs.true.lor.end_crit_edge, label %land.rhs

land.lhs.true.lor.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %bad_bio_cnt = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 29
  %15 = ptrtoint ptr %bad_bio_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bad_bio_cnt, align 4
  %mul14 = mul i32 %16, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul14, i32 %14)
  %cmp16 = icmp ult i32 %mul14, %14
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %land.lhs.true.lor.end_crit_edge, %lor.rhs.lor.end_crit_edge, %lor.lhs.false8.lor.end_crit_edge, %lor.lhs.false4.lor.end_crit_edge, %entry.lor.end_crit_edge
  %17 = phi i1 [ true, %lor.lhs.false8.lor.end_crit_edge ], [ true, %lor.lhs.false4.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ false, %land.lhs.true.lor.end_crit_edge ], [ false, %lor.rhs.lor.end_crit_edge ], [ %cmp16, %land.rhs ]
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3
  %tobool.not.i157 = icmp eq ptr %service_queue, null
  br i1 %tobool.not.i157, label %sq_to_td.exit.thread, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %lor.end
  %18 = ptrtoint ptr %service_queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %service_queue, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %tg
  %tobool.not.i159 = icmp eq ptr %tg, null
  %or.cond.i = or i1 %tobool.not.i159, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.sq_to_td.exit_crit_edge, label %if.then.i160

land.lhs.true.i.i.sq_to_td.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit

if.then.i160:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %td.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %20 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %td.i, align 4
  br label %sq_to_td.exit

sq_to_td.exit:                                    ; preds = %if.then.i160, %land.lhs.true.i.i.sq_to_td.exit_crit_edge
  %retval.0.i161 = phi ptr [ %21, %if.then.i160 ], [ %service_queue, %land.lhs.true.i.i.sq_to_td.exit_crit_edge ]
  %queue = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i161, i32 0, i32 1
  %22 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue, align 4
  %call21 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %23)
  br i1 %call21, label %if.end, label %sq_to_td.exit.cleanup_crit_edge, !prof !142

sq_to_td.exit.cleanup_crit_edge:                  ; preds = %sq_to_td.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread:                             ; preds = %lor.end
  call void @__asan_load4_noabort(i32 92)
  %24 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call21168 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %24)
  br i1 %call21168, label %sq_to_td.exit.thread.do.body62_crit_edge, label %sq_to_td.exit.thread.cleanup_crit_edge, !prof !142

sq_to_td.exit.thread.cleanup_crit_edge:           ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread.do.body62_crit_edge:         ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body62

if.end:                                           ; preds = %sq_to_td.exit
  %tobool25.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool25.not, label %if.end.do.body62_crit_edge, label %do.body27

if.end.do.body62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body62

do.body27:                                        ; preds = %if.end
  %25 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %do.body27.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body27.rcu_read_lock.exit_crit_edge:           ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body27
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body27.rcu_read_lock.exit_crit_edge
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue, align 4
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %blk_trace, align 8
  %call32 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %rcu_read_lock.exit.do.end42_crit_edge

rcu_read_lock.exit.do.end42_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end42

land.lhs.true34:                                  ; preds = %rcu_read_lock.exit
  %call35 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.do.end42_crit_edge, label %land.lhs.true37

land.lhs.true34.do.end42_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end42

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %.b144 = load i1, ptr @throtl_tg_is_idle.__warned, align 1
  br i1 %.b144, label %land.lhs.true37.do.end42_crit_edge, label %if.then39

land.lhs.true37.do.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end42

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_tg_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1723, ptr noundef nonnull @.str.1) #16
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %land.lhs.true37.do.end42_crit_edge, %land.lhs.true34.do.end42_crit_edge, %rcu_read_lock.exit.do.end42_crit_edge
  %tobool44.not = icmp eq ptr %32, null
  br i1 %tobool44.not, label %do.end42.cleanup.sink.split_crit_edge, label %tg_to_blkg.exit, !prof !137

do.end42.cleanup.sink.split_crit_edge:            ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

tg_to_blkg.exit:                                  ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spec.select.i, align 4
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %blkcg, align 4
  %avg_idletime53 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 25
  %37 = ptrtoint ptr %avg_idletime53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %avg_idletime53, align 4
  %39 = ptrtoint ptr %idletime_threshold to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %idletime_threshold, align 8
  %bad_bio_cnt55 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 29
  %41 = ptrtoint ptr %bad_bio_cnt55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bad_bio_cnt55, align 4
  %bio_cnt56 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 28
  %43 = ptrtoint ptr %bio_cnt56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bio_cnt56, align 8
  %conv58 = zext i1 %17 to i32
  %td = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %45 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %td, align 4
  %scale = getelementptr inbounds %struct.throtl_data, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %scale, align 4
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %32, ptr noundef %36, ptr noundef nonnull @.str.31, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %conv58, i32 noundef %48) #16
  br label %cleanup.sink.split

do.body62:                                        ; preds = %if.end.do.body62_crit_edge, %sq_to_td.exit.thread.do.body62_crit_edge
  %queue170174 = phi ptr [ %queue, %if.end.do.body62_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit.thread.do.body62_crit_edge ]
  %49 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i145 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i145 to ptr
  %preempt_count.i.i.i.i146 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i146, align 4
  %add.i.i.i147 = add i32 %52, 1
  store volatile i32 %add.i.i.i147, ptr %preempt_count.i.i.i.i146, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i148 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i148, label %do.body62.rcu_read_lock.exit155_crit_edge, label %land.lhs.true.i151

do.body62.rcu_read_lock.exit155_crit_edge:        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit155

land.lhs.true.i151:                               ; preds = %do.body62
  %call1.i149 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i149)
  %tobool.not.i150 = icmp eq i32 %call1.i149, 0
  br i1 %tobool.not.i150, label %land.lhs.true.i151.rcu_read_lock.exit155_crit_edge, label %land.lhs.true2.i153

land.lhs.true.i151.rcu_read_lock.exit155_crit_edge: ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit155

land.lhs.true2.i153:                              ; preds = %land.lhs.true.i151
  %.b4.i152 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i152, label %land.lhs.true2.i153.rcu_read_lock.exit155_crit_edge, label %if.then.i154

land.lhs.true2.i153.rcu_read_lock.exit155_crit_edge: ; preds = %land.lhs.true2.i153
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit155

if.then.i154:                                     ; preds = %land.lhs.true2.i153
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit155

rcu_read_lock.exit155:                            ; preds = %if.then.i154, %land.lhs.true2.i153.rcu_read_lock.exit155_crit_edge, %land.lhs.true.i151.rcu_read_lock.exit155_crit_edge, %do.body62.rcu_read_lock.exit155_crit_edge
  %53 = ptrtoint ptr %queue170174 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %queue170174, align 4
  %blk_trace69 = getelementptr inbounds %struct.request_queue, ptr %54, i32 0, i32 46
  %55 = ptrtoint ptr %blk_trace69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %blk_trace69, align 8
  %call71 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %rcu_read_lock.exit155.do.end81_crit_edge

rcu_read_lock.exit155.do.end81_crit_edge:         ; preds = %rcu_read_lock.exit155
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end81

land.lhs.true73:                                  ; preds = %rcu_read_lock.exit155
  %call74 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.do.end81_crit_edge, label %land.lhs.true76

land.lhs.true73.do.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end81

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %.b142143 = load i1, ptr @throtl_tg_is_idle.__warned.32, align 1
  br i1 %.b142143, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_tg_is_idle.__warned.32, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1723, ptr noundef nonnull @.str.1) #16
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true73.do.end81_crit_edge, %rcu_read_lock.exit155.do.end81_crit_edge
  %tobool83.not = icmp eq ptr %56, null
  br i1 %tobool83.not, label %do.end81.cleanup.sink.split_crit_edge, label %if.then90, !prof !137

do.end81.cleanup.sink.split_crit_edge:            ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then90:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #18
  %avg_idletime91 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 25
  %57 = ptrtoint ptr %avg_idletime91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %avg_idletime91, align 4
  %59 = ptrtoint ptr %idletime_threshold to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %idletime_threshold, align 8
  %bad_bio_cnt93 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 29
  %61 = ptrtoint ptr %bad_bio_cnt93 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bad_bio_cnt93, align 4
  %bio_cnt94 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 28
  %63 = ptrtoint ptr %bio_cnt94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bio_cnt94, align 8
  %conv96 = zext i1 %17 to i32
  %td97 = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %65 = ptrtoint ptr %td97 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %td97, align 4
  %scale98 = getelementptr inbounds %struct.throtl_data, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %scale98 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %scale98, align 4
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %56, ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %conv96, i32 noundef %68) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then90, %do.end81.cleanup.sink.split_crit_edge, %tg_to_blkg.exit, %do.end42.cleanup.sink.split_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sq_to_td.exit.thread.cleanup_crit_edge, %sq_to_td.exit.cleanup_crit_edge
  ret i1 %17
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @throtl_extend_slice(ptr noundef %tg, i1 noundef zeroext %rw, i32 noundef %jiffy_end) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %td.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %0 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %td.i, align 4
  %throtl_slice.i = getelementptr inbounds %struct.throtl_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %throtl_slice.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %throtl_slice.i, align 4
  %sub.i = add i32 %jiffy_end, -1
  %add.i = add i32 %sub.i, %3
  %4 = urem i32 %add.i, %3
  %mul.i = sub i32 %add.i, %4
  %idxprom.i = zext i1 %rw to i32
  %arrayidx.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 22, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul.i, ptr %arrayidx.i, align 4
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3
  %tobool.not.i124 = icmp eq ptr %service_queue, null
  br i1 %tobool.not.i124, label %sq_to_td.exit.thread, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = ptrtoint ptr %service_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %service_queue, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %tg
  %tobool.not.i126 = icmp eq ptr %tg, null
  %or.cond.i = or i1 %tobool.not.i126, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.sq_to_td.exit_crit_edge, label %if.then.i128

land.lhs.true.i.i.sq_to_td.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit

if.then.i128:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %td.i, align 4
  br label %sq_to_td.exit

sq_to_td.exit:                                    ; preds = %if.then.i128, %land.lhs.true.i.i.sq_to_td.exit_crit_edge
  %retval.0.i129 = phi ptr [ %9, %if.then.i128 ], [ %service_queue, %land.lhs.true.i.i.sq_to_td.exit_crit_edge ]
  %queue = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i129, i32 0, i32 1
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %call3 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %11)
  br i1 %call3, label %if.end, label %sq_to_td.exit.cleanup_crit_edge, !prof !142

sq_to_td.exit.cleanup_crit_edge:                  ; preds = %sq_to_td.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 92)
  %12 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call3136 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %12)
  br i1 %call3136, label %sq_to_td.exit.thread.do.body42_crit_edge, label %sq_to_td.exit.thread.cleanup_crit_edge, !prof !142

sq_to_td.exit.thread.cleanup_crit_edge:           ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit.thread.do.body42_crit_edge:         ; preds = %sq_to_td.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body42

if.end:                                           ; preds = %sq_to_td.exit
  %tobool7.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool7.not, label %if.end.do.body42_crit_edge, label %do.body9

if.end.do.body42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body42

do.body9:                                         ; preds = %if.end
  %13 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %do.body9.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body9.rcu_read_lock.exit_crit_edge:            ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body9
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body9.rcu_read_lock.exit_crit_edge
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue, align 4
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 46
  %19 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %blk_trace, align 8
  %call13 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end22_crit_edge

rcu_read_lock.exit.do.end22_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b112 = load i1, ptr @throtl_extend_slice.__warned, align 1
  br i1 %.b112, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_extend_slice.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 683, ptr noundef nonnull @.str.1) #16
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %rcu_read_lock.exit.do.end22_crit_edge
  %tobool24.not = icmp eq ptr %20, null
  br i1 %tobool24.not, label %do.end22.cleanup.sink.split_crit_edge, label %tg_to_blkg.exit, !prof !137

do.end22.cleanup.sink.split_crit_edge:            ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

tg_to_blkg.exit:                                  ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spec.select.i, align 4
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %blkcg, align 4
  %cond = select i1 %rw, i32 87, i32 82
  %arrayidx = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 21, i32 %idxprom.i
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %20, ptr noundef %24, ptr noundef nonnull @.str.35, i32 noundef %cond, i32 noundef %26, i32 noundef %28, i32 noundef %29) #16
  br label %cleanup.sink.split

do.body42:                                        ; preds = %if.end.do.body42_crit_edge, %sq_to_td.exit.thread.do.body42_crit_edge
  %queue138142 = phi ptr [ %queue, %if.end.do.body42_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit.thread.do.body42_crit_edge ]
  %30 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i113 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i113 to ptr
  %preempt_count.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i114, align 4
  %add.i.i.i115 = add i32 %33, 1
  store volatile i32 %add.i.i.i115, ptr %preempt_count.i.i.i.i114, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i116 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i116, label %do.body42.rcu_read_lock.exit123_crit_edge, label %land.lhs.true.i119

do.body42.rcu_read_lock.exit123_crit_edge:        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit123

land.lhs.true.i119:                               ; preds = %do.body42
  %call1.i117 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i117)
  %tobool.not.i118 = icmp eq i32 %call1.i117, 0
  br i1 %tobool.not.i118, label %land.lhs.true.i119.rcu_read_lock.exit123_crit_edge, label %land.lhs.true2.i121

land.lhs.true.i119.rcu_read_lock.exit123_crit_edge: ; preds = %land.lhs.true.i119
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit123

land.lhs.true2.i121:                              ; preds = %land.lhs.true.i119
  %.b4.i120 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i120, label %land.lhs.true2.i121.rcu_read_lock.exit123_crit_edge, label %if.then.i122

land.lhs.true2.i121.rcu_read_lock.exit123_crit_edge: ; preds = %land.lhs.true2.i121
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit123

if.then.i122:                                     ; preds = %land.lhs.true2.i121
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit123

rcu_read_lock.exit123:                            ; preds = %if.then.i122, %land.lhs.true2.i121.rcu_read_lock.exit123_crit_edge, %land.lhs.true.i119.rcu_read_lock.exit123_crit_edge, %do.body42.rcu_read_lock.exit123_crit_edge
  %34 = ptrtoint ptr %queue138142 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue138142, align 4
  %blk_trace49 = getelementptr inbounds %struct.request_queue, ptr %35, i32 0, i32 46
  %36 = ptrtoint ptr %blk_trace49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %blk_trace49, align 8
  %call51 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %rcu_read_lock.exit123.do.end61_crit_edge

rcu_read_lock.exit123.do.end61_crit_edge:         ; preds = %rcu_read_lock.exit123
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end61

land.lhs.true53:                                  ; preds = %rcu_read_lock.exit123
  %call54 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.do.end61_crit_edge, label %land.lhs.true56

land.lhs.true53.do.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end61

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %.b110111 = load i1, ptr @throtl_extend_slice.__warned.36, align 1
  br i1 %.b110111, label %land.lhs.true56.do.end61_crit_edge, label %if.then58

land.lhs.true56.do.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_extend_slice.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 683, ptr noundef nonnull @.str.1) #16
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.lhs.true56.do.end61_crit_edge, %land.lhs.true53.do.end61_crit_edge, %rcu_read_lock.exit123.do.end61_crit_edge
  %tobool63.not = icmp eq ptr %37, null
  br i1 %tobool63.not, label %do.end61.cleanup.sink.split_crit_edge, label %if.then70, !prof !137

do.end61.cleanup.sink.split_crit_edge:            ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then70:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #18
  %cond75 = select i1 %rw, i32 87, i32 82
  %arrayidx79 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 21, i32 %idxprom.i
  %38 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx79, align 4
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %37, ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef %cond75, i32 noundef %39, i32 noundef %41, i32 noundef %42) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then70, %do.end61.cleanup.sink.split_crit_edge, %tg_to_blkg.exit, %do.end22.cleanup.sink.split_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sq_to_td.exit.thread.cleanup_crit_edge, %sq_to_td.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @throtl_select_dispatch(ptr nocapture noundef readonly %parent_sq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_pending = getelementptr inbounds %struct.throtl_service_queue, ptr %parent_sq, i32 0, i32 4
  %rb_leftmost.i = getelementptr inbounds %struct.throtl_service_queue, ptr %parent_sq, i32 0, i32 3, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end12.while.cond_crit_edge, %entry
  %nr_disp.0 = phi i32 [ 0, %entry ], [ %add, %if.end12.while.cond_crit_edge ]
  %0 = ptrtoint ptr %nr_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end:                                           ; preds = %while.cond
  %2 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %land.rhs.i, label %throtl_rb_first.exit

land.rhs.i:                                       ; preds = %if.end
  %.b45.i = load i1, ptr @throtl_rb_first.__already_done, align 1
  br i1 %.b45.i, label %land.rhs.i.while.end_crit_edge, label %if.then.i, !prof !137

land.rhs.i.while.end_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_rb_first.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 506, i32 noundef 9, ptr noundef null) #16
  br label %while.end

throtl_rb_first.exit:                             ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %tobool1.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool1.not, label %throtl_rb_first.exit.while.end_crit_edge, label %if.end3

throtl_rb_first.exit.while.end_crit_edge:         ; preds = %throtl_rb_first.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end3:                                          ; preds = %throtl_rb_first.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %disptime = getelementptr i8, ptr %3, i32 188
  %5 = ptrtoint ptr %disptime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %disptime, align 4
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end3.while.end_crit_edge, label %if.end5

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end5:                                          ; preds = %if.end3
  %flags.i = getelementptr i8, ptr %3, i32 192
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i27 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i27, label %if.end5.throtl_dequeue_tg.exit_crit_edge, label %if.then.i28

if.end5.throtl_dequeue_tg.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_dequeue_tg.exit

if.then.i28:                                      ; preds = %if.end5
  %service_queue.i = getelementptr i8, ptr %3, i32 16
  %9 = ptrtoint ptr %service_queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %service_queue.i, align 8
  %rb_leftmost.i.i.i = getelementptr inbounds %struct.throtl_service_queue, ptr %10, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rb_leftmost.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %12, %3
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i28.throtl_rb_erase.exit.i_crit_edge

if.then.i28.throtl_rb_erase.exit.i_crit_edge:     ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_rb_erase.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call ptr @rb_next(ptr noundef nonnull %3) #16
  %13 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.i, ptr %rb_leftmost.i.i.i, align 4
  br label %throtl_rb_erase.exit.i

throtl_rb_erase.exit.i:                           ; preds = %if.then.i.i.i, %if.then.i28.throtl_rb_erase.exit.i_crit_edge
  %pending_tree.i.i = getelementptr inbounds %struct.throtl_service_queue, ptr %10, i32 0, i32 3
  tail call void @rb_erase(ptr noundef nonnull %3, ptr noundef %pending_tree.i.i) #16
  %14 = ptrtoint ptr %3 to i32
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %3, align 4
  %nr_pending.i.i = getelementptr inbounds %struct.throtl_service_queue, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %nr_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pending.i.i, align 4
  %dec.i.i = add i32 %17, -1
  store i32 %dec.i.i, ptr %nr_pending.i.i, align 4
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %and2.i = and i32 %19, -2
  store i32 %and2.i, ptr %flags.i, align 8
  br label %throtl_dequeue_tg.exit

throtl_dequeue_tg.exit:                           ; preds = %throtl_rb_erase.exit.i, %if.end5.throtl_dequeue_tg.exit_crit_edge
  %queued.i = getelementptr i8, ptr %3, i32 20
  %20 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %queued.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %21, %queued.i
  br i1 %cmp.i.not.i.i, label %throtl_dequeue_tg.exit.while.end.i_crit_edge, label %if.end.i.i

throtl_dequeue_tg.exit.while.end.i_crit_edge:     ; preds = %throtl_dequeue_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end.i.i:                                       ; preds = %throtl_dequeue_tg.exit
  %bios.i.i = getelementptr inbounds %struct.throtl_qnode, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bios.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bios.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.land.rhs.i.i_crit_edge, label %land.rhs.i29

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.5.i.land.rhs.i.i_crit_edge, %if.end.i.4.i.land.rhs.i.i_crit_edge, %if.end.i.3.i.land.rhs.i.i_crit_edge, %if.end.i.2.i.land.rhs.i.i_crit_edge, %if.end.i.1.i.land.rhs.i.i_crit_edge, %if.end.i.i.land.rhs.i.i_crit_edge
  %nr_reads.0.lcssa54.i = phi i32 [ 0, %if.end.i.i.land.rhs.i.i_crit_edge ], [ 1, %if.end.i.1.i.land.rhs.i.i_crit_edge ], [ 2, %if.end.i.2.i.land.rhs.i.i_crit_edge ], [ 3, %if.end.i.3.i.land.rhs.i.i_crit_edge ], [ 4, %if.end.i.4.i.land.rhs.i.i_crit_edge ], [ 5, %if.end.i.5.i.land.rhs.i.i_crit_edge ]
  %.b47.i.i = load i1, ptr @throtl_peek_queued.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.while.end.i_crit_edge, label %if.then11.i.i, !prof !137

land.rhs.i.i.while.end.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.then11.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_peek_queued.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #16
  br label %while.end.i

land.rhs.i29:                                     ; preds = %if.end.i.i
  %call1.i = tail call fastcc zeroext i1 @tg_may_dispatch(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %23, ptr noundef null) #16
  br i1 %call1.i, label %while.body.i, label %land.rhs.i29.while.end.i_crit_edge

land.rhs.i29.while.end.i_crit_edge:               ; preds = %land.rhs.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i29
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  tail call fastcc void @tg_dispatch_one_bio(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %tobool.i.i) #16
  %26 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %queued.i, align 4
  %cmp.i.not.i.1.i = icmp eq ptr %27, %queued.i
  br i1 %cmp.i.not.i.1.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i.1.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end.i.1.i:                                     ; preds = %while.body.i
  %bios.i.1.i = getelementptr inbounds %struct.throtl_qnode, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %bios.i.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bios.i.1.i, align 4
  %tobool2.not.i.1.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i.1.i, label %if.end.i.1.i.land.rhs.i.i_crit_edge, label %land.rhs.1.i

if.end.i.1.i.land.rhs.i.i_crit_edge:              ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i.i

land.rhs.1.i:                                     ; preds = %if.end.i.1.i
  %call1.1.i = tail call fastcc zeroext i1 @tg_may_dispatch(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %29, ptr noundef null) #16
  br i1 %call1.1.i, label %while.body.1.i, label %land.rhs.1.i.while.end.i_crit_edge

land.rhs.1.i.while.end.i_crit_edge:               ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.1.i:                                   ; preds = %land.rhs.1.i
  %bi_opf.1.i = getelementptr inbounds %struct.bio, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bi_opf.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_opf.1.i, align 8
  %and.i.1.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i)
  %tobool.i.1.i = icmp ne i32 %and.i.1.i, 0
  tail call fastcc void @tg_dispatch_one_bio(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %tobool.i.1.i) #16
  %32 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %queued.i, align 4
  %cmp.i.not.i.2.i = icmp eq ptr %33, %queued.i
  br i1 %cmp.i.not.i.2.i, label %while.body.1.i.while.end.i_crit_edge, label %if.end.i.2.i

while.body.1.i.while.end.i_crit_edge:             ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end.i.2.i:                                     ; preds = %while.body.1.i
  %bios.i.2.i = getelementptr inbounds %struct.throtl_qnode, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bios.i.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bios.i.2.i, align 4
  %tobool2.not.i.2.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i.2.i, label %if.end.i.2.i.land.rhs.i.i_crit_edge, label %land.rhs.2.i

if.end.i.2.i.land.rhs.i.i_crit_edge:              ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i.i

land.rhs.2.i:                                     ; preds = %if.end.i.2.i
  %call1.2.i = tail call fastcc zeroext i1 @tg_may_dispatch(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %35, ptr noundef null) #16
  br i1 %call1.2.i, label %while.body.2.i, label %land.rhs.2.i.while.end.i_crit_edge

land.rhs.2.i.while.end.i_crit_edge:               ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.2.i:                                   ; preds = %land.rhs.2.i
  %bi_opf.2.i = getelementptr inbounds %struct.bio, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %bi_opf.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bi_opf.2.i, align 8
  %and.i.2.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2.i)
  %tobool.i.2.i = icmp ne i32 %and.i.2.i, 0
  tail call fastcc void @tg_dispatch_one_bio(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %tobool.i.2.i) #16
  %38 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %queued.i, align 4
  %cmp.i.not.i.3.i = icmp eq ptr %39, %queued.i
  br i1 %cmp.i.not.i.3.i, label %while.body.2.i.while.end.i_crit_edge, label %if.end.i.3.i

while.body.2.i.while.end.i_crit_edge:             ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end.i.3.i:                                     ; preds = %while.body.2.i
  %bios.i.3.i = getelementptr inbounds %struct.throtl_qnode, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %bios.i.3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bios.i.3.i, align 4
  %tobool2.not.i.3.i = icmp eq ptr %41, null
  br i1 %tobool2.not.i.3.i, label %if.end.i.3.i.land.rhs.i.i_crit_edge, label %land.rhs.3.i

if.end.i.3.i.land.rhs.i.i_crit_edge:              ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i.i

land.rhs.3.i:                                     ; preds = %if.end.i.3.i
  %call1.3.i = tail call fastcc zeroext i1 @tg_may_dispatch(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %41, ptr noundef null) #16
  br i1 %call1.3.i, label %while.body.3.i, label %land.rhs.3.i.while.end.i_crit_edge

land.rhs.3.i.while.end.i_crit_edge:               ; preds = %land.rhs.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.3.i:                                   ; preds = %land.rhs.3.i
  %bi_opf.3.i = getelementptr inbounds %struct.bio, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %bi_opf.3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bi_opf.3.i, align 8
  %and.i.3.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3.i)
  %tobool.i.3.i = icmp ne i32 %and.i.3.i, 0
  tail call fastcc void @tg_dispatch_one_bio(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %tobool.i.3.i) #16
  %44 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %queued.i, align 4
  %cmp.i.not.i.4.i = icmp eq ptr %45, %queued.i
  br i1 %cmp.i.not.i.4.i, label %while.body.3.i.while.end.i_crit_edge, label %if.end.i.4.i

while.body.3.i.while.end.i_crit_edge:             ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end.i.4.i:                                     ; preds = %while.body.3.i
  %bios.i.4.i = getelementptr inbounds %struct.throtl_qnode, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %bios.i.4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bios.i.4.i, align 4
  %tobool2.not.i.4.i = icmp eq ptr %47, null
  br i1 %tobool2.not.i.4.i, label %if.end.i.4.i.land.rhs.i.i_crit_edge, label %land.rhs.4.i

if.end.i.4.i.land.rhs.i.i_crit_edge:              ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i.i

land.rhs.4.i:                                     ; preds = %if.end.i.4.i
  %call1.4.i = tail call fastcc zeroext i1 @tg_may_dispatch(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %47, ptr noundef null) #16
  br i1 %call1.4.i, label %while.body.4.i, label %land.rhs.4.i.while.end.i_crit_edge

land.rhs.4.i.while.end.i_crit_edge:               ; preds = %land.rhs.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.4.i:                                   ; preds = %land.rhs.4.i
  %bi_opf.4.i = getelementptr inbounds %struct.bio, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %bi_opf.4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bi_opf.4.i, align 8
  %and.i.4.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4.i)
  %tobool.i.4.i = icmp ne i32 %and.i.4.i, 0
  tail call fastcc void @tg_dispatch_one_bio(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %tobool.i.4.i) #16
  %50 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %queued.i, align 4
  %cmp.i.not.i.5.i = icmp eq ptr %51, %queued.i
  br i1 %cmp.i.not.i.5.i, label %while.body.4.i.while.end.i_crit_edge, label %if.end.i.5.i

while.body.4.i.while.end.i_crit_edge:             ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end.i.5.i:                                     ; preds = %while.body.4.i
  %bios.i.5.i = getelementptr inbounds %struct.throtl_qnode, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bios.i.5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bios.i.5.i, align 4
  %tobool2.not.i.5.i = icmp eq ptr %53, null
  br i1 %tobool2.not.i.5.i, label %if.end.i.5.i.land.rhs.i.i_crit_edge, label %land.rhs.5.i

if.end.i.5.i.land.rhs.i.i_crit_edge:              ; preds = %if.end.i.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i.i

land.rhs.5.i:                                     ; preds = %if.end.i.5.i
  %call1.5.i = tail call fastcc zeroext i1 @tg_may_dispatch(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %53, ptr noundef null) #16
  br i1 %call1.5.i, label %while.body.5.i, label %land.rhs.5.i.while.end.i_crit_edge

land.rhs.5.i.while.end.i_crit_edge:               ; preds = %land.rhs.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.5.i:                                   ; preds = %land.rhs.5.i
  call void @__sanitizer_cov_trace_pc() #18
  %bi_opf.5.i = getelementptr inbounds %struct.bio, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %bi_opf.5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bi_opf.5.i, align 8
  %and.i.5.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5.i)
  %tobool.i.5.i = icmp ne i32 %and.i.5.i, 0
  tail call fastcc void @tg_dispatch_one_bio(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %tobool.i.5.i) #16
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.5.i, %land.rhs.5.i.while.end.i_crit_edge, %while.body.4.i.while.end.i_crit_edge, %land.rhs.4.i.while.end.i_crit_edge, %while.body.3.i.while.end.i_crit_edge, %land.rhs.3.i.while.end.i_crit_edge, %while.body.2.i.while.end.i_crit_edge, %land.rhs.2.i.while.end.i_crit_edge, %while.body.1.i.while.end.i_crit_edge, %land.rhs.1.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %land.rhs.i29.while.end.i_crit_edge, %if.then11.i.i, %land.rhs.i.i.while.end.i_crit_edge, %throtl_dequeue_tg.exit.while.end.i_crit_edge
  %nr_reads.1.i = phi i32 [ %nr_reads.0.lcssa54.i, %if.then11.i.i ], [ %nr_reads.0.lcssa54.i, %land.rhs.i.i.while.end.i_crit_edge ], [ 0, %land.rhs.i29.while.end.i_crit_edge ], [ 0, %throtl_dequeue_tg.exit.while.end.i_crit_edge ], [ 1, %while.body.i.while.end.i_crit_edge ], [ 1, %land.rhs.1.i.while.end.i_crit_edge ], [ 2, %while.body.1.i.while.end.i_crit_edge ], [ 2, %land.rhs.2.i.while.end.i_crit_edge ], [ 3, %while.body.2.i.while.end.i_crit_edge ], [ 3, %land.rhs.3.i.while.end.i_crit_edge ], [ 4, %while.body.3.i.while.end.i_crit_edge ], [ 4, %land.rhs.4.i.while.end.i_crit_edge ], [ 5, %while.body.4.i.while.end.i_crit_edge ], [ 5, %land.rhs.5.i.while.end.i_crit_edge ], [ 6, %while.body.5.i ]
  %arrayidx6.i = getelementptr i8, ptr %3, i32 28
  %56 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %arrayidx6.i, align 4
  %cmp.i.not.i36.i = icmp eq ptr %57, %arrayidx6.i
  br i1 %cmp.i.not.i36.i, label %while.end.i.throtl_dispatch_tg.exit_crit_edge, label %if.end.i39.i

while.end.i.throtl_dispatch_tg.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_dispatch_tg.exit

if.end.i39.i:                                     ; preds = %while.end.i
  %bios.i37.i = getelementptr inbounds %struct.throtl_qnode, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %bios.i37.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bios.i37.i, align 4
  %tobool2.not.i38.i = icmp eq ptr %59, null
  br i1 %tobool2.not.i38.i, label %if.end.i39.i.land.rhs.i41.i_crit_edge, label %land.rhs9.i

if.end.i39.i.land.rhs.i41.i_crit_edge:            ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i41.i

land.rhs.i41.i:                                   ; preds = %if.end.i39.1.i.land.rhs.i41.i_crit_edge, %if.end.i39.i.land.rhs.i41.i_crit_edge
  %nr_writes.0.lcssa53.i = phi i32 [ 0, %if.end.i39.i.land.rhs.i41.i_crit_edge ], [ 1, %if.end.i39.1.i.land.rhs.i41.i_crit_edge ]
  %.b47.i40.i = load i1, ptr @throtl_peek_queued.__already_done, align 1
  br i1 %.b47.i40.i, label %land.rhs.i41.i.throtl_dispatch_tg.exit_crit_edge, label %if.then11.i42.i, !prof !137

land.rhs.i41.i.throtl_dispatch_tg.exit_crit_edge: ; preds = %land.rhs.i41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_dispatch_tg.exit

if.then11.i42.i:                                  ; preds = %land.rhs.i41.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_peek_queued.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #16
  br label %throtl_dispatch_tg.exit

land.rhs9.i:                                      ; preds = %if.end.i39.i
  %call10.i = tail call fastcc zeroext i1 @tg_may_dispatch(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %59, ptr noundef null) #16
  br i1 %call10.i, label %while.body12.i, label %land.rhs9.i.throtl_dispatch_tg.exit_crit_edge

land.rhs9.i.throtl_dispatch_tg.exit_crit_edge:    ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_dispatch_tg.exit

while.body12.i:                                   ; preds = %land.rhs9.i
  %bi_opf13.i = getelementptr inbounds %struct.bio, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %bi_opf13.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bi_opf13.i, align 8
  %and.i45.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.i = icmp ne i32 %and.i45.i, 0
  tail call fastcc void @tg_dispatch_one_bio(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %tobool.i46.i) #16
  %62 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %arrayidx6.i, align 4
  %cmp.i.not.i36.1.i = icmp eq ptr %63, %arrayidx6.i
  br i1 %cmp.i.not.i36.1.i, label %while.body12.i.throtl_dispatch_tg.exit_crit_edge, label %if.end.i39.1.i

while.body12.i.throtl_dispatch_tg.exit_crit_edge: ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_dispatch_tg.exit

if.end.i39.1.i:                                   ; preds = %while.body12.i
  %bios.i37.1.i = getelementptr inbounds %struct.throtl_qnode, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %bios.i37.1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bios.i37.1.i, align 4
  %tobool2.not.i38.1.i = icmp eq ptr %65, null
  br i1 %tobool2.not.i38.1.i, label %if.end.i39.1.i.land.rhs.i41.i_crit_edge, label %land.rhs9.1.i

if.end.i39.1.i.land.rhs.i41.i_crit_edge:          ; preds = %if.end.i39.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i41.i

land.rhs9.1.i:                                    ; preds = %if.end.i39.1.i
  %call10.1.i = tail call fastcc zeroext i1 @tg_may_dispatch(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %65, ptr noundef null) #16
  br i1 %call10.1.i, label %while.body12.1.i, label %land.rhs9.1.i.throtl_dispatch_tg.exit_crit_edge

land.rhs9.1.i.throtl_dispatch_tg.exit_crit_edge:  ; preds = %land.rhs9.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_dispatch_tg.exit

while.body12.1.i:                                 ; preds = %land.rhs9.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %bi_opf13.1.i = getelementptr inbounds %struct.bio, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %bi_opf13.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bi_opf13.1.i, align 8
  %and.i45.1.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.1.i)
  %tobool.i46.1.i = icmp ne i32 %and.i45.1.i, 0
  tail call fastcc void @tg_dispatch_one_bio(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %tobool.i46.1.i) #16
  br label %throtl_dispatch_tg.exit

throtl_dispatch_tg.exit:                          ; preds = %while.body12.1.i, %land.rhs9.1.i.throtl_dispatch_tg.exit_crit_edge, %while.body12.i.throtl_dispatch_tg.exit_crit_edge, %land.rhs9.i.throtl_dispatch_tg.exit_crit_edge, %if.then11.i42.i, %land.rhs.i41.i.throtl_dispatch_tg.exit_crit_edge, %while.end.i.throtl_dispatch_tg.exit_crit_edge
  %nr_writes.1.i = phi i32 [ %nr_writes.0.lcssa53.i, %if.then11.i42.i ], [ %nr_writes.0.lcssa53.i, %land.rhs.i41.i.throtl_dispatch_tg.exit_crit_edge ], [ 0, %land.rhs9.i.throtl_dispatch_tg.exit_crit_edge ], [ 0, %while.end.i.throtl_dispatch_tg.exit_crit_edge ], [ 1, %while.body12.i.throtl_dispatch_tg.exit_crit_edge ], [ 1, %land.rhs9.1.i.throtl_dispatch_tg.exit_crit_edge ], [ 2, %while.body12.1.i ]
  %add.i = add nuw nsw i32 %nr_reads.1.i, %nr_disp.0
  %add = add nuw nsw i32 %add.i, %nr_writes.1.i
  %nr_queued = getelementptr i8, ptr %3, i32 36
  %68 = ptrtoint ptr %nr_queued to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool7.not = icmp eq i32 %69, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %throtl_dispatch_tg.exit.if.then11_crit_edge

throtl_dispatch_tg.exit.if.then11_crit_edge:      ; preds = %throtl_dispatch_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

lor.lhs.false:                                    ; preds = %throtl_dispatch_tg.exit
  %arrayidx9 = getelementptr i8, ptr %3, i32 40
  %70 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool10.not = icmp eq i32 %71, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end12_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %throtl_dispatch_tg.exit.if.then11_crit_edge
  tail call fastcc void @tg_update_disptime(ptr noundef nonnull %add.ptr.i)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.lhs.false.if.end12_crit_edge
  %cmp13 = icmp ugt i32 %add, 31
  br i1 %cmp13, label %if.end12.while.end_crit_edge, label %if.end12.while.cond_crit_edge

if.end12.while.cond_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %if.end3.while.end_crit_edge, %throtl_rb_first.exit.while.end_crit_edge, %if.then.i, %land.rhs.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  %nr_disp.1.ph = phi i32 [ %nr_disp.0, %if.then.i ], [ %nr_disp.0, %land.rhs.i.while.end_crit_edge ], [ %add, %if.end12.while.end_crit_edge ], [ %nr_disp.0, %while.cond.while.end_crit_edge ], [ %nr_disp.0, %throtl_rb_first.exit.while.end_crit_edge ], [ %nr_disp.0, %if.end3.while.end_crit_edge ]
  ret i32 %nr_disp.1.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tg_dispatch_one_bio(ptr noundef %tg, i1 noundef zeroext %rw) unnamed_addr #0 align 64 {
entry:
  %tg_to_put = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %service_queue = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 3
  %0 = ptrtoint ptr %service_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %service_queue, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sq_to_tg.exit_crit_edge, label %land.lhs.true.i

entry.sq_to_tg.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_tg.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -24
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %add.ptr.i
  br label %sq_to_tg.exit

sq_to_tg.exit:                                    ; preds = %land.lhs.true.i, %entry.sq_to_tg.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.sq_to_tg.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tg_to_put) #16
  %4 = ptrtoint ptr %tg_to_put to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tg_to_put, align 4
  %idxprom = zext i1 %rw to i32
  %arrayidx = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 3, i32 1, i32 %idxprom
  %call2 = call fastcc ptr @throtl_pop_queued(ptr noundef %arrayidx, ptr noundef nonnull %tg_to_put)
  %arrayidx5 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 3, i32 2, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %arrayidx5, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call2, i32 0, i32 2
  %7 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_opf.i, align 8
  %and.i = and i32 %8, 255
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i.i = icmp eq i32 %and.i, 3
  br i1 %cmp.i.i, label %sq_to_tg.exit.throtl_bio_data_size.exit.i_crit_edge, label %if.end.i.i, !prof !142

sq_to_tg.exit.throtl_bio_data_size.exit.i_crit_edge: ; preds = %sq_to_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_bio_data_size.exit.i

if.end.i.i:                                       ; preds = %sq_to_tg.exit
  call void @__sanitizer_cov_trace_pc() #18
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %call2, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_size.i.i, align 8
  br label %throtl_bio_data_size.exit.i

throtl_bio_data_size.exit.i:                      ; preds = %if.end.i.i, %sq_to_tg.exit.throtl_bio_data_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %10, %if.end.i.i ], [ 512, %sq_to_tg.exit.throtl_bio_data_size.exit.i_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %arrayidx.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 13, i32 %and.i.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.i, align 8
  %add.i = add i64 %12, %conv.i
  store i64 %add.i, ptr %arrayidx.i, align 8
  %arrayidx5.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 14, i32 %and.i.i
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %arrayidx5.i, align 4
  %arrayidx9.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 16, i32 %and.i.i
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx9.i, align 8
  %add10.i = add i64 %16, %conv.i
  store i64 %add10.i, ptr %arrayidx9.i, align 8
  %arrayidx13.i = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 17, i32 %and.i.i
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13.i, align 4
  %inc14.i = add i32 %18, 1
  store i32 %inc14.i, ptr %arrayidx13.i, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call2, i32 0, i32 3
  %19 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bi_flags.i.i, align 4
  %21 = and i16 %20, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.i27.not.i = icmp eq i16 %21, 0
  br i1 %cmp.i27.not.i, label %if.then.i, label %throtl_bio_data_size.exit.i.throtl_charge_bio.exit_crit_edge

throtl_bio_data_size.exit.i.throtl_charge_bio.exit_crit_edge: ; preds = %throtl_bio_data_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %throtl_charge_bio.exit

if.then.i:                                        ; preds = %throtl_bio_data_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %22 = or i16 %20, 128
  %23 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %bi_flags.i.i, align 4
  br label %throtl_charge_bio.exit

throtl_charge_bio.exit:                           ; preds = %if.then.i, %throtl_bio_data_size.exit.i.throtl_charge_bio.exit_crit_edge
  %tobool6.not = icmp eq ptr %retval.0.i, null
  %arrayidx14 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 5, i32 %idxprom
  br i1 %tobool6.not, label %if.else, label %if.then

if.then:                                          ; preds = %throtl_charge_bio.exit
  call fastcc void @throtl_add_bio_tg(ptr noundef %call2, ptr noundef %arrayidx14, ptr noundef nonnull %retval.0.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i.i = getelementptr %struct.throtl_grp, ptr %retval.0.i, i32 0, i32 21, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i.i67 = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i.i67, label %land.lhs.true.i.i, label %if.then.if.then.i69_crit_edge

if.then.if.then.i69_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i69

land.lhs.true.i.i:                                ; preds = %if.then
  %arrayidx3.i.i = getelementptr %struct.throtl_grp, ptr %retval.0.i, i32 0, i32 22, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx3.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub4.i.i = sub i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub4.i.i)
  %cmp5.i.i = icmp sgt i32 %sub4.i.i, -1
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.if.end38_crit_edge, label %land.lhs.true.i.i.if.then.i69_crit_edge

land.lhs.true.i.i.if.then.i69_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i69

land.lhs.true.i.i.if.end38_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then.i69:                                      ; preds = %land.lhs.true.i.i.if.then.i69_crit_edge, %if.then.if.then.i69_crit_edge
  %arrayidx.i68 = getelementptr %struct.throtl_grp, ptr %tg, i32 0, i32 21, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i68, align 4
  %arrayidx.i7.i = getelementptr %struct.throtl_grp, ptr %retval.0.i, i32 0, i32 13, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %arrayidx.i7.i, align 8
  %arrayidx3.i8.i = getelementptr %struct.throtl_grp, ptr %retval.0.i, i32 0, i32 14, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx3.i8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx3.i8.i, align 4
  %arrayidx6.i.i = getelementptr %struct.throtl_grp, ptr %retval.0.i, i32 0, i32 31, i32 %idxprom
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx6.i.i, i32 noundef 4) #16
  %34 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %arrayidx6.i.i, align 4
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i9.i = sub i32 %31, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i9.i)
  %cmp.i10.i = icmp sgt i32 %sub.i9.i, -1
  br i1 %cmp.i10.i, label %if.then.i.i, label %if.then.i69.if.end.i11.i_crit_edge

if.then.i69.if.end.i11.i_crit_edge:               ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i11.i

if.then.i.i:                                      ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %31, ptr %arrayidx.i.i, align 4
  br label %if.end.i11.i

if.end.i11.i:                                     ; preds = %if.then.i.i, %if.then.i69.if.end.i11.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %td.i.i = getelementptr %struct.throtl_grp, ptr %retval.0.i, i32 0, i32 2
  %39 = ptrtoint ptr %td.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %td.i.i, align 4
  %throtl_slice.i.i = getelementptr inbounds %struct.throtl_data, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %throtl_slice.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %throtl_slice.i.i, align 4
  %add.i.i = add i32 %42, %38
  %arrayidx16.i.i = getelementptr %struct.throtl_grp, ptr %retval.0.i, i32 0, i32 22, i32 %idxprom
  %43 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i.i, ptr %arrayidx16.i.i, align 4
  %service_queue.i.i = getelementptr inbounds %struct.throtl_grp, ptr %retval.0.i, i32 0, i32 3
  %44 = ptrtoint ptr %service_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %service_queue.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %45, null
  %spec.select.i.i.i = select i1 %tobool1.not.i.i.i, ptr null, ptr %retval.0.i
  %spec.select.i70 = select i1 %tobool1.not.i.i.i, ptr %service_queue.i.i, ptr %40
  %queue.i.i = getelementptr inbounds %struct.throtl_data, ptr %spec.select.i70, i32 0, i32 1
  %46 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %queue.i.i, align 4
  %call19.i.i = call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %47) #16
  br i1 %call19.i.i, label %if.end24.i.i, label %if.end.i11.i.if.end38_crit_edge, !prof !142

if.end.i11.i.if.end38_crit_edge:                  ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.end24.i.i:                                     ; preds = %if.end.i11.i
  %48 = call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i148.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i148.i.i to ptr
  %preempt_count.i.i.i.i149.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i149.i.i, align 4
  %add.i.i.i150.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i150.i.i, ptr %preempt_count.i.i.i.i149.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i151.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %tobool1.not.i.i.i, label %do.body65.i.i, label %do.body27.i.i

do.body27.i.i:                                    ; preds = %if.end24.i.i
  br i1 %call.i151.i.i, label %do.body27.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.body27.i.i.rcu_read_lock.exit.i.i_crit_edge:   ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body27.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %do.body27.i.i.rcu_read_lock.exit.i.i_crit_edge
  %52 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %queue.i.i, align 4
  %blk_trace.i.i = getelementptr inbounds %struct.request_queue, ptr %53, i32 0, i32 46
  %54 = ptrtoint ptr %blk_trace.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %blk_trace.i.i, align 8
  %call31.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %land.lhs.true.i12.i, label %rcu_read_lock.exit.i.i.do.end40.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end40.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40.i.i

land.lhs.true.i12.i:                              ; preds = %rcu_read_lock.exit.i.i
  %call33.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %land.lhs.true.i12.i.do.end40.i.i_crit_edge, label %land.lhs.true35.i.i

land.lhs.true.i12.i.do.end40.i.i_crit_edge:       ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40.i.i

land.lhs.true35.i.i:                              ; preds = %land.lhs.true.i12.i
  %.b147.i.i = load i1, ptr @throtl_start_new_slice_with_credit.__warned, align 1
  br i1 %.b147.i.i, label %land.lhs.true35.i.i.do.end40.i.i_crit_edge, label %if.then37.i.i

land.lhs.true35.i.i.do.end40.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40.i.i

if.then37.i.i:                                    ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_start_new_slice_with_credit.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 652, ptr noundef nonnull @.str.1) #16
  br label %do.end40.i.i

do.end40.i.i:                                     ; preds = %if.then37.i.i, %land.lhs.true35.i.i.do.end40.i.i_crit_edge, %land.lhs.true.i12.i.do.end40.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end40.i.i_crit_edge
  %tobool42.not.i.i = icmp eq ptr %55, null
  br i1 %tobool42.not.i.i, label %do.end40.i.i.cleanup.sink.split.i.i_crit_edge, label %tg_to_blkg.exit.i.i, !prof !137

do.end40.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %do.end40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i.i

tg_to_blkg.exit.i.i:                              ; preds = %do.end40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %56 = ptrtoint ptr %spec.select.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spec.select.i.i.i, align 4
  %blkcg.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %blkcg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %blkcg.i.i, align 4
  %cond.i.i = select i1 %rw, i32 87, i32 82
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i, align 4
  %62 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx16.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %55, ptr noundef %59, ptr noundef nonnull @.str.39, i32 noundef %cond.i.i, i32 noundef %61, i32 noundef %63, i32 noundef %64) #16
  br label %cleanup.sink.split.i.i

do.body65.i.i:                                    ; preds = %if.end24.i.i
  br i1 %call.i151.i.i, label %do.body65.i.i.rcu_read_lock.exit158.i.i_crit_edge, label %land.lhs.true.i154.i.i

do.body65.i.i.rcu_read_lock.exit158.i.i_crit_edge: ; preds = %do.body65.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit158.i.i

land.lhs.true.i154.i.i:                           ; preds = %do.body65.i.i
  %call1.i152.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i152.i.i)
  %tobool.not.i153.i.i = icmp eq i32 %call1.i152.i.i, 0
  br i1 %tobool.not.i153.i.i, label %land.lhs.true.i154.i.i.rcu_read_lock.exit158.i.i_crit_edge, label %land.lhs.true2.i156.i.i

land.lhs.true.i154.i.i.rcu_read_lock.exit158.i.i_crit_edge: ; preds = %land.lhs.true.i154.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit158.i.i

land.lhs.true2.i156.i.i:                          ; preds = %land.lhs.true.i154.i.i
  %.b4.i155.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i155.i.i, label %land.lhs.true2.i156.i.i.rcu_read_lock.exit158.i.i_crit_edge, label %if.then.i157.i.i

land.lhs.true2.i156.i.i.rcu_read_lock.exit158.i.i_crit_edge: ; preds = %land.lhs.true2.i156.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit158.i.i

if.then.i157.i.i:                                 ; preds = %land.lhs.true2.i156.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit158.i.i

rcu_read_lock.exit158.i.i:                        ; preds = %if.then.i157.i.i, %land.lhs.true2.i156.i.i.rcu_read_lock.exit158.i.i_crit_edge, %land.lhs.true.i154.i.i.rcu_read_lock.exit158.i.i_crit_edge, %do.body65.i.i.rcu_read_lock.exit158.i.i_crit_edge
  %65 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %queue.i.i, align 4
  %blk_trace72.i.i = getelementptr inbounds %struct.request_queue, ptr %66, i32 0, i32 46
  %67 = ptrtoint ptr %blk_trace72.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %blk_trace72.i.i, align 8
  %call74.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %tobool75.not.i.i = icmp eq i32 %call74.i.i, 0
  br i1 %tobool75.not.i.i, label %land.lhs.true76.i.i, label %rcu_read_lock.exit158.i.i.do.end84.i.i_crit_edge

rcu_read_lock.exit158.i.i.do.end84.i.i_crit_edge: ; preds = %rcu_read_lock.exit158.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end84.i.i

land.lhs.true76.i.i:                              ; preds = %rcu_read_lock.exit158.i.i
  %call77.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.i)
  %tobool78.not.i.i = icmp eq i32 %call77.i.i, 0
  br i1 %tobool78.not.i.i, label %land.lhs.true76.i.i.do.end84.i.i_crit_edge, label %land.lhs.true79.i.i

land.lhs.true76.i.i.do.end84.i.i_crit_edge:       ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end84.i.i

land.lhs.true79.i.i:                              ; preds = %land.lhs.true76.i.i
  %.b145146.i.i = load i1, ptr @throtl_start_new_slice_with_credit.__warned.40, align 1
  br i1 %.b145146.i.i, label %land.lhs.true79.i.i.do.end84.i.i_crit_edge, label %if.then81.i.i

land.lhs.true79.i.i.do.end84.i.i_crit_edge:       ; preds = %land.lhs.true79.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end84.i.i

if.then81.i.i:                                    ; preds = %land.lhs.true79.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_start_new_slice_with_credit.__warned.40, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 652, ptr noundef nonnull @.str.1) #16
  br label %do.end84.i.i

do.end84.i.i:                                     ; preds = %if.then81.i.i, %land.lhs.true79.i.i.do.end84.i.i_crit_edge, %land.lhs.true76.i.i.do.end84.i.i_crit_edge, %rcu_read_lock.exit158.i.i.do.end84.i.i_crit_edge
  %tobool86.not.i.i = icmp eq ptr %68, null
  br i1 %tobool86.not.i.i, label %do.end84.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then93.i.i, !prof !137

do.end84.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %do.end84.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i.i

if.then93.i.i:                                    ; preds = %do.end84.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %cond98.i.i = select i1 %rw, i32 87, i32 82
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i, align 4
  %71 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx16.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %68, ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef %cond98.i.i, i32 noundef %70, i32 noundef %72, i32 noundef %73) #16
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then93.i.i, %do.end84.i.i.cleanup.sink.split.i.i_crit_edge, %tg_to_blkg.exit.i.i, %do.end40.i.i.cleanup.sink.split.i.i_crit_edge
  %call.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %cleanup.sink.split.i.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

cleanup.sink.split.i.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %cleanup.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %cleanup.sink.split.i.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i13.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i14.i

land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

if.then.i14.i:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i14.i, %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %cleanup.sink.split.i.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  %74 = call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %if.end38

if.else:                                          ; preds = %throtl_charge_bio.exit
  %arrayidx18 = getelementptr %struct.throtl_service_queue, ptr %1, i32 0, i32 1, i32 %idxprom
  call fastcc void @throtl_qnode_add_bio(ptr noundef %call2, ptr noundef %arrayidx14, ptr noundef %arrayidx18)
  %td = getelementptr inbounds %struct.throtl_grp, ptr %tg, i32 0, i32 2
  %78 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %td, align 4
  %arrayidx22 = getelementptr %struct.throtl_data, ptr %79, i32 0, i32 2, i32 %idxprom
  %80 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp = icmp eq i32 %81, 0
  br i1 %cmp, label %do.body26, label %do.end31, !prof !142

do.body26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-throttle.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1039, 0\0A.popsection", ""() #16, !srcloc !158
  unreachable

do.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %dec37 = add i32 %81, -1
  %82 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %dec37, ptr %arrayidx22, align 4
  br label %if.end38

if.end38:                                         ; preds = %do.end31, %rcu_read_unlock.exit.i, %if.end.i11.i.if.end38_crit_edge, %land.lhs.true.i.i.if.end38_crit_edge
  call fastcc void @throtl_trim_slice(ptr noundef %tg, i1 noundef zeroext %rw)
  %83 = ptrtoint ptr %tg_to_put to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tg_to_put, align 4
  %tobool40.not = icmp eq ptr %84, null
  br i1 %tobool40.not, label %if.end38.if.end43_crit_edge, label %tg_to_blkg.exit

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

tg_to_blkg.exit:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  call fastcc void @blkg_put(ptr noundef %86)
  br label %if.end43

if.end43:                                         ; preds = %tg_to_blkg.exit, %if.end38.if.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tg_to_put) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @throtl_pop_queued(ptr noundef %queued, ptr noundef writeonly %tg_to_put) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queued, align 4
  %cmp.i.not = icmp eq ptr %1, %queued
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %bios = getelementptr inbounds %struct.throtl_qnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %land.rhs, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %bios, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.bio_list_pop.exit_crit_edge

if.then.i.bio_list_pop.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_list_pop.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %tail.i = getelementptr inbounds %struct.throtl_qnode, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  br label %bio_list_pop.exit

bio_list_pop.exit:                                ; preds = %if.then5.i, %if.then.i.bio_list_pop.exit_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 8
  br label %if.end34

land.rhs:                                         ; preds = %if.end
  %.b66 = load i1, ptr @throtl_pop_queued.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.then45_crit_edge, label %if.then11, !prof !137

land.rhs.if.then45_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then45

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_pop_queued.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 9, ptr noundef null) #16
  br label %if.end34

if.end34:                                         ; preds = %if.then11, %bio_list_pop.exit
  %9 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load ptr, ptr %bios, align 4
  %cmp.i67.not = icmp eq ptr %.pr, null
  br i1 %cmp.i67.not, label %if.end34.if.then45_crit_edge, label %if.else51

if.end34.if.then45_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then45

if.then45:                                        ; preds = %if.end34.if.then45_crit_edge, %land.rhs.if.then45_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then45.list_del_init.exit_crit_edge

if.then45.list_del_init.exit_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then45.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %prev.i3.i, align 4
  %tobool46.not = icmp eq ptr %tg_to_put, null
  %tg48 = getelementptr inbounds %struct.throtl_qnode, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %tg48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tg48, align 4
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %tg_to_put to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %tg_to_put, align 4
  br label %cleanup

if.else:                                          ; preds = %list_del_init.exit
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.else.tg_to_blkg.exit_crit_edge, label %cond.true.i.i

if.else.tg_to_blkg.exit_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %tg_to_blkg.exit

cond.true.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %19, align 4
  br label %tg_to_blkg.exit

tg_to_blkg.exit:                                  ; preds = %cond.true.i.i, %if.else.tg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %22, %cond.true.i.i ], [ null, %if.else.tg_to_blkg.exit_crit_edge ]
  tail call fastcc void @blkg_put(ptr noundef %cond.i.i)
  br label %cleanup

if.else51:                                        ; preds = %if.end34
  %call.i.i69 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #16
  br i1 %call.i.i69, label %if.end.i.i72, label %if.else51.__list_del_entry.exit.i_crit_edge

if.else51.__list_del_entry.exit.i_crit_edge:      ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_del_entry.exit.i

if.end.i.i72:                                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i70 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i70, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %prev1.i.i.i71 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i71, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i72, %if.else51.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %queued, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %30, ptr noundef %queued) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %prev.i2.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %queued, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %1, ptr %30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge, %tg_to_blkg.exit, %if.then47, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %3, %if.then47 ], [ %3, %tg_to_blkg.exit ], [ %3, %__list_del_entry.exit.i.cleanup_crit_edge ], [ %3, %if.end.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @throtl_qnode_add_bio(ptr noundef %bio, ptr noundef %qn, ptr noundef %queued) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.throtl_qnode, ptr %qn, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bio, ptr %2, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bios = getelementptr inbounds %struct.throtl_qnode, ptr %qn, i32 0, i32 1
  %4 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bio, ptr %bios, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bio, ptr %tail.i, align 4
  %6 = ptrtoint ptr %qn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %qn, align 4
  %cmp.i.not = icmp eq ptr %7, %qn
  br i1 %cmp.i.not, label %if.then, label %bio_list_add.exit.if.end_crit_edge

bio_list_add.exit.if.end_crit_edge:               ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %bio_list_add.exit
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queued, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %qn, ptr noundef %9, ptr noundef %queued) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %qn, ptr %prev.i, align 4
  %11 = ptrtoint ptr %qn to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %queued, ptr %qn, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %qn, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %qn, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %tg = getelementptr inbounds %struct.throtl_qnode, ptr %qn, i32 0, i32 2
  %14 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tg, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %list_add_tail.exit.tg_to_blkg.exit_crit_edge, label %cond.true.i.i

list_add_tail.exit.tg_to_blkg.exit_crit_edge:     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %tg_to_blkg.exit

cond.true.i.i:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  br label %tg_to_blkg.exit

tg_to_blkg.exit:                                  ; preds = %cond.true.i.i, %list_add_tail.exit.tg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %17, %cond.true.i.i ], [ null, %list_add_tail.exit.tg_to_blkg.exit_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 5
  %18 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i.i.i, label %tg_to_blkg.exit.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

tg_to_blkg.exit.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %tg_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %tg_to_blkg.exit
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %tg_to_blkg.exit.rcu_read_lock.exit.i.i.i_crit_edge
  %22 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %do.body1.i.i.i, label %if.else.i.i.i, !prof !137

do.body1.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i.i
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !159
  %25 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i2.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i2.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %30, %23
  %31 = inttoptr i32 %add.i.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add15.i.i.i = add i32 %33, 1
  store i32 %add15.i.i.i, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !160
  %and.i.i.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then29.i.i.i, label %do.body1.i.i.i.do.end31.i.i.i_crit_edge, !prof !142

do.body1.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.body1.i.i.i.do.end31.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #16, !srcloc !161
  br label %if.end38.i.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %36, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %36, i32 1, i32 3, i32 1) #16
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #16, !srcloc !140
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.else.i.i.i, %do.end31.i.i.i
  %call.i3.i.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i3.i.i.i, label %if.end38.i.i.i.blkg_get.exit_crit_edge, label %land.lhs.true.i6.i.i.i

if.end38.i.i.i.blkg_get.exit_crit_edge:           ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_get.exit

land.lhs.true.i6.i.i.i:                           ; preds = %if.end38.i.i.i
  %call1.i4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %call1.i4.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %land.lhs.true.i6.i.i.i.blkg_get.exit_crit_edge, label %land.lhs.true2.i8.i.i.i

land.lhs.true.i6.i.i.i.blkg_get.exit_crit_edge:   ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_get.exit

land.lhs.true2.i8.i.i.i:                          ; preds = %land.lhs.true.i6.i.i.i
  %.b4.i7.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i, label %land.lhs.true2.i8.i.i.i.blkg_get.exit_crit_edge, label %if.then.i9.i.i.i

land.lhs.true2.i8.i.i.i.blkg_get.exit_crit_edge:  ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blkg_get.exit

if.then.i9.i.i.i:                                 ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %blkg_get.exit

blkg_get.exit:                                    ; preds = %if.then.i9.i.i.i, %land.lhs.true2.i8.i.i.i.blkg_get.exit_crit_edge, %land.lhs.true.i6.i.i.i.blkg_get.exit_crit_edge, %if.end38.i.i.i.blkg_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  %38 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i10.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i10.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %if.end

if.end:                                           ; preds = %blkg_get.exit, %bio_list_add.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blkg_put(ptr noundef %blkg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %refcnt = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 5
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !137

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !159
  %7 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, -1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !160
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !142

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #16, !srcloc !161
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #16
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #16, !srcloc !163
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !142

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i.i, align 4
  tail call void %23(ptr noundef %refcnt) #16
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  %24 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i10.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @throtl_pending_timer_fn(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -44
  %tobool.not.i305 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i305, label %entry.sq_to_td.exit_crit_edge, label %land.lhs.true.i.i

entry.sq_to_td.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit

land.lhs.true.i.i:                                ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %t, i32 -68
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %add.ptr.i
  %tobool.not.i307 = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %tobool.not.i307, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.sq_to_td.exit_crit_edge, label %if.then.i308

land.lhs.true.i.i.sq_to_td.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit

if.then.i308:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %td.i = getelementptr i8, ptr %t, i32 -48
  %2 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %td.i, align 4
  br label %sq_to_td.exit

sq_to_td.exit:                                    ; preds = %if.then.i308, %land.lhs.true.i.i.sq_to_td.exit_crit_edge, %entry.sq_to_td.exit_crit_edge
  %retval.0.i400 = phi ptr [ %spec.select.i, %if.then.i308 ], [ %spec.select.i, %land.lhs.true.i.i.sq_to_td.exit_crit_edge ], [ null, %entry.sq_to_td.exit_crit_edge ]
  %retval.0.i309 = phi ptr [ %3, %if.then.i308 ], [ %add.ptr, %land.lhs.true.i.i.sq_to_td.exit_crit_edge ], [ null, %entry.sq_to_td.exit_crit_edge ]
  %queue = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i309, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #16
  %call2 = tail call fastcc zeroext i1 @throtl_can_upgrade(ptr noundef %retval.0.i309, ptr noundef null)
  br i1 %call2, label %if.then, label %sq_to_td.exit.if.end_crit_edge

sq_to_td.exit.if.end_crit_edge:                   ; preds = %sq_to_td.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %sq_to_td.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @throtl_upgrade_state(ptr noundef %retval.0.i309)
  br label %if.end

if.end:                                           ; preds = %if.then, %sq_to_td.exit.if.end_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %add.ptr, align 4
  br label %again

again:                                            ; preds = %sq_to_tg.exit397, %if.end
  %7 = phi ptr [ %81, %sq_to_tg.exit397 ], [ %.pr, %if.end ]
  %tg.0 = phi ptr [ %spec.select.i394, %sq_to_tg.exit397 ], [ %retval.0.i400, %if.end ]
  %sq.0 = phi ptr [ %7, %sq_to_tg.exit397 ], [ %add.ptr, %if.end ]
  %tobool.not.i310 = icmp eq ptr %sq.0, null
  %add.ptr.i312 = getelementptr i8, ptr %sq.0, i32 -24
  %tobool.not.i320 = icmp eq ptr %add.ptr.i312, null
  %td.i323 = getelementptr i8, ptr %sq.0, i32 -4
  %nr_queued = getelementptr inbounds %struct.throtl_service_queue, ptr %sq.0, i32 0, i32 2
  %arrayidx40 = getelementptr %struct.throtl_service_queue, ptr %sq.0, i32 0, i32 2, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end192, %again
  %dispatched.0.off0 = phi i1 [ false, %again ], [ %dispatched.1.off0, %if.end192 ]
  br i1 %tobool.not.i310, label %sq_to_td.exit326.thread, label %land.lhs.true.i.i322

land.lhs.true.i.i322:                             ; preds = %while.cond
  %8 = ptrtoint ptr %sq.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sq.0, align 4
  %tobool1.not.i311 = icmp eq ptr %9, null
  %spec.select.i313 = select i1 %tobool1.not.i311, ptr null, ptr %add.ptr.i312
  %or.cond.i321 = or i1 %tobool.not.i320, %tobool1.not.i311
  br i1 %or.cond.i321, label %land.lhs.true.i.i322.sq_to_td.exit326_crit_edge, label %if.then.i324

land.lhs.true.i.i322.sq_to_td.exit326_crit_edge:  ; preds = %land.lhs.true.i.i322
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit326

if.then.i324:                                     ; preds = %land.lhs.true.i.i322
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %td.i323 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %td.i323, align 4
  br label %sq_to_td.exit326

sq_to_td.exit326:                                 ; preds = %if.then.i324, %land.lhs.true.i.i322.sq_to_td.exit326_crit_edge
  %retval.0.i325 = phi ptr [ %11, %if.then.i324 ], [ %sq.0, %land.lhs.true.i.i322.sq_to_td.exit326_crit_edge ]
  %queue6 = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i325, i32 0, i32 1
  %12 = ptrtoint ptr %queue6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue6, align 4
  %call7 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %13)
  br i1 %call7, label %if.end11, label %sq_to_td.exit326.cleanup_crit_edge, !prof !142

sq_to_td.exit326.cleanup_crit_edge:               ; preds = %sq_to_td.exit326
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sq_to_td.exit326.thread:                          ; preds = %while.cond
  call void @__asan_load4_noabort(i32 92)
  %14 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call7406 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %14)
  br i1 %call7406, label %sq_to_td.exit326.thread.do.body48_crit_edge, label %cleanup.thread, !prof !142

sq_to_td.exit326.thread.do.body48_crit_edge:      ; preds = %sq_to_td.exit326.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body48

if.end11:                                         ; preds = %sq_to_td.exit326
  %tobool12.not = icmp eq ptr %spec.select.i313, null
  br i1 %tobool12.not, label %if.end11.do.body48_crit_edge, label %do.body14

if.end11.do.body48_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body48

do.body14:                                        ; preds = %if.end11
  %15 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %do.body14.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body14.rcu_read_lock.exit_crit_edge:           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body14
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body14.rcu_read_lock.exit_crit_edge
  %19 = ptrtoint ptr %queue6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue6, align 4
  %blk_trace = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %blk_trace to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %blk_trace, align 8
  %call19 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end28_crit_edge

rcu_read_lock.exit.do.end28_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end28

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true
  %.b271 = load i1, ptr @throtl_pending_timer_fn.__warned, align 1
  br i1 %.b271, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_pending_timer_fn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1153, ptr noundef nonnull @.str.1) #16
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge, %rcu_read_lock.exit.do.end28_crit_edge
  %tobool30.not = icmp eq ptr %22, null
  br i1 %tobool30.not, label %do.end28.if.end45_crit_edge, label %tg_to_blkg.exit, !prof !137

do.end28.if.end45_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

tg_to_blkg.exit:                                  ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %spec.select.i313 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spec.select.i313, align 4
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %blkcg, align 4
  %27 = ptrtoint ptr %nr_queued to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_queued, align 4
  %29 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx40, align 4
  %add = add i32 %30, %28
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %22, ptr noundef %26, ptr noundef nonnull @.str.48, i32 noundef %add, i32 noundef %28, i32 noundef %30) #16
  br label %if.end45

if.end45:                                         ; preds = %tg_to_blkg.exit, %do.end28.if.end45_crit_edge
  %call.i328 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i328, label %if.end45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i331

if.end45.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i331:                               ; preds = %if.end45
  %call1.i329 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i329)
  %tobool.not.i330 = icmp eq i32 %call1.i329, 0
  br i1 %tobool.not.i330, label %land.lhs.true.i331.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i333

land.lhs.true.i331.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i331
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i333:                              ; preds = %land.lhs.true.i331
  %.b4.i332 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i332, label %land.lhs.true2.i333.rcu_read_unlock.exit_crit_edge, label %if.then.i334

land.lhs.true2.i333.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i333
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i334:                                     ; preds = %land.lhs.true2.i333
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i334, %land.lhs.true2.i333.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i331.rcu_read_unlock.exit_crit_edge, %if.end45.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  br label %cleanup.sink.split

do.body48:                                        ; preds = %if.end11.do.body48_crit_edge, %sq_to_td.exit326.thread.do.body48_crit_edge
  %queue6408412 = phi ptr [ %queue6, %if.end11.do.body48_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit326.thread.do.body48_crit_edge ]
  %31 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i272 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i272 to ptr
  %preempt_count.i.i.i.i273 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i273 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i273, align 4
  %add.i.i.i274 = add i32 %34, 1
  store volatile i32 %add.i.i.i274, ptr %preempt_count.i.i.i.i273, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i275 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i275, label %do.body48.rcu_read_lock.exit282_crit_edge, label %land.lhs.true.i278

do.body48.rcu_read_lock.exit282_crit_edge:        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit282

land.lhs.true.i278:                               ; preds = %do.body48
  %call1.i276 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i276)
  %tobool.not.i277 = icmp eq i32 %call1.i276, 0
  br i1 %tobool.not.i277, label %land.lhs.true.i278.rcu_read_lock.exit282_crit_edge, label %land.lhs.true2.i280

land.lhs.true.i278.rcu_read_lock.exit282_crit_edge: ; preds = %land.lhs.true.i278
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit282

land.lhs.true2.i280:                              ; preds = %land.lhs.true.i278
  %.b4.i279 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i279, label %land.lhs.true2.i280.rcu_read_lock.exit282_crit_edge, label %if.then.i281

land.lhs.true2.i280.rcu_read_lock.exit282_crit_edge: ; preds = %land.lhs.true2.i280
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit282

if.then.i281:                                     ; preds = %land.lhs.true2.i280
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit282

rcu_read_lock.exit282:                            ; preds = %if.then.i281, %land.lhs.true2.i280.rcu_read_lock.exit282_crit_edge, %land.lhs.true.i278.rcu_read_lock.exit282_crit_edge, %do.body48.rcu_read_lock.exit282_crit_edge
  %35 = ptrtoint ptr %queue6408412 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue6408412, align 4
  %blk_trace55 = getelementptr inbounds %struct.request_queue, ptr %36, i32 0, i32 46
  %37 = ptrtoint ptr %blk_trace55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %blk_trace55, align 8
  %call57 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true59, label %rcu_read_lock.exit282.do.end67_crit_edge

rcu_read_lock.exit282.do.end67_crit_edge:         ; preds = %rcu_read_lock.exit282
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true59:                                  ; preds = %rcu_read_lock.exit282
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true59.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true59.do.end67_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %.b264270 = load i1, ptr @throtl_pending_timer_fn.__warned.49, align 1
  br i1 %.b264270, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_pending_timer_fn.__warned.49, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1153, ptr noundef nonnull @.str.1) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true59.do.end67_crit_edge, %rcu_read_lock.exit282.do.end67_crit_edge
  %tobool69.not = icmp eq ptr %38, null
  br i1 %tobool69.not, label %do.end67.if.end86_crit_edge, label %if.then76, !prof !137

do.end67.if.end86_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then76:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %nr_queued to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_queued, align 4
  %41 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx40, align 4
  %add81 = add i32 %42, %40
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %38, ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef %add81, i32 noundef %40, i32 noundef %42) #16
  br label %if.end86

if.end86:                                         ; preds = %if.then76, %do.end67.if.end86_crit_edge
  %call.i337 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i337, label %if.end86.rcu_read_unlock.exit347_crit_edge, label %land.lhs.true.i340

if.end86.rcu_read_unlock.exit347_crit_edge:       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit347

land.lhs.true.i340:                               ; preds = %if.end86
  %call1.i338 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i338)
  %tobool.not.i339 = icmp eq i32 %call1.i338, 0
  br i1 %tobool.not.i339, label %land.lhs.true.i340.rcu_read_unlock.exit347_crit_edge, label %land.lhs.true2.i342

land.lhs.true.i340.rcu_read_unlock.exit347_crit_edge: ; preds = %land.lhs.true.i340
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit347

land.lhs.true2.i342:                              ; preds = %land.lhs.true.i340
  %.b4.i341 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i341, label %land.lhs.true2.i342.rcu_read_unlock.exit347_crit_edge, label %if.then.i343

land.lhs.true2.i342.rcu_read_unlock.exit347_crit_edge: ; preds = %land.lhs.true2.i342
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit347

if.then.i343:                                     ; preds = %land.lhs.true2.i342
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit347

rcu_read_unlock.exit347:                          ; preds = %if.then.i343, %land.lhs.true2.i342.rcu_read_unlock.exit347_crit_edge, %land.lhs.true.i340.rcu_read_unlock.exit347_crit_edge, %if.end86.rcu_read_unlock.exit347_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit347, %rcu_read_unlock.exit
  %43 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i344 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i344 to ptr
  %preempt_count.i.i.i.i345 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i345 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i345, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i345, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sq_to_td.exit326.cleanup_crit_edge
  %call93 = tail call fastcc i32 @throtl_select_dispatch(ptr noundef %sq.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %cleanup.if.end189_crit_edge, label %do.body96

cleanup.if.end189_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end189

cleanup.thread:                                   ; preds = %sq_to_td.exit326.thread
  %call93413 = tail call fastcc i32 @throtl_select_dispatch(ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93413)
  %tobool94.not414 = icmp eq i32 %call93413, 0
  br i1 %tobool94.not414, label %cleanup.thread.if.end189_crit_edge, label %cleanup.thread.sq_to_td.exit364.thread_crit_edge

cleanup.thread.sq_to_td.exit364.thread_crit_edge: ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit364.thread

cleanup.thread.if.end189_crit_edge:               ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end189

do.body96:                                        ; preds = %cleanup
  br i1 %tobool.not.i310, label %do.body96.sq_to_td.exit364.thread_crit_edge, label %land.lhs.true.i.i360

do.body96.sq_to_td.exit364.thread_crit_edge:      ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit364.thread

land.lhs.true.i.i360:                             ; preds = %do.body96
  %47 = ptrtoint ptr %sq.0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sq.0, align 4
  %tobool1.not.i349 = icmp eq ptr %48, null
  %spec.select.i351 = select i1 %tobool1.not.i349, ptr null, ptr %add.ptr.i312
  %or.cond.i359 = or i1 %tobool.not.i320, %tobool1.not.i349
  br i1 %or.cond.i359, label %land.lhs.true.i.i360.sq_to_td.exit364_crit_edge, label %if.then.i362

land.lhs.true.i.i360.sq_to_td.exit364_crit_edge:  ; preds = %land.lhs.true.i.i360
  call void @__sanitizer_cov_trace_pc() #18
  br label %sq_to_td.exit364

if.then.i362:                                     ; preds = %land.lhs.true.i.i360
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %td.i323 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %td.i323, align 4
  br label %sq_to_td.exit364

sq_to_td.exit364:                                 ; preds = %if.then.i362, %land.lhs.true.i.i360.sq_to_td.exit364_crit_edge
  %retval.0.i363 = phi ptr [ %50, %if.then.i362 ], [ %sq.0, %land.lhs.true.i.i360.sq_to_td.exit364_crit_edge ]
  %queue101 = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i363, i32 0, i32 1
  %51 = ptrtoint ptr %queue101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %queue101, align 4
  %call102 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %52)
  br i1 %call102, label %if.end112, label %sq_to_td.exit364.if.end189_crit_edge, !prof !142

sq_to_td.exit364.if.end189_crit_edge:             ; preds = %sq_to_td.exit364
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end189

sq_to_td.exit364.thread:                          ; preds = %do.body96.sq_to_td.exit364.thread_crit_edge, %cleanup.thread.sq_to_td.exit364.thread_crit_edge
  %call93415417.ph = phi i32 [ %call93, %do.body96.sq_to_td.exit364.thread_crit_edge ], [ %call93413, %cleanup.thread.sq_to_td.exit364.thread_crit_edge ]
  call void @__asan_load4_noabort(i32 92)
  %53 = load ptr, ptr inttoptr (i32 92 to ptr), align 4
  %call102426 = tail call fastcc zeroext i1 @blk_trace_note_message_enabled(ptr noundef %53)
  br i1 %call102426, label %sq_to_td.exit364.thread.do.body150_crit_edge, label %sq_to_td.exit364.thread.if.end189_crit_edge, !prof !142

sq_to_td.exit364.thread.if.end189_crit_edge:      ; preds = %sq_to_td.exit364.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end189

sq_to_td.exit364.thread.do.body150_crit_edge:     ; preds = %sq_to_td.exit364.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body150

if.end112:                                        ; preds = %sq_to_td.exit364
  %tobool113.not = icmp eq ptr %spec.select.i351, null
  br i1 %tobool113.not, label %if.end112.do.body150_crit_edge, label %do.body115

if.end112.do.body150_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body150

do.body115:                                       ; preds = %if.end112
  %54 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i283 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i283 to ptr
  %preempt_count.i.i.i.i284 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i284 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i284, align 4
  %add.i.i.i285 = add i32 %57, 1
  store volatile i32 %add.i.i.i285, ptr %preempt_count.i.i.i.i284, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i286 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i286, label %do.body115.rcu_read_lock.exit293_crit_edge, label %land.lhs.true.i289

do.body115.rcu_read_lock.exit293_crit_edge:       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit293

land.lhs.true.i289:                               ; preds = %do.body115
  %call1.i287 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i287)
  %tobool.not.i288 = icmp eq i32 %call1.i287, 0
  br i1 %tobool.not.i288, label %land.lhs.true.i289.rcu_read_lock.exit293_crit_edge, label %land.lhs.true2.i291

land.lhs.true.i289.rcu_read_lock.exit293_crit_edge: ; preds = %land.lhs.true.i289
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit293

land.lhs.true2.i291:                              ; preds = %land.lhs.true.i289
  %.b4.i290 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i290, label %land.lhs.true2.i291.rcu_read_lock.exit293_crit_edge, label %if.then.i292

land.lhs.true2.i291.rcu_read_lock.exit293_crit_edge: ; preds = %land.lhs.true2.i291
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit293

if.then.i292:                                     ; preds = %land.lhs.true2.i291
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit293

rcu_read_lock.exit293:                            ; preds = %if.then.i292, %land.lhs.true2.i291.rcu_read_lock.exit293_crit_edge, %land.lhs.true.i289.rcu_read_lock.exit293_crit_edge, %do.body115.rcu_read_lock.exit293_crit_edge
  %58 = ptrtoint ptr %queue101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %queue101, align 4
  %blk_trace122 = getelementptr inbounds %struct.request_queue, ptr %59, i32 0, i32 46
  %60 = ptrtoint ptr %blk_trace122 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %blk_trace122, align 8
  %call124 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %land.lhs.true126, label %rcu_read_lock.exit293.do.end134_crit_edge

rcu_read_lock.exit293.do.end134_crit_edge:        ; preds = %rcu_read_lock.exit293
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end134

land.lhs.true126:                                 ; preds = %rcu_read_lock.exit293
  %call127 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %land.lhs.true126.do.end134_crit_edge, label %land.lhs.true129

land.lhs.true126.do.end134_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end134

land.lhs.true129:                                 ; preds = %land.lhs.true126
  %.b265269 = load i1, ptr @throtl_pending_timer_fn.__warned.50, align 1
  br i1 %.b265269, label %land.lhs.true129.do.end134_crit_edge, label %if.then131

land.lhs.true129.do.end134_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end134

if.then131:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_pending_timer_fn.__warned.50, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1157, ptr noundef nonnull @.str.1) #16
  br label %do.end134

do.end134:                                        ; preds = %if.then131, %land.lhs.true129.do.end134_crit_edge, %land.lhs.true126.do.end134_crit_edge, %rcu_read_lock.exit293.do.end134_crit_edge
  %tobool136.not = icmp eq ptr %61, null
  br i1 %tobool136.not, label %do.end134.if.end146_crit_edge, label %tg_to_blkg.exit368, !prof !137

do.end134.if.end146_crit_edge:                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end146

tg_to_blkg.exit368:                               ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #18
  %62 = ptrtoint ptr %spec.select.i351 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spec.select.i351, align 4
  %blkcg145 = getelementptr inbounds %struct.blkcg_gq, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %blkcg145 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %blkcg145, align 4
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %61, ptr noundef %65, ptr noundef nonnull @.str.51, i32 noundef %call93) #16
  br label %if.end146

if.end146:                                        ; preds = %tg_to_blkg.exit368, %do.end134.if.end146_crit_edge
  %call.i369 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i369, label %if.end146.rcu_read_unlock.exit379_crit_edge, label %land.lhs.true.i372

if.end146.rcu_read_unlock.exit379_crit_edge:      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit379

land.lhs.true.i372:                               ; preds = %if.end146
  %call1.i370 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i370)
  %tobool.not.i371 = icmp eq i32 %call1.i370, 0
  br i1 %tobool.not.i371, label %land.lhs.true.i372.rcu_read_unlock.exit379_crit_edge, label %land.lhs.true2.i374

land.lhs.true.i372.rcu_read_unlock.exit379_crit_edge: ; preds = %land.lhs.true.i372
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit379

land.lhs.true2.i374:                              ; preds = %land.lhs.true.i372
  %.b4.i373 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i373, label %land.lhs.true2.i374.rcu_read_unlock.exit379_crit_edge, label %if.then.i375

land.lhs.true2.i374.rcu_read_unlock.exit379_crit_edge: ; preds = %land.lhs.true2.i374
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit379

if.then.i375:                                     ; preds = %land.lhs.true2.i374
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit379

rcu_read_unlock.exit379:                          ; preds = %if.then.i375, %land.lhs.true2.i374.rcu_read_unlock.exit379_crit_edge, %land.lhs.true.i372.rcu_read_unlock.exit379_crit_edge, %if.end146.rcu_read_unlock.exit379_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  br label %if.end189.sink.split

do.body150:                                       ; preds = %if.end112.do.body150_crit_edge, %sq_to_td.exit364.thread.do.body150_crit_edge
  %call93415417420428435 = phi i32 [ %call93, %if.end112.do.body150_crit_edge ], [ %call93415417.ph, %sq_to_td.exit364.thread.do.body150_crit_edge ]
  %queue101429434 = phi ptr [ %queue101, %if.end112.do.body150_crit_edge ], [ inttoptr (i32 92 to ptr), %sq_to_td.exit364.thread.do.body150_crit_edge ]
  %66 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i294 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i294 to ptr
  %preempt_count.i.i.i.i295 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i295 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i295, align 4
  %add.i.i.i296 = add i32 %69, 1
  store volatile i32 %add.i.i.i296, ptr %preempt_count.i.i.i.i295, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i297 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i297, label %do.body150.rcu_read_lock.exit304_crit_edge, label %land.lhs.true.i300

do.body150.rcu_read_lock.exit304_crit_edge:       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit304

land.lhs.true.i300:                               ; preds = %do.body150
  %call1.i298 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i298)
  %tobool.not.i299 = icmp eq i32 %call1.i298, 0
  br i1 %tobool.not.i299, label %land.lhs.true.i300.rcu_read_lock.exit304_crit_edge, label %land.lhs.true2.i302

land.lhs.true.i300.rcu_read_lock.exit304_crit_edge: ; preds = %land.lhs.true.i300
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit304

land.lhs.true2.i302:                              ; preds = %land.lhs.true.i300
  %.b4.i301 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i301, label %land.lhs.true2.i302.rcu_read_lock.exit304_crit_edge, label %if.then.i303

land.lhs.true2.i302.rcu_read_lock.exit304_crit_edge: ; preds = %land.lhs.true2.i302
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit304

if.then.i303:                                     ; preds = %land.lhs.true2.i302
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_lock.exit304

rcu_read_lock.exit304:                            ; preds = %if.then.i303, %land.lhs.true2.i302.rcu_read_lock.exit304_crit_edge, %land.lhs.true.i300.rcu_read_lock.exit304_crit_edge, %do.body150.rcu_read_lock.exit304_crit_edge
  %70 = ptrtoint ptr %queue101429434 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %queue101429434, align 4
  %blk_trace157 = getelementptr inbounds %struct.request_queue, ptr %71, i32 0, i32 46
  %72 = ptrtoint ptr %blk_trace157 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %blk_trace157, align 8
  %call159 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %land.lhs.true161, label %rcu_read_lock.exit304.do.end169_crit_edge

rcu_read_lock.exit304.do.end169_crit_edge:        ; preds = %rcu_read_lock.exit304
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end169

land.lhs.true161:                                 ; preds = %rcu_read_lock.exit304
  %call162 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %land.lhs.true161.do.end169_crit_edge, label %land.lhs.true164

land.lhs.true161.do.end169_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end169

land.lhs.true164:                                 ; preds = %land.lhs.true161
  %.b266268 = load i1, ptr @throtl_pending_timer_fn.__warned.52, align 1
  br i1 %.b266268, label %land.lhs.true164.do.end169_crit_edge, label %if.then166

land.lhs.true164.do.end169_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end169

if.then166:                                       ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @throtl_pending_timer_fn.__warned.52, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1157, ptr noundef nonnull @.str.1) #16
  br label %do.end169

do.end169:                                        ; preds = %if.then166, %land.lhs.true164.do.end169_crit_edge, %land.lhs.true161.do.end169_crit_edge, %rcu_read_lock.exit304.do.end169_crit_edge
  %tobool171.not = icmp eq ptr %73, null
  br i1 %tobool171.not, label %do.end169.if.end179_crit_edge, label %if.then178, !prof !137

do.end169.if.end179_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end179

if.then178:                                       ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__trace_note_message(ptr noundef nonnull %73, ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef %call93415417420428435) #16
  br label %if.end179

if.end179:                                        ; preds = %if.then178, %do.end169.if.end179_crit_edge
  %call.i380 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i380, label %if.end179.rcu_read_unlock.exit390_crit_edge, label %land.lhs.true.i383

if.end179.rcu_read_unlock.exit390_crit_edge:      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit390

land.lhs.true.i383:                               ; preds = %if.end179
  %call1.i381 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i381)
  %tobool.not.i382 = icmp eq i32 %call1.i381, 0
  br i1 %tobool.not.i382, label %land.lhs.true.i383.rcu_read_unlock.exit390_crit_edge, label %land.lhs.true2.i385

land.lhs.true.i383.rcu_read_unlock.exit390_crit_edge: ; preds = %land.lhs.true.i383
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit390

land.lhs.true2.i385:                              ; preds = %land.lhs.true.i383
  %.b4.i384 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i384, label %land.lhs.true2.i385.rcu_read_unlock.exit390_crit_edge, label %if.then.i386

land.lhs.true2.i385.rcu_read_unlock.exit390_crit_edge: ; preds = %land.lhs.true2.i385
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit390

if.then.i386:                                     ; preds = %land.lhs.true2.i385
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_unlock.exit390

rcu_read_unlock.exit390:                          ; preds = %if.then.i386, %land.lhs.true2.i385.rcu_read_unlock.exit390_crit_edge, %land.lhs.true.i383.rcu_read_unlock.exit390_crit_edge, %if.end179.rcu_read_unlock.exit390_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  br label %if.end189.sink.split

if.end189.sink.split:                             ; preds = %rcu_read_unlock.exit390, %rcu_read_unlock.exit379
  %74 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i.i.i.i.i376 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i376 to ptr
  %preempt_count.i.i.i.i377 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i377 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i377, align 4
  %sub.i.i.i389 = add i32 %77, -1
  store volatile i32 %sub.i.i.i389, ptr %preempt_count.i.i.i.i377, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %if.end189

if.end189:                                        ; preds = %if.end189.sink.split, %sq_to_td.exit364.thread.if.end189_crit_edge, %sq_to_td.exit364.if.end189_crit_edge, %cleanup.thread.if.end189_crit_edge, %cleanup.if.end189_crit_edge
  %dispatched.1.off0 = phi i1 [ %dispatched.0.off0, %cleanup.if.end189_crit_edge ], [ true, %sq_to_td.exit364.if.end189_crit_edge ], [ %dispatched.0.off0, %cleanup.thread.if.end189_crit_edge ], [ true, %sq_to_td.exit364.thread.if.end189_crit_edge ], [ true, %if.end189.sink.split ]
  %call190 = tail call fastcc zeroext i1 @throtl_schedule_next_dispatch(ptr noundef %sq.0, i1 noundef zeroext false)
  br i1 %call190, label %while.end, label %if.end192

if.end192:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !165
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !166
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #16
  br label %while.cond

while.end:                                        ; preds = %if.end189
  br i1 %dispatched.1.off0, label %if.end206, label %while.end.out_unlock_crit_edge

while.end.out_unlock_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end206:                                        ; preds = %while.end
  %tobool207.not = icmp eq ptr %7, null
  br i1 %tobool207.not, label %if.else216, label %if.then208

if.then208:                                       ; preds = %if.end206
  %flags = getelementptr inbounds %struct.throtl_grp, ptr %tg.0, i32 0, i32 7
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 8
  %and = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool209.not = icmp eq i32 %and, 0
  br i1 %tobool209.not, label %if.then208.out_unlock_crit_edge, label %if.then210

if.then208.out_unlock_crit_edge:                  ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then210:                                       ; preds = %if.then208
  tail call fastcc void @tg_update_disptime(ptr noundef %tg.0)
  %call211 = tail call fastcc zeroext i1 @throtl_schedule_next_dispatch(ptr noundef nonnull %7, i1 noundef zeroext false)
  br i1 %call211, label %if.then210.out_unlock_crit_edge, label %sq_to_tg.exit397

if.then210.out_unlock_crit_edge:                  ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

sq_to_tg.exit397:                                 ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #18
  %80 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %7, align 4
  %tobool1.not.i392 = icmp eq ptr %81, null
  %add.ptr.i393 = getelementptr i8, ptr %7, i32 -24
  %spec.select.i394 = select i1 %tobool1.not.i392, ptr null, ptr %add.ptr.i393
  br label %again

if.else216:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #18
  %82 = load ptr, ptr @kthrotld_workqueue, align 4
  %dispatch_work = getelementptr inbounds %struct.throtl_data, ptr %retval.0.i309, i32 0, i32 4
  %call.i398 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %82, ptr noundef %dispatch_work) #16
  br label %out_unlock

out_unlock:                                       ; preds = %if.else216, %if.then210.out_unlock_crit_edge, %if.then208.out_unlock_crit_edge, %while.end.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkcg_policy_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !86, !87, !88, !90, !92, !94, !95, !96, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !121, !122, !123, !125}
!llvm.named.register.sp = !{!127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @blkcg_policy_throtl, !1, !"blkcg_policy_throtl", i1 false, i1 false}
!1 = !{!"../block/blk-throttle.c", i32 1651, i32 21}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../block/blk-throttle.c", i32 2141, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!8 = !{ptr @blk_throtl_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../block/blk-throttle.c", i32 2283, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../block/blk-throttle.c", i32 2349, i32 23}
!13 = !{ptr @__initcall__kmod_blk_throttle__386_2379_throtl_init6, !14, !"__initcall__kmod_blk_throttle__386_2379_throtl_init6", i1 false, i1 false}
!14 = !{!"../block/blk-throttle.c", i32 2379, i32 1}
!15 = !{ptr @throtl_files, !16, !"throtl_files", i1 false, i1 false}
!16 = !{!"../block/blk-throttle.c", i32 1624, i32 22}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../block/blk-throttle.c", i32 1470, i32 38}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../block/blk-throttle.c", i32 1476, i32 38}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../block/blk-throttle.c", i32 1483, i32 22}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../block/blk-throttle.c", i32 1485, i32 43}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../block/blk-throttle.c", i32 1489, i32 25}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../block/blk-throttle.c", i32 1492, i32 5}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../block/blk-throttle.c", i32 1495, i32 17}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../block/blk-throttle.c", i32 1539, i32 24}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../block/blk-throttle.c", i32 1547, i32 14}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../block/blk-throttle.c", i32 1548, i32 56}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../block/blk-throttle.c", i32 1556, i32 20}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../block/blk-throttle.c", i32 1558, i32 25}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../block/blk-throttle.c", i32 1560, i32 25}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../block/blk-throttle.c", i32 1562, i32 25}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../block/blk-throttle.c", i32 1564, i32 45}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../block/blk-throttle.c", i32 1566, i32 45}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/blk-cgroup.h", i32 340, i32 9}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../block/blk-throttle.c", i32 1269, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../block/blk-throttle.c", i32 664, i32 2}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!60 = !{ptr @throtl_legacy_files, !61, !"throtl_legacy_files", i1 false, i1 false}
!61 = !{!"../block/blk-throttle.c", i32 1390, i32 22}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../block/blk-throttle.c", i32 2032, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../block/blk-throttle.c", i32 1720, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../block/blk-throttle.c", i32 1843, i32 2}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../block/blk-throttle.c", i32 291, i32 2}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../block/blk-throttle.c", i32 680, i32 2}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../block/blk-throttle.c", i32 1820, i32 2}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../block/blk-throttle.c", i32 506, i32 2}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../block/blk-throttle.c", i32 320, i32 2}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../block/blk-throttle.c", i32 649, i32 2}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!96 = !{ptr @kthrotld_workqueue, !97, !"kthrotld_workqueue", i1 false, i1 false}
!97 = !{!"../block/blk-throttle.c", i32 43, i32 33}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../block/blk-throttle.c", i32 749, i32 2}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../include/linux/blktrace_api.h", i32 70, i32 7}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../block/blk-throttle.c", i32 590, i32 2}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!112 = !{ptr @throtl_service_queue_init.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../block/blk-throttle.c", i32 341, i32 2}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../block/blk-throttle.c", i32 1151, i32 3}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../block/blk-throttle.c", i32 1157, i32 4}
!121 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../block/blk-throttle.c", i32 2372, i32 39}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../block/blk-throttle.c", i32 2374, i32 9}
!127 = !{!"sp"}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"branch_weights", i32 2000, i32 1}
!138 = !{i64 2149016803, i64 2149016808, i64 2149016821, i64 2149016865, i64 2149016899, i64 2149016920}
!139 = !{i8 0, i8 2}
!140 = !{i64 2148403426, i64 2148403452, i64 2148403481, i64 2148403515, i64 2148403546, i64 2148403569}
!141 = !{i64 2149419585}
!142 = !{!"branch_weights", i32 1, i32 2000}
!143 = !{i64 2148249850, i64 2148250130, i64 2148250464, i64 2148250798}
!144 = !{i64 2148663326}
!145 = !{i64 910194, i64 910211, i64 910235, i64 910261, i64 910279}
!146 = !{i64 2148663696}
!147 = !{i64 2149419851}
!148 = !{i64 2155211071, i64 2155211556, i64 2155211108, i64 2155211164, i64 2155211198, i64 2155211222, i64 2155211263, i64 2155211284, i64 2155211312, i64 2155211346}
!149 = !{i64 764306, i64 764333, i64 764355, i64 764383}
!150 = !{i64 764714, i64 764741, i64 764774, i64 764795, i64 764822, i64 764848}
!151 = !{i64 2155182121, i64 2155182606, i64 2155182158, i64 2155182214, i64 2155182248, i64 2155182272, i64 2155182313, i64 2155182334, i64 2155182362, i64 2155182396}
!152 = !{i32 0, i32 33}
!153 = !{i64 2155398712}
!154 = !{i64 2155399917}
!155 = !{i64 2155474724, i64 2155475210, i64 2155474761, i64 2155474817, i64 2155474851, i64 2155474875, i64 2155474916, i64 2155474937, i64 2155474965, i64 2155474999}
!156 = !{i64 2155476296, i64 2155476782, i64 2155476333, i64 2155476389, i64 2155476423, i64 2155476447, i64 2155476488, i64 2155476509, i64 2155476537, i64 2155476571}
!157 = !{!"auto-init"}
!158 = !{i64 2155220800, i64 2155221286, i64 2155220837, i64 2155220893, i64 2155220927, i64 2155220951, i64 2155220992, i64 2155221013, i64 2155221041, i64 2155221075}
!159 = !{i64 807126, i64 807187}
!160 = !{i64 809858}
!161 = !{i64 810143}
!162 = !{i64 2148491902}
!163 = !{i64 2148406611, i64 2148406643, i64 2148406672, i64 2148406706, i64 2148406737, i64 2148406760}
!164 = !{i64 2148492131}
!165 = !{i64 2155245681}
!166 = !{i64 2155245523}
