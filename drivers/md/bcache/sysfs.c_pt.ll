; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/sysfs.c_pt.bc'
source_filename = "../drivers/md/bcache/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.96, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.gc_stat = type { i32, i32, i32, i32, i64, i32 }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.keybuf = type { %struct.bkey, %struct.spinlock, %struct.bkey, %struct.bkey, %struct.rb_root, %struct.anon.90 }
%struct.rb_root = type { ptr }
%struct.anon.90 = type { ptr, [500 x %struct.keybuf_key] }
%struct.keybuf_key = type { %struct.rb_node, %union.anon.91, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.91 = type { [8 x i64] }
%union.anon.96 = type { [8 x i64] }
%struct.closure = type { %union.anon.75, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon.75 = type { %struct.work_struct }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.97, %union.anon.98, [2 x %struct.journal_write], ptr }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.anon.97 = type { i32, i32, i32, i32, ptr }
%union.anon.98 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.uuid_entry = type { %union.anon.94 }
%union.anon.94 = type { %struct.anon.95, [56 x i8] }
%struct.anon.95 = type { [16 x i8], [32 x i8], i32, i32, i32, i32, i64 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.kobj_uevent_env = type { [3 x ptr], [64 x ptr], i32, [2048 x i8], i32 }
%struct.bset_stats_op = type { %struct.btree_op, i32, %struct.bset_stats }
%struct.btree_op = type { %struct.wait_queue_entry, i16, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bset_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.btree_iter = type { i32, i32, ptr, [4 x %struct.btree_iter_set] }
%struct.btree_iter_set = type { ptr, ptr }
%struct.cache = type { ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.kobject, ptr, ptr, %struct.closure, ptr, ptr, ptr, [4 x %struct.anon.87], %struct.anon.88, i32, ptr, %struct.anon.89, i32, i8, %struct.journal_device, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_sb = type { i64, i64, [16 x i8], [16 x i8], %union.anon.77, [32 x i8], i64, i64, i64, i64, i64, %union.anon.78, i32, i16, %union.anon.81, [256 x i64] }
%union.anon.77 = type { i64, [8 x i8] }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i64, i16, i16, i16, i32 }
%union.anon.81 = type { i16 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.87 = type { i32, i32, i32, i32, ptr }
%struct.anon.88 = type { i32, i32, i32, i32, ptr }
%struct.anon.89 = type { i32, i32, ptr }
%struct.journal_device = type { [256 x i64], i32, i32, i32, %struct.atomic_t, %struct.work_struct, %struct.bio, %struct.bio_vec, %struct.bio, [8 x %struct.bio_vec] }
%struct.btree = type { %struct.hlist_node, %union.anon.92, i32, %struct.rw_semaphore, ptr, ptr, %struct.mutex, i32, i16, i8, %struct.btree_keys, %struct.closure, %struct.semaphore, %struct.list_head, %struct.delayed_work, [2 x %struct.btree_write], ptr }
%union.anon.92 = type { [8 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btree_keys = type { ptr, i8, i8, i8, ptr, [4 x %struct.bset_tree] }
%struct.bset_tree = type { i32, i32, %struct.bkey, ptr, ptr, ptr }
%struct.btree_write = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.bucket = type { %struct.atomic_t, i16, i8, i8, i16 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.btree_keys_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@.compoundliteral = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @bch_cached_dev_show, ptr @bch_cached_dev_store }, [24 x i8] zeroinitializer }, align 32
@bch_cached_dev_files = internal global { [36 x ptr], [48 x i8] } { [36 x ptr] [ptr @sysfs_attach, ptr @sysfs_detach, ptr @sysfs_stop, ptr @sysfs_cache_mode, ptr @sysfs_readahead_cache_policy, ptr @sysfs_stop_when_cache_set_failed, ptr @sysfs_writeback_metadata, ptr @sysfs_writeback_running, ptr @sysfs_writeback_delay, ptr @sysfs_writeback_percent, ptr @sysfs_writeback_rate, ptr @sysfs_writeback_consider_fragment, ptr @sysfs_writeback_rate_update_seconds, ptr @sysfs_writeback_rate_i_term_inverse, ptr @sysfs_writeback_rate_p_term_inverse, ptr @sysfs_writeback_rate_fp_term_low, ptr @sysfs_writeback_rate_fp_term_mid, ptr @sysfs_writeback_rate_fp_term_high, ptr @sysfs_writeback_rate_minimum, ptr @sysfs_writeback_rate_debug, ptr @sysfs_io_errors, ptr @sysfs_io_error_limit, ptr @sysfs_io_disable, ptr @sysfs_dirty_data, ptr @sysfs_stripe_size, ptr @sysfs_partial_stripes_expensive, ptr @sysfs_sequential_cutoff, ptr @sysfs_clear_stats, ptr @sysfs_running, ptr @sysfs_state, ptr @sysfs_label, ptr @sysfs_verify, ptr @sysfs_bypass_torture_test, ptr @sysfs_backing_dev_name, ptr @sysfs_backing_dev_uuid, ptr null], [48 x i8] zeroinitializer }, align 32
@bch_cached_dev_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @bch_cached_dev_release, ptr @.compoundliteral, ptr @bch_cached_dev_files, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @bch_flash_dev_show, ptr @bch_flash_dev_store }, [24 x i8] zeroinitializer }, align 32
@bch_flash_dev_files = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sysfs_unregister, ptr @sysfs_label, ptr @sysfs_size, ptr null], [16 x i8] zeroinitializer }, align 32
@bch_flash_dev_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @bch_flash_dev_release, ptr @.compoundliteral.1, ptr @bch_flash_dev_files, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @bch_cache_set_show, ptr @bch_cache_set_store }, [24 x i8] zeroinitializer }, align 32
@bch_cache_set_files = internal global { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @sysfs_unregister, ptr @sysfs_stop, ptr @sysfs_synchronous, ptr @sysfs_journal_delay_ms, ptr @sysfs_flash_vol_create, ptr @sysfs_bucket_size, ptr @sysfs_block_size, ptr @sysfs_tree_depth, ptr @sysfs_root_usage_percent, ptr @sysfs_btree_cache_size, ptr @sysfs_cache_available_percent, ptr @sysfs_average_key_size, ptr @sysfs_errors, ptr @sysfs_io_error_limit, ptr @sysfs_io_error_halflife, ptr @sysfs_congested, ptr @sysfs_congested_read_threshold_us, ptr @sysfs_congested_write_threshold_us, ptr @sysfs_clear_stats, ptr null], [48 x i8] zeroinitializer }, align 32
@bch_cache_set_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @bch_cache_set_release, ptr @.compoundliteral.2, ptr @bch_cache_set_files, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @bch_cache_set_internal_show, ptr @bch_cache_set_internal_store }, [24 x i8] zeroinitializer }, align 32
@bch_cache_set_internal_files = internal global { [44 x ptr], [48 x i8] } { [44 x ptr] [ptr @sysfs_active_journal_entries, ptr @sysfs_btree_gc_average_frequency_sec, ptr @sysfs_btree_gc_average_duration_ms, ptr @sysfs_btree_gc_max_duration_ms, ptr @sysfs_btree_gc_last_sec, ptr @sysfs_btree_split_average_frequency_sec, ptr @sysfs_btree_split_average_duration_us, ptr @sysfs_btree_split_max_duration_us, ptr @sysfs_btree_split_last_sec, ptr @sysfs_btree_sort_average_frequency_ms, ptr @sysfs_btree_sort_average_duration_us, ptr @sysfs_btree_sort_max_duration_us, ptr @sysfs_btree_sort_last_ms, ptr @sysfs_btree_read_average_frequency_ms, ptr @sysfs_btree_read_average_duration_us, ptr @sysfs_btree_read_max_duration_us, ptr @sysfs_btree_read_last_ms, ptr @sysfs_btree_nodes, ptr @sysfs_btree_used_percent, ptr @sysfs_btree_cache_max_chain, ptr @sysfs_bset_tree_stats, ptr @sysfs_cache_read_races, ptr @sysfs_reclaim, ptr @sysfs_reclaimed_journal_buckets, ptr @sysfs_flush_write, ptr @sysfs_writeback_keys_done, ptr @sysfs_writeback_keys_failed, ptr @sysfs_trigger_gc, ptr @sysfs_prune_cache, ptr @sysfs_verify, ptr @sysfs_key_merging_disabled, ptr @sysfs_expensive_debug_checks, ptr @sysfs_gc_always_rewrite, ptr @sysfs_btree_shrinker_disabled, ptr @sysfs_copy_gc_enabled, ptr @sysfs_idle_max_writeback_rate, ptr @sysfs_gc_after_writeback, ptr @sysfs_io_disable, ptr @sysfs_cutoff_writeback, ptr @sysfs_cutoff_writeback_sync, ptr @sysfs_feature_compat, ptr @sysfs_feature_ro_compat, ptr @sysfs_feature_incompat, ptr null], [48 x i8] zeroinitializer }, align 32
@bch_cache_set_internal_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @bch_cache_set_internal_release, ptr @.compoundliteral.3, ptr @bch_cache_set_internal_files, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @bch_cache_show, ptr @bch_cache_store }, [24 x i8] zeroinitializer }, align 32
@bch_cache_files = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @sysfs_bucket_size, ptr @sysfs_block_size, ptr @sysfs_nbuckets, ptr @sysfs_priority_stats, ptr @sysfs_discard, ptr @sysfs_written, ptr @sysfs_btree_written, ptr @sysfs_metadata_written, ptr @sysfs_io_errors, ptr @sysfs_clear_stats, ptr @sysfs_cache_replacement_policy, ptr null], [48 x i8] zeroinitializer }, align 32
@bch_cache_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @bch_cache_release, ptr @.compoundliteral.4, ptr @bch_cache_files, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bch_register_lock = external dso_local global %struct.mutex, align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no cache\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clean\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dirty\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inconsistent\00", [19 x i8] zeroinitializer }, align 32
@__const.__bch_cached_dev_show.states = private unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@sysfs_cache_mode = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@bch_cache_modes = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr null], [44 x i8] zeroinitializer }, align 32
@sysfs_readahead_cache_policy = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@bch_reada_cache_policies = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.23, ptr @.str.24, ptr null], [20 x i8] zeroinitializer }, align 32
@sysfs_stop_when_cache_set_failed = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@bch_stop_on_failure_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.26, ptr @.str.27, ptr null], [20 x i8] zeroinitializer }, align 32
@sysfs_data_csum = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@sysfs_verify = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_bypass_torture_test = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_metadata = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_running = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_consider_fragment = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_delay = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@sysfs_writeback_percent = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_rate = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_io_errors = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_io_error_limit = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_io_disable = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_rate_update_seconds = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_rate_i_term_inverse = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_rate_p_term_inverse = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_rate_fp_term_low = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_rate_fp_term_mid = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_rate_fp_term_high = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_rate_minimum = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_rate_debug = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"rate:\09\09%s/sec\0Adirty:\09\09%s\0Atarget:\09\09%s\0Aproportional:\09%s\0Aintegral:\09%s\0Achange:\09\09%s/sec\0Anext io:\09%llims\0A\00", [60 x i8] zeroinitializer }, align 32
@sysfs_dirty_data = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_stripe_size = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_partial_stripes_expensive = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_sequential_cutoff = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_running = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_state = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@sysfs_label = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_backing_dev_name = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pg\00", [28 x i8] zeroinitializer }, align 32
@sysfs_backing_dev_uuid = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pU\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache_mode\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"writethrough\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeback\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"writearound\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"readahead_cache_policy\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"meta-only\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stop_when_cache_set_failed\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"always\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data_csum\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"verify\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bypass_torture_test\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"writeback_metadata\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"writeback_running\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"writeback_consider_fragment\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"writeback_delay\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"writeback_percent\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"writeback_rate\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"io_errors\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"io_error_limit\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"io_disable\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"writeback_rate_update_seconds\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"writeback_rate_i_term_inverse\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"writeback_rate_p_term_inverse\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"writeback_rate_fp_term_low\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"writeback_rate_fp_term_mid\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"writeback_rate_fp_term_high\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"writeback_rate_minimum\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"writeback_rate_debug\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dirty_data\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stripe_size\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"partial_stripes_expensive\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sequential_cutoff\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"backing_dev_name\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"backing_dev_uuid\00", [47 x i8] zeroinitializer }, align 32
@bcache_is_reboot = external dso_local local_unnamed_addr global i8, align 1
@bch_cached_dev_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.59, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013bcache: %s() %s: failed to run non-existent writeback thread\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bch_cached_dev_store\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/md/bcache/sysfs.c\00", [38 x i8] zeroinitializer }, align 32
@bch_cached_dev_store._entry_ptr = internal global ptr @bch_cached_dev_store._entry, section ".printk_index", align 4
@bch_cutoff_writeback = external dso_local local_unnamed_addr global i32, align 4
@sysfs_clear_stats = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.65, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DRIVER=bcache\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CACHED_UUID=%pU\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CACHED_LABEL=%s\00", [16 x i8] zeroinitializer }, align 32
@sysfs_attach = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.66, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@bch_cache_sets = external dso_local global %struct.list_head, align 4
@__cached_dev_store._entry = internal constant %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.59, i32 444, ptr null, ptr null }, align 1
@.str.63 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013bcache: %s() Can't attach %s: cache set not found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__cached_dev_store\00", [45 x i8] zeroinitializer }, align 32
@__cached_dev_store._entry_ptr = internal global ptr @__cached_dev_store._entry, section ".printk_index", align 4
@sysfs_detach = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.67, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_stop = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.68, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clear_stats\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"attach\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"detach\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sysfs_size = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@sysfs_unregister = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.70, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unregister\00", [21 x i8] zeroinitializer }, align 32
@sysfs_synchronous = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@sysfs_journal_delay_ms = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_bucket_size = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_block_size = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_tree_depth = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_root_usage_percent = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_cache_size = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_cache_max_chain = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_cache_available_percent = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_gc_average_frequency_sec = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_gc_average_duration_ms = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_gc_max_duration_ms = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_gc_last_sec = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lli\0A\00", [26 x i8] zeroinitializer }, align 32
@sysfs_btree_split_average_frequency_sec = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_split_average_duration_us = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_split_max_duration_us = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_split_last_sec = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_sort_average_frequency_ms = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_sort_average_duration_us = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_sort_max_duration_us = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_sort_last_ms = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_read_average_frequency_ms = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_read_average_duration_us = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_read_max_duration_us = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_read_last_ms = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_used_percent = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_nodes = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_average_key_size = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_cache_read_races = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%li\0A\00", [27 x i8] zeroinitializer }, align 32
@sysfs_reclaim = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_reclaimed_journal_buckets = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_flush_write = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_keys_done = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_writeback_keys_failed = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_errors = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@error_actions = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.70, ptr @.str.109, ptr null], [20 x i8] zeroinitializer }, align 32
@sysfs_io_error_halflife = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.110, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_congested = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_congested_read_threshold_us = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_congested_write_threshold_us = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.113, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_cutoff_writeback = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_cutoff_writeback_sync = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@bch_cutoff_writeback_sync = external dso_local local_unnamed_addr global i32, align 4
@sysfs_active_journal_entries = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_key_merging_disabled = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.117, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_expensive_debug_checks = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_gc_always_rewrite = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_shrinker_disabled = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_copy_gc_enabled = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_idle_max_writeback_rate = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_gc_after_writeback = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_bset_tree_stats = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_feature_compat = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_feature_ro_compat = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_feature_incompat = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"synchronous\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"journal_delay_ms\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bucket_size\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"block_size\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tree_depth\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"root_usage_percent\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btree_cache_size\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btree_cache_max_chain\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cache_available_percent\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"btree_gc_average_frequency_sec\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"btree_gc_average_duration_ms\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"btree_gc_max_duration_ms\00", [39 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btree_gc_last_sec\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"btree_split_average_frequency_sec\00", [62 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"btree_split_average_duration_us\00", [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"btree_split_max_duration_us\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"btree_split_last_sec\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"btree_sort_average_frequency_ms\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"btree_sort_average_duration_us\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"btree_sort_max_duration_us\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btree_sort_last_ms\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"btree_read_average_frequency_ms\00", [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"btree_read_average_duration_us\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"btree_read_max_duration_us\00", [37 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btree_read_last_ms\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btree_used_percent\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"btree_nodes\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"average_key_size\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cache_read_races\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reclaim\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reclaimed_journal_buckets\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flush_write\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"writeback_keys_done\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"writeback_keys_failed\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"errors\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"io_error_halflife\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"congested\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"congested_read_threshold_us\00", [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"congested_write_threshold_us\00", [35 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cutoff_writeback\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cutoff_writeback_sync\00", [42 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_journal_entries\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"key_merging_disabled\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"expensive_debug_checks\00", [41 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gc_always_rewrite\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"btree_shrinker_disabled\00", [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"copy_gc_enabled\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"idle_max_writeback_rate\00", [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gc_after_writeback\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bset_tree_stats\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"btree nodes:\09\09%zu\0Awritten sets:\09\09%zu\0Aunwritten sets:\09\09%zu\0Awritten key bytes:\09%zu\0Aunwritten key bytes:\09%zu\0Afloats:\09\09\09%zu\0Afailed:\09\09\09%zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"feature_compat\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"feature_ro_compat\00", [46 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"feature_incompat\00", [47 x i8] zeroinitializer }, align 32
@sysfs_flash_vol_create = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.134, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_trigger_gc = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.135, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_prune_cache = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.136, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__bch_cache_set_store._entry = internal constant %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.59, i32 905, ptr null, ptr null }, align 1
@.str.129 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014bcache: %s() CACHE_SET_IO_DISABLE already set\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__bch_cache_set_store\00", [42 x i8] zeroinitializer }, align 32
@__bch_cache_set_store._entry_ptr = internal global ptr @__bch_cache_set_store._entry, section ".printk_index", align 4
@__bch_cache_set_store._entry.131 = internal constant %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.59, i32 909, ptr null, ptr null }, align 1
@.str.132 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014bcache: %s() CACHE_SET_IO_DISABLE already cleared\0A\00", [43 x i8] zeroinitializer }, align 32
@__bch_cache_set_store._entry_ptr.133 = internal global ptr @__bch_cache_set_store._entry.131, section ".printk_index", align 4
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flash_vol_create\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"trigger_gc\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"prune_cache\00", [20 x i8] zeroinitializer }, align 32
@sysfs_nbuckets = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_discard = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.141, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_written = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.142, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_btree_written = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.143, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_metadata_written = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.144, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_cache_replacement_policy = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.145, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@cache_replacement_policies = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr null], [16 x i8] zeroinitializer }, align 32
@sysfs_priority_stats = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.149, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Unused:\09\09%zu%%\0AClean:\09\09%zu%%\0ADirty:\09\09%zu%%\0AMetadata:\09%zu%%\0AAverage:\09%llu\0ASectors per Q:\09%zu\0AQuantiles:\09[\00", [55 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nbuckets\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"written\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"btree_written\00", [18 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"metadata_written\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cache_replacement_policy\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lru\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fifo\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"random\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"priority_stats\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"bch_cached_dev_files\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 503, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"bch_cached_dev_ktype\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 546, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"bch_flash_dev_files\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 603, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [20 x i8] c"bch_flash_dev_ktype\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 612, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c"bch_cache_set_files\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 958, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"bch_cache_set_ktype\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 983, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [29 x i8] c"bch_cache_set_internal_files\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 985, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant [29 x i8] c"bch_cache_set_internal_ktype\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 1025, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [16 x i8] c"bch_cache_files\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 1185, i32 26 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"bch_cache_ktype\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 1199, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 175, i32 27 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 175, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 175, i32 48 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 175, i32 57 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"sysfs_cache_mode\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [16 x i8] c"bch_cache_modes\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 23, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant [29 x i8] c"sysfs_readahead_cache_policy\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [25 x i8] c"bch_reada_cache_policies\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 31, i32 27 }
@___asan_gen_.209 = private unnamed_addr constant [33 x i8] c"sysfs_stop_when_cache_set_failed\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [26 x i8] c"bch_stop_on_failure_modes\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 38, i32 27 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"sysfs_data_csum\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 196, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [13 x i8] c"sysfs_verify\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [26 x i8] c"sysfs_bypass_torture_test\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [25 x i8] c"sysfs_writeback_metadata\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [24 x i8] c"sysfs_writeback_running\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [34 x i8] c"sysfs_writeback_consider_fragment\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"sysfs_writeback_delay\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 202, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [24 x i8] c"sysfs_writeback_percent\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [21 x i8] c"sysfs_writeback_rate\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [16 x i8] c"sysfs_io_errors\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [21 x i8] c"sysfs_io_error_limit\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"sysfs_io_disable\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [36 x i8] c"sysfs_writeback_rate_update_seconds\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [36 x i8] c"sysfs_writeback_rate_i_term_inverse\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [36 x i8] c"sysfs_writeback_rate_p_term_inverse\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [33 x i8] c"sysfs_writeback_rate_fp_term_low\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [33 x i8] c"sysfs_writeback_rate_fp_term_mid\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [34 x i8] c"sysfs_writeback_rate_fp_term_high\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [29 x i8] c"sysfs_writeback_rate_minimum\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [27 x i8] c"sysfs_writeback_rate_debug\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 244, i32 11 }
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"sysfs_dirty_data\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [18 x i8] c"sysfs_stripe_size\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [32 x i8] c"sysfs_partial_stripes_expensive\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [24 x i8] c"sysfs_sequential_cutoff\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [14 x i8] c"sysfs_running\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [12 x i8] c"sysfs_state\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 264, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [12 x i8] c"sysfs_label\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [23 x i8] c"sysfs_backing_dev_name\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 274, i32 36 }
@___asan_gen_.314 = private unnamed_addr constant [23 x i8] c"sysfs_backing_dev_uuid\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 281, i32 23 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 112, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 165, i32 21 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 165, i32 31 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 24, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 25, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 26, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 27, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 113, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 32, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 33, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 114, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 39, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 40, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 111, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 143, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 144, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 115, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 116, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 120, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 118, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 117, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 119, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 103, i32 1 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 141, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 136, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 122, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 123, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 124, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 125, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 126, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 127, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 128, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 129, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 90, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 131, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 132, i32 1 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 110, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 138, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 96, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 139, i32 1 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 79, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 80, i32 1 }
@___asan_gen_.446 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 478, i32 5 }
@___asan_gen_.458 = private unnamed_addr constant [18 x i8] c"sysfs_clear_stats\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 422, i32 23 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 423, i32 23 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 424, i32 23 }
@___asan_gen_.470 = private unnamed_addr constant [13 x i8] c"sysfs_attach\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 444, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant [13 x i8] c"sysfs_detach\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [11 x i8] c"sysfs_stop\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 61, i32 1 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 57, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 58, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 60, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant [11 x i8] c"sysfs_size\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 153, i32 1 }
@___asan_gen_.503 = private unnamed_addr constant [17 x i8] c"sysfs_unregister\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 59, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant [18 x i8] c"sysfs_synchronous\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 733, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [23 x i8] c"sysfs_journal_delay_ms\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [18 x i8] c"sysfs_bucket_size\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [17 x i8] c"sysfs_block_size\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [17 x i8] c"sysfs_tree_depth\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [25 x i8] c"sysfs_root_usage_percent\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [23 x i8] c"sysfs_btree_cache_size\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [28 x i8] c"sysfs_btree_cache_max_chain\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [30 x i8] c"sysfs_cache_available_percent\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [37 x i8] c"sysfs_btree_gc_average_frequency_sec\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [35 x i8] c"sysfs_btree_gc_average_duration_ms\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [31 x i8] c"sysfs_btree_gc_max_duration_ms\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [24 x i8] c"sysfs_btree_gc_last_sec\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 744, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [40 x i8] c"sysfs_btree_split_average_frequency_sec\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [38 x i8] c"sysfs_btree_split_average_duration_us\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [34 x i8] c"sysfs_btree_split_max_duration_us\00", align 1
@___asan_gen_.563 = private unnamed_addr constant [27 x i8] c"sysfs_btree_split_last_sec\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [38 x i8] c"sysfs_btree_sort_average_frequency_ms\00", align 1
@___asan_gen_.569 = private unnamed_addr constant [37 x i8] c"sysfs_btree_sort_average_duration_us\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [33 x i8] c"sysfs_btree_sort_max_duration_us\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [25 x i8] c"sysfs_btree_sort_last_ms\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [38 x i8] c"sysfs_btree_read_average_frequency_ms\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [37 x i8] c"sysfs_btree_read_average_duration_us\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [33 x i8] c"sysfs_btree_read_max_duration_us\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [25 x i8] c"sysfs_btree_read_last_ms\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [25 x i8] c"sysfs_btree_used_percent\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [18 x i8] c"sysfs_btree_nodes\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [23 x i8] c"sysfs_average_key_size\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [23 x i8] c"sysfs_cache_read_races\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 753, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [14 x i8] c"sysfs_reclaim\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [32 x i8] c"sysfs_reclaimed_journal_buckets\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [18 x i8] c"sysfs_flush_write\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [26 x i8] c"sysfs_writeback_keys_done\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [28 x i8] c"sysfs_writeback_keys_failed\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [13 x i8] c"sysfs_errors\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [14 x i8] c"error_actions\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 51, i32 27 }
@___asan_gen_.626 = private unnamed_addr constant [24 x i8] c"sysfs_io_error_halflife\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [16 x i8] c"sysfs_congested\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [34 x i8] c"sysfs_congested_read_threshold_us\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [35 x i8] c"sysfs_congested_write_threshold_us\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [23 x i8] c"sysfs_cutoff_writeback\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [28 x i8] c"sysfs_cutoff_writeback_sync\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [29 x i8] c"sysfs_active_journal_entries\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [27 x i8] c"sysfs_key_merging_disabled\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [29 x i8] c"sysfs_expensive_debug_checks\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [24 x i8] c"sysfs_gc_always_rewrite\00", align 1
@___asan_gen_.656 = private unnamed_addr constant [30 x i8] c"sysfs_btree_shrinker_disabled\00", align 1
@___asan_gen_.659 = private unnamed_addr constant [22 x i8] c"sysfs_copy_gc_enabled\00", align 1
@___asan_gen_.662 = private unnamed_addr constant [30 x i8] c"sysfs_idle_max_writeback_rate\00", align 1
@___asan_gen_.665 = private unnamed_addr constant [25 x i8] c"sysfs_gc_after_writeback\00", align 1
@___asan_gen_.668 = private unnamed_addr constant [22 x i8] c"sysfs_bset_tree_stats\00", align 1
@___asan_gen_.671 = private unnamed_addr constant [21 x i8] c"sysfs_feature_compat\00", align 1
@___asan_gen_.674 = private unnamed_addr constant [24 x i8] c"sysfs_feature_ro_compat\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [23 x i8] c"sysfs_feature_incompat\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 134, i32 1 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 135, i32 1 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 66, i32 1 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 67, i32 1 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 69, i32 1 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 70, i32 1 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 72, i32 1 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 73, i32 1 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 74, i32 1 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 82, i32 1 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 83, i32 1 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 84, i32 1 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 85, i32 1 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 88, i32 1 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 87, i32 1 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 89, i32 1 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 97, i32 1 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 98, i32 1 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 99, i32 1 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 100, i32 1 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 101, i32 1 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 102, i32 1 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 140, i32 1 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 53, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 142, i32 1 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 104, i32 1 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 107, i32 1 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 108, i32 1 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 105, i32 1 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 106, i32 1 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 78, i32 1 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 145, i32 1 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 147, i32 1 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 146, i32 1 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 149, i32 1 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 150, i32 1 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 151, i32 1 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 152, i32 1 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 91, i32 1 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 643, i32 4 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 92, i32 1 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 93, i32 1 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 94, i32 1 }
@___asan_gen_.845 = private unnamed_addr constant [23 x i8] c"sysfs_flash_vol_create\00", align 1
@___asan_gen_.848 = private unnamed_addr constant [17 x i8] c"sysfs_trigger_gc\00", align 1
@___asan_gen_.851 = private unnamed_addr constant [18 x i8] c"sysfs_prune_cache\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 905, i32 5 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 909, i32 5 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 64, i32 1 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 62, i32 1 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 63, i32 1 }
@___asan_gen_.872 = private unnamed_addr constant [15 x i8] c"sysfs_nbuckets\00", align 1
@___asan_gen_.875 = private unnamed_addr constant [14 x i8] c"sysfs_discard\00", align 1
@___asan_gen_.878 = private unnamed_addr constant [14 x i8] c"sysfs_written\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [20 x i8] c"sysfs_btree_written\00", align 1
@___asan_gen_.884 = private unnamed_addr constant [23 x i8] c"sysfs_metadata_written\00", align 1
@___asan_gen_.887 = private unnamed_addr constant [31 x i8] c"sysfs_cache_replacement_policy\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [27 x i8] c"cache_replacement_policies\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 44, i32 27 }
@___asan_gen_.893 = private unnamed_addr constant [21 x i8] c"sysfs_priority_stats\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 1111, i32 5 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 1126, i32 7 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 1129, i32 48 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 68, i32 1 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 137, i32 1 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 75, i32 1 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 76, i32 1 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 77, i32 1 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 148, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 45, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 46, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 47, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.933 = private constant [29 x i8] c"../drivers/md/bcache/sysfs.c\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.933, i32 71, i32 1 }
@llvm.compiler.used = appending global [272 x ptr] [ptr @__bch_cache_set_store._entry, ptr @__bch_cache_set_store._entry.131, ptr @__bch_cache_set_store._entry_ptr, ptr @__bch_cache_set_store._entry_ptr.133, ptr @__cached_dev_store._entry, ptr @__cached_dev_store._entry_ptr, ptr @bch_cached_dev_store._entry, ptr @bch_cached_dev_store._entry_ptr, ptr @.compoundliteral, ptr @bch_cached_dev_files, ptr @bch_cached_dev_ktype, ptr @.compoundliteral.1, ptr @bch_flash_dev_files, ptr @bch_flash_dev_ktype, ptr @.compoundliteral.2, ptr @bch_cache_set_files, ptr @bch_cache_set_ktype, ptr @.compoundliteral.3, ptr @bch_cache_set_internal_files, ptr @bch_cache_set_internal_ktype, ptr @.compoundliteral.4, ptr @bch_cache_files, ptr @bch_cache_ktype, ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sysfs_cache_mode, ptr @bch_cache_modes, ptr @sysfs_readahead_cache_policy, ptr @bch_reada_cache_policies, ptr @sysfs_stop_when_cache_set_failed, ptr @bch_stop_on_failure_modes, ptr @sysfs_data_csum, ptr @.str.8, ptr @sysfs_verify, ptr @sysfs_bypass_torture_test, ptr @sysfs_writeback_metadata, ptr @sysfs_writeback_running, ptr @sysfs_writeback_consider_fragment, ptr @sysfs_writeback_delay, ptr @.str.9, ptr @sysfs_writeback_percent, ptr @sysfs_writeback_rate, ptr @sysfs_io_errors, ptr @sysfs_io_error_limit, ptr @sysfs_io_disable, ptr @sysfs_writeback_rate_update_seconds, ptr @sysfs_writeback_rate_i_term_inverse, ptr @sysfs_writeback_rate_p_term_inverse, ptr @sysfs_writeback_rate_fp_term_low, ptr @sysfs_writeback_rate_fp_term_mid, ptr @sysfs_writeback_rate_fp_term_high, ptr @sysfs_writeback_rate_minimum, ptr @sysfs_writeback_rate_debug, ptr @.str.11, ptr @sysfs_dirty_data, ptr @sysfs_stripe_size, ptr @sysfs_partial_stripes_expensive, ptr @sysfs_sequential_cutoff, ptr @sysfs_running, ptr @sysfs_state, ptr @.str.12, ptr @sysfs_label, ptr @sysfs_backing_dev_name, ptr @.str.13, ptr @sysfs_backing_dev_uuid, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @sysfs_clear_stats, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @sysfs_attach, ptr @.str.63, ptr @.str.64, ptr @sysfs_detach, ptr @sysfs_stop, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @sysfs_size, ptr @.str.69, ptr @sysfs_unregister, ptr @.str.70, ptr @sysfs_synchronous, ptr @.str.71, ptr @sysfs_journal_delay_ms, ptr @sysfs_bucket_size, ptr @sysfs_block_size, ptr @sysfs_tree_depth, ptr @sysfs_root_usage_percent, ptr @sysfs_btree_cache_size, ptr @sysfs_btree_cache_max_chain, ptr @sysfs_cache_available_percent, ptr @sysfs_btree_gc_average_frequency_sec, ptr @sysfs_btree_gc_average_duration_ms, ptr @sysfs_btree_gc_max_duration_ms, ptr @sysfs_btree_gc_last_sec, ptr @.str.72, ptr @sysfs_btree_split_average_frequency_sec, ptr @sysfs_btree_split_average_duration_us, ptr @sysfs_btree_split_max_duration_us, ptr @sysfs_btree_split_last_sec, ptr @sysfs_btree_sort_average_frequency_ms, ptr @sysfs_btree_sort_average_duration_us, ptr @sysfs_btree_sort_max_duration_us, ptr @sysfs_btree_sort_last_ms, ptr @sysfs_btree_read_average_frequency_ms, ptr @sysfs_btree_read_average_duration_us, ptr @sysfs_btree_read_max_duration_us, ptr @sysfs_btree_read_last_ms, ptr @sysfs_btree_used_percent, ptr @sysfs_btree_nodes, ptr @sysfs_average_key_size, ptr @sysfs_cache_read_races, ptr @.str.73, ptr @sysfs_reclaim, ptr @sysfs_reclaimed_journal_buckets, ptr @sysfs_flush_write, ptr @sysfs_writeback_keys_done, ptr @sysfs_writeback_keys_failed, ptr @sysfs_errors, ptr @error_actions, ptr @sysfs_io_error_halflife, ptr @sysfs_congested, ptr @sysfs_congested_read_threshold_us, ptr @sysfs_congested_write_threshold_us, ptr @sysfs_cutoff_writeback, ptr @sysfs_cutoff_writeback_sync, ptr @sysfs_active_journal_entries, ptr @sysfs_key_merging_disabled, ptr @sysfs_expensive_debug_checks, ptr @sysfs_gc_always_rewrite, ptr @sysfs_btree_shrinker_disabled, ptr @sysfs_copy_gc_enabled, ptr @sysfs_idle_max_writeback_rate, ptr @sysfs_gc_after_writeback, ptr @sysfs_bset_tree_stats, ptr @sysfs_feature_compat, ptr @sysfs_feature_ro_compat, ptr @sysfs_feature_incompat, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @sysfs_flash_vol_create, ptr @sysfs_trigger_gc, ptr @sysfs_prune_cache, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @sysfs_nbuckets, ptr @sysfs_discard, ptr @sysfs_written, ptr @sysfs_btree_written, ptr @sysfs_metadata_written, ptr @sysfs_cache_replacement_policy, ptr @cache_replacement_policies, ptr @sysfs_priority_stats, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], section "llvm.metadata"
@0 = internal global [265 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_files to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_flash_dev_files to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_flash_dev_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_files to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_internal_files to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_set_internal_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_files to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cache_mode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_modes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_readahead_cache_policy to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_reada_cache_policies to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_stop_when_cache_set_failed to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_stop_on_failure_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_data_csum to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_verify to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_bypass_torture_test to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_metadata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_running to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_consider_fragment to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_delay to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_percent to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_rate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_io_errors to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_io_error_limit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_io_disable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_rate_update_seconds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_rate_i_term_inverse to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_rate_p_term_inverse to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_rate_fp_term_low to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_rate_fp_term_mid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_rate_fp_term_high to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_rate_minimum to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_rate_debug to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_dirty_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_stripe_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_partial_stripes_expensive to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_sequential_cutoff to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_running to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_state to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_label to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_backing_dev_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_backing_dev_uuid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cached_dev_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_clear_stats to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_attach to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_detach to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_stop to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_unregister to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_synchronous to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_journal_delay_ms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_bucket_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_block_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_tree_depth to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_root_usage_percent to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_cache_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_cache_max_chain to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cache_available_percent to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_gc_average_frequency_sec to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_gc_average_duration_ms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_gc_max_duration_ms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_gc_last_sec to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_split_average_frequency_sec to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_split_average_duration_us to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_split_max_duration_us to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_split_last_sec to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_sort_average_frequency_ms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_sort_average_duration_us to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_sort_max_duration_us to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_sort_last_ms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_read_average_frequency_ms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_read_average_duration_us to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_read_max_duration_us to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_read_last_ms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_used_percent to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_nodes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_average_key_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cache_read_races to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_reclaim to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_reclaimed_journal_buckets to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_flush_write to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_keys_done to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_writeback_keys_failed to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_errors to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_actions to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_io_error_halflife to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_congested to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_congested_read_threshold_us to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_congested_write_threshold_us to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cutoff_writeback to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cutoff_writeback_sync to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_active_journal_entries to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_key_merging_disabled to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_expensive_debug_checks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_gc_always_rewrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_shrinker_disabled to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_copy_gc_enabled to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_idle_max_writeback_rate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_gc_after_writeback to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_bset_tree_stats to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_feature_compat to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_feature_ro_compat to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_feature_incompat to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_flash_vol_create to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_trigger_gc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_prune_cache to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_nbuckets to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_discard to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_written to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_btree_written to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_metadata_written to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cache_replacement_policy to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_replacement_policies to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_priority_stats to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cached_dev_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_cached_dev_show(ptr noundef %kobj, ptr noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  %rate196.i = alloca [20 x i8], align 1
  %dirty.i = alloca [20 x i8], align 1
  %target.i = alloca [20 x i8], align 1
  %proportional.i = alloca [20 x i8], align 1
  %integral.i = alloca [20 x i8], align 1
  %change.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #12
  %writeback_running.i = getelementptr i8, ptr %kobj, i32 53224
  %0 = ptrtoint ptr %writeback_running.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %writeback_running.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 2
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %bf.cast.i = zext i8 %bf.clear.i to i32
  %cmp.i = icmp eq ptr %attr, @sysfs_cache_mode
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i.i = getelementptr i8, ptr %kobj, i32 896
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %flags.i.i, align 8
  %3 = trunc i64 %2 to i32
  %conv.i = and i32 %3, 15
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 4096
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %buf to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp.i.i = icmp eq i32 %conv.i, 0
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.16, ptr @.str.17
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %cond.i.i, ptr noundef nonnull @.str.18) #12
  %add.ptr2.i.i = getelementptr i8, ptr %buf, i32 %call.i.i
  %gepdiff539.i = sub i32 4096, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i)
  %cmp.i.1.i = icmp eq i32 %conv.i, 1
  %cond.i.1.i = select i1 %cmp.i.1.i, ptr @.str.16, ptr @.str.17
  %call.i.1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i.i, i32 noundef %gepdiff539.i, ptr noundef nonnull %cond.i.1.i, ptr noundef nonnull @.str.19) #12
  %add.ptr2.i.1.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %call.i.1.i
  %sub.ptr.rhs.cast.i.2.i = ptrtoint ptr %add.ptr2.i.1.i to i32
  %sub.ptr.sub.i.2.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i)
  %cmp.i.2.i = icmp eq i32 %conv.i, 2
  %cond.i.2.i = select i1 %cmp.i.2.i, ptr @.str.16, ptr @.str.17
  %call.i.2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i.1.i, i32 noundef %sub.ptr.sub.i.2.i, ptr noundef nonnull %cond.i.2.i, ptr noundef nonnull @.str.20) #12
  %add.ptr2.i.2.i = getelementptr i8, ptr %add.ptr2.i.1.i, i32 %call.i.2.i
  %sub.ptr.rhs.cast.i.3.i = ptrtoint ptr %add.ptr2.i.2.i to i32
  %sub.ptr.sub.i.3.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv.i)
  %cmp.i.3.i = icmp eq i32 %conv.i, 3
  %cond.i.3.i = select i1 %cmp.i.3.i, ptr @.str.16, ptr @.str.17
  %call.i.3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i.2.i, i32 noundef %sub.ptr.sub.i.3.i, ptr noundef nonnull %cond.i.3.i, ptr noundef nonnull @.str.21) #12
  %add.ptr2.i.3.i = getelementptr i8, ptr %add.ptr2.i.2.i, i32 %call.i.3.i
  %arrayidx3.i.i = getelementptr i8, ptr %add.ptr2.i.3.i, i32 -1
  %4 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %arrayidx3.i.i, align 1
  %sub.ptr.lhs.cast4.i.i = ptrtoint ptr %add.ptr2.i.3.i to i32
  %sub.ptr.sub6.i.i = sub i32 %sub.ptr.lhs.cast4.i.i, %sub.ptr.rhs.cast.i.i
  br label %__bch_cached_dev_show.exit

if.end.i:                                         ; preds = %entry
  %cmp2.i = icmp eq ptr %attr, @sysfs_readahead_cache_policy
  br i1 %cmp2.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %cache_readahead_policy.i = getelementptr i8, ptr %kobj, i32 3420
  %5 = ptrtoint ptr %cache_readahead_policy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cache_readahead_policy.i, align 4
  %sub.ptr.rhs.cast.i501.i = ptrtoint ptr %buf to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i503.i = icmp eq i32 %6, 0
  %cond.i504.i = select i1 %cmp.i503.i, ptr @.str.16, ptr @.str.17
  %call.i505.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %cond.i504.i, ptr noundef nonnull @.str.23) #12
  %add.ptr2.i506.i = getelementptr i8, ptr %buf, i32 %call.i505.i
  %gepdiff538.i = sub i32 4096, %call.i505.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i503.1.i = icmp eq i32 %6, 1
  %cond.i504.1.i = select i1 %cmp.i503.1.i, ptr @.str.16, ptr @.str.17
  %call.i505.1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i506.i, i32 noundef %gepdiff538.i, ptr noundef nonnull %cond.i504.1.i, ptr noundef nonnull @.str.24) #12
  %add.ptr2.i506.1.i = getelementptr i8, ptr %add.ptr2.i506.i, i32 %call.i505.1.i
  %arrayidx3.i511.i = getelementptr i8, ptr %add.ptr2.i506.1.i, i32 -1
  %7 = ptrtoint ptr %arrayidx3.i511.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %arrayidx3.i511.i, align 1
  %sub.ptr.lhs.cast4.i512.i = ptrtoint ptr %add.ptr2.i506.1.i to i32
  %sub.ptr.sub6.i514.i = sub i32 %sub.ptr.lhs.cast4.i512.i, %sub.ptr.rhs.cast.i501.i
  br label %__bch_cached_dev_show.exit

if.end6.i:                                        ; preds = %if.end.i
  %cmp7.i = icmp eq ptr %attr, @sysfs_stop_when_cache_set_failed
  br i1 %cmp7.i, label %if.then9.i, label %do.body.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %stop_when_cache_set_failed.i = getelementptr i8, ptr %kobj, i32 53296
  %8 = ptrtoint ptr %stop_when_cache_set_failed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stop_when_cache_set_failed.i, align 8
  %sub.ptr.rhs.cast.i520.i = ptrtoint ptr %buf to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i522.i = icmp eq i32 %9, 0
  %cond.i523.i = select i1 %cmp.i522.i, ptr @.str.16, ptr @.str.17
  %call.i524.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %cond.i523.i, ptr noundef nonnull @.str.26) #12
  %add.ptr2.i525.i = getelementptr i8, ptr %buf, i32 %call.i524.i
  %gepdiff.i = sub i32 4096, %call.i524.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i522.1.i = icmp eq i32 %9, 1
  %cond.i523.1.i = select i1 %cmp.i522.1.i, ptr @.str.16, ptr @.str.17
  %call.i524.1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i525.i, i32 noundef %gepdiff.i, ptr noundef nonnull %cond.i523.1.i, ptr noundef nonnull @.str.27) #12
  %add.ptr2.i525.1.i = getelementptr i8, ptr %add.ptr2.i525.i, i32 %call.i524.1.i
  %arrayidx3.i530.i = getelementptr i8, ptr %add.ptr2.i525.1.i, i32 -1
  %10 = ptrtoint ptr %arrayidx3.i530.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %arrayidx3.i530.i, align 1
  %sub.ptr.lhs.cast4.i531.i = ptrtoint ptr %add.ptr2.i525.1.i to i32
  %sub.ptr.sub6.i533.i = sub i32 %sub.ptr.lhs.cast4.i531.i, %sub.ptr.rhs.cast.i520.i
  br label %__bch_cached_dev_show.exit

do.body.i:                                        ; preds = %if.end6.i
  %cmp12.i = icmp eq ptr %attr, @sysfs_data_csum
  br i1 %cmp12.i, label %if.then14.i, label %do.body20.i

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %data_csum.i = getelementptr i8, ptr %kobj, i32 784
  %11 = ptrtoint ptr %data_csum.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load15.i = load i8, ptr %data_csum.i, align 8
  %bf.lshr16.i = lshr i8 %bf.load15.i, 7
  %bf.cast17.i = zext i8 %bf.lshr16.i to i32
  %call18.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast17.i) #12
  br label %__bch_cached_dev_show.exit

do.body20.i:                                      ; preds = %do.body.i
  %cmp21.i = icmp eq ptr %attr, @sysfs_verify
  br i1 %cmp21.i, label %if.then23.i, label %do.body32.i

if.then23.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr25.i = lshr i8 %bf.load.i, 6
  %bf.clear26.i = and i8 %bf.lshr25.i, 1
  %bf.cast27.i = zext i8 %bf.clear26.i to i32
  %call28.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast27.i) #12
  br label %__bch_cached_dev_show.exit

do.body32.i:                                      ; preds = %do.body20.i
  %cmp33.i = icmp eq ptr %attr, @sysfs_bypass_torture_test
  br i1 %cmp33.i, label %if.then35.i, label %do.body44.i

if.then35.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr37.i = lshr i8 %bf.load.i, 5
  %bf.clear38.i = and i8 %bf.lshr37.i, 1
  %bf.cast39.i = zext i8 %bf.clear38.i to i32
  %call40.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast39.i) #12
  br label %__bch_cached_dev_show.exit

do.body44.i:                                      ; preds = %do.body32.i
  %cmp45.i = icmp eq ptr %attr, @sysfs_writeback_metadata
  br i1 %cmp45.i, label %if.then47.i, label %do.body56.i

if.then47.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr49.i = lshr i8 %bf.load.i, 3
  %bf.clear50.i = and i8 %bf.lshr49.i, 1
  %bf.cast51.i = zext i8 %bf.clear50.i to i32
  %call52.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast51.i) #12
  br label %__bch_cached_dev_show.exit

do.body56.i:                                      ; preds = %do.body44.i
  %cmp57.i = icmp eq ptr %attr, @sysfs_writeback_running
  br i1 %cmp57.i, label %if.then59.i, label %do.body69.i

if.then59.i:                                      ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #14
  %call65.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast.i) #12
  br label %__bch_cached_dev_show.exit

do.body69.i:                                      ; preds = %do.body56.i
  %cmp70.i = icmp eq ptr %attr, @sysfs_writeback_consider_fragment
  br i1 %cmp70.i, label %if.then72.i, label %do.body81.i

if.then72.i:                                      ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr74.i = lshr i8 %bf.load.i, 1
  %bf.clear75.i = and i8 %bf.lshr74.i, 1
  %bf.cast76.i = zext i8 %bf.clear75.i to i32
  %call77.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast76.i) #12
  br label %__bch_cached_dev_show.exit

do.body81.i:                                      ; preds = %do.body69.i
  %cmp82.i = icmp eq ptr %attr, @sysfs_writeback_delay
  br i1 %cmp82.i, label %if.then84.i, label %do.body89.i

if.then84.i:                                      ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_delay.i = getelementptr i8, ptr %kobj, i32 53228
  %12 = ptrtoint ptr %writeback_delay.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writeback_delay.i, align 4
  %call85.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %13) #12
  br label %__bch_cached_dev_show.exit

do.body89.i:                                      ; preds = %do.body81.i
  %cmp90.i = icmp eq ptr %attr, @sysfs_writeback_percent
  br i1 %cmp90.i, label %if.then92.i, label %do.body98.i

if.then92.i:                                      ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_percent.i = getelementptr i8, ptr %kobj, i32 53225
  %14 = ptrtoint ptr %writeback_percent.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %writeback_percent.i, align 1
  %conv93.i = zext i8 %15 to i32
  %call94.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv93.i) #12
  br label %__bch_cached_dev_show.exit

do.body98.i:                                      ; preds = %do.body89.i
  %cmp99.i = icmp eq ptr %attr, @sysfs_writeback_rate
  br i1 %cmp99.i, label %if.then101.i, label %do.body109.i

if.then101.i:                                     ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.not.i, label %if.then101.i.cond.end.i_crit_edge, label %cond.true.i

if.then101.i.cond.end.i_crit_edge:                ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #14
  %rate.i = getelementptr i8, ptr %kobj, i32 3432
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rate.i, i32 noundef 4) #12
  %16 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %rate.i, align 4
  %shl.i = shl i32 %17, 9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then101.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %shl.i, %cond.true.i ], [ 0, %if.then101.i.cond.end.i_crit_edge ]
  %conv103.i = sext i32 %cond.i to i64
  %call104.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %conv103.i) #12
  %strlen481.i = tail call i32 @strlen(ptr %buf) #15
  %endptr482.i = getelementptr i8, ptr %buf, i32 %strlen481.i
  %18 = ptrtoint ptr %endptr482.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 2560, ptr %endptr482.i, align 1
  %add.i = add i32 %call104.i, 1
  br label %__bch_cached_dev_show.exit

do.body109.i:                                     ; preds = %do.body98.i
  %cmp110.i = icmp eq ptr %attr, @sysfs_io_errors
  br i1 %cmp110.i, label %if.then112.i, label %do.body118.i

if.then112.i:                                     ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #14
  %io_errors.i = getelementptr i8, ptr %kobj, i32 53300
  %call.i.i494.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %io_errors.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %io_errors.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %io_errors.i, align 4
  %call114.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %20) #12
  br label %__bch_cached_dev_show.exit

do.body118.i:                                     ; preds = %do.body109.i
  %cmp119.i = icmp eq ptr %attr, @sysfs_io_error_limit
  br i1 %cmp119.i, label %if.then121.i, label %do.body126.i

if.then121.i:                                     ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #14
  %error_limit.i = getelementptr i8, ptr %kobj, i32 53304
  %21 = ptrtoint ptr %error_limit.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error_limit.i, align 8
  %call122.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %22) #12
  br label %__bch_cached_dev_show.exit

do.body126.i:                                     ; preds = %do.body118.i
  %cmp127.i = icmp eq ptr %attr, @sysfs_io_disable
  br i1 %cmp127.i, label %if.then129.i, label %do.body137.i

if.then129.i:                                     ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr131.i = lshr i8 %bf.load.i, 7
  %bf.cast132.i = zext i8 %bf.lshr131.i to i32
  %call133.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast132.i) #12
  br label %__bch_cached_dev_show.exit

do.body137.i:                                     ; preds = %do.body126.i
  %cmp138.i = icmp eq ptr %attr, @sysfs_writeback_rate_update_seconds
  br i1 %cmp138.i, label %if.then140.i, label %do.body145.i

if.then140.i:                                     ; preds = %do.body137.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_rate_update_seconds.i = getelementptr i8, ptr %kobj, i32 53268
  %23 = ptrtoint ptr %writeback_rate_update_seconds.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %writeback_rate_update_seconds.i, align 4
  %call141.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %24) #12
  br label %__bch_cached_dev_show.exit

do.body145.i:                                     ; preds = %do.body137.i
  %cmp146.i = icmp eq ptr %attr, @sysfs_writeback_rate_i_term_inverse
  br i1 %cmp146.i, label %if.then148.i, label %do.body153.i

if.then148.i:                                     ; preds = %do.body145.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_rate_i_term_inverse.i = getelementptr i8, ptr %kobj, i32 53272
  %25 = ptrtoint ptr %writeback_rate_i_term_inverse.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %writeback_rate_i_term_inverse.i, align 8
  %call149.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %26) #12
  br label %__bch_cached_dev_show.exit

do.body153.i:                                     ; preds = %do.body145.i
  %cmp154.i = icmp eq ptr %attr, @sysfs_writeback_rate_p_term_inverse
  br i1 %cmp154.i, label %if.then156.i, label %do.body161.i

if.then156.i:                                     ; preds = %do.body153.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_rate_p_term_inverse.i = getelementptr i8, ptr %kobj, i32 53276
  %27 = ptrtoint ptr %writeback_rate_p_term_inverse.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %writeback_rate_p_term_inverse.i, align 4
  %call157.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %28) #12
  br label %__bch_cached_dev_show.exit

do.body161.i:                                     ; preds = %do.body153.i
  %cmp162.i = icmp eq ptr %attr, @sysfs_writeback_rate_fp_term_low
  br i1 %cmp162.i, label %if.then164.i, label %do.body169.i

if.then164.i:                                     ; preds = %do.body161.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_rate_fp_term_low.i = getelementptr i8, ptr %kobj, i32 53280
  %29 = ptrtoint ptr %writeback_rate_fp_term_low.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writeback_rate_fp_term_low.i, align 8
  %call165.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %30) #12
  br label %__bch_cached_dev_show.exit

do.body169.i:                                     ; preds = %do.body161.i
  %cmp170.i = icmp eq ptr %attr, @sysfs_writeback_rate_fp_term_mid
  br i1 %cmp170.i, label %if.then172.i, label %do.body177.i

if.then172.i:                                     ; preds = %do.body169.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_rate_fp_term_mid.i = getelementptr i8, ptr %kobj, i32 53284
  %31 = ptrtoint ptr %writeback_rate_fp_term_mid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %writeback_rate_fp_term_mid.i, align 4
  %call173.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %32) #12
  br label %__bch_cached_dev_show.exit

do.body177.i:                                     ; preds = %do.body169.i
  %cmp178.i = icmp eq ptr %attr, @sysfs_writeback_rate_fp_term_high
  br i1 %cmp178.i, label %if.then180.i, label %do.body185.i

if.then180.i:                                     ; preds = %do.body177.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_rate_fp_term_high.i = getelementptr i8, ptr %kobj, i32 53288
  %33 = ptrtoint ptr %writeback_rate_fp_term_high.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %writeback_rate_fp_term_high.i, align 8
  %call181.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %34) #12
  br label %__bch_cached_dev_show.exit

do.body185.i:                                     ; preds = %do.body177.i
  %cmp186.i = icmp eq ptr %attr, @sysfs_writeback_rate_minimum
  br i1 %cmp186.i, label %if.then188.i, label %do.end192.i

if.then188.i:                                     ; preds = %do.body185.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_rate_minimum.i = getelementptr i8, ptr %kobj, i32 53292
  %35 = ptrtoint ptr %writeback_rate_minimum.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %writeback_rate_minimum.i, align 4
  %call189.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %36) #12
  br label %__bch_cached_dev_show.exit

do.end192.i:                                      ; preds = %do.body185.i
  %cmp193.i = icmp eq ptr %attr, @sysfs_writeback_rate_debug
  br i1 %cmp193.i, label %if.then195.i, label %do.body257.i

if.then195.i:                                     ; preds = %do.end192.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rate196.i) #12
  %37 = call ptr @memset(ptr %rate196.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dirty.i) #12
  %38 = call ptr @memset(ptr %dirty.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %target.i) #12
  %39 = call ptr @memset(ptr %target.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %proportional.i) #12
  %40 = call ptr @memset(ptr %proportional.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %integral.i) #12
  %41 = call ptr @memset(ptr %integral.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %change.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool197.not.i = icmp eq i8 %bf.clear.i, 0
  %42 = call ptr @memset(ptr %change.i, i32 255, i32 20)
  br i1 %tobool197.not.i, label %cond.end221.critedge.i, label %cond.true198.i

cond.true198.i:                                   ; preds = %if.then195.i
  %rate200.i = getelementptr i8, ptr %kobj, i32 3432
  %call.i.i495.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rate200.i, i32 noundef 4) #12
  %43 = ptrtoint ptr %rate200.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %rate200.i, align 4
  %shl202.i = shl i32 %44, 9
  %conv206.c.i = sext i32 %shl202.i to i64
  %call207.c483.i = call i32 @bch_hprint(ptr noundef nonnull %rate196.i, i64 noundef %conv206.c.i) #12
  %nr_stripes.i22 = getelementptr i8, ptr %kobj, i32 164
  %45 = ptrtoint ptr %nr_stripes.i22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_stripes.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp8.not.i23 = icmp eq i32 %46, 0
  br i1 %cmp8.not.i23, label %cond.true198.i.bcache_dev_sectors_dirty.exit38_crit_edge, label %for.body.lr.ph.i25

cond.true198.i.bcache_dev_sectors_dirty.exit38_crit_edge: ; preds = %cond.true198.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcache_dev_sectors_dirty.exit38

for.body.lr.ph.i25:                               ; preds = %cond.true198.i
  %stripe_sectors_dirty.i24 = getelementptr i8, ptr %kobj, i32 172
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %for.body.lr.ph.i25
  %ret.010.i26 = phi i64 [ 0, %for.body.lr.ph.i25 ], [ %add.i32, %for.body.i36.for.body.i36_crit_edge ]
  %i.09.i27 = phi i64 [ 0, %for.body.lr.ph.i25 ], [ %inc.i33, %for.body.i36.for.body.i36_crit_edge ]
  %47 = ptrtoint ptr %stripe_sectors_dirty.i24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stripe_sectors_dirty.i24, align 4
  %idx.ext.i28 = trunc i64 %i.09.i27 to i32
  %add.ptr.i29 = getelementptr %struct.atomic_t, ptr %48, i32 %idx.ext.i28
  %call.i.i.i30 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i29, i32 noundef 4) #12
  %49 = ptrtoint ptr %add.ptr.i29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %add.ptr.i29, align 4
  %conv2.i31 = sext i32 %50 to i64
  %add.i32 = add i64 %ret.010.i26, %conv2.i31
  %inc.i33 = add nuw i64 %i.09.i27, 1
  %51 = ptrtoint ptr %nr_stripes.i22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_stripes.i22, align 4
  %conv.i34 = sext i32 %52 to i64
  %cmp.i35 = icmp ult i64 %inc.i33, %conv.i34
  br i1 %cmp.i35, label %for.body.i36.for.body.i36_crit_edge, label %bcache_dev_sectors_dirty.exit38.loopexit

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i36

bcache_dev_sectors_dirty.exit38.loopexit:         ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo39 = shl i64 %add.i32, 9
  br label %bcache_dev_sectors_dirty.exit38

bcache_dev_sectors_dirty.exit38:                  ; preds = %bcache_dev_sectors_dirty.exit38.loopexit, %cond.true198.i.bcache_dev_sectors_dirty.exit38_crit_edge
  %ret.0.lcssa.i37 = phi i64 [ 0, %cond.true198.i.bcache_dev_sectors_dirty.exit38_crit_edge ], [ %phi.bo39, %bcache_dev_sectors_dirty.exit38.loopexit ]
  %call212.c487.i = call i32 @bch_hprint(ptr noundef nonnull %dirty.i, i64 noundef %ret.0.lcssa.i37) #12
  %writeback_rate_target.c488.i = getelementptr i8, ptr %kobj, i32 53232
  %53 = ptrtoint ptr %writeback_rate_target.c488.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %writeback_rate_target.c488.i, align 8
  %shl214.c489.i = shl i64 %54, 9
  %call215.c490.i = call i32 @bch_hprint(ptr noundef nonnull %target.i, i64 noundef %shl214.c489.i) #12
  %writeback_rate_proportional.i = getelementptr i8, ptr %kobj, i32 53240
  %55 = ptrtoint ptr %writeback_rate_proportional.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %writeback_rate_proportional.i, align 8
  %shl219.i = shl i64 %56, 9
  %call223.c491.i = call i32 @bch_hprint(ptr noundef nonnull %proportional.i, i64 noundef %shl219.i) #12
  %writeback_rate_integral_scaled.i = getelementptr i8, ptr %kobj, i32 53256
  %57 = ptrtoint ptr %writeback_rate_integral_scaled.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %writeback_rate_integral_scaled.i, align 8
  %shl227.i = shl i64 %58, 9
  %call231.c492.i = call i32 @bch_hprint(ptr noundef nonnull %integral.i, i64 noundef %shl227.i) #12
  %writeback_rate_change.i = getelementptr i8, ptr %kobj, i32 53264
  %59 = ptrtoint ptr %writeback_rate_change.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %writeback_rate_change.i, align 8
  %shl235.i = shl i32 %60, 9
  %conv239.c.i = sext i32 %shl235.i to i64
  %call240.c493.i = call i32 @bch_hprint(ptr noundef nonnull %change.i, i64 noundef %conv239.c.i) #12
  %writeback_rate243.i = getelementptr i8, ptr %kobj, i32 3424
  %61 = ptrtoint ptr %writeback_rate243.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %writeback_rate243.i, align 8
  %call.i535.i = call i64 @sched_clock() #12
  %sub.i = sub i64 %62, %call.i535.i
  %call245.i = call i64 @div64_s64(i64 noundef %sub.i, i64 noundef 1000000) #12
  br label %cond.end247.i

cond.end221.critedge.i:                           ; preds = %if.then195.i
  %call207.c.i = call i32 @bch_hprint(ptr noundef nonnull %rate196.i, i64 noundef 0) #12
  %nr_stripes.i5 = getelementptr i8, ptr %kobj, i32 164
  %63 = ptrtoint ptr %nr_stripes.i5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_stripes.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp8.not.i6 = icmp eq i32 %64, 0
  br i1 %cmp8.not.i6, label %cond.end221.critedge.i.bcache_dev_sectors_dirty.exit21_crit_edge, label %for.body.lr.ph.i8

cond.end221.critedge.i.bcache_dev_sectors_dirty.exit21_crit_edge: ; preds = %cond.end221.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcache_dev_sectors_dirty.exit21

for.body.lr.ph.i8:                                ; preds = %cond.end221.critedge.i
  %stripe_sectors_dirty.i7 = getelementptr i8, ptr %kobj, i32 172
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.body.i19.for.body.i19_crit_edge, %for.body.lr.ph.i8
  %ret.010.i9 = phi i64 [ 0, %for.body.lr.ph.i8 ], [ %add.i15, %for.body.i19.for.body.i19_crit_edge ]
  %i.09.i10 = phi i64 [ 0, %for.body.lr.ph.i8 ], [ %inc.i16, %for.body.i19.for.body.i19_crit_edge ]
  %65 = ptrtoint ptr %stripe_sectors_dirty.i7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %stripe_sectors_dirty.i7, align 4
  %idx.ext.i11 = trunc i64 %i.09.i10 to i32
  %add.ptr.i12 = getelementptr %struct.atomic_t, ptr %66, i32 %idx.ext.i11
  %call.i.i.i13 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i12, i32 noundef 4) #12
  %67 = ptrtoint ptr %add.ptr.i12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %add.ptr.i12, align 4
  %conv2.i14 = sext i32 %68 to i64
  %add.i15 = add i64 %ret.010.i9, %conv2.i14
  %inc.i16 = add nuw i64 %i.09.i10, 1
  %69 = ptrtoint ptr %nr_stripes.i5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_stripes.i5, align 4
  %conv.i17 = sext i32 %70 to i64
  %cmp.i18 = icmp ult i64 %inc.i16, %conv.i17
  br i1 %cmp.i18, label %for.body.i19.for.body.i19_crit_edge, label %bcache_dev_sectors_dirty.exit21.loopexit

for.body.i19.for.body.i19_crit_edge:              ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i19

bcache_dev_sectors_dirty.exit21.loopexit:         ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo40 = shl i64 %add.i15, 9
  br label %bcache_dev_sectors_dirty.exit21

bcache_dev_sectors_dirty.exit21:                  ; preds = %bcache_dev_sectors_dirty.exit21.loopexit, %cond.end221.critedge.i.bcache_dev_sectors_dirty.exit21_crit_edge
  %ret.0.lcssa.i20 = phi i64 [ 0, %cond.end221.critedge.i.bcache_dev_sectors_dirty.exit21_crit_edge ], [ %phi.bo40, %bcache_dev_sectors_dirty.exit21.loopexit ]
  %call212.c.i = call i32 @bch_hprint(ptr noundef nonnull %dirty.i, i64 noundef %ret.0.lcssa.i20) #12
  %writeback_rate_target.c.i = getelementptr i8, ptr %kobj, i32 53232
  %71 = ptrtoint ptr %writeback_rate_target.c.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %writeback_rate_target.c.i, align 8
  %shl214.c.i = shl i64 %72, 9
  %call215.c.i = call i32 @bch_hprint(ptr noundef nonnull %target.i, i64 noundef %shl214.c.i) #12
  %call223.c.i = call i32 @bch_hprint(ptr noundef nonnull %proportional.i, i64 noundef 0) #12
  %call231.c.i = call i32 @bch_hprint(ptr noundef nonnull %integral.i, i64 noundef 0) #12
  %call240.c.i = call i32 @bch_hprint(ptr noundef nonnull %change.i, i64 noundef 0) #12
  br label %cond.end247.i

cond.end247.i:                                    ; preds = %bcache_dev_sectors_dirty.exit21, %bcache_dev_sectors_dirty.exit38
  %cond248.i = phi i64 [ %call245.i, %bcache_dev_sectors_dirty.exit38 ], [ 0, %bcache_dev_sectors_dirty.exit21 ]
  %call255.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, ptr noundef nonnull %rate196.i, ptr noundef nonnull %dirty.i, ptr noundef nonnull %target.i, ptr noundef nonnull %proportional.i, ptr noundef nonnull %integral.i, ptr noundef nonnull %change.i, i64 noundef %cond248.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %change.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %integral.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %proportional.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %target.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dirty.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rate196.i) #12
  br label %__bch_cached_dev_show.exit

do.body257.i:                                     ; preds = %do.end192.i
  %cmp258.i = icmp eq ptr %attr, @sysfs_dirty_data
  br i1 %cmp258.i, label %if.then260.i, label %do.body271.i

if.then260.i:                                     ; preds = %do.body257.i
  %nr_stripes.i = getelementptr i8, ptr %kobj, i32 164
  %73 = ptrtoint ptr %nr_stripes.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_stripes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp8.not.i = icmp eq i32 %74, 0
  br i1 %cmp8.not.i, label %if.then260.i.bcache_dev_sectors_dirty.exit_crit_edge, label %for.body.lr.ph.i

if.then260.i.bcache_dev_sectors_dirty.exit_crit_edge: ; preds = %if.then260.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bcache_dev_sectors_dirty.exit

for.body.lr.ph.i:                                 ; preds = %if.then260.i
  %stripe_sectors_dirty.i = getelementptr i8, ptr %kobj, i32 172
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.010.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i2, %for.body.i.for.body.i_crit_edge ]
  %i.09.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %75 = ptrtoint ptr %stripe_sectors_dirty.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %stripe_sectors_dirty.i, align 4
  %idx.ext.i = trunc i64 %i.09.i to i32
  %add.ptr.i = getelementptr %struct.atomic_t, ptr %76, i32 %idx.ext.i
  %call.i.i.i1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #12
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %add.ptr.i, align 4
  %conv2.i = sext i32 %78 to i64
  %add.i2 = add i64 %ret.010.i, %conv2.i
  %inc.i = add nuw i64 %i.09.i, 1
  %79 = ptrtoint ptr %nr_stripes.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nr_stripes.i, align 4
  %conv.i3 = sext i32 %80 to i64
  %cmp.i4 = icmp ult i64 %inc.i, %conv.i3
  br i1 %cmp.i4, label %for.body.i.for.body.i_crit_edge, label %bcache_dev_sectors_dirty.exit.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

bcache_dev_sectors_dirty.exit.loopexit:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo = shl i64 %add.i2, 9
  br label %bcache_dev_sectors_dirty.exit

bcache_dev_sectors_dirty.exit:                    ; preds = %bcache_dev_sectors_dirty.exit.loopexit, %if.then260.i.bcache_dev_sectors_dirty.exit_crit_edge
  %ret.0.lcssa.i = phi i64 [ 0, %if.then260.i.bcache_dev_sectors_dirty.exit_crit_edge ], [ %phi.bo, %bcache_dev_sectors_dirty.exit.loopexit ]
  %call265.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %ret.0.lcssa.i) #12
  %strlen479.i = tail call i32 @strlen(ptr %buf) #15
  %endptr480.i = getelementptr i8, ptr %buf, i32 %strlen479.i
  %81 = ptrtoint ptr %endptr480.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 2560, ptr %endptr480.i, align 1
  %add267.i = add i32 %call265.i, 1
  br label %__bch_cached_dev_show.exit

do.body271.i:                                     ; preds = %do.body257.i
  %cmp272.i = icmp eq ptr %attr, @sysfs_stripe_size
  br i1 %cmp272.i, label %if.then274.i, label %do.body285.i

if.then274.i:                                     ; preds = %do.body271.i
  call void @__sanitizer_cov_trace_pc() #14
  %stripe_size.i = getelementptr i8, ptr %kobj, i32 168
  %82 = ptrtoint ptr %stripe_size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %stripe_size.i, align 8
  %conv277.i = zext i32 %83 to i64
  %shl278.i = shl nuw nsw i64 %conv277.i, 9
  %call279.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %shl278.i) #12
  %strlen477.i = tail call i32 @strlen(ptr %buf) #15
  %endptr478.i = getelementptr i8, ptr %buf, i32 %strlen477.i
  %84 = ptrtoint ptr %endptr478.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 2560, ptr %endptr478.i, align 1
  %add281.i = add i32 %call279.i, 1
  br label %__bch_cached_dev_show.exit

do.body285.i:                                     ; preds = %do.body271.i
  %cmp286.i = icmp eq ptr %attr, @sysfs_partial_stripes_expensive
  br i1 %cmp286.i, label %if.then288.i, label %do.body297.i

if.then288.i:                                     ; preds = %do.body285.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr290.i = lshr i8 %bf.load.i, 4
  %bf.clear291.i = and i8 %bf.lshr290.i, 1
  %bf.cast292.i = zext i8 %bf.clear291.i to i32
  %call293.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %bf.cast292.i) #12
  br label %__bch_cached_dev_show.exit

do.body297.i:                                     ; preds = %do.body285.i
  %cmp298.i = icmp eq ptr %attr, @sysfs_sequential_cutoff
  br i1 %cmp298.i, label %if.then300.i, label %do.body309.i

if.then300.i:                                     ; preds = %do.body297.i
  call void @__sanitizer_cov_trace_pc() #14
  %sequential_cutoff.i = getelementptr i8, ptr %kobj, i32 53220
  %85 = ptrtoint ptr %sequential_cutoff.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sequential_cutoff.i, align 4
  %conv302.i = zext i32 %86 to i64
  %call303.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %conv302.i) #12
  %strlen475.i = tail call i32 @strlen(ptr %buf) #15
  %endptr476.i = getelementptr i8, ptr %buf, i32 %strlen475.i
  %87 = ptrtoint ptr %endptr476.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 2560, ptr %endptr476.i, align 1
  %add305.i = add i32 %call303.i, 1
  br label %__bch_cached_dev_show.exit

do.body309.i:                                     ; preds = %do.body297.i
  %cmp310.i = icmp eq ptr %attr, @sysfs_running
  br i1 %cmp310.i, label %if.then312.i, label %do.body318.i

if.then312.i:                                     ; preds = %do.body309.i
  call void @__sanitizer_cov_trace_pc() #14
  %running.i = getelementptr i8, ptr %kobj, i32 3316
  %call.i.i496.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %running.i, i32 noundef 4) #12
  %88 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %running.i, align 4
  %call314.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %89) #12
  br label %__bch_cached_dev_show.exit

do.body318.i:                                     ; preds = %do.body309.i
  %cmp319.i = icmp eq ptr %attr, @sysfs_state
  br i1 %cmp319.i, label %if.then321.i, label %do.end327.i

if.then321.i:                                     ; preds = %do.body318.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i536.i = getelementptr i8, ptr %kobj, i32 896
  %90 = ptrtoint ptr %flags.i536.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %flags.i536.i, align 8
  %shr.i.i = lshr i64 %91, 61
  %92 = trunc i64 %shr.i.i to i32
  %idxprom.i = and i32 %92, 3
  %arrayidx.i = getelementptr [4 x ptr], ptr @__const.__bch_cached_dev_show.states, i32 0, i32 %idxprom.i
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i, align 4
  %call324.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, ptr noundef %94) #12
  br label %__bch_cached_dev_show.exit

do.end327.i:                                      ; preds = %do.body318.i
  %cmp328.i = icmp eq ptr %attr, @sysfs_label
  br i1 %cmp328.i, label %if.then330.i, label %if.end336.i

if.then330.i:                                     ; preds = %do.end327.i
  call void @__sanitizer_cov_trace_pc() #14
  %label.i = getelementptr i8, ptr %kobj, i32 864
  %95 = call ptr @memcpy(ptr %buf, ptr %label.i, i32 32)
  %arrayidx333.i = getelementptr i8, ptr %buf, i32 33
  %96 = ptrtoint ptr %arrayidx333.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx333.i, align 1
  %strlen473.i = tail call i32 @strlen(ptr %buf) #15
  %endptr474.i = getelementptr i8, ptr %buf, i32 %strlen473.i
  %97 = ptrtoint ptr %endptr474.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 2560, ptr %endptr474.i, align 1
  %call335.i = tail call i32 @strlen(ptr noundef %buf) #15
  br label %__bch_cached_dev_show.exit

if.end336.i:                                      ; preds = %do.end327.i
  %cmp337.i = icmp eq ptr %attr, @sysfs_backing_dev_name
  br i1 %cmp337.i, label %if.then339.i, label %if.end343.i

if.then339.i:                                     ; preds = %if.end336.i
  call void @__sanitizer_cov_trace_pc() #14
  %bdev.i = getelementptr i8, ptr %kobj, i32 796
  %98 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bdev.i, align 4
  %call340.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 33, ptr noundef nonnull @.str.13, ptr noundef %99) #12
  %strlen471.i = tail call i32 @strlen(ptr %buf) #15
  %endptr472.i = getelementptr i8, ptr %buf, i32 %strlen471.i
  %100 = ptrtoint ptr %endptr472.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 2560, ptr %endptr472.i, align 1
  %call342.i = tail call i32 @strlen(ptr noundef %buf) #15
  br label %__bch_cached_dev_show.exit

if.end343.i:                                      ; preds = %if.end336.i
  %cmp344.i = icmp eq ptr %attr, @sysfs_backing_dev_uuid
  br i1 %cmp344.i, label %if.then346.i, label %if.end343.i.__bch_cached_dev_show.exit_crit_edge

if.end343.i.__bch_cached_dev_show.exit_crit_edge: ; preds = %if.end343.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cached_dev_show.exit

if.then346.i:                                     ; preds = %if.end343.i
  call void @__sanitizer_cov_trace_pc() #14
  %uuid.i = getelementptr i8, ptr %kobj, i32 832
  %call349.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 37, ptr noundef nonnull @.str.14, ptr noundef %uuid.i) #12
  %strlen.i = tail call i32 @strlen(ptr %buf) #15
  %endptr.i = getelementptr i8, ptr %buf, i32 %strlen.i
  %101 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 2560, ptr %endptr.i, align 1
  %call351.i = tail call i32 @strlen(ptr noundef %buf) #15
  br label %__bch_cached_dev_show.exit

__bch_cached_dev_show.exit:                       ; preds = %if.then346.i, %if.end343.i.__bch_cached_dev_show.exit_crit_edge, %if.then339.i, %if.then330.i, %if.then321.i, %if.then312.i, %if.then300.i, %if.then288.i, %if.then274.i, %bcache_dev_sectors_dirty.exit, %cond.end247.i, %if.then188.i, %if.then180.i, %if.then172.i, %if.then164.i, %if.then156.i, %if.then148.i, %if.then140.i, %if.then129.i, %if.then121.i, %if.then112.i, %cond.end.i, %if.then92.i, %if.then84.i, %if.then72.i, %if.then59.i, %if.then47.i, %if.then35.i, %if.then23.i, %if.then14.i, %if.then9.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.ptr.sub6.i.i, %if.then.i ], [ %sub.ptr.sub6.i514.i, %if.then4.i ], [ %sub.ptr.sub6.i533.i, %if.then9.i ], [ %call18.i, %if.then14.i ], [ %call28.i, %if.then23.i ], [ %call40.i, %if.then35.i ], [ %call52.i, %if.then47.i ], [ %call65.i, %if.then59.i ], [ %call77.i, %if.then72.i ], [ %call85.i, %if.then84.i ], [ %call94.i, %if.then92.i ], [ %add.i, %cond.end.i ], [ %call114.i, %if.then112.i ], [ %call122.i, %if.then121.i ], [ %call133.i, %if.then129.i ], [ %call141.i, %if.then140.i ], [ %call149.i, %if.then148.i ], [ %call157.i, %if.then156.i ], [ %call165.i, %if.then164.i ], [ %call173.i, %if.then172.i ], [ %call181.i, %if.then180.i ], [ %call189.i, %if.then188.i ], [ %call255.i, %cond.end247.i ], [ %add267.i, %bcache_dev_sectors_dirty.exit ], [ %add281.i, %if.then274.i ], [ %call293.i, %if.then288.i ], [ %add305.i, %if.then300.i ], [ %call314.i, %if.then312.i ], [ %call324.i, %if.then321.i ], [ %call335.i, %if.then330.i ], [ %call342.i, %if.then339.i ], [ %call351.i, %if.then346.i ], [ 0, %if.end343.i.__bch_cached_dev_show.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_cached_dev_store(ptr noundef %kobj, ptr noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  %_v.i = alloca i32, align 4
  %_v11.i = alloca i32, align 4
  %_v36.i = alloca i32, align 4
  %_v60.i = alloca i32, align 4
  %_v87.i = alloca i32, align 4
  %_v114.i = alloca i32, align 4
  %_v141.i = alloca i32, align 4
  %_v173.i = alloca i32, align 4
  %_v206.i = alloca i32, align 4
  %_v241.i = alloca i32, align 4
  %_v276.i = alloca i32, align 4
  %_v311.i = alloca i32, align 4
  %_v346.i = alloca i32, align 4
  %_v381.i = alloca i32, align 4
  %_v419.i = alloca i32, align 4
  %_v457.i = alloca i32, align 4
  %_v492.i = alloca i32, align 4
  %_v525.i = alloca i32, align 4
  %_v554.i = alloca i32, align 4
  %_v589.i = alloca i32, align 4
  %set_uuid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -80
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @bcache_is_reboot to i32))
  %0 = load i8, ptr @bcache_is_reboot, align 1, !range !421
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #12
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @bcache_is_reboot to i32))
  %1 = load i8, ptr @bcache_is_reboot, align 1, !range !421
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end.__cached_dev_store.exit_crit_edge

if.end.__cached_dev_store.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cached_dev_store.exit

do.body.i:                                        ; preds = %if.end
  %cmp.i = icmp eq ptr %attr, @sysfs_data_csum
  br i1 %cmp.i, label %if.then1.i, label %do.body8.i

if.then1.i:                                       ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v.i) #12
  %2 = ptrtoint ptr %_v.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %_v.i, align 4, !annotation !422
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then1.i.if.end4.i_crit_edge

if.then1.i.if.end4.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %_v.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_v.i, align 4
  %data_csum.i = getelementptr i8, ptr %kobj, i32 784
  %5 = trunc i32 %4 to i8
  %6 = ptrtoint ptr %data_csum.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %data_csum.i, align 8
  %bf.shl.i = shl i8 %5, 7
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %data_csum.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then1.i.if.end4.i_crit_edge
  %spec.select.i = phi i32 [ %size, %if.then3.i ], [ %call.i.i, %if.then1.i.if.end4.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v.i) #12
  br label %if.end25

do.body8.i:                                       ; preds = %do.body.i
  %cmp9.i = icmp eq ptr %attr, @sysfs_verify
  br i1 %cmp9.i, label %if.then10.i, label %do.body32.i

if.then10.i:                                      ; preds = %do.body8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v11.i) #12
  %7 = ptrtoint ptr %_v11.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %_v11.i, align 4, !annotation !422
  %call.i1021.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v11.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1021.i)
  %tobool14.not.i = icmp eq i32 %call.i1021.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.then10.i.if.end22.i_crit_edge

if.then10.i.if.end22.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %_v11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_v11.i, align 4
  %verify.i = getelementptr i8, ptr %kobj, i32 53224
  %10 = trunc i32 %9 to i8
  %11 = ptrtoint ptr %verify.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load16.i = load i8, ptr %verify.i, align 8
  %bf.value17.i = shl i8 %10, 6
  %bf.shl18.i = and i8 %bf.value17.i, 64
  %bf.clear19.i = and i8 %bf.load16.i, -65
  %bf.set20.i = or i8 %bf.shl18.i, %bf.clear19.i
  store i8 %bf.set20.i, ptr %verify.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %if.then10.i.if.end22.i_crit_edge
  %spec.select1010.i = phi i32 [ %size, %if.then15.i ], [ %call.i1021.i, %if.then10.i.if.end22.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v11.i) #12
  br label %if.end25

do.body32.i:                                      ; preds = %do.body8.i
  %cmp33.i = icmp eq ptr %attr, @sysfs_bypass_torture_test
  br i1 %cmp33.i, label %if.then34.i, label %do.body56.i

if.then34.i:                                      ; preds = %do.body32.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v36.i) #12
  %12 = ptrtoint ptr %_v36.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %_v36.i, align 4, !annotation !422
  %call.i1022.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v36.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1022.i)
  %tobool39.not.i = icmp eq i32 %call.i1022.i, 0
  br i1 %tobool39.not.i, label %cleanup.cont.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v36.i) #12
  br label %if.end25

cleanup.cont.i:                                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %_v36.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %_v36.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v36.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool44.not.not.i = icmp eq i32 %14, 0
  %bypass_torture_test.i = getelementptr i8, ptr %kobj, i32 53224
  %15 = ptrtoint ptr %bypass_torture_test.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load46.i = load i8, ptr %bypass_torture_test.i, align 8
  %bf.shl48.i = select i1 %tobool44.not.not.i, i8 0, i8 32
  %bf.clear49.i = and i8 %bf.load46.i, -33
  %bf.set50.i = or i8 %bf.clear49.i, %bf.shl48.i
  store i8 %bf.set50.i, ptr %bypass_torture_test.i, align 8
  br label %if.end25

do.body56.i:                                      ; preds = %do.body32.i
  %cmp57.i = icmp eq ptr %attr, @sysfs_writeback_metadata
  br i1 %cmp57.i, label %if.then58.i, label %do.body83.i

if.then58.i:                                      ; preds = %do.body56.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v60.i) #12
  %16 = ptrtoint ptr %_v60.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %_v60.i, align 4, !annotation !422
  %call.i1023.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v60.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1023.i)
  %tobool63.not.i = icmp eq i32 %call.i1023.i, 0
  br i1 %tobool63.not.i, label %cleanup.cont70.i, label %cleanup67.i

cleanup67.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v60.i) #12
  br label %if.end25

cleanup.cont70.i:                                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %_v60.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %_v60.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v60.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool71.not.not.i = icmp eq i32 %18, 0
  %writeback_metadata.i = getelementptr i8, ptr %kobj, i32 53224
  %19 = ptrtoint ptr %writeback_metadata.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load73.i = load i8, ptr %writeback_metadata.i, align 8
  %bf.shl75.i = select i1 %tobool71.not.not.i, i8 0, i8 8
  %bf.clear76.i = and i8 %bf.load73.i, -9
  %bf.set77.i = or i8 %bf.clear76.i, %bf.shl75.i
  store i8 %bf.set77.i, ptr %writeback_metadata.i, align 8
  br label %if.end25

do.body83.i:                                      ; preds = %do.body56.i
  %cmp84.i = icmp eq ptr %attr, @sysfs_writeback_running
  br i1 %cmp84.i, label %if.then85.i, label %do.body110.i

if.then85.i:                                      ; preds = %do.body83.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v87.i) #12
  %20 = ptrtoint ptr %_v87.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %_v87.i, align 4, !annotation !422
  %call.i1024.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v87.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1024.i)
  %tobool90.not.i = icmp eq i32 %call.i1024.i, 0
  br i1 %tobool90.not.i, label %cleanup.cont97.i, label %cleanup94.i

cleanup94.i:                                      ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v87.i) #12
  br label %if.then1

cleanup.cont97.i:                                 ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %_v87.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %_v87.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v87.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool98.not.not.i = icmp eq i32 %22, 0
  %writeback_running.i = getelementptr i8, ptr %kobj, i32 53224
  %23 = ptrtoint ptr %writeback_running.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load100.i = load i8, ptr %writeback_running.i, align 8
  %bf.shl102.i = select i1 %tobool98.not.not.i, i8 0, i8 4
  %bf.clear103.i = and i8 %bf.load100.i, -5
  %bf.set104.i = or i8 %bf.clear103.i, %bf.shl102.i
  store i8 %bf.set104.i, ptr %writeback_running.i, align 8
  br label %if.then1

do.body110.i:                                     ; preds = %do.body83.i
  %cmp111.i = icmp eq ptr %attr, @sysfs_writeback_consider_fragment
  br i1 %cmp111.i, label %if.then112.i, label %do.body137.i

if.then112.i:                                     ; preds = %do.body110.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v114.i) #12
  %24 = ptrtoint ptr %_v114.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %_v114.i, align 4, !annotation !422
  %call.i1025.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v114.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1025.i)
  %tobool117.not.i = icmp eq i32 %call.i1025.i, 0
  br i1 %tobool117.not.i, label %cleanup.cont124.i, label %cleanup121.i

cleanup121.i:                                     ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v114.i) #12
  br label %if.end25

cleanup.cont124.i:                                ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %_v114.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %_v114.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v114.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool125.not.not.i = icmp eq i32 %26, 0
  %writeback_consider_fragment.i = getelementptr i8, ptr %kobj, i32 53224
  %27 = ptrtoint ptr %writeback_consider_fragment.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load127.i = load i8, ptr %writeback_consider_fragment.i, align 8
  %bf.shl129.i = select i1 %tobool125.not.not.i, i8 0, i8 2
  %bf.clear130.i = and i8 %bf.load127.i, -3
  %bf.set131.i = or i8 %bf.clear130.i, %bf.shl129.i
  store i8 %bf.set131.i, ptr %writeback_consider_fragment.i, align 8
  br label %if.end25

do.body137.i:                                     ; preds = %do.body110.i
  %cmp138.i = icmp eq ptr %attr, @sysfs_writeback_delay
  br i1 %cmp138.i, label %if.then139.i, label %do.body168.i

if.then139.i:                                     ; preds = %do.body137.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v141.i) #12
  %28 = ptrtoint ptr %_v141.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %_v141.i, align 4, !annotation !422
  %call.i1026.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v141.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1026.i)
  %tobool144.not.i = icmp eq i32 %call.i1026.i, 0
  br i1 %tobool144.not.i, label %if.then161.i, label %if.end158.i

if.end158.i:                                      ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v141.i) #12
  br label %if.end25

if.then161.i:                                     ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %_v141.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %_v141.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v141.i) #12
  %writeback_delay.i = getelementptr i8, ptr %kobj, i32 53228
  %31 = ptrtoint ptr %writeback_delay.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %writeback_delay.i, align 4
  br label %if.end25

do.body168.i:                                     ; preds = %do.body137.i
  %cmp169.i = icmp eq ptr %attr, @sysfs_writeback_percent
  br i1 %cmp169.i, label %if.then170.i, label %do.end199.i

if.then170.i:                                     ; preds = %do.body168.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v173.i) #12
  %32 = ptrtoint ptr %_v173.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %_v173.i, align 4, !annotation !422
  %call.i1027.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v173.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1027.i)
  %tobool176.not.i = icmp eq i32 %call.i1027.i, 0
  br i1 %tobool176.not.i, label %if.then193.i, label %if.end190.i

if.end190.i:                                      ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v173.i) #12
  br label %if.then16

if.then193.i:                                     ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %_v173.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %_v173.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_cutoff_writeback to i32))
  %35 = load i32, ptr @bch_cutoff_writeback, align 4
  %36 = call i32 @llvm.umin.i32(i32 %34, i32 %35) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v173.i) #12
  %conv.i = trunc i32 %36 to i8
  %writeback_percent.i = getelementptr i8, ptr %kobj, i32 53225
  %37 = ptrtoint ptr %writeback_percent.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %writeback_percent.i, align 1
  br label %if.then16

do.end199.i:                                      ; preds = %do.body168.i
  %cmp200.i = icmp eq ptr %attr, @sysfs_writeback_rate
  br i1 %cmp200.i, label %if.then202.i, label %do.body235.i

if.then202.i:                                     ; preds = %do.end199.i
  %rate.i = getelementptr i8, ptr %kobj, i32 3432
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rate.i, i32 noundef 4) #12
  %38 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %rate.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v206.i) #12
  %40 = ptrtoint ptr %_v206.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %_v206.i, align 4, !annotation !422
  %call.i1028.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v206.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1028.i)
  %tobool209.not.i = icmp eq i32 %call.i1028.i, 0
  br i1 %tobool209.not.i, label %if.then228.i, label %if.end225.i

if.end225.i:                                      ; preds = %if.then202.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v206.i) #12
  br label %if.end25

if.then228.i:                                     ; preds = %if.then202.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %_v206.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %_v206.i, align 4
  %43 = call i32 @llvm.smax.i32(i32 %42, i32 1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v206.i) #12
  %call.i.i1020.i = call zeroext i1 @__kasan_check_write(ptr noundef %rate.i, i32 noundef 4) #12
  %44 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %43, ptr %rate.i, align 4
  br label %if.end25

do.body235.i:                                     ; preds = %do.end199.i
  %cmp236.i = icmp eq ptr %attr, @sysfs_writeback_rate_update_seconds
  br i1 %cmp236.i, label %if.then238.i, label %do.body270.i

if.then238.i:                                     ; preds = %do.body235.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v241.i) #12
  %45 = ptrtoint ptr %_v241.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %_v241.i, align 4, !annotation !422
  %call.i1029.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v241.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1029.i)
  %tobool244.not.i = icmp eq i32 %call.i1029.i, 0
  br i1 %tobool244.not.i, label %if.then263.i, label %if.end260.i

if.end260.i:                                      ; preds = %if.then238.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v241.i) #12
  br label %if.end25

if.then263.i:                                     ; preds = %if.then238.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %_v241.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %_v241.i, align 4
  %48 = call i32 @llvm.umax.i32(i32 %47, i32 1) #12
  %49 = call i32 @llvm.umin.i32(i32 %48, i32 60) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v241.i) #12
  %writeback_rate_update_seconds.i = getelementptr i8, ptr %kobj, i32 53268
  %50 = ptrtoint ptr %writeback_rate_update_seconds.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %writeback_rate_update_seconds.i, align 4
  br label %if.end25

do.body270.i:                                     ; preds = %do.body235.i
  %cmp271.i = icmp eq ptr %attr, @sysfs_writeback_rate_i_term_inverse
  br i1 %cmp271.i, label %if.then273.i, label %do.body305.i

if.then273.i:                                     ; preds = %do.body270.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v276.i) #12
  %51 = ptrtoint ptr %_v276.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %_v276.i, align 4, !annotation !422
  %call.i1030.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v276.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1030.i)
  %tobool279.not.i = icmp eq i32 %call.i1030.i, 0
  br i1 %tobool279.not.i, label %if.then298.i, label %if.end295.i

if.end295.i:                                      ; preds = %if.then273.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v276.i) #12
  br label %if.end25

if.then298.i:                                     ; preds = %if.then273.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %_v276.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %_v276.i, align 4
  %54 = call i32 @llvm.umax.i32(i32 %53, i32 1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v276.i) #12
  %writeback_rate_i_term_inverse.i = getelementptr i8, ptr %kobj, i32 53272
  %55 = ptrtoint ptr %writeback_rate_i_term_inverse.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %writeback_rate_i_term_inverse.i, align 8
  br label %if.end25

do.body305.i:                                     ; preds = %do.body270.i
  %cmp306.i = icmp eq ptr %attr, @sysfs_writeback_rate_p_term_inverse
  br i1 %cmp306.i, label %if.then308.i, label %do.body340.i

if.then308.i:                                     ; preds = %do.body305.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v311.i) #12
  %56 = ptrtoint ptr %_v311.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %_v311.i, align 4, !annotation !422
  %call.i1031.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v311.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1031.i)
  %tobool314.not.i = icmp eq i32 %call.i1031.i, 0
  br i1 %tobool314.not.i, label %if.then333.i, label %if.end330.i

if.end330.i:                                      ; preds = %if.then308.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v311.i) #12
  br label %if.end25

if.then333.i:                                     ; preds = %if.then308.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %_v311.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %_v311.i, align 4
  %59 = call i32 @llvm.umax.i32(i32 %58, i32 1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v311.i) #12
  %writeback_rate_p_term_inverse.i = getelementptr i8, ptr %kobj, i32 53276
  %60 = ptrtoint ptr %writeback_rate_p_term_inverse.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %writeback_rate_p_term_inverse.i, align 4
  br label %if.end25

do.body340.i:                                     ; preds = %do.body305.i
  %cmp341.i = icmp eq ptr %attr, @sysfs_writeback_rate_fp_term_low
  br i1 %cmp341.i, label %if.then343.i, label %do.body375.i

if.then343.i:                                     ; preds = %do.body340.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v346.i) #12
  %61 = ptrtoint ptr %_v346.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %_v346.i, align 4, !annotation !422
  %call.i1032.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v346.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1032.i)
  %tobool349.not.i = icmp eq i32 %call.i1032.i, 0
  br i1 %tobool349.not.i, label %if.then368.i, label %if.end365.i

if.end365.i:                                      ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v346.i) #12
  br label %if.end25

if.then368.i:                                     ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %_v346.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %_v346.i, align 4
  %64 = call i32 @llvm.umax.i32(i32 %63, i32 1) #12
  %writeback_rate_fp_term_mid.i = getelementptr i8, ptr %kobj, i32 53284
  %65 = ptrtoint ptr %writeback_rate_fp_term_mid.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %writeback_rate_fp_term_mid.i, align 4
  %sub.i = add i32 %66, -1
  %67 = call i32 @llvm.umin.i32(i32 %64, i32 %sub.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v346.i) #12
  %writeback_rate_fp_term_low.i = getelementptr i8, ptr %kobj, i32 53280
  %68 = ptrtoint ptr %writeback_rate_fp_term_low.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %writeback_rate_fp_term_low.i, align 8
  br label %if.end25

do.body375.i:                                     ; preds = %do.body340.i
  %cmp376.i = icmp eq ptr %attr, @sysfs_writeback_rate_fp_term_mid
  br i1 %cmp376.i, label %if.then378.i, label %do.body413.i

if.then378.i:                                     ; preds = %do.body375.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v381.i) #12
  %69 = ptrtoint ptr %_v381.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %_v381.i, align 4, !annotation !422
  %call.i1033.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v381.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1033.i)
  %tobool384.not.i = icmp eq i32 %call.i1033.i, 0
  br i1 %tobool384.not.i, label %if.then405.i, label %if.end402.i

if.end402.i:                                      ; preds = %if.then378.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v381.i) #12
  br label %if.end25

if.then405.i:                                     ; preds = %if.then378.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %_v381.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %_v381.i, align 4
  %writeback_rate_fp_term_low386.i = getelementptr i8, ptr %kobj, i32 53280
  %72 = ptrtoint ptr %writeback_rate_fp_term_low386.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %writeback_rate_fp_term_low386.i, align 8
  %add.i = add i32 %73, 1
  %74 = call i32 @llvm.umax.i32(i32 %71, i32 %add.i) #12
  %writeback_rate_fp_term_high.i = getelementptr i8, ptr %kobj, i32 53288
  %75 = ptrtoint ptr %writeback_rate_fp_term_high.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %writeback_rate_fp_term_high.i, align 8
  %sub394.i = add i32 %76, -1
  %77 = call i32 @llvm.umin.i32(i32 %74, i32 %sub394.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v381.i) #12
  %writeback_rate_fp_term_mid406.i = getelementptr i8, ptr %kobj, i32 53284
  %78 = ptrtoint ptr %writeback_rate_fp_term_mid406.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %writeback_rate_fp_term_mid406.i, align 4
  br label %if.end25

do.body413.i:                                     ; preds = %do.body375.i
  %cmp414.i = icmp eq ptr %attr, @sysfs_writeback_rate_fp_term_high
  br i1 %cmp414.i, label %if.then416.i, label %do.body451.i

if.then416.i:                                     ; preds = %do.body413.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v419.i) #12
  %79 = ptrtoint ptr %_v419.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %_v419.i, align 4, !annotation !422
  %call.i1034.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v419.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1034.i)
  %tobool422.not.i = icmp eq i32 %call.i1034.i, 0
  br i1 %tobool422.not.i, label %if.then443.i, label %if.end440.i

if.end440.i:                                      ; preds = %if.then416.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v419.i) #12
  br label %if.end25

if.then443.i:                                     ; preds = %if.then416.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %_v419.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %_v419.i, align 4
  %writeback_rate_fp_term_mid424.i = getelementptr i8, ptr %kobj, i32 53284
  %82 = ptrtoint ptr %writeback_rate_fp_term_mid424.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %writeback_rate_fp_term_mid424.i, align 4
  %add425.i = add i32 %83, 1
  %84 = call i32 @llvm.umax.i32(i32 %81, i32 %add425.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v419.i) #12
  %writeback_rate_fp_term_high444.i = getelementptr i8, ptr %kobj, i32 53288
  %85 = ptrtoint ptr %writeback_rate_fp_term_high444.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %writeback_rate_fp_term_high444.i, align 8
  br label %if.end25

do.body451.i:                                     ; preds = %do.body413.i
  %cmp452.i = icmp eq ptr %attr, @sysfs_writeback_rate_minimum
  br i1 %cmp452.i, label %if.then454.i, label %do.body486.i

if.then454.i:                                     ; preds = %do.body451.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v457.i) #12
  %86 = ptrtoint ptr %_v457.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %_v457.i, align 4, !annotation !422
  %call.i1035.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v457.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1035.i)
  %tobool460.not.i = icmp eq i32 %call.i1035.i, 0
  br i1 %tobool460.not.i, label %if.then479.i, label %if.end476.i

if.end476.i:                                      ; preds = %if.then454.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v457.i) #12
  br label %if.end25

if.then479.i:                                     ; preds = %if.then454.i
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %_v457.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %_v457.i, align 4
  %89 = call i32 @llvm.umax.i32(i32 %88, i32 1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v457.i) #12
  %writeback_rate_minimum.i = getelementptr i8, ptr %kobj, i32 53292
  %90 = ptrtoint ptr %writeback_rate_minimum.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %writeback_rate_minimum.i, align 4
  br label %if.end25

do.body486.i:                                     ; preds = %do.body451.i
  %cmp487.i = icmp eq ptr %attr, @sysfs_io_error_limit
  br i1 %cmp487.i, label %if.then489.i, label %do.end520.i

if.then489.i:                                     ; preds = %do.body486.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v492.i) #12
  %91 = ptrtoint ptr %_v492.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %_v492.i, align 4, !annotation !422
  %call.i1036.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v492.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1036.i)
  %tobool495.not.i = icmp eq i32 %call.i1036.i, 0
  br i1 %tobool495.not.i, label %if.then514.i, label %if.end511.i

if.end511.i:                                      ; preds = %if.then489.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v492.i) #12
  br label %if.end25

if.then514.i:                                     ; preds = %if.then489.i
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %_v492.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %_v492.i, align 4
  %94 = call i32 @llvm.umin.i32(i32 %93, i32 2147483647) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v492.i) #12
  %error_limit.i = getelementptr i8, ptr %kobj, i32 53304
  %95 = ptrtoint ptr %error_limit.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %error_limit.i, align 8
  br label %if.end25

do.end520.i:                                      ; preds = %do.body486.i
  %cmp521.i = icmp eq ptr %attr, @sysfs_io_disable
  br i1 %cmp521.i, label %if.then523.i, label %do.body548.i

if.then523.i:                                     ; preds = %do.end520.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v525.i) #12
  %96 = ptrtoint ptr %_v525.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %_v525.i, align 4, !annotation !422
  %call.i1037.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v525.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1037.i)
  %tobool528.not.i = icmp eq i32 %call.i1037.i, 0
  br i1 %tobool528.not.i, label %do.end582.thread.i, label %cleanup532.i

cleanup532.i:                                     ; preds = %if.then523.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v525.i) #12
  br label %if.end25

do.end582.thread.i:                               ; preds = %if.then523.i
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %_v525.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %_v525.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v525.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool536.not.not.i = icmp eq i32 %98, 0
  %io_disable.i = getelementptr i8, ptr %kobj, i32 53224
  %99 = ptrtoint ptr %io_disable.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load538.i = load i8, ptr %io_disable.i, align 8
  %bf.shl540.i = select i1 %tobool536.not.not.i, i8 0, i8 -128
  %bf.clear541.i = and i8 %bf.load538.i, 127
  %bf.set542.i = or i8 %bf.clear541.i, %bf.shl540.i
  store i8 %bf.set542.i, ptr %io_disable.i, align 8
  br label %if.end25

do.body548.i:                                     ; preds = %do.end520.i
  %cmp549.i = icmp eq ptr %attr, @sysfs_sequential_cutoff
  br i1 %cmp549.i, label %if.then551.i, label %do.end582.i

if.then551.i:                                     ; preds = %do.body548.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v554.i) #12
  %100 = ptrtoint ptr %_v554.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %_v554.i, align 4, !annotation !422
  %call.i1038.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v554.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1038.i)
  %tobool557.not.i = icmp eq i32 %call.i1038.i, 0
  br i1 %tobool557.not.i, label %if.then576.i, label %if.end573.i

if.end573.i:                                      ; preds = %if.then551.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v554.i) #12
  br label %if.end25

if.then576.i:                                     ; preds = %if.then551.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %_v554.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %_v554.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v554.i) #12
  %sequential_cutoff.i = getelementptr i8, ptr %kobj, i32 53220
  %103 = ptrtoint ptr %sequential_cutoff.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %sequential_cutoff.i, align 4
  br label %if.end25

do.end582.i:                                      ; preds = %do.body548.i
  %cmp583.i = icmp eq ptr %attr, @sysfs_clear_stats
  br i1 %cmp583.i, label %if.then585.i, label %if.end586.i

if.then585.i:                                     ; preds = %do.end582.i
  call void @__sanitizer_cov_trace_pc() #14
  %accounting.i = getelementptr i8, ptr %kobj, i32 52400
  tail call void @bch_cache_accounting_clear(ptr noundef %accounting.i) #12
  br label %if.end25

if.end586.i:                                      ; preds = %do.end582.i
  %cmp587.i = icmp eq ptr %attr, @sysfs_running
  br i1 %cmp587.i, label %land.lhs.true.i, label %if.end606.i

land.lhs.true.i:                                  ; preds = %if.end586.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v589.i) #12
  %104 = ptrtoint ptr %_v589.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %_v589.i, align 4, !annotation !422
  %call.i1039.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v589.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1039.i)
  %tobool592.not.i = icmp eq i32 %call.i1039.i, 0
  br i1 %tobool592.not.i, label %cleanup.cont599.i, label %cleanup596.i

cleanup596.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v589.i) #12
  br label %if.end25

cleanup.cont599.i:                                ; preds = %land.lhs.true.i
  %105 = ptrtoint ptr %_v589.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %_v589.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v589.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool600.not.i = icmp eq i32 %106, 0
  br i1 %tobool600.not.i, label %cleanup.cont599.i.if.end14.thread69_crit_edge, label %if.then601.i

cleanup.cont599.i.if.end14.thread69_crit_edge:    ; preds = %cleanup.cont599.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.thread69

if.then601.i:                                     ; preds = %cleanup.cont599.i
  %call602.i = call i32 @bch_cached_dev_run(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call602.i)
  %tobool603.not.i = icmp eq i32 %call602.i, 0
  br i1 %tobool603.not.i, label %if.then601.i.if.end14.thread69_crit_edge, label %if.then601.i.if.end25_crit_edge

if.then601.i.if.end25_crit_edge:                  ; preds = %if.then601.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then601.i.if.end14.thread69_crit_edge:         ; preds = %if.then601.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.thread69

if.end606.i:                                      ; preds = %if.end586.i
  %cmp607.i = icmp eq ptr %attr, @sysfs_cache_mode
  br i1 %cmp607.i, label %if.then609.i, label %if.end623.i

if.then609.i:                                     ; preds = %if.end606.i
  %call610.i = tail call i32 @__sysfs_match_string(ptr noundef nonnull @bch_cache_modes, i32 noundef -1, ptr noundef %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call610.i)
  %cmp611.i = icmp slt i32 %call610.i, 0
  br i1 %cmp611.i, label %if.then609.i.if.end25_crit_edge, label %if.end614.i

if.then609.i.if.end25_crit_edge:                  ; preds = %if.then609.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end614.i:                                      ; preds = %if.then609.i
  %conv615.i = zext i32 %call610.i to i64
  %flags.i.i = getelementptr i8, ptr %kobj, i32 896
  %107 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %flags.i.i, align 8
  %and.i.i = and i64 %108, 15
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %conv615.i)
  %cmp617.not.i = icmp eq i64 %and.i.i, %conv615.i
  br i1 %cmp617.not.i, label %if.end614.i.if.end14.thread69_crit_edge, label %if.then619.i

if.end614.i.if.end14.thread69_crit_edge:          ; preds = %if.end614.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.thread69

if.then619.i:                                     ; preds = %if.end614.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i1041.i = and i64 %108, -16
  %109 = and i32 %call610.i, 15
  %and1.i.i = zext i32 %109 to i64
  %or.i.i = or i64 %and.i1041.i, %and1.i.i
  %110 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %or.i.i, ptr %flags.i.i, align 8
  tail call void @bch_write_bdev_super(ptr noundef %add.ptr, ptr noundef null) #12
  br label %if.end14.thread69

if.end623.i:                                      ; preds = %if.end606.i
  %cmp624.i = icmp eq ptr %attr, @sysfs_readahead_cache_policy
  br i1 %cmp624.i, label %if.then626.i, label %if.end637.i

if.then626.i:                                     ; preds = %if.end623.i
  %call627.i = tail call i32 @__sysfs_match_string(ptr noundef nonnull @bch_reada_cache_policies, i32 noundef -1, ptr noundef %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call627.i)
  %cmp628.i = icmp slt i32 %call627.i, 0
  br i1 %cmp628.i, label %if.then626.i.if.end25_crit_edge, label %if.end631.i

if.then626.i.if.end25_crit_edge:                  ; preds = %if.then626.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end631.i:                                      ; preds = %if.then626.i
  %cache_readahead_policy.i = getelementptr i8, ptr %kobj, i32 3420
  %111 = ptrtoint ptr %cache_readahead_policy.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cache_readahead_policy.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call627.i, i32 %112)
  %cmp632.not.i = icmp eq i32 %call627.i, %112
  br i1 %cmp632.not.i, label %if.end631.i.if.end25_crit_edge, label %if.then634.i

if.end631.i.if.end25_crit_edge:                   ; preds = %if.end631.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then634.i:                                     ; preds = %if.end631.i
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %cache_readahead_policy.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call627.i, ptr %cache_readahead_policy.i, align 4
  br label %if.end25

if.end637.i:                                      ; preds = %if.end623.i
  %cmp638.i = icmp eq ptr %attr, @sysfs_stop_when_cache_set_failed
  br i1 %cmp638.i, label %if.then640.i, label %if.end646.i

if.then640.i:                                     ; preds = %if.end637.i
  %call641.i = tail call i32 @__sysfs_match_string(ptr noundef nonnull @bch_stop_on_failure_modes, i32 noundef -1, ptr noundef %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call641.i)
  %cmp642.i = icmp slt i32 %call641.i, 0
  br i1 %cmp642.i, label %if.then640.i.if.end25_crit_edge, label %if.end645.i

if.then640.i.if.end25_crit_edge:                  ; preds = %if.then640.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end645.i:                                      ; preds = %if.then640.i
  call void @__sanitizer_cov_trace_pc() #14
  %stop_when_cache_set_failed.i = getelementptr i8, ptr %kobj, i32 53296
  %114 = ptrtoint ptr %stop_when_cache_set_failed.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %call641.i, ptr %stop_when_cache_set_failed.i, align 8
  br label %if.end25

if.end646.i:                                      ; preds = %if.end637.i
  %cmp647.i = icmp eq ptr %attr, @sysfs_label
  br i1 %cmp647.i, label %if.then649.i, label %if.end704.i

if.then649.i:                                     ; preds = %if.end646.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %cmp650.i = icmp ugt i32 %size, 32
  br i1 %cmp650.i, label %if.then649.i.if.end25_crit_edge, label %if.end653.i

if.then649.i.if.end25_crit_edge:                  ; preds = %if.then649.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end653.i:                                      ; preds = %if.then649.i
  %label.i = getelementptr i8, ptr %kobj, i32 864
  %115 = call ptr @memcpy(ptr %label.i, ptr %buf, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %cond.i = icmp eq i32 %size, 32
  br i1 %cond.i, label %if.end653.i.land.lhs.true662.i_crit_edge, label %if.then657.i

if.end653.i.land.lhs.true662.i_crit_edge:         ; preds = %if.end653.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true662.i

if.then657.i:                                     ; preds = %if.end653.i
  %arrayidx.i = getelementptr [32 x i8], ptr %label.i, i32 0, i32 %size
  %116 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool661.not.i = icmp eq i32 %size, 0
  br i1 %tobool661.not.i, label %if.then657.i.if.end675.i_crit_edge, label %if.then657.i.land.lhs.true662.i_crit_edge

if.then657.i.land.lhs.true662.i_crit_edge:        ; preds = %if.then657.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true662.i

if.then657.i.if.end675.i_crit_edge:               ; preds = %if.then657.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end675.i

land.lhs.true662.i:                               ; preds = %if.then657.i.land.lhs.true662.i_crit_edge, %if.end653.i.land.lhs.true662.i_crit_edge
  %sub665.i = add nsw i32 %size, -1
  %arrayidx666.i = getelementptr [32 x i8], ptr %label.i, i32 0, i32 %sub665.i
  %117 = ptrtoint ptr %arrayidx666.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx666.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %118)
  %cmp668.i = icmp eq i8 %118, 10
  br i1 %cmp668.i, label %if.then670.i, label %land.lhs.true662.i.if.end675.i_crit_edge

land.lhs.true662.i.if.end675.i_crit_edge:         ; preds = %land.lhs.true662.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end675.i

if.then670.i:                                     ; preds = %land.lhs.true662.i
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %arrayidx666.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %arrayidx666.i, align 1
  br label %if.end675.i

if.end675.i:                                      ; preds = %if.then670.i, %land.lhs.true662.i.if.end675.i_crit_edge, %if.then657.i.if.end675.i_crit_edge
  tail call void @bch_write_bdev_super(ptr noundef %add.ptr, ptr noundef null) #12
  %c677.i = getelementptr i8, ptr %kobj, i32 136
  %120 = ptrtoint ptr %c677.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %c677.i, align 8
  %tobool678.not.i = icmp eq ptr %121, null
  br i1 %tobool678.not.i, label %if.end675.i.if.end689.i_crit_edge, label %if.then679.i

if.end675.i.if.end689.i_crit_edge:                ; preds = %if.end675.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end689.i

if.then679.i:                                     ; preds = %if.end675.i
  call void @__sanitizer_cov_trace_pc() #14
  %uuids.i = getelementptr inbounds %struct.cache_set, ptr %121, i32 0, i32 58
  %122 = ptrtoint ptr %uuids.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %uuids.i, align 8
  %id.i = getelementptr i8, ptr %kobj, i32 140
  %124 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %id.i, align 4
  %label684.i = getelementptr %struct.uuid_entry, ptr %123, i32 %125, i32 0, i32 0, i32 1
  %126 = call ptr @memcpy(ptr %label684.i, ptr %buf, i32 32)
  %127 = ptrtoint ptr %c677.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %c677.i, align 8
  %call688.i = tail call i32 @bch_uuid_write(ptr noundef %128) #12
  br label %if.end689.i

if.end689.i:                                      ; preds = %if.then679.i, %if.end675.i.if.end689.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %129 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3520, i32 noundef 2324) #16
  %tobool691.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool691.not.i, label %if.end689.i.if.end25_crit_edge, label %if.end738.thread.i

if.end689.i.if.end25_crit_edge:                   ; preds = %if.end689.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end738.thread.i:                               ; preds = %if.end689.i
  call void @__sanitizer_cov_trace_pc() #14
  %call694.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.60) #12
  %uuid.i = getelementptr i8, ptr %kobj, i32 832
  %call697.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.61, ptr noundef %uuid.i) #12
  %call698.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.62, ptr noundef %buf) #12
  %disk700.i = getelementptr i8, ptr %kobj, i32 156
  %130 = ptrtoint ptr %disk700.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %disk700.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %131, i32 0, i32 7
  %132 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %133, i32 0, i32 10
  %envp.i = getelementptr inbounds %struct.kobj_uevent_env, ptr %call7.i.i.i, i32 0, i32 1
  %call703.i = tail call i32 @kobject_uevent_env(ptr noundef %bd_device.i, i32 noundef 2, ptr noundef %envp.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end25

if.end704.i:                                      ; preds = %if.end646.i
  %cmp705.i = icmp eq ptr %attr, @sysfs_attach
  br i1 %cmp705.i, label %if.then707.i, label %if.end738.i

if.then707.i:                                     ; preds = %if.end704.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %set_uuid.i) #12
  %134 = call ptr @memset(ptr %set_uuid.i, i32 255, i32 16)
  %call709.i = call i32 @bch_parse_uuid(ptr noundef %buf, ptr noundef nonnull %set_uuid.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call709.i)
  %cmp710.i = icmp slt i32 %call709.i, 16
  br i1 %cmp710.i, label %if.then707.i.cleanup737.i_crit_edge, label %for.cond.preheader.i

if.then707.i.cleanup737.i_crit_edge:              ; preds = %if.then707.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup737.i

for.cond.preheader.i:                             ; preds = %if.then707.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_cache_sets to i32))
  %.pn1139.i = load ptr, ptr @bch_cache_sets, align 4
  %cmp717.not1140.i = icmp eq ptr %.pn1139.i, @bch_cache_sets
  br i1 %cmp717.not1140.i, label %for.cond.preheader.i.do.end733.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.end733.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end733.i

for.cond.i:                                       ; preds = %for.body.i
  %135 = ptrtoint ptr %.pn1141.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn.i = load ptr, ptr %.pn1141.i, align 4
  %cmp717.not.i = icmp eq ptr %.pn.i, @bch_cache_sets
  br i1 %cmp717.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn1141.i = phi ptr [ %.pn.i, %for.cond.i.for.body.i_crit_edge ], [ %.pn1139.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn1141.i, i32 -72
  %call720.i = call i32 @bch_cached_dev_attach(ptr noundef %add.ptr, ptr noundef %c.0.i, ptr noundef nonnull %set_uuid.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call720.i)
  %tobool721.not.i = icmp eq i32 %call720.i, 0
  br i1 %tobool721.not.i, label %for.body.i.cleanup737.i_crit_edge, label %for.cond.i

for.body.i.cleanup737.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup737.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call720.i)
  %cmp728.i = icmp eq i32 %call720.i, -2
  br i1 %cmp728.i, label %for.end.i.do.end733.i_crit_edge, label %for.end.i.cleanup737.i_crit_edge

for.end.i.cleanup737.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup737.i

for.end.i.do.end733.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end733.i

do.end733.i:                                      ; preds = %for.end.i.do.end733.i_crit_edge, %for.cond.preheader.i.do.end733.i_crit_edge
  %call735.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef %buf) #17
  br label %cleanup737.i

cleanup737.i:                                     ; preds = %do.end733.i, %for.end.i.cleanup737.i_crit_edge, %for.body.i.cleanup737.i_crit_edge, %if.then707.i.cleanup737.i_crit_edge
  %retval.22.i = phi i32 [ -22, %if.then707.i.cleanup737.i_crit_edge ], [ -2, %do.end733.i ], [ %call720.i, %for.end.i.cleanup737.i_crit_edge ], [ %size, %for.body.i.cleanup737.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %set_uuid.i) #12
  br label %__cached_dev_store.exit

if.end738.i:                                      ; preds = %if.end704.i
  %cmp739.i = icmp eq ptr %attr, @sysfs_detach
  br i1 %cmp739.i, label %land.lhs.true741.i, label %if.end746.i

land.lhs.true741.i:                               ; preds = %if.end738.i
  %c743.i = getelementptr i8, ptr %kobj, i32 136
  %136 = ptrtoint ptr %c743.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %c743.i, align 8
  %tobool744.not.i = icmp eq ptr %137, null
  br i1 %tobool744.not.i, label %land.lhs.true741.i.if.end25_crit_edge, label %if.then745.i

land.lhs.true741.i.if.end25_crit_edge:            ; preds = %land.lhs.true741.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then745.i:                                     ; preds = %land.lhs.true741.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bch_cached_dev_detach(ptr noundef %add.ptr) #12
  br label %if.end25

if.end746.i:                                      ; preds = %if.end738.i
  %cmp747.i = icmp eq ptr %attr, @sysfs_stop
  br i1 %cmp747.i, label %if.then749.i, label %if.end746.i.__cached_dev_store.exit_crit_edge

if.end746.i.__cached_dev_store.exit_crit_edge:    ; preds = %if.end746.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cached_dev_store.exit

if.then749.i:                                     ; preds = %if.end746.i
  call void @__sanitizer_cov_trace_pc() #14
  %disk750.i = getelementptr i8, ptr %kobj, i32 -72
  tail call void @bcache_device_stop(ptr noundef %disk750.i) #12
  br label %if.end25

__cached_dev_store.exit:                          ; preds = %if.end746.i.__cached_dev_store.exit_crit_edge, %cleanup737.i, %if.end.__cached_dev_store.exit_crit_edge
  %retval.23.i = phi i32 [ %retval.22.i, %cleanup737.i ], [ -16, %if.end.__cached_dev_store.exit_crit_edge ], [ %size, %if.end746.i.__cached_dev_store.exit_crit_edge ]
  %cmp = icmp eq ptr %attr, @sysfs_writeback_running
  br i1 %cmp, label %__cached_dev_store.exit.if.then1_crit_edge, label %if.end14

__cached_dev_store.exit.if.then1_crit_edge:       ; preds = %__cached_dev_store.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then1

if.then1:                                         ; preds = %__cached_dev_store.exit.if.then1_crit_edge, %cleanup.cont97.i, %cleanup94.i
  %retval.23.i50 = phi i32 [ %retval.23.i, %__cached_dev_store.exit.if.then1_crit_edge ], [ %call.i1024.i, %cleanup94.i ], [ %size, %cleanup.cont97.i ]
  %writeback_thread = getelementptr i8, ptr %kobj, i32 3596
  %138 = ptrtoint ptr %writeback_thread to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %writeback_thread, align 4
  %tobool.not.i38 = icmp eq ptr %139, null
  %cmp.i39 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  %spec.select.i40 = or i1 %tobool.not.i38, %cmp.i39
  br i1 %spec.select.i40, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  %writeback_running = getelementptr i8, ptr %kobj, i32 53224
  %140 = ptrtoint ptr %writeback_running to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load = load i8, ptr %writeback_running, align 8
  %141 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool4.not = icmp eq i8 %141, 0
  br i1 %tobool4.not, label %if.then3.if.end25_crit_edge, label %if.then5

if.then3.if.end25_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear8 = and i8 %bf.load, -5
  %142 = ptrtoint ptr %writeback_running to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %bf.clear8, ptr %writeback_running, align 8
  %disk10 = getelementptr i8, ptr %kobj, i32 156
  %143 = ptrtoint ptr %disk10 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %disk10, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %144, i32 0, i32 3
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef %disk_name) #17
  br label %if.end25

if.else:                                          ; preds = %if.then1
  %145 = ptrtoint ptr %writeback_thread to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %writeback_thread, align 4
  %tobool.not.i.i = icmp eq ptr %146, null
  %cmp.i.i = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.else.if.end25_crit_edge, label %if.then.i

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = call i32 @wake_up_process(ptr noundef nonnull %146) #12
  br label %if.end25

if.end14.thread69:                                ; preds = %if.then619.i, %if.end614.i.if.end14.thread69_crit_edge, %if.then601.i.if.end14.thread69_crit_edge, %cleanup.cont599.i.if.end14.thread69_crit_edge
  br label %if.end25

if.end14:                                         ; preds = %__cached_dev_store.exit
  %cmp15 = icmp eq ptr %attr, @sysfs_writeback_percent
  br i1 %cmp15, label %if.end14.if.then16_crit_edge, label %if.end14.if.end25_crit_edge

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %if.then193.i, %if.end190.i
  %retval.23.i4467 = phi i32 [ %retval.23.i, %if.end14.if.then16_crit_edge ], [ %size, %if.then193.i ], [ %call.i1027.i, %if.end190.i ]
  %c = getelementptr i8, ptr %kobj, i32 136
  %147 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %c, align 8
  %cmp18.not = icmp eq ptr %148, null
  br i1 %cmp18.not, label %if.then16.if.end25_crit_edge, label %land.lhs.true

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then16
  %flags = getelementptr i8, ptr %kobj, i32 160
  %call20 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_rate_update = getelementptr i8, ptr %kobj, i32 3440
  %writeback_rate_update_seconds = getelementptr i8, ptr %kobj, i32 53268
  %149 = ptrtoint ptr %writeback_rate_update_seconds to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %writeback_rate_update_seconds, align 4
  %mul = mul i32 %150, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %151 = load ptr, ptr @system_wq, align 4
  %call.i.i41 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %151, ptr noundef %writeback_rate_update, i32 noundef %mul) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true.if.end25_crit_edge, %if.then16.if.end25_crit_edge, %if.end14.if.end25_crit_edge, %if.end14.thread69, %if.then.i, %if.else.if.end25_crit_edge, %if.then5, %if.then3.if.end25_crit_edge, %if.then749.i, %if.then745.i, %land.lhs.true741.i.if.end25_crit_edge, %if.end738.thread.i, %if.end689.i.if.end25_crit_edge, %if.then649.i.if.end25_crit_edge, %if.end645.i, %if.then640.i.if.end25_crit_edge, %if.then634.i, %if.end631.i.if.end25_crit_edge, %if.then626.i.if.end25_crit_edge, %if.then609.i.if.end25_crit_edge, %if.then601.i.if.end25_crit_edge, %cleanup596.i, %if.then585.i, %if.then576.i, %if.end573.i, %do.end582.thread.i, %cleanup532.i, %if.then514.i, %if.end511.i, %if.then479.i, %if.end476.i, %if.then443.i, %if.end440.i, %if.then405.i, %if.end402.i, %if.then368.i, %if.end365.i, %if.then333.i, %if.end330.i, %if.then298.i, %if.end295.i, %if.then263.i, %if.end260.i, %if.then228.i, %if.end225.i, %if.then161.i, %if.end158.i, %cleanup.cont124.i, %cleanup121.i, %cleanup.cont70.i, %cleanup67.i, %cleanup.cont.i, %cleanup.i, %if.end22.i, %if.end4.i
  %retval.23.i4453 = phi i32 [ %retval.23.i4467, %if.then16.if.end25_crit_edge ], [ %retval.23.i4467, %land.lhs.true.if.end25_crit_edge ], [ %retval.23.i4467, %if.then22 ], [ %retval.23.i, %if.end14.if.end25_crit_edge ], [ %retval.23.i50, %if.then.i ], [ %retval.23.i50, %if.else.if.end25_crit_edge ], [ %retval.23.i50, %if.then5 ], [ %retval.23.i50, %if.then3.if.end25_crit_edge ], [ %spec.select.i, %if.end4.i ], [ %spec.select1010.i, %if.end22.i ], [ %call.i1039.i, %cleanup596.i ], [ %size, %cleanup.cont.i ], [ %call.i1022.i, %cleanup.i ], [ %size, %cleanup.cont70.i ], [ %call.i1023.i, %cleanup67.i ], [ %size, %cleanup.cont124.i ], [ %call.i1025.i, %cleanup121.i ], [ %size, %if.then161.i ], [ %call.i1026.i, %if.end158.i ], [ %call.i1028.i, %if.end225.i ], [ %size, %if.then228.i ], [ %size, %if.then263.i ], [ %call.i1029.i, %if.end260.i ], [ %size, %if.then298.i ], [ %call.i1030.i, %if.end295.i ], [ %size, %if.then333.i ], [ %call.i1031.i, %if.end330.i ], [ %size, %if.then368.i ], [ %call.i1032.i, %if.end365.i ], [ %size, %if.then405.i ], [ %call.i1033.i, %if.end402.i ], [ %size, %if.then443.i ], [ %call.i1034.i, %if.end440.i ], [ %size, %if.then479.i ], [ %call.i1035.i, %if.end476.i ], [ %size, %if.then514.i ], [ %call.i1036.i, %if.end511.i ], [ %size, %if.then576.i ], [ %call.i1038.i, %if.end573.i ], [ %call602.i, %if.then601.i.if.end25_crit_edge ], [ %call610.i, %if.then609.i.if.end25_crit_edge ], [ %call627.i, %if.then626.i.if.end25_crit_edge ], [ %call641.i, %if.then640.i.if.end25_crit_edge ], [ -22, %if.then649.i.if.end25_crit_edge ], [ -12, %if.end689.i.if.end25_crit_edge ], [ %size, %if.then749.i ], [ %call.i1037.i, %cleanup532.i ], [ %size, %if.end738.thread.i ], [ %size, %if.then745.i ], [ %size, %land.lhs.true741.i.if.end25_crit_edge ], [ %size, %if.then634.i ], [ %size, %if.end631.i.if.end25_crit_edge ], [ %size, %if.end645.i ], [ %size, %if.then585.i ], [ %size, %do.end582.thread.i ], [ %size, %if.end14.thread69 ]
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.23.i4453, %if.end25 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_flash_dev_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_flash_dev_show(ptr nocapture noundef readonly %kobj, ptr noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr i8, ptr %kobj, i32 136
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %uuids = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uuids, align 8
  %id = getelementptr i8, ptr %kobj, i32 140
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.uuid_entry, ptr %3, i32 %5
  %cmp = icmp eq ptr %attr, @sysfs_data_csum
  br i1 %cmp, label %if.then, label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data_csum = getelementptr i8, ptr %kobj, i32 784
  %6 = ptrtoint ptr %data_csum to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %data_csum, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast) #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %cmp2 = icmp eq ptr %attr, @sysfs_size
  br i1 %cmp2, label %if.then3, label %do.end8

if.then3:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %sectors = getelementptr inbounds %struct.anon.95, ptr %arrayidx, i32 0, i32 6
  %7 = ptrtoint ptr %sectors to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sectors, align 8
  %shl = shl i64 %8, 9
  %call4 = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %shl) #12
  %strlen27 = tail call i32 @strlen(ptr %buf) #18
  %endptr28 = getelementptr i8, ptr %buf, i32 %strlen27
  %9 = ptrtoint ptr %endptr28 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 2560, ptr %endptr28, align 1
  %add = add i32 %call4, 1
  br label %cleanup

do.end8:                                          ; preds = %do.body1
  %cmp9 = icmp eq ptr %attr, @sysfs_label
  br i1 %cmp9, label %if.then10, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %label = getelementptr inbounds %struct.anon.95, ptr %arrayidx, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %buf, ptr %label, i32 32)
  %arrayidx11 = getelementptr i8, ptr %buf, i32 33
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx11, align 1
  %strlen = tail call i32 @strlen(ptr %buf) #18
  %endptr = getelementptr i8, ptr %buf, i32 %strlen
  %12 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 2560, ptr %endptr, align 1
  %call13 = tail call i32 @strlen(ptr noundef %buf) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.end8.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %add, %if.then3 ], [ %call13, %if.then10 ], [ 0, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_flash_dev_store(ptr noundef %kobj, ptr noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  %_v.i = alloca i32, align 4
  %v.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #12
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -72
  %c.i = getelementptr i8, ptr %kobj, i32 136
  %0 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c.i, align 4
  %uuids.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %uuids.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uuids.i, align 8
  %id.i = getelementptr i8, ptr %kobj, i32 140
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.uuid_entry, ptr %3, i32 %5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @bcache_is_reboot to i32))
  %6 = load i8, ptr @bcache_is_reboot, align 1, !range !421
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %do.body.i, label %entry.__bch_flash_dev_store.exit_crit_edge

entry.__bch_flash_dev_store.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_flash_dev_store.exit

do.body.i:                                        ; preds = %entry
  %cmp.i = icmp eq ptr %attr, @sysfs_data_csum
  br i1 %cmp.i, label %if.then1.i, label %do.end.i

if.then1.i:                                       ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v.i) #12
  %7 = ptrtoint ptr %_v.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %_v.i, align 4, !annotation !422
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then1.i.if.end4.i_crit_edge

if.then1.i.if.end4.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %_v.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_v.i, align 4
  %data_csum.i = getelementptr i8, ptr %kobj, i32 784
  %10 = trunc i32 %9 to i8
  %11 = ptrtoint ptr %data_csum.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %data_csum.i, align 4
  %bf.shl.i = shl i8 %10, 7
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %data_csum.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then1.i.if.end4.i_crit_edge
  %spec.select.i = phi i32 [ %size, %if.then3.i ], [ %call.i.i, %if.then1.i.if.end4.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v.i) #12
  br label %__bch_flash_dev_store.exit

do.end.i:                                         ; preds = %do.body.i
  %cmp8.i = icmp eq ptr %attr, @sysfs_size
  br i1 %cmp8.i, label %if.then9.i, label %if.end24.i

if.then9.i:                                       ; preds = %do.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i) #12
  %12 = ptrtoint ptr %v.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %v.i, align 8, !annotation !422
  %call12.i = call i32 @bch_strtoull_h(ptr noundef %buf, ptr noundef nonnull %v.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end24.thread.i, label %cleanup33.critedge.i

if.end24.thread.i:                                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %v.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %v.i, align 8
  %shr.i = lshr i64 %14, 9
  %sectors.i = getelementptr inbounds %struct.anon.95, ptr %arrayidx.i, i32 0, i32 6
  %15 = ptrtoint ptr %sectors.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %shr.i, ptr %sectors.i, align 8
  %16 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c.i, align 4
  %call19.i = call i32 @bch_uuid_write(ptr noundef %17) #12
  %disk.i = getelementptr i8, ptr %kobj, i32 156
  %18 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disk.i, align 4
  %20 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sectors.i, align 8
  call void @set_capacity(ptr noundef %19, i64 noundef %21) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #12
  br label %__bch_flash_dev_store.exit

if.end24.i:                                       ; preds = %do.end.i
  %cmp25.i = icmp eq ptr %attr, @sysfs_label
  br i1 %cmp25.i, label %if.then26.i, label %if.end29.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %label.i = getelementptr inbounds %struct.anon.95, ptr %arrayidx.i, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %label.i, ptr %buf, i32 32)
  %23 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %c.i, align 4
  %call28.i = tail call i32 @bch_uuid_write(ptr noundef %24) #12
  br label %__bch_flash_dev_store.exit

if.end29.i:                                       ; preds = %if.end24.i
  %cmp30.i = icmp eq ptr %attr, @sysfs_unregister
  br i1 %cmp30.i, label %if.then31.i, label %if.end29.i.__bch_flash_dev_store.exit_crit_edge

if.end29.i.__bch_flash_dev_store.exit_crit_edge:  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_flash_dev_store.exit

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr i8, ptr %kobj, i32 160
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #12
  tail call void @bcache_device_stop(ptr noundef %add.ptr.i) #12
  br label %__bch_flash_dev_store.exit

cleanup33.critedge.i:                             ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #12
  br label %__bch_flash_dev_store.exit

__bch_flash_dev_store.exit:                       ; preds = %cleanup33.critedge.i, %if.then31.i, %if.end29.i.__bch_flash_dev_store.exit_crit_edge, %if.then26.i, %if.end24.thread.i, %if.end4.i, %entry.__bch_flash_dev_store.exit_crit_edge
  %retval.1.i = phi i32 [ %spec.select.i, %if.end4.i ], [ -16, %entry.__bch_flash_dev_store.exit_crit_edge ], [ %call12.i, %cleanup33.critedge.i ], [ %size, %if.then31.i ], [ %size, %if.end29.i.__bch_flash_dev_store.exit_crit_edge ], [ %size, %if.end24.thread.i ], [ %size, %if.then26.i ]
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #12
  ret i32 %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cache_set_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_cache_set_show(ptr noundef %kobj, ptr noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  %op.i = alloca %struct.bset_stats_op, align 4
  %.compoundliteral.i = alloca %struct.bkey, align 8
  %remainder.i822.i = alloca i32, align 4
  %remainder.i809.i = alloca i32, align 4
  %remainder.i796.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  %iter.i.i = alloca %struct.btree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #12
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -80
  %cmp.i = icmp eq ptr %attr, @sysfs_synchronous
  br i1 %cmp.i, label %if.then.i, label %do.body2.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cache.i = getelementptr i8, ptr %kobj, i32 1108
  %0 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache.i, align 4
  %flags.i.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags.i.i, align 8
  %and.i.i = and i64 %3, 1
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %and.i.i) #12
  br label %__bch_cache_set_show.exit

do.body2.i:                                       ; preds = %entry
  %cmp3.i = icmp eq ptr %attr, @sysfs_journal_delay_ms
  br i1 %cmp3.i, label %if.then4.i, label %do.body9.i

if.then4.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  %journal_delay_ms.i = getelementptr i8, ptr %kobj, i32 48244
  %4 = ptrtoint ptr %journal_delay_ms.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %journal_delay_ms.i, align 4
  %conv.i = zext i16 %5 to i32
  %call5.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv.i) #12
  br label %__bch_cache_set_show.exit

do.body9.i:                                       ; preds = %do.body2.i
  %cmp10.i = icmp eq ptr %attr, @sysfs_bucket_size
  br i1 %cmp10.i, label %if.then12.i, label %do.body21.i

if.then12.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #14
  %cache13.i = getelementptr i8, ptr %kobj, i32 1108
  %6 = ptrtoint ptr %cache13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache13.i, align 4
  %bucket_size.i = getelementptr inbounds %struct.cache, ptr %7, i32 0, i32 1, i32 11, i32 0, i32 4
  %8 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bucket_size.i, align 8
  %shl.i = shl i32 %9, 9
  %conv15.i = zext i32 %shl.i to i64
  %call16.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %conv15.i) #12
  %strlen767.i = tail call i32 @strlen(ptr %buf) #15
  %endptr768.i = getelementptr i8, ptr %buf, i32 %strlen767.i
  %10 = ptrtoint ptr %endptr768.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 2560, ptr %endptr768.i, align 1
  %add.i = add i32 %call16.i, 1
  br label %__bch_cache_set_show.exit

do.body21.i:                                      ; preds = %do.body9.i
  %cmp22.i = icmp eq ptr %attr, @sysfs_block_size
  br i1 %cmp22.i, label %if.then24.i, label %do.body37.i

if.then24.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #14
  %cache26.i = getelementptr i8, ptr %kobj, i32 1108
  %11 = ptrtoint ptr %cache26.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache26.i, align 4
  %block_size.i = getelementptr inbounds %struct.cache, ptr %12, i32 0, i32 1, i32 11, i32 0, i32 1
  %13 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %block_size.i, align 8
  %conv28.i = zext i16 %14 to i32
  %shl29.i = shl nuw nsw i32 %conv28.i, 9
  %15 = zext i32 %shl29.i to i64
  %call31.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %15) #12
  %strlen765.i = tail call i32 @strlen(ptr %buf) #15
  %endptr766.i = getelementptr i8, ptr %buf, i32 %strlen765.i
  %16 = ptrtoint ptr %endptr766.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 2560, ptr %endptr766.i, align 1
  %add33.i = add i32 %call31.i, 1
  br label %__bch_cache_set_show.exit

do.body37.i:                                      ; preds = %do.body21.i
  %cmp38.i = icmp eq ptr %attr, @sysfs_tree_depth
  br i1 %cmp38.i, label %if.then40.i, label %do.body46.i

if.then40.i:                                      ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #14
  %root.i = getelementptr i8, ptr %kobj, i32 46828
  %17 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %root.i, align 4
  %level.i = getelementptr inbounds %struct.btree, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %level.i, align 2
  %conv41.i = zext i8 %20 to i32
  %call42.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv41.i) #12
  br label %__bch_cache_set_show.exit

do.body46.i:                                      ; preds = %do.body37.i
  %cmp47.i = icmp eq ptr %attr, @sysfs_root_usage_percent
  br i1 %cmp47.i, label %if.then49.i, label %do.body55.i

if.then49.i:                                      ; preds = %do.body46.i
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter.i.i) #12
  %21 = call ptr @memset(ptr %iter.i.i, i32 255, i32 44)
  %root.i.i = getelementptr i8, ptr %kobj, i32 46828
  %22 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %root.i.i, align 4
  %level17.i.i = getelementptr inbounds %struct.btree, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %level17.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %level17.i.i, align 2
  %conv18.i.i = zext i8 %25 to i32
  %lock1.i19.i.i = getelementptr inbounds %struct.btree, ptr %23, i32 0, i32 3
  %add2.i20.i.i = add nuw nsw i32 %conv18.i.i, 1
  tail call void @down_read_nested(ptr noundef %lock1.i19.i.i, i32 noundef %add2.i20.i.i) #12
  %26 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %root.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %23, %27
  br i1 %cmp.not21.i.i, label %if.then49.i.do.end.i.i_crit_edge, label %if.then49.i.do.body.i.i_crit_edge

if.then49.i.do.body.i.i_crit_edge:                ; preds = %if.then49.i
  br label %do.body.i.i

if.then49.i.do.end.i.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then49.i.do.body.i.i_crit_edge
  %lock1.i22.i.i = phi ptr [ %lock1.i.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %lock1.i19.i.i, %if.then49.i.do.body.i.i_crit_edge ]
  tail call void @up_read(ptr noundef %lock1.i22.i.i) #12
  %28 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %root.i.i, align 4
  %level.i.i = getelementptr inbounds %struct.btree, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %level.i.i, align 2
  %conv.i.i = zext i8 %31 to i32
  %lock1.i.i.i = getelementptr inbounds %struct.btree, ptr %29, i32 0, i32 3
  %add2.i.i.i = add nuw nsw i32 %conv.i.i, 1
  tail call void @down_read_nested(ptr noundef %lock1.i.i.i, i32 noundef %add2.i.i.i) #12
  %32 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %root.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %29, %33
  br i1 %cmp.not.i.i, label %do.body.i.i.do.end.i.i_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i.do.end.i.i_crit_edge, %if.then49.i.do.end.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %23, %if.then49.i.do.end.i.i_crit_edge ], [ %29, %do.body.i.i.do.end.i.i_crit_edge ]
  %lock1.i.lcssa.i.i = phi ptr [ %lock1.i19.i.i, %if.then49.i.do.end.i.i_crit_edge ], [ %lock1.i.i.i, %do.body.i.i.do.end.i.i_crit_edge ]
  %keys.i.i = getelementptr inbounds %struct.btree, ptr %.lcssa.i.i, i32 0, i32 10
  %call.i.i = call ptr @bch_btree_iter_init(ptr noundef %keys.i.i, ptr noundef nonnull %iter.i.i, ptr noundef null) #12
  %call424.i.i = call ptr @bch_btree_iter_next_filter(ptr noundef nonnull %iter.i.i, ptr noundef %keys.i.i, ptr noundef nonnull @bch_ptr_bad) #12
  %tobool.not25.i.i = icmp eq ptr %call424.i.i, null
  br i1 %tobool.not25.i.i, label %do.end.i.i.bch_root_usage.exit.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.bch_root_usage.exit.i_crit_edge:       ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bch_root_usage.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %call427.i.i = phi ptr [ %call4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call424.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %bytes.026.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.end.i.i.for.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %call427.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %call427.i.i, align 8
  %sh.diff.i.i.i = lshr i64 %35, 57
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %conv.i.i.i.i = and i32 %tr.sh.diff.i.i.i, 56
  %mul.i.i.i = add i32 %bytes.026.i.i, 16
  %add.i.i = add i32 %mul.i.i.i, %conv.i.i.i.i
  %call4.i.i = call ptr @bch_btree_iter_next_filter(ptr noundef nonnull %iter.i.i, ptr noundef %keys.i.i, ptr noundef nonnull @bch_ptr_bad) #12
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i.i, label %for.end.loopexit.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo.i.i = mul i32 %add.i.i, 100
  br label %bch_root_usage.exit.i

bch_root_usage.exit.i:                            ; preds = %for.end.loopexit.i.i, %do.end.i.i.bch_root_usage.exit.i_crit_edge
  %bytes.0.lcssa.i.i = phi i32 [ 0, %do.end.i.i.bch_root_usage.exit.i_crit_edge ], [ %phi.bo.i.i, %for.end.loopexit.i.i ]
  call void @up_read(ptr noundef %lock1.i.lcssa.i.i) #12
  %btree_pages.i.i = getelementptr i8, ptr %kobj, i32 2324
  %36 = ptrtoint ptr %btree_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %btree_pages.i.i, align 4
  %mul6.i.i = shl i32 %37, 12
  %div.i.i = udiv i32 %bytes.0.lcssa.i.i, %mul6.i.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter.i.i) #12
  %call51.i = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %div.i.i) #12
  br label %__bch_cache_set_show.exit

do.body55.i:                                      ; preds = %do.body46.i
  %cmp56.i = icmp eq ptr %attr, @sysfs_btree_cache_size
  br i1 %cmp56.i, label %if.then58.i, label %do.body68.i

if.then58.i:                                      ; preds = %do.body55.i
  %bucket_lock.i.i = getelementptr i8, ptr %kobj, i32 2228
  tail call void @mutex_lock_nested(ptr noundef %bucket_lock.i.i, i32 noundef 0) #12
  %btree_cache.i.i = getelementptr i8, ptr %kobj, i32 2328
  %38 = ptrtoint ptr %btree_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn15.i.i = load ptr, ptr %btree_cache.i.i, align 8
  %cmp.not16.i.i = icmp eq ptr %.pn15.i.i, %btree_cache.i.i
  br i1 %cmp.not16.i.i, label %if.then58.i.bch_cache_size.exit.i_crit_edge, label %if.then58.i.for.body.i776.i_crit_edge

if.then58.i.for.body.i776.i_crit_edge:            ; preds = %if.then58.i
  br label %for.body.i776.i

if.then58.i.bch_cache_size.exit.i_crit_edge:      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bch_cache_size.exit.i

for.body.i776.i:                                  ; preds = %for.body.i776.i.for.body.i776.i_crit_edge, %if.then58.i.for.body.i776.i_crit_edge
  %.pn18.i.i = phi ptr [ %.pn.i.i, %for.body.i776.i.for.body.i776.i_crit_edge ], [ %.pn15.i.i, %if.then58.i.for.body.i776.i_crit_edge ]
  %ret.017.i.i = phi i32 [ %add2.i.i, %for.body.i776.i.for.body.i776.i_crit_edge ], [ 0, %if.then58.i.for.body.i776.i_crit_edge ]
  %page_order.i.i = getelementptr i8, ptr %.pn18.i.i, i32 -300
  %39 = ptrtoint ptr %page_order.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %page_order.i.i, align 4
  %conv.i774.i = zext i8 %40 to i32
  %shl.i.i = shl i32 4096, %conv.i774.i
  %add2.i.i = add i32 %shl.i.i, %ret.017.i.i
  %41 = ptrtoint ptr %.pn18.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i.i = load ptr, ptr %.pn18.i.i, align 8
  %cmp.not.i775.i = icmp eq ptr %.pn.i.i, %btree_cache.i.i
  br i1 %cmp.not.i775.i, label %for.body.i776.i.bch_cache_size.exit.i_crit_edge, label %for.body.i776.i.for.body.i776.i_crit_edge

for.body.i776.i.for.body.i776.i_crit_edge:        ; preds = %for.body.i776.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i776.i

for.body.i776.i.bch_cache_size.exit.i_crit_edge:  ; preds = %for.body.i776.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bch_cache_size.exit.i

bch_cache_size.exit.i:                            ; preds = %for.body.i776.i.bch_cache_size.exit.i_crit_edge, %if.then58.i.bch_cache_size.exit.i_crit_edge
  %ret.0.lcssa.i.i = phi i32 [ 0, %if.then58.i.bch_cache_size.exit.i_crit_edge ], [ %add2.i.i, %for.body.i776.i.bch_cache_size.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bucket_lock.i.i) #12
  %conv61.i = zext i32 %ret.0.lcssa.i.i to i64
  %call62.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %conv61.i) #12
  %strlen763.i = tail call i32 @strlen(ptr %buf) #15
  %endptr764.i = getelementptr i8, ptr %buf, i32 %strlen763.i
  %42 = ptrtoint ptr %endptr764.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 2560, ptr %endptr764.i, align 1
  %add64.i = add i32 %call62.i, 1
  br label %__bch_cache_set_show.exit

do.body68.i:                                      ; preds = %do.body55.i
  %cmp69.i = icmp eq ptr %attr, @sysfs_btree_cache_max_chain
  br i1 %cmp69.i, label %if.then71.i, label %do.body77.i

if.then71.i:                                      ; preds = %do.body68.i
  %bucket_lock.i = getelementptr i8, ptr %kobj, i32 2228
  tail call void @mutex_lock_nested(ptr noundef %bucket_lock.i, i32 noundef 0) #12
  %bucket_hash.i = getelementptr i8, ptr %kobj, i32 48248
  %add.ptr.i12 = getelementptr i8, ptr %kobj, i32 64632
  %cmp19.i = icmp ult ptr %bucket_hash.i, %add.ptr.i12
  br i1 %cmp19.i, label %if.then71.i.for.cond3.preheader.i_crit_edge, label %if.then71.i.bch_cache_max_chain.exit_crit_edge

if.then71.i.bch_cache_max_chain.exit_crit_edge:   ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bch_cache_max_chain.exit

if.then71.i.for.cond3.preheader.i_crit_edge:      ; preds = %if.then71.i
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.end.i.for.cond3.preheader.i_crit_edge, %if.then71.i.for.cond3.preheader.i_crit_edge
  %ret.021.i = phi i32 [ %44, %for.end.i.for.cond3.preheader.i_crit_edge ], [ 0, %if.then71.i.for.cond3.preheader.i_crit_edge ]
  %h.020.i = phi ptr [ %incdec.ptr.i, %for.end.i.for.cond3.preheader.i_crit_edge ], [ %bucket_hash.i, %if.then71.i.for.cond3.preheader.i_crit_edge ]
  br label %for.cond3.i

for.cond3.i:                                      ; preds = %for.cond3.i.for.cond3.i_crit_edge, %for.cond3.preheader.i
  %i.0.i = phi i32 [ %inc.i14, %for.cond3.i.for.cond3.i_crit_edge ], [ 0, %for.cond3.preheader.i ]
  %p.0.in.i = phi ptr [ %p.0.i, %for.cond3.i.for.cond3.i_crit_edge ], [ %h.020.i, %for.cond3.preheader.i ]
  %43 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %tobool.not.i13 = icmp eq ptr %p.0.i, null
  %inc.i14 = add i32 %i.0.i, 1
  br i1 %tobool.not.i13, label %for.end.i, label %for.cond3.i.for.cond3.i_crit_edge

for.cond3.i.for.cond3.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond3.i

for.end.i:                                        ; preds = %for.cond3.i
  %44 = tail call i32 @llvm.umax.i32(i32 %ret.021.i, i32 %i.0.i) #12
  %incdec.ptr.i = getelementptr %struct.hlist_head, ptr %h.020.i, i32 1
  %cmp.i15 = icmp ult ptr %incdec.ptr.i, %add.ptr.i12
  br i1 %cmp.i15, label %for.end.i.for.cond3.preheader.i_crit_edge, label %for.end.i.bch_cache_max_chain.exit_crit_edge

for.end.i.bch_cache_max_chain.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bch_cache_max_chain.exit

for.end.i.for.cond3.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond3.preheader.i

bch_cache_max_chain.exit:                         ; preds = %for.end.i.bch_cache_max_chain.exit_crit_edge, %if.then71.i.bch_cache_max_chain.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.then71.i.bch_cache_max_chain.exit_crit_edge ], [ %44, %for.end.i.bch_cache_max_chain.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bucket_lock.i) #12
  %call73.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %ret.0.lcssa.i) #12
  br label %__bch_cache_set_show.exit

do.body77.i:                                      ; preds = %do.body68.i
  %cmp78.i = icmp eq ptr %attr, @sysfs_cache_available_percent
  br i1 %cmp78.i, label %if.then80.i, label %do.body86.i

if.then80.i:                                      ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #14
  %in_use.i = getelementptr i8, ptr %kobj, i32 2552
  %45 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %in_use.i, align 8
  %sub.i = sub i32 100, %46
  %call81.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %sub.i) #12
  br label %__bch_cache_set_show.exit

do.body86.i:                                      ; preds = %do.body77.i
  %cmp87.i = icmp eq ptr %attr, @sysfs_btree_gc_average_frequency_sec
  br i1 %cmp87.i, label %if.then89.i, label %do.body95.i

if.then89.i:                                      ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #14
  %average_frequency.i = getelementptr i8, ptr %kobj, i32 48032
  %47 = ptrtoint ptr %average_frequency.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %average_frequency.i, align 8
  %shr.i = lshr i64 %48, 8
  %49 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %shr.i, i32 0) #19, !srcloc !423
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %49, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %49, 1
  %50 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %shr.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #19, !srcloc !424
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %50, 0
  %div158.i.i838.i = lshr i64 %asmresult10.i.i.i.i, 29
  %call91.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i838.i) #12
  br label %__bch_cache_set_show.exit

do.body95.i:                                      ; preds = %do.body86.i
  %cmp96.i = icmp eq ptr %attr, @sysfs_btree_gc_average_duration_ms
  br i1 %cmp96.i, label %if.then98.i, label %do.body106.i

if.then98.i:                                      ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #14
  %average_duration.i = getelementptr i8, ptr %kobj, i32 48024
  %51 = ptrtoint ptr %average_duration.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %average_duration.i, align 8
  %shr100.i = lshr i64 %52, 8
  %53 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %shr100.i) #19, !srcloc !425
  %54 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %shr100.i, i64 %53, i32 0) #19, !srcloc !424
  %asmresult10.i.i.i777.i = extractvalue { i64, i32 } %54, 0
  %div158.i.i778837.i = lshr i64 %asmresult10.i.i.i777.i, 18
  %call102.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i778837.i) #12
  br label %__bch_cache_set_show.exit

do.body106.i:                                     ; preds = %do.body95.i
  %cmp107.i = icmp eq ptr %attr, @sysfs_btree_gc_max_duration_ms
  br i1 %cmp107.i, label %if.then109.i, label %do.body116.i

if.then109.i:                                     ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_duration.i = getelementptr i8, ptr %kobj, i32 48016
  %55 = ptrtoint ptr %max_duration.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %max_duration.i, align 8
  %57 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %56) #19, !srcloc !425
  %58 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %56, i64 %57, i32 0) #19, !srcloc !424
  %asmresult10.i.i.i779.i = extractvalue { i64, i32 } %58, 0
  %div158.i.i780836.i = lshr i64 %asmresult10.i.i.i779.i, 18
  %call112.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i780836.i) #12
  br label %__bch_cache_set_show.exit

do.body116.i:                                     ; preds = %do.body106.i
  %cmp117.i = icmp eq ptr %attr, @sysfs_btree_gc_last_sec
  br i1 %cmp117.i, label %if.then119.i, label %do.body133.i

if.then119.i:                                     ; preds = %do.body116.i
  %last.i = getelementptr i8, ptr %kobj, i32 48040
  %59 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %last.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %tobool.not.i = icmp eq i64 %60, 0
  br i1 %tobool.not.i, label %if.then119.i.cond.end.i_crit_edge, label %cond.true.i

if.then119.i.cond.end.i_crit_edge:                ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i781.i = tail call i64 @sched_clock() #12
  %61 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %last.i, align 8
  %sub124.i = sub i64 %call.i781.i, %62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #12
  %63 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !422
  %call.i782.i = call i64 @div_s64_rem(i64 noundef %sub124.i, i32 noundef 1000000000, ptr noundef nonnull %remainder.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then119.i.cond.end.i_crit_edge
  %cond.i = phi i64 [ %call.i782.i, %cond.true.i ], [ -1, %if.then119.i.cond.end.i_crit_edge ]
  %call126.i = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.72, i64 noundef %cond.i) #12
  br label %__bch_cache_set_show.exit

do.body133.i:                                     ; preds = %do.body116.i
  %cmp134.i = icmp eq ptr %attr, @sysfs_btree_split_average_frequency_sec
  br i1 %cmp134.i, label %if.then136.i, label %do.body144.i

if.then136.i:                                     ; preds = %do.body133.i
  call void @__sanitizer_cov_trace_pc() #14
  %average_frequency137.i = getelementptr i8, ptr %kobj, i32 48112
  %64 = ptrtoint ptr %average_frequency137.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %average_frequency137.i, align 8
  %shr138.i = lshr i64 %65, 8
  %66 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %shr138.i, i32 0) #19, !srcloc !423
  %asmresult.i.i.i783.i = extractvalue { i64, i32 } %66, 0
  %asmresult4.i.i.i784.i = extractvalue { i64, i32 } %66, 1
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %shr138.i, i64 %asmresult.i.i.i783.i, i32 %asmresult4.i.i.i784.i) #19, !srcloc !424
  %asmresult10.i.i.i785.i = extractvalue { i64, i32 } %67, 0
  %div158.i.i786835.i = lshr i64 %asmresult10.i.i.i785.i, 29
  %call140.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i786835.i) #12
  br label %__bch_cache_set_show.exit

do.body144.i:                                     ; preds = %do.body133.i
  %cmp145.i = icmp eq ptr %attr, @sysfs_btree_split_average_duration_us
  br i1 %cmp145.i, label %if.then147.i, label %do.body156.i

if.then147.i:                                     ; preds = %do.body144.i
  call void @__sanitizer_cov_trace_pc() #14
  %average_duration149.i = getelementptr i8, ptr %kobj, i32 48104
  %68 = ptrtoint ptr %average_duration149.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %average_duration149.i, align 8
  %shr150.i = lshr i64 %69, 8
  %70 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shr150.i, i32 0) #19, !srcloc !423
  %asmresult.i.i.i787.i = extractvalue { i64, i32 } %70, 0
  %asmresult4.i.i.i788.i = extractvalue { i64, i32 } %70, 1
  %71 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shr150.i, i64 %asmresult.i.i.i787.i, i32 %asmresult4.i.i.i788.i) #19, !srcloc !424
  %asmresult10.i.i.i789.i = extractvalue { i64, i32 } %71, 0
  %div158.i.i790834.i = lshr i64 %asmresult10.i.i.i789.i, 9
  %call152.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i790834.i) #12
  br label %__bch_cache_set_show.exit

do.body156.i:                                     ; preds = %do.body144.i
  %cmp157.i = icmp eq ptr %attr, @sysfs_btree_split_max_duration_us
  br i1 %cmp157.i, label %if.then159.i, label %do.body167.i

if.then159.i:                                     ; preds = %do.body156.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_duration161.i = getelementptr i8, ptr %kobj, i32 48096
  %72 = ptrtoint ptr %max_duration161.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %max_duration161.i, align 8
  %74 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %73, i32 0) #19, !srcloc !423
  %asmresult.i.i.i791.i = extractvalue { i64, i32 } %74, 0
  %asmresult4.i.i.i792.i = extractvalue { i64, i32 } %74, 1
  %75 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %73, i64 %asmresult.i.i.i791.i, i32 %asmresult4.i.i.i792.i) #19, !srcloc !424
  %asmresult10.i.i.i793.i = extractvalue { i64, i32 } %75, 0
  %div158.i.i794833.i = lshr i64 %asmresult10.i.i.i793.i, 9
  %call163.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i794833.i) #12
  br label %__bch_cache_set_show.exit

do.body167.i:                                     ; preds = %do.body156.i
  %cmp168.i = icmp eq ptr %attr, @sysfs_btree_split_last_sec
  br i1 %cmp168.i, label %if.then170.i, label %do.body190.i

if.then170.i:                                     ; preds = %do.body167.i
  %last172.i = getelementptr i8, ptr %kobj, i32 48120
  %76 = ptrtoint ptr %last172.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %last172.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %tobool173.not.i = icmp eq i64 %77, 0
  br i1 %tobool173.not.i, label %if.then170.i.cond.end181.i_crit_edge, label %cond.true174.i

if.then170.i.cond.end181.i_crit_edge:             ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end181.i

cond.true174.i:                                   ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i795.i = tail call i64 @sched_clock() #12
  %78 = ptrtoint ptr %last172.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %last172.i, align 8
  %sub178.i = sub i64 %call.i795.i, %79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i796.i) #12
  %80 = ptrtoint ptr %remainder.i796.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %remainder.i796.i, align 4, !annotation !422
  %call.i797.i = call i64 @div_s64_rem(i64 noundef %sub178.i, i32 noundef 1000000000, ptr noundef nonnull %remainder.i796.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i796.i) #12
  br label %cond.end181.i

cond.end181.i:                                    ; preds = %cond.true174.i, %if.then170.i.cond.end181.i_crit_edge
  %cond182.i = phi i64 [ %call.i797.i, %cond.true174.i ], [ -1, %if.then170.i.cond.end181.i_crit_edge ]
  %call183.i = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.72, i64 noundef %cond182.i) #12
  br label %__bch_cache_set_show.exit

do.body190.i:                                     ; preds = %do.body167.i
  %cmp191.i = icmp eq ptr %attr, @sysfs_btree_sort_average_frequency_ms
  br i1 %cmp191.i, label %if.then193.i, label %do.body201.i

if.then193.i:                                     ; preds = %do.body190.i
  call void @__sanitizer_cov_trace_pc() #14
  %average_frequency194.i = getelementptr i8, ptr %kobj, i32 47464
  %81 = ptrtoint ptr %average_frequency194.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %average_frequency194.i, align 8
  %shr195.i = lshr i64 %82, 8
  %83 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %shr195.i) #19, !srcloc !425
  %84 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %shr195.i, i64 %83, i32 0) #19, !srcloc !424
  %asmresult10.i.i.i798.i = extractvalue { i64, i32 } %84, 0
  %div158.i.i799832.i = lshr i64 %asmresult10.i.i.i798.i, 18
  %call197.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i799832.i) #12
  br label %__bch_cache_set_show.exit

do.body201.i:                                     ; preds = %do.body190.i
  %cmp202.i = icmp eq ptr %attr, @sysfs_btree_sort_average_duration_us
  br i1 %cmp202.i, label %if.then204.i, label %do.body214.i

if.then204.i:                                     ; preds = %do.body201.i
  call void @__sanitizer_cov_trace_pc() #14
  %average_duration207.i = getelementptr i8, ptr %kobj, i32 47456
  %85 = ptrtoint ptr %average_duration207.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %average_duration207.i, align 8
  %shr208.i = lshr i64 %86, 8
  %87 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shr208.i, i32 0) #19, !srcloc !423
  %asmresult.i.i.i800.i = extractvalue { i64, i32 } %87, 0
  %asmresult4.i.i.i801.i = extractvalue { i64, i32 } %87, 1
  %88 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shr208.i, i64 %asmresult.i.i.i800.i, i32 %asmresult4.i.i.i801.i) #19, !srcloc !424
  %asmresult10.i.i.i802.i = extractvalue { i64, i32 } %88, 0
  %div158.i.i803831.i = lshr i64 %asmresult10.i.i.i802.i, 9
  %call210.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i803831.i) #12
  br label %__bch_cache_set_show.exit

do.body214.i:                                     ; preds = %do.body201.i
  %cmp215.i = icmp eq ptr %attr, @sysfs_btree_sort_max_duration_us
  br i1 %cmp215.i, label %if.then217.i, label %do.body226.i

if.then217.i:                                     ; preds = %do.body214.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_duration220.i = getelementptr i8, ptr %kobj, i32 47448
  %89 = ptrtoint ptr %max_duration220.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %max_duration220.i, align 8
  %91 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %90, i32 0) #19, !srcloc !423
  %asmresult.i.i.i804.i = extractvalue { i64, i32 } %91, 0
  %asmresult4.i.i.i805.i = extractvalue { i64, i32 } %91, 1
  %92 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %90, i64 %asmresult.i.i.i804.i, i32 %asmresult4.i.i.i805.i) #19, !srcloc !424
  %asmresult10.i.i.i806.i = extractvalue { i64, i32 } %92, 0
  %div158.i.i807830.i = lshr i64 %asmresult10.i.i.i806.i, 9
  %call222.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i807830.i) #12
  br label %__bch_cache_set_show.exit

do.body226.i:                                     ; preds = %do.body214.i
  %cmp227.i = icmp eq ptr %attr, @sysfs_btree_sort_last_ms
  br i1 %cmp227.i, label %if.then229.i, label %do.body251.i

if.then229.i:                                     ; preds = %do.body226.i
  %last232.i = getelementptr i8, ptr %kobj, i32 47472
  %93 = ptrtoint ptr %last232.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %last232.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %94)
  %tobool233.not.i = icmp eq i64 %94, 0
  br i1 %tobool233.not.i, label %if.then229.i.cond.end242.i_crit_edge, label %cond.true234.i

if.then229.i.cond.end242.i_crit_edge:             ; preds = %if.then229.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end242.i

cond.true234.i:                                   ; preds = %if.then229.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i808.i = tail call i64 @sched_clock() #12
  %95 = ptrtoint ptr %last232.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %last232.i, align 8
  %sub239.i = sub i64 %call.i808.i, %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i809.i) #12
  %97 = ptrtoint ptr %remainder.i809.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %remainder.i809.i, align 4, !annotation !422
  %call.i810.i = call i64 @div_s64_rem(i64 noundef %sub239.i, i32 noundef 1000000, ptr noundef nonnull %remainder.i809.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i809.i) #12
  br label %cond.end242.i

cond.end242.i:                                    ; preds = %cond.true234.i, %if.then229.i.cond.end242.i_crit_edge
  %cond243.i = phi i64 [ %call.i810.i, %cond.true234.i ], [ -1, %if.then229.i.cond.end242.i_crit_edge ]
  %call244.i = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.72, i64 noundef %cond243.i) #12
  br label %__bch_cache_set_show.exit

do.body251.i:                                     ; preds = %do.body226.i
  %cmp252.i = icmp eq ptr %attr, @sysfs_btree_read_average_frequency_ms
  br i1 %cmp252.i, label %if.then254.i, label %do.body262.i

if.then254.i:                                     ; preds = %do.body251.i
  call void @__sanitizer_cov_trace_pc() #14
  %average_frequency255.i = getelementptr i8, ptr %kobj, i32 48192
  %98 = ptrtoint ptr %average_frequency255.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %average_frequency255.i, align 8
  %shr256.i = lshr i64 %99, 8
  %100 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %shr256.i) #19, !srcloc !425
  %101 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %shr256.i, i64 %100, i32 0) #19, !srcloc !424
  %asmresult10.i.i.i811.i = extractvalue { i64, i32 } %101, 0
  %div158.i.i812829.i = lshr i64 %asmresult10.i.i.i811.i, 18
  %call258.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i812829.i) #12
  br label %__bch_cache_set_show.exit

do.body262.i:                                     ; preds = %do.body251.i
  %cmp263.i = icmp eq ptr %attr, @sysfs_btree_read_average_duration_us
  br i1 %cmp263.i, label %if.then265.i, label %do.body274.i

if.then265.i:                                     ; preds = %do.body262.i
  call void @__sanitizer_cov_trace_pc() #14
  %average_duration267.i = getelementptr i8, ptr %kobj, i32 48184
  %102 = ptrtoint ptr %average_duration267.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %average_duration267.i, align 8
  %shr268.i = lshr i64 %103, 8
  %104 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shr268.i, i32 0) #19, !srcloc !423
  %asmresult.i.i.i813.i = extractvalue { i64, i32 } %104, 0
  %asmresult4.i.i.i814.i = extractvalue { i64, i32 } %104, 1
  %105 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shr268.i, i64 %asmresult.i.i.i813.i, i32 %asmresult4.i.i.i814.i) #19, !srcloc !424
  %asmresult10.i.i.i815.i = extractvalue { i64, i32 } %105, 0
  %div158.i.i816828.i = lshr i64 %asmresult10.i.i.i815.i, 9
  %call270.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i816828.i) #12
  br label %__bch_cache_set_show.exit

do.body274.i:                                     ; preds = %do.body262.i
  %cmp275.i = icmp eq ptr %attr, @sysfs_btree_read_max_duration_us
  br i1 %cmp275.i, label %if.then277.i, label %do.body285.i

if.then277.i:                                     ; preds = %do.body274.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_duration279.i = getelementptr i8, ptr %kobj, i32 48176
  %106 = ptrtoint ptr %max_duration279.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %max_duration279.i, align 8
  %108 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %107, i32 0) #19, !srcloc !423
  %asmresult.i.i.i817.i = extractvalue { i64, i32 } %108, 0
  %asmresult4.i.i.i818.i = extractvalue { i64, i32 } %108, 1
  %109 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %107, i64 %asmresult.i.i.i817.i, i32 %asmresult4.i.i.i818.i) #19, !srcloc !424
  %asmresult10.i.i.i819.i = extractvalue { i64, i32 } %109, 0
  %div158.i.i820827.i = lshr i64 %asmresult10.i.i.i819.i, 9
  %call281.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %div158.i.i820827.i) #12
  br label %__bch_cache_set_show.exit

do.body285.i:                                     ; preds = %do.body274.i
  %cmp286.i = icmp eq ptr %attr, @sysfs_btree_read_last_ms
  br i1 %cmp286.i, label %if.then288.i, label %do.body307.i

if.then288.i:                                     ; preds = %do.body285.i
  %last290.i = getelementptr i8, ptr %kobj, i32 48200
  %110 = ptrtoint ptr %last290.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %last290.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %111)
  %tobool291.not.i = icmp eq i64 %111, 0
  br i1 %tobool291.not.i, label %if.then288.i.cond.end299.i_crit_edge, label %cond.true292.i

if.then288.i.cond.end299.i_crit_edge:             ; preds = %if.then288.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end299.i

cond.true292.i:                                   ; preds = %if.then288.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i821.i = tail call i64 @sched_clock() #12
  %112 = ptrtoint ptr %last290.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %last290.i, align 8
  %sub296.i = sub i64 %call.i821.i, %113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i822.i) #12
  %114 = ptrtoint ptr %remainder.i822.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %remainder.i822.i, align 4, !annotation !422
  %call.i823.i = call i64 @div_s64_rem(i64 noundef %sub296.i, i32 noundef 1000000, ptr noundef nonnull %remainder.i822.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i822.i) #12
  br label %cond.end299.i

cond.end299.i:                                    ; preds = %cond.true292.i, %if.then288.i.cond.end299.i_crit_edge
  %cond300.i = phi i64 [ %call.i823.i, %cond.true292.i ], [ -1, %if.then288.i.cond.end299.i_crit_edge ]
  %call301.i = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.72, i64 noundef %cond300.i) #12
  br label %__bch_cache_set_show.exit

do.body307.i:                                     ; preds = %do.body285.i
  %cmp308.i = icmp eq ptr %attr, @sysfs_btree_used_percent
  br i1 %cmp308.i, label %if.then310.i, label %do.body316.i

if.then310.i:                                     ; preds = %do.body307.i
  call void @__sanitizer_cov_trace_pc() #14
  %gc_stats.i = getelementptr i8, ptr %kobj, i32 2528
  %key_bytes.i = getelementptr i8, ptr %kobj, i32 2536
  %115 = ptrtoint ptr %key_bytes.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %key_bytes.i, align 8
  %mul.i8 = mul i32 %116, 100
  %conv.i9 = zext i32 %mul.i8 to i64
  %117 = ptrtoint ptr %gc_stats.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %gc_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i10 = icmp eq i32 %118, 0
  %..i = select i1 %tobool.not.i10, i32 1, i32 %118
  %btree_pages.i = getelementptr i8, ptr %kobj, i32 2324
  %119 = ptrtoint ptr %btree_pages.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %btree_pages.i, align 4
  %mul2.i = shl i32 %120, 12
  %mul3.i = mul i32 %mul2.i, %..i
  %conv4.i = zext i32 %mul3.i to i64
  %call.i11 = tail call i64 @div64_u64(i64 noundef %conv.i9, i64 noundef %conv4.i) #12
  %conv5.i = trunc i64 %call.i11 to i32
  %call312.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv5.i) #12
  br label %__bch_cache_set_show.exit

do.body316.i:                                     ; preds = %do.body307.i
  %cmp317.i = icmp eq ptr %attr, @sysfs_btree_nodes
  br i1 %cmp317.i, label %if.then319.i, label %do.body325.i

if.then319.i:                                     ; preds = %do.body316.i
  call void @__sanitizer_cov_trace_pc() #14
  %gc_stats320.i = getelementptr i8, ptr %kobj, i32 2528
  %121 = ptrtoint ptr %gc_stats320.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %gc_stats320.i, align 8
  %call321.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %122) #12
  br label %__bch_cache_set_show.exit

do.body325.i:                                     ; preds = %do.body316.i
  %cmp326.i = icmp eq ptr %attr, @sysfs_average_key_size
  br i1 %cmp326.i, label %if.then328.i, label %do.body338.i

if.then328.i:                                     ; preds = %do.body325.i
  %nkeys.i.i = getelementptr i8, ptr %kobj, i32 2540
  %123 = ptrtoint ptr %nkeys.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nkeys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i824.i = icmp eq i32 %124, 0
  br i1 %tobool.not.i824.i, label %if.then328.i.bch_average_key_size.exit.i_crit_edge, label %cond.true.i.i

if.then328.i.bch_average_key_size.exit.i_crit_edge: ; preds = %if.then328.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bch_average_key_size.exit.i

cond.true.i.i:                                    ; preds = %if.then328.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i = getelementptr i8, ptr %kobj, i32 2544
  %125 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %data.i.i, align 8
  %conv.i825.i = zext i32 %124 to i64
  %call.i826.i = tail call i64 @div64_u64(i64 noundef %126, i64 noundef %conv.i825.i) #12
  %extract.t.i.i = trunc i64 %call.i826.i to i32
  br label %bch_average_key_size.exit.i

bch_average_key_size.exit.i:                      ; preds = %cond.true.i.i, %if.then328.i.bch_average_key_size.exit.i_crit_edge
  %cond.off0.i.i = phi i32 [ %extract.t.i.i, %cond.true.i.i ], [ 0, %if.then328.i.bch_average_key_size.exit.i_crit_edge ]
  %conv331.i = zext i32 %cond.off0.i.i to i64
  %call332.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %conv331.i) #12
  %strlen761.i = tail call i32 @strlen(ptr %buf) #15
  %endptr762.i = getelementptr i8, ptr %buf, i32 %strlen761.i
  %127 = ptrtoint ptr %endptr762.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 2560, ptr %endptr762.i, align 1
  %add334.i = add i32 %call332.i, 1
  br label %__bch_cache_set_show.exit

do.body338.i:                                     ; preds = %do.body325.i
  %cmp339.i = icmp eq ptr %attr, @sysfs_cache_read_races
  br i1 %cmp339.i, label %if.then341.i, label %do.body347.i

if.then341.i:                                     ; preds = %do.body338.i
  call void @__sanitizer_cov_trace_pc() #14
  %cache_read_races.i = getelementptr i8, ptr %kobj, i32 48208
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cache_read_races.i, i32 noundef 4) #12
  %128 = ptrtoint ptr %cache_read_races.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %cache_read_races.i, align 4
  %call343.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.73, i32 noundef %129) #12
  br label %__bch_cache_set_show.exit

do.body347.i:                                     ; preds = %do.body338.i
  %cmp348.i = icmp eq ptr %attr, @sysfs_reclaim
  br i1 %cmp348.i, label %if.then350.i, label %do.body356.i

if.then350.i:                                     ; preds = %do.body347.i
  call void @__sanitizer_cov_trace_pc() #14
  %reclaim.i = getelementptr i8, ptr %kobj, i32 48220
  %call.i.i769.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %reclaim.i, i32 noundef 4) #12
  %130 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %reclaim.i, align 4
  %call352.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.73, i32 noundef %131) #12
  br label %__bch_cache_set_show.exit

do.body356.i:                                     ; preds = %do.body347.i
  %cmp357.i = icmp eq ptr %attr, @sysfs_reclaimed_journal_buckets
  br i1 %cmp357.i, label %if.then359.i, label %do.body365.i

if.then359.i:                                     ; preds = %do.body356.i
  call void @__sanitizer_cov_trace_pc() #14
  %reclaimed_journal_buckets.i = getelementptr i8, ptr %kobj, i32 48224
  %call.i.i770.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %reclaimed_journal_buckets.i, i32 noundef 4) #12
  %132 = ptrtoint ptr %reclaimed_journal_buckets.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %reclaimed_journal_buckets.i, align 4
  %call361.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.73, i32 noundef %133) #12
  br label %__bch_cache_set_show.exit

do.body365.i:                                     ; preds = %do.body356.i
  %cmp366.i = icmp eq ptr %attr, @sysfs_flush_write
  br i1 %cmp366.i, label %if.then368.i, label %do.body374.i

if.then368.i:                                     ; preds = %do.body365.i
  call void @__sanitizer_cov_trace_pc() #14
  %flush_write.i = getelementptr i8, ptr %kobj, i32 48228
  %call.i.i771.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %flush_write.i, i32 noundef 4) #12
  %134 = ptrtoint ptr %flush_write.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %flush_write.i, align 4
  %call370.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.73, i32 noundef %135) #12
  br label %__bch_cache_set_show.exit

do.body374.i:                                     ; preds = %do.body365.i
  %cmp375.i = icmp eq ptr %attr, @sysfs_writeback_keys_done
  br i1 %cmp375.i, label %if.then377.i, label %do.body383.i

if.then377.i:                                     ; preds = %do.body374.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_keys_done.i = getelementptr i8, ptr %kobj, i32 48212
  %call.i.i772.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %writeback_keys_done.i, i32 noundef 4) #12
  %136 = ptrtoint ptr %writeback_keys_done.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %writeback_keys_done.i, align 4
  %call379.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.73, i32 noundef %137) #12
  br label %__bch_cache_set_show.exit

do.body383.i:                                     ; preds = %do.body374.i
  %cmp384.i = icmp eq ptr %attr, @sysfs_writeback_keys_failed
  br i1 %cmp384.i, label %if.then386.i, label %do.end391.i

if.then386.i:                                     ; preds = %do.body383.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_keys_failed.i = getelementptr i8, ptr %kobj, i32 48216
  %call.i.i773.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %writeback_keys_failed.i, i32 noundef 4) #12
  %138 = ptrtoint ptr %writeback_keys_failed.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %writeback_keys_failed.i, align 4
  %call388.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.73, i32 noundef %139) #12
  br label %__bch_cache_set_show.exit

do.end391.i:                                      ; preds = %do.body383.i
  %cmp392.i = icmp eq ptr %attr, @sysfs_errors
  br i1 %cmp392.i, label %if.then394.i, label %do.body397.i

if.then394.i:                                     ; preds = %do.end391.i
  call void @__sanitizer_cov_trace_pc() #14
  %on_error.i = getelementptr i8, ptr %kobj, i32 48232
  %140 = ptrtoint ptr %on_error.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %on_error.i, align 8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp.i5 = icmp eq i32 %141, 0
  %cond.i6 = select i1 %cmp.i5, ptr @.str.16, ptr @.str.17
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %cond.i6, ptr noundef nonnull @.str.70) #12
  %add.ptr2.i = getelementptr i8, ptr %buf, i32 %call.i
  %gepdiff = sub i32 4096, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp.i5.1 = icmp eq i32 %141, 1
  %cond.i6.1 = select i1 %cmp.i5.1, ptr @.str.16, ptr @.str.17
  %call.i.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %gepdiff, ptr noundef nonnull %cond.i6.1, ptr noundef nonnull @.str.109) #12
  %add.ptr2.i.1 = getelementptr i8, ptr %add.ptr2.i, i32 %call.i.1
  %arrayidx3.i = getelementptr i8, ptr %add.ptr2.i.1, i32 -1
  %142 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 10, ptr %arrayidx3.i, align 1
  %sub.ptr.lhs.cast4.i = ptrtoint ptr %add.ptr2.i.1 to i32
  %sub.ptr.sub6.i = sub i32 %sub.ptr.lhs.cast4.i, %sub.ptr.rhs.cast.i
  br label %__bch_cache_set_show.exit

do.body397.i:                                     ; preds = %do.end391.i
  %cmp398.i = icmp eq ptr %attr, @sysfs_io_error_halflife
  br i1 %cmp398.i, label %if.then400.i, label %do.body405.i

if.then400.i:                                     ; preds = %do.body397.i
  call void @__sanitizer_cov_trace_pc() #14
  %error_decay.i = getelementptr i8, ptr %kobj, i32 48240
  %143 = ptrtoint ptr %error_decay.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %error_decay.i, align 8
  %mul.i = mul i32 %144, 88
  %call401.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul.i) #12
  br label %__bch_cache_set_show.exit

do.body405.i:                                     ; preds = %do.body397.i
  %cmp406.i = icmp eq ptr %attr, @sysfs_io_error_limit
  br i1 %cmp406.i, label %if.then408.i, label %do.body413.i

if.then408.i:                                     ; preds = %do.body405.i
  call void @__sanitizer_cov_trace_pc() #14
  %error_limit.i = getelementptr i8, ptr %kobj, i32 48236
  %145 = ptrtoint ptr %error_limit.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %error_limit.i, align 4
  %call409.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %146) #12
  br label %__bch_cache_set_show.exit

do.body413.i:                                     ; preds = %do.body405.i
  %cmp414.i = icmp eq ptr %attr, @sysfs_congested
  br i1 %cmp414.i, label %if.then416.i, label %do.body427.i

if.then416.i:                                     ; preds = %do.body413.i
  call void @__sanitizer_cov_trace_pc() #14
  %call418.i = tail call i32 @bch_get_congested(ptr noundef %add.ptr.i) #12
  %conv419.i = zext i32 %call418.i to i64
  %shl420.i = shl nuw nsw i64 %conv419.i, 9
  %call421.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %shl420.i) #12
  %strlen.i = tail call i32 @strlen(ptr %buf) #15
  %endptr.i = getelementptr i8, ptr %buf, i32 %strlen.i
  %147 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 2560, ptr %endptr.i, align 1
  %add423.i = add i32 %call421.i, 1
  br label %__bch_cache_set_show.exit

do.body427.i:                                     ; preds = %do.body413.i
  %cmp428.i = icmp eq ptr %attr, @sysfs_congested_read_threshold_us
  br i1 %cmp428.i, label %if.then430.i, label %do.body435.i

if.then430.i:                                     ; preds = %do.body427.i
  call void @__sanitizer_cov_trace_pc() #14
  %congested_read_threshold_us.i = getelementptr i8, ptr %kobj, i32 47960
  %148 = ptrtoint ptr %congested_read_threshold_us.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %congested_read_threshold_us.i, align 8
  %call431.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %149) #12
  br label %__bch_cache_set_show.exit

do.body435.i:                                     ; preds = %do.body427.i
  %cmp436.i = icmp eq ptr %attr, @sysfs_congested_write_threshold_us
  br i1 %cmp436.i, label %if.then438.i, label %do.body443.i

if.then438.i:                                     ; preds = %do.body435.i
  call void @__sanitizer_cov_trace_pc() #14
  %congested_write_threshold_us.i = getelementptr i8, ptr %kobj, i32 47964
  %150 = ptrtoint ptr %congested_write_threshold_us.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %congested_write_threshold_us.i, align 4
  %call439.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %151) #12
  br label %__bch_cache_set_show.exit

do.body443.i:                                     ; preds = %do.body435.i
  %cmp444.i = icmp eq ptr %attr, @sysfs_cutoff_writeback
  br i1 %cmp444.i, label %if.then446.i, label %do.body451.i

if.then446.i:                                     ; preds = %do.body443.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_cutoff_writeback to i32))
  %152 = load i32, ptr @bch_cutoff_writeback, align 4
  %call447.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %152) #12
  br label %__bch_cache_set_show.exit

do.body451.i:                                     ; preds = %do.body443.i
  %cmp452.i = icmp eq ptr %attr, @sysfs_cutoff_writeback_sync
  br i1 %cmp452.i, label %if.then454.i, label %do.body459.i

if.then454.i:                                     ; preds = %do.body451.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_cutoff_writeback_sync to i32))
  %153 = load i32, ptr @bch_cutoff_writeback_sync, align 4
  %call455.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %153) #12
  br label %__bch_cache_set_show.exit

do.body459.i:                                     ; preds = %do.body451.i
  %cmp460.i = icmp eq ptr %attr, @sysfs_active_journal_entries
  br i1 %cmp460.i, label %if.then462.i, label %do.body472.i

if.then462.i:                                     ; preds = %do.body459.i
  call void @__sanitizer_cov_trace_pc() #14
  %pin.i = getelementptr i8, ptr %kobj, i32 47824
  %back.i = getelementptr i8, ptr %kobj, i32 47828
  %154 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %back.i, align 4
  %156 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pin.i, align 8
  %sub465.i = sub i32 %155, %157
  %mask.i = getelementptr i8, ptr %kobj, i32 47836
  %158 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %sub465.i, %159
  %call468.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and.i) #12
  br label %__bch_cache_set_show.exit

do.body472.i:                                     ; preds = %do.body459.i
  %cmp473.i = icmp eq ptr %attr, @sysfs_verify
  br i1 %cmp473.i, label %if.then475.i, label %do.body480.i

if.then475.i:                                     ; preds = %do.body472.i
  call void @__sanitizer_cov_trace_pc() #14
  %verify.i = getelementptr i8, ptr %kobj, i32 48247
  %160 = ptrtoint ptr %verify.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %bf.load.i = load i8, ptr %verify.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %call476.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast.i) #12
  br label %__bch_cache_set_show.exit

do.body480.i:                                     ; preds = %do.body472.i
  %cmp481.i = icmp eq ptr %attr, @sysfs_key_merging_disabled
  br i1 %cmp481.i, label %if.then483.i, label %do.body491.i

if.then483.i:                                     ; preds = %do.body480.i
  call void @__sanitizer_cov_trace_pc() #14
  %key_merging_disabled.i = getelementptr i8, ptr %kobj, i32 48247
  %161 = ptrtoint ptr %key_merging_disabled.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load484.i = load i8, ptr %key_merging_disabled.i, align 1
  %bf.lshr485.i = lshr i8 %bf.load484.i, 6
  %bf.clear.i = and i8 %bf.lshr485.i, 1
  %bf.cast486.i = zext i8 %bf.clear.i to i32
  %call487.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast486.i) #12
  br label %__bch_cache_set_show.exit

do.body491.i:                                     ; preds = %do.body480.i
  %cmp492.i = icmp eq ptr %attr, @sysfs_expensive_debug_checks
  br i1 %cmp492.i, label %if.then494.i, label %do.body501.i

if.then494.i:                                     ; preds = %do.body491.i
  call void @__sanitizer_cov_trace_pc() #14
  %expensive_debug_checks.i = getelementptr i8, ptr %kobj, i32 48246
  %162 = ptrtoint ptr %expensive_debug_checks.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %expensive_debug_checks.i, align 2, !range !421
  %164 = zext i8 %163 to i32
  %call497.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %164) #12
  br label %__bch_cache_set_show.exit

do.body501.i:                                     ; preds = %do.body491.i
  %cmp502.i = icmp eq ptr %attr, @sysfs_gc_always_rewrite
  br i1 %cmp502.i, label %if.then504.i, label %do.body513.i

if.then504.i:                                     ; preds = %do.body501.i
  call void @__sanitizer_cov_trace_pc() #14
  %gc_always_rewrite.i = getelementptr i8, ptr %kobj, i32 48247
  %165 = ptrtoint ptr %gc_always_rewrite.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load505.i = load i8, ptr %gc_always_rewrite.i, align 1
  %bf.lshr506.i = lshr i8 %bf.load505.i, 5
  %bf.clear507.i = and i8 %bf.lshr506.i, 1
  %bf.cast508.i = zext i8 %bf.clear507.i to i32
  %call509.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast508.i) #12
  br label %__bch_cache_set_show.exit

do.body513.i:                                     ; preds = %do.body501.i
  %cmp514.i = icmp eq ptr %attr, @sysfs_btree_shrinker_disabled
  br i1 %cmp514.i, label %if.then516.i, label %do.body525.i

if.then516.i:                                     ; preds = %do.body513.i
  call void @__sanitizer_cov_trace_pc() #14
  %shrinker_disabled.i = getelementptr i8, ptr %kobj, i32 48247
  %166 = ptrtoint ptr %shrinker_disabled.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load517.i = load i8, ptr %shrinker_disabled.i, align 1
  %bf.lshr518.i = lshr i8 %bf.load517.i, 4
  %bf.clear519.i = and i8 %bf.lshr518.i, 1
  %bf.cast520.i = zext i8 %bf.clear519.i to i32
  %call521.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast520.i) #12
  br label %__bch_cache_set_show.exit

do.body525.i:                                     ; preds = %do.body513.i
  %cmp526.i = icmp eq ptr %attr, @sysfs_copy_gc_enabled
  br i1 %cmp526.i, label %if.then528.i, label %do.body537.i

if.then528.i:                                     ; preds = %do.body525.i
  call void @__sanitizer_cov_trace_pc() #14
  %copy_gc_enabled.i = getelementptr i8, ptr %kobj, i32 48247
  %167 = ptrtoint ptr %copy_gc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %bf.load529.i = load i8, ptr %copy_gc_enabled.i, align 1
  %bf.lshr530.i = lshr i8 %bf.load529.i, 3
  %bf.clear531.i = and i8 %bf.lshr530.i, 1
  %bf.cast532.i = zext i8 %bf.clear531.i to i32
  %call533.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast532.i) #12
  br label %__bch_cache_set_show.exit

do.body537.i:                                     ; preds = %do.body525.i
  %cmp538.i = icmp eq ptr %attr, @sysfs_idle_max_writeback_rate
  br i1 %cmp538.i, label %if.then540.i, label %do.body549.i

if.then540.i:                                     ; preds = %do.body537.i
  call void @__sanitizer_cov_trace_pc() #14
  %idle_max_writeback_rate_enabled.i = getelementptr i8, ptr %kobj, i32 48247
  %168 = ptrtoint ptr %idle_max_writeback_rate_enabled.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load541.i = load i8, ptr %idle_max_writeback_rate_enabled.i, align 1
  %bf.lshr542.i = lshr i8 %bf.load541.i, 2
  %bf.clear543.i = and i8 %bf.lshr542.i, 1
  %bf.cast544.i = zext i8 %bf.clear543.i to i32
  %call545.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %bf.cast544.i) #12
  br label %__bch_cache_set_show.exit

do.body549.i:                                     ; preds = %do.body537.i
  %cmp550.i = icmp eq ptr %attr, @sysfs_gc_after_writeback
  br i1 %cmp550.i, label %if.then552.i, label %do.body558.i

if.then552.i:                                     ; preds = %do.body549.i
  call void @__sanitizer_cov_trace_pc() #14
  %gc_after_writeback.i = getelementptr i8, ptr %kobj, i32 2592
  %169 = ptrtoint ptr %gc_after_writeback.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %gc_after_writeback.i, align 8
  %conv553.i = zext i8 %170 to i32
  %call554.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv553.i) #12
  br label %__bch_cache_set_show.exit

do.body558.i:                                     ; preds = %do.body549.i
  %cmp559.i = icmp eq ptr %attr, @sysfs_io_disable
  br i1 %cmp559.i, label %if.then561.i, label %do.end566.i

if.then561.i:                                     ; preds = %do.body558.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr i8, ptr %kobj, i32 1096
  %171 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %flags.i, align 4
  %shr.i.i = lshr i32 %172, 3
  %and1.i.i = and i32 %shr.i.i, 1
  %call563.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %and1.i.i) #12
  br label %__bch_cache_set_show.exit

do.end566.i:                                      ; preds = %do.body558.i
  %cmp567.i = icmp eq ptr %attr, @sysfs_bset_tree_stats
  br i1 %cmp567.i, label %if.then569.i, label %if.end571.i

if.then569.i:                                     ; preds = %do.end566.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %op.i) #12
  %173 = getelementptr inbounds i8, ptr %op.i, i32 20
  %174 = call ptr @memset(ptr %173, i32 0, i32 32)
  %175 = tail call i32 @llvm.read_register.i32(metadata !411) #12
  %and.i.i.i = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %task.i.i, align 8
  %private.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op.i, i32 0, i32 1
  %179 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %private.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op.i, i32 0, i32 2
  %180 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @autoremove_wake_function, ptr %func.i.i, align 4
  %entry3.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op.i, i32 0, i32 3
  %181 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %entry3.i.i, ptr %entry3.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %op.i, i32 0, i32 3, i32 1
  %182 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %entry3.i.i, ptr %prev.i.i.i, align 4
  %183 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %op.i, align 4
  %184 = ptrtoint ptr %173 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 -1, ptr %173, align 4
  %185 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 -9223372036854775808, ptr %.compoundliteral.i, align 8
  %low.i = getelementptr inbounds %struct.bkey, ptr %.compoundliteral.i, i32 0, i32 1
  %186 = ptrtoint ptr %low.i to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 0, ptr %low.i, align 8
  %call.i.i1 = call i32 @__bch_btree_map_nodes(ptr noundef nonnull %op.i, ptr noundef %add.ptr.i, ptr noundef nonnull %.compoundliteral.i, ptr noundef nonnull @bch_btree_bset_stats, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1)
  %cmp.i2 = icmp slt i32 %call.i.i1, 0
  br i1 %cmp.i2, label %if.then569.i.bch_bset_print_stats.exit_crit_edge, label %if.end.i

if.then569.i.bch_bset_print_stats.exit_crit_edge: ; preds = %if.then569.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bch_bset_print_stats.exit

if.end.i:                                         ; preds = %if.then569.i
  call void @__sanitizer_cov_trace_pc() #14
  %nodes.i = getelementptr inbounds %struct.bset_stats_op, ptr %op.i, i32 0, i32 1
  %187 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %nodes.i, align 4
  %stats.i = getelementptr inbounds %struct.bset_stats_op, ptr %op.i, i32 0, i32 2
  %189 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %stats.i, align 4
  %sets_unwritten.i = getelementptr inbounds %struct.bset_stats_op, ptr %op.i, i32 0, i32 2, i32 1
  %191 = ptrtoint ptr %sets_unwritten.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %sets_unwritten.i, align 4
  %bytes_written.i = getelementptr inbounds %struct.bset_stats_op, ptr %op.i, i32 0, i32 2, i32 2
  %193 = ptrtoint ptr %bytes_written.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %bytes_written.i, align 4
  %bytes_unwritten.i = getelementptr inbounds %struct.bset_stats_op, ptr %op.i, i32 0, i32 2, i32 3
  %195 = ptrtoint ptr %bytes_unwritten.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bytes_unwritten.i, align 4
  %floats.i = getelementptr inbounds %struct.bset_stats_op, ptr %op.i, i32 0, i32 2, i32 4
  %197 = ptrtoint ptr %floats.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %floats.i, align 4
  %failed.i = getelementptr inbounds %struct.bset_stats_op, ptr %op.i, i32 0, i32 2, i32 5
  %199 = ptrtoint ptr %failed.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %failed.i, align 4
  %call8.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.125, i32 noundef %188, i32 noundef %190, i32 noundef %192, i32 noundef %194, i32 noundef %196, i32 noundef %198, i32 noundef %200) #12
  br label %bch_bset_print_stats.exit

bch_bset_print_stats.exit:                        ; preds = %if.end.i, %if.then569.i.bch_bset_print_stats.exit_crit_edge
  %retval.0.i3 = phi i32 [ %call8.i, %if.end.i ], [ %call.i.i1, %if.then569.i.bch_bset_print_stats.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %op.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral.i)
  br label %__bch_cache_set_show.exit

if.end571.i:                                      ; preds = %do.end566.i
  %cmp572.i = icmp eq ptr %attr, @sysfs_feature_compat
  br i1 %cmp572.i, label %if.then574.i, label %if.end576.i

if.then574.i:                                     ; preds = %if.end571.i
  call void @__sanitizer_cov_trace_pc() #14
  %call575.i = tail call i32 @bch_print_cache_set_feature_compat(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef 4096) #12
  br label %__bch_cache_set_show.exit

if.end576.i:                                      ; preds = %if.end571.i
  %cmp577.i = icmp eq ptr %attr, @sysfs_feature_ro_compat
  br i1 %cmp577.i, label %if.then579.i, label %if.end581.i

if.then579.i:                                     ; preds = %if.end576.i
  call void @__sanitizer_cov_trace_pc() #14
  %call580.i = tail call i32 @bch_print_cache_set_feature_ro_compat(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef 4096) #12
  br label %__bch_cache_set_show.exit

if.end581.i:                                      ; preds = %if.end576.i
  %cmp582.i = icmp eq ptr %attr, @sysfs_feature_incompat
  br i1 %cmp582.i, label %if.then584.i, label %if.end581.i.__bch_cache_set_show.exit_crit_edge

if.end581.i.__bch_cache_set_show.exit_crit_edge:  ; preds = %if.end581.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_set_show.exit

if.then584.i:                                     ; preds = %if.end581.i
  call void @__sanitizer_cov_trace_pc() #14
  %call585.i = tail call i32 @bch_print_cache_set_feature_incompat(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef 4096) #12
  br label %__bch_cache_set_show.exit

__bch_cache_set_show.exit:                        ; preds = %if.then584.i, %if.end581.i.__bch_cache_set_show.exit_crit_edge, %if.then579.i, %if.then574.i, %bch_bset_print_stats.exit, %if.then561.i, %if.then552.i, %if.then540.i, %if.then528.i, %if.then516.i, %if.then504.i, %if.then494.i, %if.then483.i, %if.then475.i, %if.then462.i, %if.then454.i, %if.then446.i, %if.then438.i, %if.then430.i, %if.then416.i, %if.then408.i, %if.then400.i, %if.then394.i, %if.then386.i, %if.then377.i, %if.then368.i, %if.then359.i, %if.then350.i, %if.then341.i, %bch_average_key_size.exit.i, %if.then319.i, %if.then310.i, %cond.end299.i, %if.then277.i, %if.then265.i, %if.then254.i, %cond.end242.i, %if.then217.i, %if.then204.i, %if.then193.i, %cond.end181.i, %if.then159.i, %if.then147.i, %if.then136.i, %cond.end.i, %if.then109.i, %if.then98.i, %if.then89.i, %if.then80.i, %bch_cache_max_chain.exit, %bch_cache_size.exit.i, %bch_root_usage.exit.i, %if.then40.i, %if.then24.i, %if.then12.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call5.i, %if.then4.i ], [ %add.i, %if.then12.i ], [ %add33.i, %if.then24.i ], [ %call42.i, %if.then40.i ], [ %call51.i, %bch_root_usage.exit.i ], [ %add64.i, %bch_cache_size.exit.i ], [ %call73.i, %bch_cache_max_chain.exit ], [ %call81.i, %if.then80.i ], [ %call91.i, %if.then89.i ], [ %call102.i, %if.then98.i ], [ %call112.i, %if.then109.i ], [ %call126.i, %cond.end.i ], [ %call140.i, %if.then136.i ], [ %call152.i, %if.then147.i ], [ %call163.i, %if.then159.i ], [ %call183.i, %cond.end181.i ], [ %call197.i, %if.then193.i ], [ %call210.i, %if.then204.i ], [ %call222.i, %if.then217.i ], [ %call244.i, %cond.end242.i ], [ %call258.i, %if.then254.i ], [ %call270.i, %if.then265.i ], [ %call281.i, %if.then277.i ], [ %call301.i, %cond.end299.i ], [ %call312.i, %if.then310.i ], [ %call321.i, %if.then319.i ], [ %add334.i, %bch_average_key_size.exit.i ], [ %call343.i, %if.then341.i ], [ %call352.i, %if.then350.i ], [ %call361.i, %if.then359.i ], [ %call370.i, %if.then368.i ], [ %call379.i, %if.then377.i ], [ %call388.i, %if.then386.i ], [ %sub.ptr.sub6.i, %if.then394.i ], [ %call401.i, %if.then400.i ], [ %call409.i, %if.then408.i ], [ %add423.i, %if.then416.i ], [ %call431.i, %if.then430.i ], [ %call439.i, %if.then438.i ], [ %call447.i, %if.then446.i ], [ %call455.i, %if.then454.i ], [ %call468.i, %if.then462.i ], [ %call476.i, %if.then475.i ], [ %call487.i, %if.then483.i ], [ %call497.i, %if.then494.i ], [ %call509.i, %if.then504.i ], [ %call521.i, %if.then516.i ], [ %call533.i, %if.then528.i ], [ %call545.i, %if.then540.i ], [ %call554.i, %if.then552.i ], [ %call563.i, %if.then561.i ], [ %retval.0.i3, %bch_bset_print_stats.exit ], [ %call575.i, %if.then574.i ], [ %call580.i, %if.then579.i ], [ %call585.i, %if.then584.i ], [ 0, %if.end581.i.__bch_cache_set_show.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_cache_set_store(ptr noundef %kobj, ptr noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  %_v.i = alloca i32, align 4
  %v31.i = alloca i64, align 8
  %sc.i = alloca %struct.shrink_control, align 4
  %_v60.i = alloca i32, align 4
  %_v82.i = alloca i32, align 4
  %_v113.i = alloca i32, align 4
  %_v157.i = alloca i32, align 4
  %_v191.i = alloca i32, align 4
  %_v221.i = alloca i32, align 4
  %_v261.i = alloca i32, align 4
  %_v296.i = alloca i32, align 4
  %_v318.i = alloca i32, align 4
  %_v345.i = alloca i32, align 4
  %_v367.i = alloca i32, align 4
  %_v395.i = alloca i32, align 4
  %_v423.i = alloca i32, align 4
  %_v451.i = alloca i32, align 4
  %_v480.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #12
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -80
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @bcache_is_reboot to i32))
  %0 = load i8, ptr @bcache_is_reboot, align 1, !range !421
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bch_cache_set_store.exit_crit_edge

entry.__bch_cache_set_store.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_set_store.exit

if.end.i:                                         ; preds = %entry
  %cmp.i = icmp eq ptr %attr, @sysfs_unregister
  br i1 %cmp.i, label %if.end2.thread.i, label %if.end2.i

if.end2.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bch_cache_set_unregister(ptr noundef %add.ptr.i) #12
  br label %__bch_cache_set_store.exit

if.end2.i:                                        ; preds = %if.end.i
  %cmp3.i = icmp eq ptr %attr, @sysfs_stop
  br i1 %cmp3.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bch_cache_set_stop(ptr noundef %add.ptr.i) #12
  br label %__bch_cache_set_store.exit

if.end5.i:                                        ; preds = %if.end2.i
  %cmp6.i = icmp eq ptr %attr, @sysfs_synchronous
  br i1 %cmp6.i, label %if.then7.i, label %if.end27.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v.i) #12
  %1 = ptrtoint ptr %_v.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %_v.i, align 4, !annotation !422
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %cleanup.cont.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v.i) #12
  br label %__bch_cache_set_store.exit

cleanup.cont.i:                                   ; preds = %if.then7.i
  %2 = ptrtoint ptr %_v.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool13.i = icmp ne i32 %3, 0
  %conv.i = zext i1 %tobool13.i to i64
  %cache.i = getelementptr i8, ptr %kobj, i32 1108
  %4 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache.i, align 4
  %flags.i.i = getelementptr inbounds %struct.cache, ptr %5, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flags.i.i, align 8
  %and.i.i = and i64 %7, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %conv.i)
  %cmp16.not.i = icmp eq i64 %and.i.i, %conv.i
  br i1 %cmp16.not.i, label %cleanup.cont.i.do.body474.thread951.i_crit_edge, label %if.then18.i

cleanup.cont.i.do.body474.thread951.i_crit_edge:  ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body474.thread951.i

if.then18.i:                                      ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i682.i = and i64 %7, -2
  %or.i.i = or i64 %and.i682.i, %conv.i
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or.i.i, ptr %flags.i.i, align 8
  call void @bcache_write_super(ptr noundef %add.ptr.i) #12
  br label %do.body474.thread951.i

if.end27.i:                                       ; preds = %if.end5.i
  %cmp28.i = icmp eq ptr %attr, @sysfs_flash_vol_create
  br i1 %cmp28.i, label %if.then30.i, label %if.end48.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v31.i) #12
  %9 = ptrtoint ptr %v31.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %v31.i, align 8, !annotation !422
  %call33.i = call i32 @bch_strtoull_h(ptr noundef %buf, ptr noundef nonnull %v31.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %cleanup44.i, label %cleanup44.thread.i

cleanup44.thread.i:                               ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v31.i) #12
  br label %__bch_cache_set_store.exit

cleanup44.i:                                      ; preds = %if.then30.i
  %10 = ptrtoint ptr %v31.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %v31.i, align 8
  %call40.i = call i32 @bch_flash_dev_create(ptr noundef %add.ptr.i, i64 noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v31.i) #12
  br i1 %tobool41.not.i, label %cleanup44.i.do.body474.thread951.i_crit_edge, label %cleanup44.i.__bch_cache_set_store.exit_crit_edge

cleanup44.i.__bch_cache_set_store.exit_crit_edge: ; preds = %cleanup44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_set_store.exit

cleanup44.i.do.body474.thread951.i_crit_edge:     ; preds = %cleanup44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body474.thread951.i

if.end48.i:                                       ; preds = %if.end27.i
  %cmp49.i = icmp eq ptr %attr, @sysfs_clear_stats
  br i1 %cmp49.i, label %if.end52.thread.i, label %if.end52.i

if.end52.thread.i:                                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %writeback_keys_done.i = getelementptr i8, ptr %kobj, i32 48212
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %writeback_keys_done.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %writeback_keys_done.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %writeback_keys_done.i, align 4
  %writeback_keys_failed.i = getelementptr i8, ptr %kobj, i32 48216
  %call.i.i680.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %writeback_keys_failed.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %writeback_keys_failed.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %writeback_keys_failed.i, align 4
  %gc_stats.i = getelementptr i8, ptr %kobj, i32 2528
  %14 = call ptr @memset(ptr %gc_stats.i, i32 0, i32 32)
  %accounting.i = getelementptr i8, ptr %kobj, i32 276
  tail call void @bch_cache_accounting_clear(ptr noundef %accounting.i) #12
  br label %__bch_cache_set_store.exit

if.end52.i:                                       ; preds = %if.end48.i
  %cmp53.i = icmp eq ptr %attr, @sysfs_trigger_gc
  br i1 %cmp53.i, label %if.then55.i, label %if.end56.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  %sectors_to_gc.i.i = getelementptr i8, ptr %kobj, i32 2600
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sectors_to_gc.i.i, i32 noundef 4) #12
  %15 = ptrtoint ptr %sectors_to_gc.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 -1, ptr %sectors_to_gc.i.i, align 4
  %gc_wait.i.i.i = getelementptr i8, ptr %kobj, i32 2604
  tail call void @__wake_up(ptr noundef %gc_wait.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %__bch_cache_set_store.exit

if.end56.i:                                       ; preds = %if.end52.i
  %cmp57.i = icmp eq ptr %attr, @sysfs_prune_cache
  br i1 %cmp57.i, label %if.then59.i, label %do.body77.i

if.then59.i:                                      ; preds = %if.end56.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sc.i) #12
  %16 = getelementptr inbounds i8, ptr %sc.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 255, i32 16)
  %18 = ptrtoint ptr %sc.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3264, ptr %sc.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v60.i) #12
  %19 = ptrtoint ptr %_v60.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %_v60.i, align 4, !annotation !422
  %call.i683.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v60.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i683.i)
  %tobool63.not.i = icmp eq i32 %call.i683.i, 0
  br i1 %tobool63.not.i, label %do.end141.thread.i, label %cleanup510.critedge674.i

do.end141.thread.i:                               ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = getelementptr inbounds %struct.shrink_control, ptr %sc.i, i32 0, i32 2
  %21 = ptrtoint ptr %_v60.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %_v60.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v60.i) #12
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %20, align 4
  %shrink.i = getelementptr i8, ptr %kobj, i32 2192
  %scan_objects.i = getelementptr i8, ptr %kobj, i32 2196
  %24 = ptrtoint ptr %scan_objects.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scan_objects.i, align 4
  %call72.i = call i32 %25(ptr noundef %shrink.i, ptr noundef nonnull %sc.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sc.i) #12
  br label %__bch_cache_set_store.exit

do.body77.i:                                      ; preds = %if.end56.i
  %cmp78.i = icmp eq ptr %attr, @sysfs_congested_read_threshold_us
  br i1 %cmp78.i, label %if.then80.i, label %do.body107.i

if.then80.i:                                      ; preds = %do.body77.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v82.i) #12
  %26 = ptrtoint ptr %_v82.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %_v82.i, align 4, !annotation !422
  %call.i684.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v82.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i684.i)
  %tobool85.not.i = icmp eq i32 %call.i684.i, 0
  br i1 %tobool85.not.i, label %if.then100.i, label %if.end97.i

if.end97.i:                                       ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v82.i) #12
  br label %__bch_cache_set_store.exit

if.then100.i:                                     ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %_v82.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %_v82.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v82.i) #12
  %congested_read_threshold_us.i = getelementptr i8, ptr %kobj, i32 47960
  %29 = ptrtoint ptr %congested_read_threshold_us.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %congested_read_threshold_us.i, align 8
  br label %__bch_cache_set_store.exit

do.body107.i:                                     ; preds = %do.body77.i
  %cmp108.i = icmp eq ptr %attr, @sysfs_congested_write_threshold_us
  br i1 %cmp108.i, label %if.then110.i, label %do.end141.i

if.then110.i:                                     ; preds = %do.body107.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v113.i) #12
  %30 = ptrtoint ptr %_v113.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %_v113.i, align 4, !annotation !422
  %call.i685.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v113.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i685.i)
  %tobool116.not.i = icmp eq i32 %call.i685.i, 0
  br i1 %tobool116.not.i, label %if.then135.i, label %if.end132.i

if.end132.i:                                      ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v113.i) #12
  br label %__bch_cache_set_store.exit

if.then135.i:                                     ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %_v113.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %_v113.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v113.i) #12
  %congested_write_threshold_us.i = getelementptr i8, ptr %kobj, i32 47964
  %33 = ptrtoint ptr %congested_write_threshold_us.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %congested_write_threshold_us.i, align 4
  br label %__bch_cache_set_store.exit

do.end141.i:                                      ; preds = %do.body107.i
  %cmp142.i = icmp eq ptr %attr, @sysfs_errors
  br i1 %cmp142.i, label %if.then144.i, label %do.body151.i

if.then144.i:                                     ; preds = %do.end141.i
  %call145.i = tail call i32 @__sysfs_match_string(ptr noundef nonnull @error_actions, i32 noundef -1, ptr noundef %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %cmp146.i = icmp slt i32 %call145.i, 0
  br i1 %cmp146.i, label %if.then144.i.__bch_cache_set_store.exit_crit_edge, label %if.end149.i

if.then144.i.__bch_cache_set_store.exit_crit_edge: ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_set_store.exit

if.end149.i:                                      ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #14
  %on_error.i = getelementptr i8, ptr %kobj, i32 48232
  %34 = ptrtoint ptr %on_error.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call145.i, ptr %on_error.i, align 8
  br label %__bch_cache_set_store.exit

do.body151.i:                                     ; preds = %do.end141.i
  %cmp152.i = icmp eq ptr %attr, @sysfs_io_error_limit
  br i1 %cmp152.i, label %if.then154.i, label %do.end185.i

if.then154.i:                                     ; preds = %do.body151.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v157.i) #12
  %35 = ptrtoint ptr %_v157.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %_v157.i, align 4, !annotation !422
  %call.i686.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v157.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i686.i)
  %tobool160.not.i = icmp eq i32 %call.i686.i, 0
  br i1 %tobool160.not.i, label %if.then179.i, label %if.end176.i

if.end176.i:                                      ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v157.i) #12
  br label %__bch_cache_set_store.exit

if.then179.i:                                     ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %_v157.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %_v157.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v157.i) #12
  %error_limit.i = getelementptr i8, ptr %kobj, i32 48236
  %38 = ptrtoint ptr %error_limit.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %error_limit.i, align 4
  br label %__bch_cache_set_store.exit

do.end185.i:                                      ; preds = %do.body151.i
  %cmp186.i = icmp eq ptr %attr, @sysfs_io_error_halflife
  br i1 %cmp186.i, label %if.then188.i, label %if.end217.i

if.then188.i:                                     ; preds = %do.end185.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v191.i) #12
  %39 = ptrtoint ptr %_v191.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %_v191.i, align 4, !annotation !422
  %call.i687.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v191.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i687.i)
  %tobool194.not.i = icmp eq i32 %call.i687.i, 0
  br i1 %tobool194.not.i, label %if.then213.i, label %if.end210.i

if.end210.i:                                      ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v191.i) #12
  br label %__bch_cache_set_store.exit

if.then213.i:                                     ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %_v191.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %_v191.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v191.i) #12
  %div.i = udiv i32 %41, 88
  %error_decay.i = getelementptr i8, ptr %kobj, i32 48240
  %42 = ptrtoint ptr %error_decay.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div.i, ptr %error_decay.i, align 8
  br label %__bch_cache_set_store.exit

if.end217.i:                                      ; preds = %do.end185.i
  %cmp218.i = icmp eq ptr %attr, @sysfs_io_disable
  br i1 %cmp218.i, label %if.then220.i, label %do.body255.i

if.then220.i:                                     ; preds = %if.end217.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v221.i) #12
  %43 = ptrtoint ptr %_v221.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %_v221.i, align 4, !annotation !422
  %call.i688.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v221.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i688.i)
  %tobool224.not.i = icmp eq i32 %call.i688.i, 0
  br i1 %tobool224.not.i, label %cleanup.cont231.i, label %cleanup228.i

cleanup228.i:                                     ; preds = %if.then220.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v221.i) #12
  br label %__bch_cache_set_store.exit

cleanup.cont231.i:                                ; preds = %if.then220.i
  %44 = ptrtoint ptr %_v221.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %_v221.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v221.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool232.not.i = icmp eq i32 %45, 0
  %flags243.i = getelementptr i8, ptr %kobj, i32 1096
  br i1 %tobool232.not.i, label %if.else.i, label %if.then233.i

if.then233.i:                                     ; preds = %cleanup.cont231.i
  %call234.i = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags243.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234.i)
  %tobool235.not.i = icmp eq i32 %call234.i, 0
  br i1 %tobool235.not.i, label %if.then233.i.__bch_cache_set_store.exit_crit_edge, label %do.end239.i

if.then233.i.__bch_cache_set_store.exit_crit_edge: ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_set_store.exit

do.end239.i:                                      ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #14
  %call241.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130) #17
  br label %__bch_cache_set_store.exit

if.else.i:                                        ; preds = %cleanup.cont231.i
  %call244.i = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags243.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244.i)
  %tobool245.not.i = icmp eq i32 %call244.i, 0
  br i1 %tobool245.not.i, label %do.end249.i, label %if.else.i.__bch_cache_set_store.exit_crit_edge

if.else.i.__bch_cache_set_store.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_set_store.exit

do.end249.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %call251.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130) #17
  br label %__bch_cache_set_store.exit

do.body255.i:                                     ; preds = %if.end217.i
  %cmp256.i = icmp eq ptr %attr, @sysfs_journal_delay_ms
  br i1 %cmp256.i, label %if.then258.i, label %do.body291.i

if.then258.i:                                     ; preds = %do.body255.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v261.i) #12
  %46 = ptrtoint ptr %_v261.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %_v261.i, align 4, !annotation !422
  %call.i689.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v261.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i689.i)
  %tobool264.not.i = icmp eq i32 %call.i689.i, 0
  br i1 %tobool264.not.i, label %if.then283.i, label %if.end280.i

if.end280.i:                                      ; preds = %if.then258.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v261.i) #12
  br label %__bch_cache_set_store.exit

if.then283.i:                                     ; preds = %if.then258.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %_v261.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %_v261.i, align 4
  %49 = call i32 @llvm.umin.i32(i32 %48, i32 65535) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v261.i) #12
  %conv284.i = trunc i32 %49 to i16
  %journal_delay_ms.i = getelementptr i8, ptr %kobj, i32 48244
  %50 = ptrtoint ptr %journal_delay_ms.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv284.i, ptr %journal_delay_ms.i, align 4
  br label %__bch_cache_set_store.exit

do.body291.i:                                     ; preds = %do.body255.i
  %cmp292.i = icmp eq ptr %attr, @sysfs_verify
  br i1 %cmp292.i, label %if.then294.i, label %do.body313.i

if.then294.i:                                     ; preds = %do.body291.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v296.i) #12
  %51 = ptrtoint ptr %_v296.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %_v296.i, align 4, !annotation !422
  %call.i690.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v296.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i690.i)
  %tobool299.not.i = icmp eq i32 %call.i690.i, 0
  br i1 %tobool299.not.i, label %cleanup.cont306.i, label %cleanup303.i

cleanup303.i:                                     ; preds = %if.then294.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v296.i) #12
  br label %__bch_cache_set_store.exit

cleanup.cont306.i:                                ; preds = %if.then294.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %_v296.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %_v296.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v296.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool307.not.not.i = icmp eq i32 %53, 0
  %verify.i = getelementptr i8, ptr %kobj, i32 48247
  %54 = ptrtoint ptr %verify.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i = load i8, ptr %verify.i, align 1
  %bf.shl.i = select i1 %tobool307.not.not.i, i8 0, i8 -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %verify.i, align 1
  br label %__bch_cache_set_store.exit

do.body313.i:                                     ; preds = %do.body291.i
  %cmp314.i = icmp eq ptr %attr, @sysfs_key_merging_disabled
  br i1 %cmp314.i, label %if.then316.i, label %do.body341.i

if.then316.i:                                     ; preds = %do.body313.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v318.i) #12
  %55 = ptrtoint ptr %_v318.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %_v318.i, align 4, !annotation !422
  %call.i691.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v318.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i691.i)
  %tobool321.not.i = icmp eq i32 %call.i691.i, 0
  br i1 %tobool321.not.i, label %cleanup.cont328.i, label %cleanup325.i

cleanup325.i:                                     ; preds = %if.then316.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v318.i) #12
  br label %__bch_cache_set_store.exit

cleanup.cont328.i:                                ; preds = %if.then316.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %_v318.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %_v318.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v318.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool329.not.not.i = icmp eq i32 %57, 0
  %key_merging_disabled.i = getelementptr i8, ptr %kobj, i32 48247
  %58 = ptrtoint ptr %key_merging_disabled.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load331.i = load i8, ptr %key_merging_disabled.i, align 1
  %bf.shl333.i = select i1 %tobool329.not.not.i, i8 0, i8 64
  %bf.clear334.i = and i8 %bf.load331.i, -65
  %bf.set335.i = or i8 %bf.clear334.i, %bf.shl333.i
  store i8 %bf.set335.i, ptr %key_merging_disabled.i, align 1
  br label %__bch_cache_set_store.exit

do.body341.i:                                     ; preds = %do.body313.i
  %cmp342.i = icmp eq ptr %attr, @sysfs_expensive_debug_checks
  br i1 %cmp342.i, label %if.then344.i, label %do.body362.i

if.then344.i:                                     ; preds = %do.body341.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v345.i) #12
  %59 = ptrtoint ptr %_v345.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %_v345.i, align 4, !annotation !422
  %call.i692.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v345.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i692.i)
  %tobool348.not.i = icmp eq i32 %call.i692.i, 0
  br i1 %tobool348.not.i, label %if.then349.i, label %if.then344.i.if.end352.i_crit_edge

if.then344.i.if.end352.i_crit_edge:               ; preds = %if.then344.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end352.i

if.then349.i:                                     ; preds = %if.then344.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %_v345.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %_v345.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool350.i = icmp ne i32 %61, 0
  %expensive_debug_checks.i = getelementptr i8, ptr %kobj, i32 48246
  %frombool351.i = zext i1 %tobool350.i to i8
  %62 = ptrtoint ptr %expensive_debug_checks.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %frombool351.i, ptr %expensive_debug_checks.i, align 2
  br label %if.end352.i

if.end352.i:                                      ; preds = %if.then349.i, %if.then344.i.if.end352.i_crit_edge
  %spec.select.i = phi i32 [ %size, %if.then349.i ], [ %call.i692.i, %if.then344.i.if.end352.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v345.i) #12
  br label %__bch_cache_set_store.exit

do.body362.i:                                     ; preds = %do.body341.i
  %cmp363.i = icmp eq ptr %attr, @sysfs_gc_always_rewrite
  br i1 %cmp363.i, label %if.then365.i, label %do.body390.i

if.then365.i:                                     ; preds = %do.body362.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v367.i) #12
  %63 = ptrtoint ptr %_v367.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %_v367.i, align 4, !annotation !422
  %call.i693.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v367.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i693.i)
  %tobool370.not.i = icmp eq i32 %call.i693.i, 0
  br i1 %tobool370.not.i, label %cleanup.cont377.i, label %cleanup374.i

cleanup374.i:                                     ; preds = %if.then365.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v367.i) #12
  br label %__bch_cache_set_store.exit

cleanup.cont377.i:                                ; preds = %if.then365.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %_v367.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %_v367.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v367.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool378.not.not.i = icmp eq i32 %65, 0
  %gc_always_rewrite.i = getelementptr i8, ptr %kobj, i32 48247
  %66 = ptrtoint ptr %gc_always_rewrite.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load380.i = load i8, ptr %gc_always_rewrite.i, align 1
  %bf.shl382.i = select i1 %tobool378.not.not.i, i8 0, i8 32
  %bf.clear383.i = and i8 %bf.load380.i, -33
  %bf.set384.i = or i8 %bf.clear383.i, %bf.shl382.i
  store i8 %bf.set384.i, ptr %gc_always_rewrite.i, align 1
  br label %__bch_cache_set_store.exit

do.body390.i:                                     ; preds = %do.body362.i
  %cmp391.i = icmp eq ptr %attr, @sysfs_btree_shrinker_disabled
  br i1 %cmp391.i, label %if.then393.i, label %do.body418.i

if.then393.i:                                     ; preds = %do.body390.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v395.i) #12
  %67 = ptrtoint ptr %_v395.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %_v395.i, align 4, !annotation !422
  %call.i694.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v395.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i694.i)
  %tobool398.not.i = icmp eq i32 %call.i694.i, 0
  br i1 %tobool398.not.i, label %cleanup.cont405.i, label %cleanup402.i

cleanup402.i:                                     ; preds = %if.then393.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v395.i) #12
  br label %__bch_cache_set_store.exit

cleanup.cont405.i:                                ; preds = %if.then393.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %_v395.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %_v395.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v395.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool406.not.not.i = icmp eq i32 %69, 0
  %shrinker_disabled.i = getelementptr i8, ptr %kobj, i32 48247
  %70 = ptrtoint ptr %shrinker_disabled.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load408.i = load i8, ptr %shrinker_disabled.i, align 1
  %bf.shl410.i = select i1 %tobool406.not.not.i, i8 0, i8 16
  %bf.clear411.i = and i8 %bf.load408.i, -17
  %bf.set412.i = or i8 %bf.clear411.i, %bf.shl410.i
  store i8 %bf.set412.i, ptr %shrinker_disabled.i, align 1
  br label %__bch_cache_set_store.exit

do.body418.i:                                     ; preds = %do.body390.i
  %cmp419.i = icmp eq ptr %attr, @sysfs_copy_gc_enabled
  br i1 %cmp419.i, label %if.then421.i, label %do.body446.i

if.then421.i:                                     ; preds = %do.body418.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v423.i) #12
  %71 = ptrtoint ptr %_v423.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %_v423.i, align 4, !annotation !422
  %call.i695.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v423.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i695.i)
  %tobool426.not.i = icmp eq i32 %call.i695.i, 0
  br i1 %tobool426.not.i, label %cleanup.cont433.i, label %cleanup430.i

cleanup430.i:                                     ; preds = %if.then421.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v423.i) #12
  br label %__bch_cache_set_store.exit

cleanup.cont433.i:                                ; preds = %if.then421.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %_v423.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %_v423.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v423.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool434.not.not.i = icmp eq i32 %73, 0
  %copy_gc_enabled.i = getelementptr i8, ptr %kobj, i32 48247
  %74 = ptrtoint ptr %copy_gc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load436.i = load i8, ptr %copy_gc_enabled.i, align 1
  %bf.shl438.i = select i1 %tobool434.not.not.i, i8 0, i8 8
  %bf.clear439.i = and i8 %bf.load436.i, -9
  %bf.set440.i = or i8 %bf.clear439.i, %bf.shl438.i
  store i8 %bf.set440.i, ptr %copy_gc_enabled.i, align 1
  br label %__bch_cache_set_store.exit

do.body446.i:                                     ; preds = %do.body418.i
  %cmp447.i = icmp eq ptr %attr, @sysfs_idle_max_writeback_rate
  br i1 %cmp447.i, label %if.then449.i, label %do.body474.i

if.then449.i:                                     ; preds = %do.body446.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v451.i) #12
  %75 = ptrtoint ptr %_v451.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %_v451.i, align 4, !annotation !422
  %call.i696.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v451.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i696.i)
  %tobool454.not.i = icmp eq i32 %call.i696.i, 0
  br i1 %tobool454.not.i, label %cleanup.cont461.i, label %cleanup458.i

cleanup458.i:                                     ; preds = %if.then449.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v451.i) #12
  br label %__bch_cache_set_store.exit

cleanup.cont461.i:                                ; preds = %if.then449.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %_v451.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %_v451.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v451.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool462.not.not.i = icmp eq i32 %77, 0
  %idle_max_writeback_rate_enabled.i = getelementptr i8, ptr %kobj, i32 48247
  %78 = ptrtoint ptr %idle_max_writeback_rate_enabled.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load464.i = load i8, ptr %idle_max_writeback_rate_enabled.i, align 1
  %bf.shl466.i = select i1 %tobool462.not.not.i, i8 0, i8 4
  %bf.clear467.i = and i8 %bf.load464.i, -5
  %bf.set468.i = or i8 %bf.clear467.i, %bf.shl466.i
  store i8 %bf.set468.i, ptr %idle_max_writeback_rate_enabled.i, align 1
  br label %__bch_cache_set_store.exit

do.body474.thread951.i:                           ; preds = %cleanup44.i.do.body474.thread951.i_crit_edge, %if.then18.i, %cleanup.cont.i.do.body474.thread951.i_crit_edge
  br label %__bch_cache_set_store.exit

do.body474.i:                                     ; preds = %do.body446.i
  %cmp475.i = icmp eq ptr %attr, @sysfs_gc_after_writeback
  br i1 %cmp475.i, label %if.then477.i, label %do.body474.i.__bch_cache_set_store.exit_crit_edge

do.body474.i.__bch_cache_set_store.exit_crit_edge: ; preds = %do.body474.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_set_store.exit

if.then477.i:                                     ; preds = %do.body474.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v480.i) #12
  %79 = ptrtoint ptr %_v480.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %_v480.i, align 4, !annotation !422
  %call.i697.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v480.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i697.i)
  %tobool483.not.i = icmp eq i32 %call.i697.i, 0
  br i1 %tobool483.not.i, label %if.then502.i, label %if.end499.i

if.end499.i:                                      ; preds = %if.then477.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v480.i) #12
  br label %__bch_cache_set_store.exit

if.then502.i:                                     ; preds = %if.then477.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %_v480.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %_v480.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp486.not.i = icmp ne i32 %81, 0
  %cond498.i = zext i1 %cmp486.not.i to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v480.i) #12
  %gc_after_writeback.i = getelementptr i8, ptr %kobj, i32 2592
  %82 = ptrtoint ptr %gc_after_writeback.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %cond498.i, ptr %gc_after_writeback.i, align 8
  br label %__bch_cache_set_store.exit

cleanup510.critedge674.i:                         ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v60.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sc.i) #12
  br label %__bch_cache_set_store.exit

__bch_cache_set_store.exit:                       ; preds = %cleanup510.critedge674.i, %if.then502.i, %if.end499.i, %do.body474.i.__bch_cache_set_store.exit_crit_edge, %do.body474.thread951.i, %cleanup.cont461.i, %cleanup458.i, %cleanup.cont433.i, %cleanup430.i, %cleanup.cont405.i, %cleanup402.i, %cleanup.cont377.i, %cleanup374.i, %if.end352.i, %cleanup.cont328.i, %cleanup325.i, %cleanup.cont306.i, %cleanup303.i, %if.then283.i, %if.end280.i, %do.end249.i, %if.else.i.__bch_cache_set_store.exit_crit_edge, %do.end239.i, %if.then233.i.__bch_cache_set_store.exit_crit_edge, %cleanup228.i, %if.then213.i, %if.end210.i, %if.then179.i, %if.end176.i, %if.end149.i, %if.then144.i.__bch_cache_set_store.exit_crit_edge, %if.then135.i, %if.end132.i, %if.then100.i, %if.end97.i, %do.end141.thread.i, %if.then55.i, %if.end52.thread.i, %cleanup44.i.__bch_cache_set_store.exit_crit_edge, %cleanup44.thread.i, %cleanup.i, %if.then4.i, %if.end2.thread.i, %entry.__bch_cache_set_store.exit_crit_edge
  %retval.27.i = phi i32 [ %spec.select.i, %if.end352.i ], [ %call.i688.i, %cleanup228.i ], [ %call40.i, %cleanup44.i.__bch_cache_set_store.exit_crit_edge ], [ -16, %entry.__bch_cache_set_store.exit_crit_edge ], [ %call.i683.i, %cleanup510.critedge674.i ], [ %size, %if.then100.i ], [ %call.i684.i, %if.end97.i ], [ %size, %if.then135.i ], [ %call.i685.i, %if.end132.i ], [ %call145.i, %if.then144.i.__bch_cache_set_store.exit_crit_edge ], [ %size, %if.then179.i ], [ %call.i686.i, %if.end176.i ], [ %size, %if.then213.i ], [ %call.i687.i, %if.end210.i ], [ %size, %if.then283.i ], [ %call.i689.i, %if.end280.i ], [ %size, %cleanup.cont306.i ], [ %call.i690.i, %cleanup303.i ], [ %size, %cleanup.cont328.i ], [ %call.i691.i, %cleanup325.i ], [ %size, %cleanup.cont377.i ], [ %call.i693.i, %cleanup374.i ], [ %size, %cleanup.cont405.i ], [ %call.i694.i, %cleanup402.i ], [ %size, %cleanup.cont433.i ], [ %call.i695.i, %cleanup430.i ], [ %size, %cleanup.cont461.i ], [ %call.i696.i, %cleanup458.i ], [ %size, %if.then502.i ], [ %call.i697.i, %if.end499.i ], [ %size, %do.body474.i.__bch_cache_set_store.exit_crit_edge ], [ %call.i.i, %cleanup.i ], [ %call33.i, %cleanup44.thread.i ], [ %size, %if.else.i.__bch_cache_set_store.exit_crit_edge ], [ %size, %do.end249.i ], [ %size, %if.then233.i.__bch_cache_set_store.exit_crit_edge ], [ %size, %do.end239.i ], [ %size, %if.end149.i ], [ %size, %do.end141.thread.i ], [ %size, %if.then55.i ], [ %size, %if.end52.thread.i ], [ %size, %do.body474.thread951.i ], [ %size, %if.then4.i ], [ %size, %if.end2.thread.i ]
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #12
  ret i32 %retval.27.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bch_cache_set_internal_release(ptr nocapture noundef %k) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_cache_set_internal_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj1 = getelementptr i8, ptr %kobj, i32 -136
  %call = tail call i32 @bch_cache_set_show(ptr noundef %kobj1, ptr noundef %attr, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_cache_set_internal_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @bcache_is_reboot to i32))
  %0 = load i8, ptr @bcache_is_reboot, align 1, !range !421
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %kobj1 = getelementptr i8, ptr %kobj, i32 -136
  %call = tail call i32 @bch_cache_set_store(ptr noundef %kobj1, ptr noundef %attr, ptr noundef %buf, i32 noundef %size)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cache_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_cache_show(ptr noundef %kobj, ptr noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  %q.i = alloca [31 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #12
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -2348
  %cmp.i = icmp eq ptr %attr, @sysfs_bucket_size
  br i1 %cmp.i, label %if.then.i, label %do.body2.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bucket_size.i = getelementptr i8, ptr %kobj, i32 -2188
  %0 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bucket_size.i, align 8
  %shl.i = shl i32 %1, 9
  %conv.i = zext i32 %shl.i to i64
  %call.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %conv.i) #12
  %strlen637.i = tail call i32 @strlen(ptr %buf) #15
  %endptr638.i = getelementptr i8, ptr %buf, i32 %strlen637.i
  %2 = ptrtoint ptr %endptr638.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 2560, ptr %endptr638.i, align 1
  %add.i = add i32 %call.i, 1
  br label %__bch_cache_show.exit

do.body2.i:                                       ; preds = %entry
  %cmp3.i = icmp eq ptr %attr, @sysfs_block_size
  br i1 %cmp3.i, label %if.then5.i, label %do.body17.i

if.then5.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  %block_size.i = getelementptr i8, ptr %kobj, i32 -2196
  %3 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %block_size.i, align 8
  %conv8.i = zext i16 %4 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 9
  %5 = zext i32 %shl9.i to i64
  %call11.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %5) #12
  %strlen635.i = tail call i32 @strlen(ptr %buf) #15
  %endptr636.i = getelementptr i8, ptr %buf, i32 %strlen635.i
  %6 = ptrtoint ptr %endptr636.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 2560, ptr %endptr636.i, align 1
  %add13.i = add i32 %call11.i, 1
  br label %__bch_cache_show.exit

do.body17.i:                                      ; preds = %do.body2.i
  %cmp18.i = icmp eq ptr %attr, @sysfs_nbuckets
  br i1 %cmp18.i, label %if.then20.i, label %do.body26.i

if.then20.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = getelementptr i8, ptr %kobj, i32 -2204
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %call22.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, i64 noundef %9) #12
  br label %__bch_cache_show.exit

do.body26.i:                                      ; preds = %do.body17.i
  %cmp27.i = icmp eq ptr %attr, @sysfs_discard
  br i1 %cmp27.i, label %if.then29.i, label %do.body35.i

if.then29.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #14
  %discard.i = getelementptr i8, ptr %kobj, i32 352
  %10 = ptrtoint ptr %discard.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %discard.i, align 4, !range !421
  %12 = zext i8 %11 to i32
  %call31.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %12) #12
  br label %__bch_cache_show.exit

do.body35.i:                                      ; preds = %do.body26.i
  %cmp36.i = icmp eq ptr %attr, @sysfs_written
  br i1 %cmp36.i, label %if.then38.i, label %do.body49.i

if.then38.i:                                      ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #14
  %sectors_written.i = getelementptr i8, ptr %kobj, i32 2804
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sectors_written.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %sectors_written.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sectors_written.i, align 4
  %shl41.i = shl i32 %14, 9
  %conv42.i = sext i32 %shl41.i to i64
  %call43.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %conv42.i) #12
  %strlen633.i = tail call i32 @strlen(ptr %buf) #15
  %endptr634.i = getelementptr i8, ptr %buf, i32 %strlen633.i
  %15 = ptrtoint ptr %endptr634.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 2560, ptr %endptr634.i, align 1
  %add45.i = add i32 %call43.i, 1
  br label %__bch_cache_show.exit

do.body49.i:                                      ; preds = %do.body35.i
  %cmp50.i = icmp eq ptr %attr, @sysfs_btree_written
  br i1 %cmp50.i, label %if.then52.i, label %do.body63.i

if.then52.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #14
  %btree_sectors_written.i = getelementptr i8, ptr %kobj, i32 2800
  %call.i.i639.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %btree_sectors_written.i, i32 noundef 4) #12
  %16 = ptrtoint ptr %btree_sectors_written.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %btree_sectors_written.i, align 4
  %shl55.i = shl i32 %17, 9
  %conv56.i = sext i32 %shl55.i to i64
  %call57.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %conv56.i) #12
  %strlen631.i = tail call i32 @strlen(ptr %buf) #15
  %endptr632.i = getelementptr i8, ptr %buf, i32 %strlen631.i
  %18 = ptrtoint ptr %endptr632.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 2560, ptr %endptr632.i, align 1
  %add59.i = add i32 %call57.i, 1
  br label %__bch_cache_show.exit

do.body63.i:                                      ; preds = %do.body49.i
  %cmp64.i = icmp eq ptr %attr, @sysfs_metadata_written
  br i1 %cmp64.i, label %if.then66.i, label %do.body80.i

if.then66.i:                                      ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #14
  %meta_sectors_written.i = getelementptr i8, ptr %kobj, i32 2796
  %call.i.i640.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %meta_sectors_written.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %meta_sectors_written.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %meta_sectors_written.i, align 4
  %btree_sectors_written69.i = getelementptr i8, ptr %kobj, i32 2800
  %call.i.i641.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %btree_sectors_written69.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %btree_sectors_written69.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %btree_sectors_written69.i, align 4
  %add71.i = add i32 %22, %20
  %shl72.i = shl i32 %add71.i, 9
  %conv73.i = sext i32 %shl72.i to i64
  %call74.i = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %conv73.i) #12
  %strlen.i = tail call i32 @strlen(ptr %buf) #15
  %endptr.i = getelementptr i8, ptr %buf, i32 %strlen.i
  %23 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 2560, ptr %endptr.i, align 1
  %add76.i = add i32 %call74.i, 1
  br label %__bch_cache_show.exit

do.body80.i:                                      ; preds = %do.body63.i
  %cmp81.i = icmp eq ptr %attr, @sysfs_io_errors
  br i1 %cmp81.i, label %if.then83.i, label %do.end88.i

if.then83.i:                                      ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #14
  %io_errors.i = getelementptr i8, ptr %kobj, i32 2788
  %call.i.i642.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %io_errors.i, i32 noundef 4) #12
  %24 = ptrtoint ptr %io_errors.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %io_errors.i, align 4
  %shr.i = ashr i32 %25, 20
  %call85.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %shr.i) #12
  br label %__bch_cache_show.exit

do.end88.i:                                       ; preds = %do.body80.i
  %cmp89.i = icmp eq ptr %attr, @sysfs_cache_replacement_policy
  br i1 %cmp89.i, label %if.then91.i, label %if.end96.i

if.then91.i:                                      ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i.i = getelementptr i8, ptr %kobj, i32 -2244
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %flags.i.i, align 8
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 2
  %conv94.i = and i32 %29, 7
  %add.ptr.i1 = getelementptr i8, ptr %buf, i32 4096
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv94.i)
  %cmp.i2 = icmp eq i32 %conv94.i, 0
  %cond.i = select i1 %cmp.i2, ptr @.str.16, ptr @.str.17
  %call.i3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %cond.i, ptr noundef nonnull @.str.146) #12
  %add.ptr2.i = getelementptr i8, ptr %buf, i32 %call.i3
  %gepdiff = sub i32 4096, %call.i3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv94.i)
  %cmp.i2.1 = icmp eq i32 %conv94.i, 1
  %cond.i.1 = select i1 %cmp.i2.1, ptr @.str.16, ptr @.str.17
  %call.i3.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %gepdiff, ptr noundef nonnull %cond.i.1, ptr noundef nonnull @.str.147) #12
  %add.ptr2.i.1 = getelementptr i8, ptr %add.ptr2.i, i32 %call.i3.1
  %sub.ptr.rhs.cast.i.2 = ptrtoint ptr %add.ptr2.i.1 to i32
  %sub.ptr.sub.i.2 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv94.i)
  %cmp.i2.2 = icmp eq i32 %conv94.i, 2
  %cond.i.2 = select i1 %cmp.i2.2, ptr @.str.16, ptr @.str.17
  %call.i3.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i.1, i32 noundef %sub.ptr.sub.i.2, ptr noundef nonnull %cond.i.2, ptr noundef nonnull @.str.148) #12
  %add.ptr2.i.2 = getelementptr i8, ptr %add.ptr2.i.1, i32 %call.i3.2
  %arrayidx3.i = getelementptr i8, ptr %add.ptr2.i.2, i32 -1
  %30 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 10, ptr %arrayidx3.i, align 1
  %sub.ptr.lhs.cast4.i = ptrtoint ptr %add.ptr2.i.2 to i32
  %sub.ptr.sub6.i = sub i32 %sub.ptr.lhs.cast4.i, %sub.ptr.rhs.cast.i
  br label %__bch_cache_show.exit

if.end96.i:                                       ; preds = %do.end88.i
  %cmp97.i = icmp eq ptr %attr, @sysfs_priority_stats
  br i1 %cmp97.i, label %if.then99.i, label %if.end96.i.__bch_cache_show.exit_crit_edge

if.end96.i.__bch_cache_show.exit_crit_edge:       ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_show.exit

if.then99.i:                                      ; preds = %if.end96.i
  %31 = getelementptr i8, ptr %kobj, i32 -2204
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %31, align 8
  %conv102.i = trunc i64 %33 to i32
  call void @llvm.lifetime.start.p0(i64 62, ptr nonnull %q.i) #12
  %34 = call ptr @memset(ptr %q.i, i32 255, i32 62)
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv102.i, i32 2) #12
  %36 = extractvalue { i32, i1 } %35, 1
  %37 = extractvalue { i32, i1 } %35, 0
  %retval.0.i.i = select i1 %36, i32 -1, i32 %37
  %call108.i = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i.i) #20
  %tobool109.not.i = icmp eq ptr %call108.i, null
  br i1 %tobool109.not.i, label %if.then99.i.cleanup.i_crit_edge, label %if.end111.i

if.then99.i.cleanup.i_crit_edge:                  ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end111.i:                                      ; preds = %if.then99.i
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %bucket_lock.i = getelementptr inbounds %struct.cache_set, ptr %39, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %bucket_lock.i, i32 noundef 0) #12
  %buckets.i = getelementptr i8, ptr %kobj, i32 332
  %40 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buckets.i, align 8
  %first_bucket.i = getelementptr i8, ptr %kobj, i32 -2176
  %42 = ptrtoint ptr %first_bucket.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %first_bucket.i, align 4
  %conv113.i = zext i16 %43 to i32
  %add.ptr114.i = getelementptr %struct.bucket, ptr %41, i32 %conv113.i
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %31, align 8
  %idx.ext.i = trunc i64 %45 to i32
  %add.ptr118.i = getelementptr %struct.bucket, ptr %41, i32 %idx.ext.i
  %cmp119661.i = icmp ult ptr %add.ptr114.i, %add.ptr118.i
  br i1 %cmp119661.i, label %if.end111.i.for.body.i_crit_edge, label %if.end111.i.for.cond146.preheader.i_crit_edge

if.end111.i.for.cond146.preheader.i_crit_edge:    ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond146.preheader.i

if.end111.i.for.body.i_crit_edge:                 ; preds = %if.end111.i
  br label %for.body.i

for.cond146.preheader.loopexit.i:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo.i = mul i32 %spec.select.i, 100
  %phi.bo690.i = mul i32 %available.1.i, 100
  %phi.bo691.i = mul i32 %dirty.1.i, 100
  %phi.bo692.i = mul i32 %meta.1.i, 100
  br label %for.cond146.preheader.i

for.cond146.preheader.i:                          ; preds = %for.cond146.preheader.loopexit.i, %if.end111.i.for.cond146.preheader.i_crit_edge
  %unused.0.lcssa.i = phi i32 [ 0, %if.end111.i.for.cond146.preheader.i_crit_edge ], [ %phi.bo.i, %for.cond146.preheader.loopexit.i ]
  %available.0.lcssa.i = phi i32 [ 0, %if.end111.i.for.cond146.preheader.i_crit_edge ], [ %phi.bo690.i, %for.cond146.preheader.loopexit.i ]
  %dirty.0.lcssa.i = phi i32 [ 0, %if.end111.i.for.cond146.preheader.i_crit_edge ], [ %phi.bo691.i, %for.cond146.preheader.loopexit.i ]
  %meta.0.lcssa.i = phi i32 [ 0, %if.end111.i.for.cond146.preheader.i_crit_edge ], [ %phi.bo692.i, %for.cond146.preheader.loopexit.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %conv113.i, i32 %conv102.i)
  %cmp147670.i = icmp ult i32 %conv113.i, %conv102.i
  br i1 %cmp147670.i, label %for.cond146.preheader.i.for.body149.i_crit_edge, label %for.cond146.preheader.i.for.end154.i_crit_edge

for.cond146.preheader.i.for.end154.i_crit_edge:   ; preds = %for.cond146.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end154.i

for.cond146.preheader.i.for.body149.i_crit_edge:  ; preds = %for.cond146.preheader.i
  br label %for.body149.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end111.i.for.body.i_crit_edge
  %meta.0666.i = phi i32 [ %meta.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end111.i.for.body.i_crit_edge ]
  %dirty.0665.i = phi i32 [ %dirty.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end111.i.for.body.i_crit_edge ]
  %available.0664.i = phi i32 [ %available.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end111.i.for.body.i_crit_edge ]
  %unused.0663.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end111.i.for.body.i_crit_edge ]
  %b.0662.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr114.i, %if.end111.i.for.body.i_crit_edge ]
  %gc_mark.i.i = getelementptr inbounds %struct.bucket, ptr %b.0662.i, i32 0, i32 4
  %46 = ptrtoint ptr %gc_mark.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %gc_mark.i.i, align 4
  %48 = and i16 %47, 32764
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool122.not.i = icmp eq i16 %48, 0
  %inc.i = zext i1 %tobool122.not.i to i32
  %spec.select.i = add i32 %unused.0663.i, %inc.i
  %49 = and i16 %47, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %49)
  %cmp126.i = icmp eq i16 %49, 1
  %inc129.i = zext i1 %cmp126.i to i32
  %available.1.i = add i32 %available.0664.i, %inc129.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %49)
  %cmp132.i = icmp eq i16 %49, 2
  %inc135.i = zext i1 %cmp132.i to i32
  %dirty.1.i = add i32 %dirty.0665.i, %inc135.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %49)
  %cmp138.i = icmp eq i16 %49, 3
  %inc141.i = zext i1 %cmp138.i to i32
  %meta.1.i = add i32 %meta.0666.i, %inc141.i
  %incdec.ptr.i = getelementptr %struct.bucket, ptr %b.0662.i, i32 1
  %cmp119.i = icmp ult ptr %incdec.ptr.i, %add.ptr118.i
  br i1 %cmp119.i, label %for.body.i.for.body.i_crit_edge, label %for.cond146.preheader.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body149.i:                                    ; preds = %for.body149.i.for.body149.i_crit_edge, %for.cond146.preheader.i.for.body149.i_crit_edge
  %i.0671.i = phi i32 [ %inc153.i, %for.body149.i.for.body149.i_crit_edge ], [ %conv113.i, %for.cond146.preheader.i.for.body149.i_crit_edge ]
  %prio.i = getelementptr %struct.bucket, ptr %41, i32 %i.0671.i, i32 1
  %50 = ptrtoint ptr %prio.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %prio.i, align 4
  %arrayidx151.i = getelementptr i16, ptr %call108.i, i32 %i.0671.i
  %52 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %arrayidx151.i, align 2
  %inc153.i = add nuw i32 %i.0671.i, 1
  %exitcond.not.i = icmp eq i32 %inc153.i, %conv102.i
  br i1 %exitcond.not.i, label %for.body149.i.for.end154.i_crit_edge, label %for.body149.i.for.body149.i_crit_edge

for.body149.i.for.body149.i_crit_edge:            ; preds = %for.body149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body149.i

for.body149.i.for.end154.i_crit_edge:             ; preds = %for.body149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end154.i

for.end154.i:                                     ; preds = %for.body149.i.for.end154.i_crit_edge, %for.cond146.preheader.i.for.end154.i_crit_edge
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %bucket_lock156.i = getelementptr inbounds %struct.cache_set, ptr %54, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %bucket_lock156.i) #12
  tail call void @sort(ptr noundef nonnull %call108.i, i32 noundef %conv102.i, i32 noundef 2, ptr noundef nonnull @__bch_cache_cmp, ptr noundef null) #12
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %for.end154.i
  %n.0.i = phi i32 [ %conv102.i, %for.end154.i ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.i)
  %tobool157.not.i = icmp eq i32 %n.0.i, 0
  br i1 %tobool157.not.i, label %while.cond.i.while.end.i_crit_edge, label %land.rhs.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add i32 %n.0.i, -1
  %arrayidx158.i = getelementptr i16, ptr %call108.i, i32 %sub.i
  %55 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx158.i, align 2
  %tobool159.not.i = icmp eq i16 %56, 0
  br i1 %tobool159.not.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.end.i:                                      ; preds = %land.rhs.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %add.ptr161672.i = getelementptr i16, ptr %call108.i, i32 %n.0.i
  %cmp162673.i = icmp ult ptr %call108.i, %add.ptr161672.i
  br i1 %cmp162673.i, label %while.end.i.land.rhs164.i_crit_edge, label %while.end.i.while.end172.i_crit_edge

while.end.i.while.end172.i_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end172.i

while.end.i.land.rhs164.i_crit_edge:              ; preds = %while.end.i
  br label %land.rhs164.i

land.rhs164.i:                                    ; preds = %while.body169.i.land.rhs164.i_crit_edge, %while.end.i.land.rhs164.i_crit_edge
  %cached.0675.i = phi ptr [ %incdec.ptr170.i, %while.body169.i.land.rhs164.i_crit_edge ], [ %call108.i, %while.end.i.land.rhs164.i_crit_edge ]
  %n.1674.i = phi i32 [ %dec171.i, %while.body169.i.land.rhs164.i_crit_edge ], [ %n.0.i, %while.end.i.land.rhs164.i_crit_edge ]
  %57 = ptrtoint ptr %cached.0675.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cached.0675.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %58)
  %cmp166.i = icmp eq i16 %58, -1
  br i1 %cmp166.i, label %while.body169.i, label %land.rhs164.i.while.end172.i_crit_edge

land.rhs164.i.while.end172.i_crit_edge:           ; preds = %land.rhs164.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end172.i

while.body169.i:                                  ; preds = %land.rhs164.i
  %incdec.ptr170.i = getelementptr i16, ptr %cached.0675.i, i32 1
  %dec171.i = add i32 %n.1674.i, -1
  %add.ptr161.i = getelementptr i16, ptr %call108.i, i32 %dec171.i
  %cmp162.i = icmp ult ptr %incdec.ptr170.i, %add.ptr161.i
  br i1 %cmp162.i, label %while.body169.i.land.rhs164.i_crit_edge, label %while.body169.i.while.end172.i_crit_edge

while.body169.i.while.end172.i_crit_edge:         ; preds = %while.body169.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end172.i

while.body169.i.land.rhs164.i_crit_edge:          ; preds = %while.body169.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs164.i

while.end172.i:                                   ; preds = %while.body169.i.while.end172.i_crit_edge, %land.rhs164.i.while.end172.i_crit_edge, %while.end.i.while.end172.i_crit_edge
  %n.1.lcssa.i = phi i32 [ %n.0.i, %while.end.i.while.end172.i_crit_edge ], [ %n.1674.i, %land.rhs164.i.while.end172.i_crit_edge ], [ %dec171.i, %while.body169.i.while.end172.i_crit_edge ]
  %cached.0.lcssa.i = phi ptr [ %call108.i, %while.end.i.while.end172.i_crit_edge ], [ %cached.0675.i, %land.rhs164.i.while.end172.i_crit_edge ], [ %incdec.ptr170.i, %while.body169.i.while.end172.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1.lcssa.i)
  %cmp174680.not.i = icmp eq i32 %n.1.lcssa.i, 0
  br i1 %cmp174680.not.i, label %while.end172.i.if.end379.i_crit_edge, label %while.end172.i.for.body176.i_crit_edge

while.end172.i.for.body176.i_crit_edge:           ; preds = %while.end172.i
  br label %for.body176.i

while.end172.i.if.end379.i_crit_edge:             ; preds = %while.end172.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end379.i

for.body176.i:                                    ; preds = %for.body176.i.for.body176.i_crit_edge, %while.end172.i.for.body176.i_crit_edge
  %i.1682.i = phi i32 [ %inc183.i, %for.body176.i.for.body176.i_crit_edge ], [ 0, %while.end172.i.for.body176.i_crit_edge ]
  %sum.0681.i = phi i64 [ %add181.i, %for.body176.i.for.body176.i_crit_edge ], [ 0, %while.end172.i.for.body176.i_crit_edge ]
  %arrayidx177.i = getelementptr i16, ptr %cached.0.lcssa.i, i32 %i.1682.i
  %59 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx177.i, align 2
  %conv178.i = zext i16 %60 to i32
  %sub179.i = sub nsw i32 32768, %conv178.i
  %conv180.i = zext i32 %sub179.i to i64
  %add181.i = add i64 %sum.0681.i, %conv180.i
  %inc183.i = add nuw i32 %i.1682.i, 1
  %exitcond687.not.i = icmp eq i32 %inc183.i, %n.1.lcssa.i
  br i1 %exitcond687.not.i, label %if.else360.i, label %for.body176.i.for.body176.i_crit_edge

for.body176.i.for.body176.i_crit_edge:            ; preds = %for.body176.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body176.i

if.else360.i:                                     ; preds = %for.body176.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add181.i)
  %cmp362.i = icmp ult i64 %add181.i, 4294967296
  br i1 %cmp362.i, label %if.then367.i, label %if.else373.i, !prof !426

if.then367.i:                                     ; preds = %if.else360.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv368.i = trunc i64 %add181.i to i32
  %div371.i = udiv i32 %conv368.i, %n.1.lcssa.i
  %conv372.i = zext i32 %div371.i to i64
  br label %if.end379.i

if.else373.i:                                     ; preds = %if.else360.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %n.1.lcssa.i, i64 %add181.i) #19, !srcloc !427
  %asmresult1.i.i = extractvalue { i64, i64 } %61, 1
  br label %if.end379.i

if.end379.i:                                      ; preds = %if.else373.i, %if.then367.i, %while.end172.i.if.end379.i_crit_edge
  %sum.1.i = phi i64 [ %conv372.i, %if.then367.i ], [ %asmresult1.i.i, %if.else373.i ], [ 0, %while.end172.i.if.end379.i_crit_edge ]
  br label %for.body383.i

for.body383.i:                                    ; preds = %for.body383.i.for.body383.i_crit_edge, %if.end379.i
  %i.2684.i = phi i32 [ 0, %if.end379.i ], [ %add384.i, %for.body383.i.for.body383.i_crit_edge ]
  %add384.i = add nuw nsw i32 %i.2684.i, 1
  %mul385.i = mul i32 %add384.i, %n.1.lcssa.i
  %div386629.i = lshr i32 %mul385.i, 5
  %arrayidx387.i = getelementptr i16, ptr %cached.0.lcssa.i, i32 %div386629.i
  %62 = ptrtoint ptr %arrayidx387.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx387.i, align 2
  %sub389.i = sub i16 -32768, %63
  %arrayidx391.i = getelementptr [31 x i16], ptr %q.i, i32 0, i32 %i.2684.i
  %64 = ptrtoint ptr %arrayidx391.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %sub389.i, ptr %arrayidx391.i, align 2
  %exitcond688.not.i = icmp eq i32 %add384.i, 31
  br i1 %exitcond688.not.i, label %for.end394.i, label %for.body383.i.for.body383.i_crit_edge

for.body383.i.for.body383.i_crit_edge:            ; preds = %for.body383.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body383.i

for.end394.i:                                     ; preds = %for.body383.i
  tail call void @vfree(ptr noundef nonnull %call108.i) #12
  %65 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %31, align 8
  %conv398.i = trunc i64 %66 to i32
  %div399.i = udiv i32 %unused.0.lcssa.i, %conv398.i
  %div404.i = udiv i32 %available.0.lcssa.i, %conv398.i
  %div409.i = udiv i32 %dirty.0.lcssa.i, %conv398.i
  %div414.i = udiv i32 %meta.0.lcssa.i, %conv398.i
  %bucket_size416.i = getelementptr i8, ptr %kobj, i32 -2188
  %67 = ptrtoint ptr %bucket_size416.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bucket_size416.i, align 8
  %mul417.i = mul i32 %68, %n.1.lcssa.i
  %div418628.i = lshr i32 %mul417.i, 5
  %call419.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.137, i32 noundef %div399.i, i32 noundef %div404.i, i32 noundef %div409.i, i32 noundef %div414.i, i64 noundef %sum.1.i, i32 noundef %div418628.i) #12
  br label %for.body423.i

for.body423.i:                                    ; preds = %for.body423.i.for.body423.i_crit_edge, %for.end394.i
  %ret103.0686.i = phi i32 [ %call419.i, %for.end394.i ], [ %add429.i, %for.body423.i.for.body423.i_crit_edge ]
  %i.3685.i = phi i32 [ 0, %for.end394.i ], [ %inc431.i, %for.body423.i.for.body423.i_crit_edge ]
  %add.ptr424.i = getelementptr i8, ptr %buf, i32 %ret103.0686.i
  %sub425.i = sub i32 4096, %ret103.0686.i
  %arrayidx426.i = getelementptr [31 x i16], ptr %q.i, i32 0, i32 %i.3685.i
  %69 = ptrtoint ptr %arrayidx426.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx426.i, align 2
  %conv427.i = zext i16 %70 to i32
  %call428.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr424.i, i32 noundef %sub425.i, ptr noundef nonnull @.str.138, i32 noundef %conv427.i) #12
  %add429.i = add i32 %call428.i, %ret103.0686.i
  %inc431.i = add nuw nsw i32 %i.3685.i, 1
  %exitcond689.not.i = icmp eq i32 %inc431.i, 31
  br i1 %exitcond689.not.i, label %for.end432.i, label %for.body423.i.for.body423.i_crit_edge

for.body423.i.for.body423.i_crit_edge:            ; preds = %for.body423.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body423.i

for.end432.i:                                     ; preds = %for.body423.i
  call void @__sanitizer_cov_trace_pc() #14
  %dec433.i = add i32 %add429.i, -1
  %add.ptr434.i = getelementptr i8, ptr %buf, i32 %dec433.i
  %sub435.i = sub i32 4097, %add429.i
  %call436.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr434.i, i32 noundef %sub435.i, ptr noundef nonnull @.str.139) #12
  %add437.i = add i32 %call436.i, %dec433.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.end432.i, %if.then99.i.cleanup.i_crit_edge
  %retval.0.i = phi i32 [ %add437.i, %for.end432.i ], [ -12, %if.then99.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 62, ptr nonnull %q.i) #12
  br label %__bch_cache_show.exit

__bch_cache_show.exit:                            ; preds = %cleanup.i, %if.end96.i.__bch_cache_show.exit_crit_edge, %if.then91.i, %if.then83.i, %if.then66.i, %if.then52.i, %if.then38.i, %if.then29.i, %if.then20.i, %if.then5.i, %if.then.i
  %retval.1.i = phi i32 [ %add.i, %if.then.i ], [ %add13.i, %if.then5.i ], [ %call22.i, %if.then20.i ], [ %call31.i, %if.then29.i ], [ %add45.i, %if.then38.i ], [ %add59.i, %if.then52.i ], [ %add76.i, %if.then66.i ], [ %call85.i, %if.then83.i ], [ %sub.ptr.sub6.i, %if.then91.i ], [ %retval.0.i, %cleanup.i ], [ 0, %if.end96.i.__bch_cache_show.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #12
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_cache_store(ptr noundef %kobj, ptr noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  %_v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bch_register_lock, i32 noundef 0) #12
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -2348
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @bcache_is_reboot to i32))
  %0 = load i8, ptr @bcache_is_reboot, align 1, !range !421
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bch_cache_store.exit_crit_edge

entry.__bch_cache_store.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_store.exit

if.end.i:                                         ; preds = %entry
  %cmp.i = icmp eq ptr %attr, @sysfs_discard
  br i1 %cmp.i, label %if.then1.i, label %if.end28.i

if.then1.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_v.i) #12
  %1 = ptrtoint ptr %_v.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %_v.i, align 4, !annotation !422
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %_v.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %cleanup.cont.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v.i) #12
  br label %__bch_cache_store.exit

cleanup.cont.i:                                   ; preds = %if.then1.i
  %2 = ptrtoint ptr %_v.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_v.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.i = icmp ne i32 %3, 0
  %bdev.i = getelementptr i8, ptr %kobj, i32 136
  %4 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_queue.i.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %queue_flags.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not.i = icmp eq i32 %10, 0
  br i1 %tobool11.not.i, label %cleanup.cont.i.if.end15.i_crit_edge, label %if.then12.i

cleanup.cont.i.if.end15.i_crit_edge:              ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then12.i:                                      ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #14
  %frombool.i = zext i1 %tobool8.i to i8
  %discard.i = getelementptr i8, ptr %kobj, i32 352
  %11 = ptrtoint ptr %discard.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool.i, ptr %discard.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %cleanup.cont.i.if.end15.i_crit_edge
  %flags.i.i = getelementptr i8, ptr %kobj, i32 -2244
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %flags.i.i, align 8
  %14 = and i64 %13, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %15 = icmp eq i64 %14, 0
  %cmp18.not.i = xor i1 %tobool8.i, %15
  br i1 %cmp18.not.i, label %if.end15.i.__bch_cache_store.exit_crit_edge, label %if.then20.i

if.end15.i.__bch_cache_store.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_store.exit

if.then20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i89.i = and i64 %13, -3
  %and1.i90.i = select i1 %tobool8.i, i64 2, i64 0
  %or.i.i = or i64 %and.i89.i, %and1.i90.i
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or.i.i, ptr %flags.i.i, align 8
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  call void @bcache_write_super(ptr noundef %18) #12
  br label %__bch_cache_store.exit

if.end28.i:                                       ; preds = %if.end.i
  %cmp29.i = icmp eq ptr %attr, @sysfs_cache_replacement_policy
  br i1 %cmp29.i, label %if.then31.i, label %if.end50.i

if.then31.i:                                      ; preds = %if.end28.i
  %call32.i = tail call i32 @__sysfs_match_string(ptr noundef nonnull @cache_replacement_policies, i32 noundef -1, ptr noundef %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.then31.i.__bch_cache_store.exit_crit_edge, label %if.end36.i

if.then31.i.__bch_cache_store.exit_crit_edge:     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_store.exit

if.end36.i:                                       ; preds = %if.then31.i
  %conv37.i = zext i32 %call32.i to i64
  %flags.i91.i = getelementptr i8, ptr %kobj, i32 -2244
  %19 = ptrtoint ptr %flags.i91.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %flags.i91.i, align 8
  %shr.i92.i = lshr i64 %20, 2
  %and.i93.i = and i64 %shr.i92.i, 7
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i93.i, i64 %conv37.i)
  %cmp40.not.i = icmp eq i64 %and.i93.i, %conv37.i
  br i1 %cmp40.not.i, label %if.end36.i.__bch_cache_store.exit_crit_edge, label %if.then42.i

if.end36.i.__bch_cache_store.exit_crit_edge:      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_store.exit

if.then42.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %bucket_lock.i = getelementptr inbounds %struct.cache_set, ptr %22, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %bucket_lock.i, i32 noundef 0) #12
  %23 = ptrtoint ptr %flags.i91.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags.i91.i, align 8
  %and.i95.i = and i64 %24, -29
  %and1.i96.i = shl nuw nsw i64 %conv37.i, 2
  %shl.i97.i = and i64 %and1.i96.i, 28
  %or.i98.i = or i64 %and.i95.i, %shl.i97.i
  store i64 %or.i98.i, ptr %flags.i91.i, align 8
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %bucket_lock47.i = getelementptr inbounds %struct.cache_set, ptr %26, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %bucket_lock47.i) #12
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  tail call void @bcache_write_super(ptr noundef %28) #12
  br label %__bch_cache_store.exit

if.end50.i:                                       ; preds = %if.end28.i
  %cmp51.i = icmp eq ptr %attr, @sysfs_clear_stats
  br i1 %cmp51.i, label %if.then53.i, label %if.end50.i.__bch_cache_store.exit_crit_edge

if.end50.i.__bch_cache_store.exit_crit_edge:      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__bch_cache_store.exit

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  %sectors_written.i = getelementptr i8, ptr %kobj, i32 2804
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sectors_written.i, i32 noundef 4) #12
  %29 = ptrtoint ptr %sectors_written.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %sectors_written.i, align 4
  %btree_sectors_written.i = getelementptr i8, ptr %kobj, i32 2800
  %call.i.i83.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %btree_sectors_written.i, i32 noundef 4) #12
  %30 = ptrtoint ptr %btree_sectors_written.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %btree_sectors_written.i, align 4
  %meta_sectors_written.i = getelementptr i8, ptr %kobj, i32 2796
  %call.i.i84.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %meta_sectors_written.i, i32 noundef 4) #12
  %31 = ptrtoint ptr %meta_sectors_written.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %meta_sectors_written.i, align 4
  %io_count.i = getelementptr i8, ptr %kobj, i32 2792
  %call.i.i85.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i, i32 noundef 4) #12
  %32 = ptrtoint ptr %io_count.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %io_count.i, align 4
  %io_errors.i = getelementptr i8, ptr %kobj, i32 2788
  %call.i.i86.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_errors.i, i32 noundef 4) #12
  %33 = ptrtoint ptr %io_errors.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %io_errors.i, align 4
  br label %__bch_cache_store.exit

__bch_cache_store.exit:                           ; preds = %if.then53.i, %if.end50.i.__bch_cache_store.exit_crit_edge, %if.then42.i, %if.end36.i.__bch_cache_store.exit_crit_edge, %if.then31.i.__bch_cache_store.exit_crit_edge, %if.then20.i, %if.end15.i.__bch_cache_store.exit_crit_edge, %cleanup.i, %entry.__bch_cache_store.exit_crit_edge
  %retval.1.i = phi i32 [ -16, %entry.__bch_cache_store.exit_crit_edge ], [ %call32.i, %if.then31.i.__bch_cache_store.exit_crit_edge ], [ %size, %if.then53.i ], [ %size, %if.end50.i.__bch_cache_store.exit_crit_edge ], [ %call.i.i, %cleanup.i ], [ %size, %if.end36.i.__bch_cache_store.exit_crit_edge ], [ %size, %if.then42.i ], [ %size, %if.end15.i.__bch_cache_store.exit_crit_edge ], [ %size, %if.then20.i ]
  call void @mutex_unlock(ptr noundef nonnull @bch_register_lock) #12
  ret i32 %retval.1.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_hprint(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cache_accounting_clear(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_cached_dev_run(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_write_bdev_super(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_uuid_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_parse_uuid(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_cached_dev_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cached_dev_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcache_device_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_strtoull_h(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_get_congested(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_print_cache_set_feature_compat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_print_cache_set_feature_ro_compat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_print_cache_set_feature_incompat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_btree_iter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_btree_iter_next_filter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_ptr_bad(ptr noundef %b, ptr noundef %k) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 8
  %key_bad = getelementptr inbounds %struct.btree_keys_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %key_bad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key_bad, align 4
  %call = tail call zeroext i1 %3(ptr noundef %b, ptr noundef %k) #12
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_btree_bset_stats(ptr noundef %b_op, ptr noundef %b) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nodes = getelementptr inbounds %struct.bset_stats_op, ptr %b_op, i32 0, i32 1
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nodes, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %nodes, align 4
  %keys = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 10
  %stats = getelementptr inbounds %struct.bset_stats_op, ptr %b_op, i32 0, i32 2
  tail call void @bch_btree_keys_stats(ptr noundef %keys, ptr noundef %stats) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bch_btree_map_nodes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_btree_keys_stats(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cache_set_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_cache_set_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcache_write_super(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_flash_dev_create(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__bch_cache_cmp(ptr nocapture noundef readonly %l, ptr nocapture noundef readonly %r) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str.59, i32 noundef 1029, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %r, align 2
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %l to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %l, align 2
  %conv1 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 265)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 265)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !158, !159, !160, !162, !164, !166, !168, !169, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !187, !188, !190, !191, !193, !195, !197, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !230, !231, !232, !233, !234, !235, !237, !238, !239, !240, !241, !242, !243, !244, !246, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257, !258, !259, !260, !261, !262, !264, !265, !267, !268, !270, !271, !273, !274, !276, !277, !279, !280, !282, !283, !285, !286, !288, !289, !291, !292, !294, !296, !298, !299, !301, !302, !304, !305, !307, !308, !310, !311, !313, !314, !316, !317, !319, !320, !322, !323, !325, !326, !328, !329, !331, !332, !334, !335, !337, !338, !340, !341, !343, !345, !346, !348, !349, !351, !352, !354, !355, !356, !357, !359, !360, !361, !363, !364, !366, !367, !369, !370, !372, !374, !376, !378, !380, !382, !383, !385, !386, !388, !389, !391, !392, !394, !395, !397, !398, !400, !402, !404, !406, !408, !409}
!llvm.named.register.sp = !{!411}
!llvm.module.flags = !{!412, !413, !414, !415, !416, !417, !418, !419}
!llvm.ident = !{!420}

!0 = !{ptr @bch_cached_dev_ktype, !1, !"bch_cached_dev_ktype", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/sysfs.c", i32 546, i32 1}
!2 = !{ptr @bch_flash_dev_ktype, !3, !"bch_flash_dev_ktype", i1 false, i1 false}
!3 = !{!"../drivers/md/bcache/sysfs.c", i32 612, i32 1}
!4 = !{ptr @bch_cache_set_ktype, !5, !"bch_cache_set_ktype", i1 false, i1 false}
!5 = !{!"../drivers/md/bcache/sysfs.c", i32 983, i32 1}
!6 = !{ptr @bch_cache_set_internal_ktype, !7, !"bch_cache_set_internal_ktype", i1 false, i1 false}
!7 = !{!"../drivers/md/bcache/sysfs.c", i32 1025, i32 1}
!8 = !{ptr @bch_cache_ktype, !9, !"bch_cache_ktype", i1 false, i1 false}
!9 = !{!"../drivers/md/bcache/sysfs.c", i32 1199, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/bcache/sysfs.c", i32 175, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/bcache/sysfs.c", i32 175, i32 39}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/bcache/sysfs.c", i32 175, i32 48}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/md/bcache/sysfs.c", i32 175, i32 57}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/bcache/sysfs.c", i32 196, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/bcache/sysfs.c", i32 202, i32 2}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/bcache/sysfs.c", i32 204, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/bcache/sysfs.c", i32 244, i32 11}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/bcache/sysfs.c", i32 264, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/bcache/sysfs.c", i32 274, i32 36}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/bcache/sysfs.c", i32 281, i32 23}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/bcache/sysfs.c", i32 112, i32 1}
!34 = !{ptr @sysfs_cache_mode, !33, !"sysfs_cache_mode", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/bcache/sysfs.c", i32 165, i32 21}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/bcache/sysfs.c", i32 165, i32 31}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/bcache/sysfs.c", i32 24, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/bcache/sysfs.c", i32 25, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/bcache/sysfs.c", i32 26, i32 2}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/bcache/sysfs.c", i32 27, i32 2}
!47 = !{ptr @bch_cache_modes, !48, !"bch_cache_modes", i1 false, i1 false}
!48 = !{!"../drivers/md/bcache/sysfs.c", i32 23, i32 27}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/bcache/sysfs.c", i32 113, i32 1}
!51 = !{ptr @sysfs_readahead_cache_policy, !50, !"sysfs_readahead_cache_policy", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/bcache/sysfs.c", i32 32, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/bcache/sysfs.c", i32 33, i32 2}
!56 = !{ptr @bch_reada_cache_policies, !57, !"bch_reada_cache_policies", i1 false, i1 false}
!57 = !{!"../drivers/md/bcache/sysfs.c", i32 31, i32 27}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/md/bcache/sysfs.c", i32 114, i32 1}
!60 = !{ptr @sysfs_stop_when_cache_set_failed, !59, !"sysfs_stop_when_cache_set_failed", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/bcache/sysfs.c", i32 39, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/bcache/sysfs.c", i32 40, i32 2}
!65 = !{ptr @bch_stop_on_failure_modes, !66, !"bch_stop_on_failure_modes", i1 false, i1 false}
!66 = !{!"../drivers/md/bcache/sysfs.c", i32 38, i32 27}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/md/bcache/sysfs.c", i32 111, i32 1}
!69 = !{ptr @sysfs_data_csum, !68, !"sysfs_data_csum", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/bcache/sysfs.c", i32 143, i32 1}
!72 = !{ptr @sysfs_verify, !71, !"sysfs_verify", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/bcache/sysfs.c", i32 144, i32 1}
!75 = !{ptr @sysfs_bypass_torture_test, !74, !"sysfs_bypass_torture_test", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/bcache/sysfs.c", i32 115, i32 1}
!78 = !{ptr @sysfs_writeback_metadata, !77, !"sysfs_writeback_metadata", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/bcache/sysfs.c", i32 116, i32 1}
!81 = !{ptr @sysfs_writeback_running, !80, !"sysfs_writeback_running", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/md/bcache/sysfs.c", i32 120, i32 1}
!84 = !{ptr @sysfs_writeback_consider_fragment, !83, !"sysfs_writeback_consider_fragment", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/bcache/sysfs.c", i32 118, i32 1}
!87 = !{ptr @sysfs_writeback_delay, !86, !"sysfs_writeback_delay", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/md/bcache/sysfs.c", i32 117, i32 1}
!90 = !{ptr @sysfs_writeback_percent, !89, !"sysfs_writeback_percent", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/md/bcache/sysfs.c", i32 119, i32 1}
!93 = !{ptr @sysfs_writeback_rate, !92, !"sysfs_writeback_rate", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/md/bcache/sysfs.c", i32 103, i32 1}
!96 = !{ptr @sysfs_io_errors, !95, !"sysfs_io_errors", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/md/bcache/sysfs.c", i32 141, i32 1}
!99 = !{ptr @sysfs_io_error_limit, !98, !"sysfs_io_error_limit", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/md/bcache/sysfs.c", i32 136, i32 1}
!102 = !{ptr @sysfs_io_disable, !101, !"sysfs_io_disable", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/md/bcache/sysfs.c", i32 122, i32 1}
!105 = !{ptr @sysfs_writeback_rate_update_seconds, !104, !"sysfs_writeback_rate_update_seconds", i1 false, i1 false}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/md/bcache/sysfs.c", i32 123, i32 1}
!108 = !{ptr @sysfs_writeback_rate_i_term_inverse, !107, !"sysfs_writeback_rate_i_term_inverse", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/md/bcache/sysfs.c", i32 124, i32 1}
!111 = !{ptr @sysfs_writeback_rate_p_term_inverse, !110, !"sysfs_writeback_rate_p_term_inverse", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/md/bcache/sysfs.c", i32 125, i32 1}
!114 = !{ptr @sysfs_writeback_rate_fp_term_low, !113, !"sysfs_writeback_rate_fp_term_low", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/md/bcache/sysfs.c", i32 126, i32 1}
!117 = !{ptr @sysfs_writeback_rate_fp_term_mid, !116, !"sysfs_writeback_rate_fp_term_mid", i1 false, i1 false}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/md/bcache/sysfs.c", i32 127, i32 1}
!120 = !{ptr @sysfs_writeback_rate_fp_term_high, !119, !"sysfs_writeback_rate_fp_term_high", i1 false, i1 false}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/md/bcache/sysfs.c", i32 128, i32 1}
!123 = !{ptr @sysfs_writeback_rate_minimum, !122, !"sysfs_writeback_rate_minimum", i1 false, i1 false}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/bcache/sysfs.c", i32 129, i32 1}
!126 = !{ptr @sysfs_writeback_rate_debug, !125, !"sysfs_writeback_rate_debug", i1 false, i1 false}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/md/bcache/sysfs.c", i32 90, i32 1}
!129 = !{ptr @sysfs_dirty_data, !128, !"sysfs_dirty_data", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/md/bcache/sysfs.c", i32 131, i32 1}
!132 = !{ptr @sysfs_stripe_size, !131, !"sysfs_stripe_size", i1 false, i1 false}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/bcache/sysfs.c", i32 132, i32 1}
!135 = !{ptr @sysfs_partial_stripes_expensive, !134, !"sysfs_partial_stripes_expensive", i1 false, i1 false}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/md/bcache/sysfs.c", i32 110, i32 1}
!138 = !{ptr @sysfs_sequential_cutoff, !137, !"sysfs_sequential_cutoff", i1 false, i1 false}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/md/bcache/sysfs.c", i32 138, i32 1}
!141 = !{ptr @sysfs_running, !140, !"sysfs_running", i1 false, i1 false}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/md/bcache/sysfs.c", i32 96, i32 1}
!144 = !{ptr @sysfs_state, !143, !"sysfs_state", i1 false, i1 false}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/md/bcache/sysfs.c", i32 139, i32 1}
!147 = !{ptr @sysfs_label, !146, !"sysfs_label", i1 false, i1 false}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/md/bcache/sysfs.c", i32 79, i32 1}
!150 = !{ptr @sysfs_backing_dev_name, !149, !"sysfs_backing_dev_name", i1 false, i1 false}
!151 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/md/bcache/sysfs.c", i32 80, i32 1}
!153 = !{ptr @sysfs_backing_dev_uuid, !152, !"sysfs_backing_dev_uuid", i1 false, i1 false}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/md/bcache/sysfs.c", i32 478, i32 5}
!156 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @bch_cached_dev_store._entry, !155, !"_entry", i1 false, i1 false}
!159 = !{ptr @bch_cached_dev_store._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.60, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/md/bcache/sysfs.c", i32 422, i32 23}
!162 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/md/bcache/sysfs.c", i32 423, i32 23}
!164 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/md/bcache/sysfs.c", i32 424, i32 23}
!166 = !{ptr @.str.63, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/md/bcache/sysfs.c", i32 444, i32 4}
!168 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @__cached_dev_store._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @__cached_dev_store._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.65, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/md/bcache/sysfs.c", i32 61, i32 1}
!173 = !{ptr @sysfs_clear_stats, !172, !"sysfs_clear_stats", i1 false, i1 false}
!174 = !{ptr @.str.66, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/md/bcache/sysfs.c", i32 57, i32 1}
!176 = !{ptr @sysfs_attach, !175, !"sysfs_attach", i1 false, i1 false}
!177 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/md/bcache/sysfs.c", i32 58, i32 1}
!179 = !{ptr @sysfs_detach, !178, !"sysfs_detach", i1 false, i1 false}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/md/bcache/sysfs.c", i32 60, i32 1}
!182 = !{ptr @sysfs_stop, !181, !"sysfs_stop", i1 false, i1 false}
!183 = !{ptr @bch_cached_dev_files, !184, !"bch_cached_dev_files", i1 false, i1 false}
!184 = !{!"../drivers/md/bcache/sysfs.c", i32 503, i32 26}
!185 = !{ptr @.str.69, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/md/bcache/sysfs.c", i32 153, i32 1}
!187 = !{ptr @sysfs_size, !186, !"sysfs_size", i1 false, i1 false}
!188 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/md/bcache/sysfs.c", i32 59, i32 1}
!190 = !{ptr @sysfs_unregister, !189, !"sysfs_unregister", i1 false, i1 false}
!191 = !{ptr @bch_flash_dev_files, !192, !"bch_flash_dev_files", i1 false, i1 false}
!192 = !{!"../drivers/md/bcache/sysfs.c", i32 603, i32 26}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/md/bcache/sysfs.c", i32 733, i32 2}
!195 = !{ptr @.str.72, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/md/bcache/sysfs.c", i32 744, i32 2}
!197 = !{ptr @.str.73, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/md/bcache/sysfs.c", i32 753, i32 2}
!199 = !{ptr @.str.74, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/md/bcache/sysfs.c", i32 134, i32 1}
!201 = !{ptr @sysfs_synchronous, !200, !"sysfs_synchronous", i1 false, i1 false}
!202 = !{ptr @.str.75, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/md/bcache/sysfs.c", i32 135, i32 1}
!204 = !{ptr @sysfs_journal_delay_ms, !203, !"sysfs_journal_delay_ms", i1 false, i1 false}
!205 = !{ptr @.str.76, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/md/bcache/sysfs.c", i32 66, i32 1}
!207 = !{ptr @sysfs_bucket_size, !206, !"sysfs_bucket_size", i1 false, i1 false}
!208 = !{ptr @.str.77, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/md/bcache/sysfs.c", i32 67, i32 1}
!210 = !{ptr @sysfs_block_size, !209, !"sysfs_block_size", i1 false, i1 false}
!211 = !{ptr @.str.78, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/md/bcache/sysfs.c", i32 69, i32 1}
!213 = !{ptr @sysfs_tree_depth, !212, !"sysfs_tree_depth", i1 false, i1 false}
!214 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/md/bcache/sysfs.c", i32 70, i32 1}
!216 = !{ptr @sysfs_root_usage_percent, !215, !"sysfs_root_usage_percent", i1 false, i1 false}
!217 = !{ptr @.str.80, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/md/bcache/sysfs.c", i32 72, i32 1}
!219 = !{ptr @sysfs_btree_cache_size, !218, !"sysfs_btree_cache_size", i1 false, i1 false}
!220 = !{ptr @.str.81, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/md/bcache/sysfs.c", i32 73, i32 1}
!222 = !{ptr @sysfs_btree_cache_max_chain, !221, !"sysfs_btree_cache_max_chain", i1 false, i1 false}
!223 = !{ptr @.str.82, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/md/bcache/sysfs.c", i32 74, i32 1}
!225 = !{ptr @sysfs_cache_available_percent, !224, !"sysfs_cache_available_percent", i1 false, i1 false}
!226 = !{ptr @.str.83, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/md/bcache/sysfs.c", i32 82, i32 1}
!228 = !{ptr @sysfs_btree_gc_average_frequency_sec, !227, !"sysfs_btree_gc_average_frequency_sec", i1 false, i1 false}
!229 = !{ptr @.str.84, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @sysfs_btree_gc_average_duration_ms, !227, !"sysfs_btree_gc_average_duration_ms", i1 false, i1 false}
!231 = !{ptr @.str.85, !227, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @sysfs_btree_gc_max_duration_ms, !227, !"sysfs_btree_gc_max_duration_ms", i1 false, i1 false}
!233 = !{ptr @.str.86, !227, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @sysfs_btree_gc_last_sec, !227, !"sysfs_btree_gc_last_sec", i1 false, i1 false}
!235 = !{ptr @.str.87, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/md/bcache/sysfs.c", i32 83, i32 1}
!237 = !{ptr @sysfs_btree_split_average_frequency_sec, !236, !"sysfs_btree_split_average_frequency_sec", i1 false, i1 false}
!238 = !{ptr @.str.88, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @sysfs_btree_split_average_duration_us, !236, !"sysfs_btree_split_average_duration_us", i1 false, i1 false}
!240 = !{ptr @.str.89, !236, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @sysfs_btree_split_max_duration_us, !236, !"sysfs_btree_split_max_duration_us", i1 false, i1 false}
!242 = !{ptr @.str.90, !236, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @sysfs_btree_split_last_sec, !236, !"sysfs_btree_split_last_sec", i1 false, i1 false}
!244 = !{ptr @.str.91, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/md/bcache/sysfs.c", i32 84, i32 1}
!246 = !{ptr @sysfs_btree_sort_average_frequency_ms, !245, !"sysfs_btree_sort_average_frequency_ms", i1 false, i1 false}
!247 = !{ptr @.str.92, !245, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @sysfs_btree_sort_average_duration_us, !245, !"sysfs_btree_sort_average_duration_us", i1 false, i1 false}
!249 = !{ptr @.str.93, !245, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @sysfs_btree_sort_max_duration_us, !245, !"sysfs_btree_sort_max_duration_us", i1 false, i1 false}
!251 = !{ptr @.str.94, !245, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @sysfs_btree_sort_last_ms, !245, !"sysfs_btree_sort_last_ms", i1 false, i1 false}
!253 = !{ptr @.str.95, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/md/bcache/sysfs.c", i32 85, i32 1}
!255 = !{ptr @sysfs_btree_read_average_frequency_ms, !254, !"sysfs_btree_read_average_frequency_ms", i1 false, i1 false}
!256 = !{ptr @.str.96, !254, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @sysfs_btree_read_average_duration_us, !254, !"sysfs_btree_read_average_duration_us", i1 false, i1 false}
!258 = !{ptr @.str.97, !254, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @sysfs_btree_read_max_duration_us, !254, !"sysfs_btree_read_max_duration_us", i1 false, i1 false}
!260 = !{ptr @.str.98, !254, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @sysfs_btree_read_last_ms, !254, !"sysfs_btree_read_last_ms", i1 false, i1 false}
!262 = !{ptr @.str.99, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/md/bcache/sysfs.c", i32 88, i32 1}
!264 = !{ptr @sysfs_btree_used_percent, !263, !"sysfs_btree_used_percent", i1 false, i1 false}
!265 = !{ptr @.str.100, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/md/bcache/sysfs.c", i32 87, i32 1}
!267 = !{ptr @sysfs_btree_nodes, !266, !"sysfs_btree_nodes", i1 false, i1 false}
!268 = !{ptr @.str.101, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/md/bcache/sysfs.c", i32 89, i32 1}
!270 = !{ptr @sysfs_average_key_size, !269, !"sysfs_average_key_size", i1 false, i1 false}
!271 = !{ptr @.str.102, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/md/bcache/sysfs.c", i32 97, i32 1}
!273 = !{ptr @sysfs_cache_read_races, !272, !"sysfs_cache_read_races", i1 false, i1 false}
!274 = !{ptr @.str.103, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/md/bcache/sysfs.c", i32 98, i32 1}
!276 = !{ptr @sysfs_reclaim, !275, !"sysfs_reclaim", i1 false, i1 false}
!277 = !{ptr @.str.104, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/md/bcache/sysfs.c", i32 99, i32 1}
!279 = !{ptr @sysfs_reclaimed_journal_buckets, !278, !"sysfs_reclaimed_journal_buckets", i1 false, i1 false}
!280 = !{ptr @.str.105, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/md/bcache/sysfs.c", i32 100, i32 1}
!282 = !{ptr @sysfs_flush_write, !281, !"sysfs_flush_write", i1 false, i1 false}
!283 = !{ptr @.str.106, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/md/bcache/sysfs.c", i32 101, i32 1}
!285 = !{ptr @sysfs_writeback_keys_done, !284, !"sysfs_writeback_keys_done", i1 false, i1 false}
!286 = !{ptr @.str.107, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/md/bcache/sysfs.c", i32 102, i32 1}
!288 = !{ptr @sysfs_writeback_keys_failed, !287, !"sysfs_writeback_keys_failed", i1 false, i1 false}
!289 = !{ptr @.str.108, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/md/bcache/sysfs.c", i32 140, i32 1}
!291 = !{ptr @sysfs_errors, !290, !"sysfs_errors", i1 false, i1 false}
!292 = !{ptr @.str.109, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/md/bcache/sysfs.c", i32 53, i32 2}
!294 = !{ptr @error_actions, !295, !"error_actions", i1 false, i1 false}
!295 = !{!"../drivers/md/bcache/sysfs.c", i32 51, i32 27}
!296 = !{ptr @.str.110, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/md/bcache/sysfs.c", i32 142, i32 1}
!298 = !{ptr @sysfs_io_error_halflife, !297, !"sysfs_io_error_halflife", i1 false, i1 false}
!299 = !{ptr @.str.111, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/md/bcache/sysfs.c", i32 104, i32 1}
!301 = !{ptr @sysfs_congested, !300, !"sysfs_congested", i1 false, i1 false}
!302 = !{ptr @.str.112, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/md/bcache/sysfs.c", i32 107, i32 1}
!304 = !{ptr @sysfs_congested_read_threshold_us, !303, !"sysfs_congested_read_threshold_us", i1 false, i1 false}
!305 = !{ptr @.str.113, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/md/bcache/sysfs.c", i32 108, i32 1}
!307 = !{ptr @sysfs_congested_write_threshold_us, !306, !"sysfs_congested_write_threshold_us", i1 false, i1 false}
!308 = !{ptr @.str.114, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/md/bcache/sysfs.c", i32 105, i32 1}
!310 = !{ptr @sysfs_cutoff_writeback, !309, !"sysfs_cutoff_writeback", i1 false, i1 false}
!311 = !{ptr @.str.115, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/md/bcache/sysfs.c", i32 106, i32 1}
!313 = !{ptr @sysfs_cutoff_writeback_sync, !312, !"sysfs_cutoff_writeback_sync", i1 false, i1 false}
!314 = !{ptr @.str.116, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/md/bcache/sysfs.c", i32 78, i32 1}
!316 = !{ptr @sysfs_active_journal_entries, !315, !"sysfs_active_journal_entries", i1 false, i1 false}
!317 = !{ptr @.str.117, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/md/bcache/sysfs.c", i32 145, i32 1}
!319 = !{ptr @sysfs_key_merging_disabled, !318, !"sysfs_key_merging_disabled", i1 false, i1 false}
!320 = !{ptr @.str.118, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/md/bcache/sysfs.c", i32 147, i32 1}
!322 = !{ptr @sysfs_expensive_debug_checks, !321, !"sysfs_expensive_debug_checks", i1 false, i1 false}
!323 = !{ptr @.str.119, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/md/bcache/sysfs.c", i32 146, i32 1}
!325 = !{ptr @sysfs_gc_always_rewrite, !324, !"sysfs_gc_always_rewrite", i1 false, i1 false}
!326 = !{ptr @.str.120, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/md/bcache/sysfs.c", i32 149, i32 1}
!328 = !{ptr @sysfs_btree_shrinker_disabled, !327, !"sysfs_btree_shrinker_disabled", i1 false, i1 false}
!329 = !{ptr @.str.121, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/md/bcache/sysfs.c", i32 150, i32 1}
!331 = !{ptr @sysfs_copy_gc_enabled, !330, !"sysfs_copy_gc_enabled", i1 false, i1 false}
!332 = !{ptr @.str.122, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/md/bcache/sysfs.c", i32 151, i32 1}
!334 = !{ptr @sysfs_idle_max_writeback_rate, !333, !"sysfs_idle_max_writeback_rate", i1 false, i1 false}
!335 = !{ptr @.str.123, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/md/bcache/sysfs.c", i32 152, i32 1}
!337 = !{ptr @sysfs_gc_after_writeback, !336, !"sysfs_gc_after_writeback", i1 false, i1 false}
!338 = !{ptr @.str.124, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/md/bcache/sysfs.c", i32 91, i32 1}
!340 = !{ptr @sysfs_bset_tree_stats, !339, !"sysfs_bset_tree_stats", i1 false, i1 false}
!341 = !{ptr @.str.125, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/md/bcache/sysfs.c", i32 643, i32 4}
!343 = !{ptr @.str.126, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/md/bcache/sysfs.c", i32 92, i32 1}
!345 = !{ptr @sysfs_feature_compat, !344, !"sysfs_feature_compat", i1 false, i1 false}
!346 = !{ptr @.str.127, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/md/bcache/sysfs.c", i32 93, i32 1}
!348 = !{ptr @sysfs_feature_ro_compat, !347, !"sysfs_feature_ro_compat", i1 false, i1 false}
!349 = !{ptr @.str.128, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/md/bcache/sysfs.c", i32 94, i32 1}
!351 = !{ptr @sysfs_feature_incompat, !350, !"sysfs_feature_incompat", i1 false, i1 false}
!352 = !{ptr @.str.129, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/md/bcache/sysfs.c", i32 905, i32 5}
!354 = !{ptr @.str.130, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @__bch_cache_set_store._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @__bch_cache_set_store._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.132, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/md/bcache/sysfs.c", i32 909, i32 5}
!359 = !{ptr @__bch_cache_set_store._entry.131, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @__bch_cache_set_store._entry_ptr.133, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.134, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/md/bcache/sysfs.c", i32 64, i32 1}
!363 = !{ptr @sysfs_flash_vol_create, !362, !"sysfs_flash_vol_create", i1 false, i1 false}
!364 = !{ptr @.str.135, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/md/bcache/sysfs.c", i32 62, i32 1}
!366 = !{ptr @sysfs_trigger_gc, !365, !"sysfs_trigger_gc", i1 false, i1 false}
!367 = !{ptr @.str.136, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/md/bcache/sysfs.c", i32 63, i32 1}
!369 = !{ptr @sysfs_prune_cache, !368, !"sysfs_prune_cache", i1 false, i1 false}
!370 = !{ptr @bch_cache_set_files, !371, !"bch_cache_set_files", i1 false, i1 false}
!371 = !{!"../drivers/md/bcache/sysfs.c", i32 958, i32 26}
!372 = !{ptr @bch_cache_set_internal_files, !373, !"bch_cache_set_internal_files", i1 false, i1 false}
!373 = !{!"../drivers/md/bcache/sysfs.c", i32 985, i32 26}
!374 = !{ptr @.str.137, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/md/bcache/sysfs.c", i32 1111, i32 5}
!376 = !{ptr @.str.138, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/md/bcache/sysfs.c", i32 1126, i32 7}
!378 = !{ptr @.str.139, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/md/bcache/sysfs.c", i32 1129, i32 48}
!380 = !{ptr @.str.140, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/md/bcache/sysfs.c", i32 68, i32 1}
!382 = !{ptr @sysfs_nbuckets, !381, !"sysfs_nbuckets", i1 false, i1 false}
!383 = !{ptr @.str.141, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/md/bcache/sysfs.c", i32 137, i32 1}
!385 = !{ptr @sysfs_discard, !384, !"sysfs_discard", i1 false, i1 false}
!386 = !{ptr @.str.142, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/md/bcache/sysfs.c", i32 75, i32 1}
!388 = !{ptr @sysfs_written, !387, !"sysfs_written", i1 false, i1 false}
!389 = !{ptr @.str.143, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/md/bcache/sysfs.c", i32 76, i32 1}
!391 = !{ptr @sysfs_btree_written, !390, !"sysfs_btree_written", i1 false, i1 false}
!392 = !{ptr @.str.144, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/md/bcache/sysfs.c", i32 77, i32 1}
!394 = !{ptr @sysfs_metadata_written, !393, !"sysfs_metadata_written", i1 false, i1 false}
!395 = !{ptr @.str.145, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/md/bcache/sysfs.c", i32 148, i32 1}
!397 = !{ptr @sysfs_cache_replacement_policy, !396, !"sysfs_cache_replacement_policy", i1 false, i1 false}
!398 = !{ptr @.str.146, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/md/bcache/sysfs.c", i32 45, i32 2}
!400 = !{ptr @.str.147, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/md/bcache/sysfs.c", i32 46, i32 2}
!402 = !{ptr @.str.148, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/md/bcache/sysfs.c", i32 47, i32 2}
!404 = !{ptr @cache_replacement_policies, !405, !"cache_replacement_policies", i1 false, i1 false}
!405 = !{!"../drivers/md/bcache/sysfs.c", i32 44, i32 27}
!406 = !{ptr @.str.149, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/md/bcache/sysfs.c", i32 71, i32 1}
!408 = !{ptr @sysfs_priority_stats, !407, !"sysfs_priority_stats", i1 false, i1 false}
!409 = !{ptr @bch_cache_files, !410, !"bch_cache_files", i1 false, i1 false}
!410 = !{!"../drivers/md/bcache/sysfs.c", i32 1185, i32 26}
!411 = !{!"sp"}
!412 = !{i32 1, !"wchar_size", i32 2}
!413 = !{i32 1, !"min_enum_size", i32 4}
!414 = !{i32 8, !"branch-target-enforcement", i32 0}
!415 = !{i32 8, !"sign-return-address", i32 0}
!416 = !{i32 8, !"sign-return-address-all", i32 0}
!417 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!418 = !{i32 7, !"uwtable", i32 1}
!419 = !{i32 7, !"frame-pointer", i32 2}
!420 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!421 = !{i8 0, i8 2}
!422 = !{!"auto-init"}
!423 = !{i64 970181, i64 970208, i64 970230, i64 970258}
!424 = !{i64 970589, i64 970616, i64 970649, i64 970670, i64 970697, i64 970723}
!425 = !{i64 969894, i64 969921}
!426 = !{!"branch_weights", i32 2000, i32 1}
!427 = !{i64 2148455725, i64 2148456005, i64 2148456339, i64 2148456673}
