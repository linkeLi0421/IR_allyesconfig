; ModuleID = '/llk/IR_all_yes/block/blk-sysfs.c_pt.bc'
source_filename = "../block/blk-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.queue_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.69 = type { %struct.work_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rq_qos = type { ptr, ptr, i32, ptr, ptr }

@queue_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @queue_attr_show, ptr @queue_attr_store }, [24 x i8] zeroinitializer }, align 32
@blk_queue_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @blk_release_queue, ptr @queue_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"queue\00", [26 x i8] zeroinitializer }, align 32
@queue_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @queue_attr_visible, ptr null, ptr @queue_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@blk_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"block/blk-sysfs.c\00", [46 x i8] zeroinitializer }, align 32
@blk_queue_ida = external dso_local global %struct.ida, align 4
@blk_requestq_srcu_cachep = external dso_local local_unnamed_addr global ptr, align 4
@blk_requestq_cachep = external dso_local local_unnamed_addr global ptr, align 4
@queue_attrs = internal global { [43 x ptr], [52 x i8] } { [43 x ptr] [ptr @queue_requests_entry, ptr @queue_ra_entry, ptr @queue_max_hw_sectors_entry, ptr @queue_max_sectors_entry, ptr @queue_max_segments_entry, ptr @queue_max_discard_segments_entry, ptr @queue_max_integrity_segments_entry, ptr @queue_max_segment_size_entry, ptr @elv_iosched_entry, ptr @queue_hw_sector_size_entry, ptr @queue_logical_block_size_entry, ptr @queue_physical_block_size_entry, ptr @queue_chunk_sectors_entry, ptr @queue_io_min_entry, ptr @queue_io_opt_entry, ptr @queue_discard_granularity_entry, ptr @queue_discard_max_entry, ptr @queue_discard_max_hw_entry, ptr @queue_discard_zeroes_data_entry, ptr @queue_write_same_max_entry, ptr @queue_write_zeroes_max_entry, ptr @queue_zone_append_max_entry, ptr @queue_zone_write_granularity_entry, ptr @queue_nonrot_entry, ptr @queue_zoned_entry, ptr @queue_nr_zones_entry, ptr @queue_max_open_zones_entry, ptr @queue_max_active_zones_entry, ptr @queue_nomerges_entry, ptr @queue_rq_affinity_entry, ptr @queue_iostats_entry, ptr @queue_stable_writes_entry, ptr @queue_random_entry, ptr @queue_poll_entry, ptr @queue_wc_entry, ptr @queue_fua_entry, ptr @queue_dax_entry, ptr @queue_wb_lat_entry, ptr @queue_poll_delay_entry, ptr @queue_io_timeout_entry, ptr @blk_throtl_sample_time_entry, ptr @queue_virt_boundary_mask_entry, ptr null], [52 x i8] zeroinitializer }, align 32
@queue_io_timeout_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.3, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_io_timeout_show, ptr @queue_io_timeout_store }, [36 x i8] zeroinitializer }, align 32
@queue_max_open_zones_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_max_open_zones_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_max_active_zones_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_max_active_zones_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"io_timeout\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_open_zones\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_active_zones\00", [47 x i8] zeroinitializer }, align 32
@queue_requests_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_requests_show, ptr @queue_requests_store }, [36 x i8] zeroinitializer }, align 32
@queue_ra_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_ra_show, ptr @queue_ra_store }, [36 x i8] zeroinitializer }, align 32
@queue_max_hw_sectors_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_max_hw_sectors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_max_sectors_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_max_sectors_show, ptr @queue_max_sectors_store }, [36 x i8] zeroinitializer }, align 32
@queue_max_segments_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_max_segments_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_max_discard_segments_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_max_discard_segments_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_max_integrity_segments_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_max_integrity_segments_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_max_segment_size_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_max_segment_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@elv_iosched_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @elv_iosched_show, ptr @elv_iosched_store }, [36 x i8] zeroinitializer }, align 32
@queue_hw_sector_size_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_logical_block_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_logical_block_size_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_logical_block_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_physical_block_size_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_physical_block_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_chunk_sectors_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_chunk_sectors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_io_min_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_io_min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_io_opt_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_io_opt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_discard_granularity_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_discard_granularity_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_discard_max_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_discard_max_show, ptr @queue_discard_max_store }, [36 x i8] zeroinitializer }, align 32
@queue_discard_max_hw_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_discard_max_hw_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_discard_zeroes_data_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_discard_zeroes_data_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_write_same_max_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_write_same_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_write_zeroes_max_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_write_zeroes_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_zone_append_max_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_zone_append_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_zone_write_granularity_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_zone_write_granularity_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_nonrot_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_nonrot_show, ptr @queue_nonrot_store }, [36 x i8] zeroinitializer }, align 32
@queue_zoned_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_zoned_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_nr_zones_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_nr_zones_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_nomerges_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_nomerges_show, ptr @queue_nomerges_store }, [36 x i8] zeroinitializer }, align 32
@queue_rq_affinity_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_rq_affinity_show, ptr @queue_rq_affinity_store }, [36 x i8] zeroinitializer }, align 32
@queue_iostats_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_iostats_show, ptr @queue_iostats_store }, [36 x i8] zeroinitializer }, align 32
@queue_stable_writes_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_stable_writes_show, ptr @queue_stable_writes_store }, [36 x i8] zeroinitializer }, align 32
@queue_random_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_random_show, ptr @queue_random_store }, [36 x i8] zeroinitializer }, align 32
@queue_poll_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_poll_show, ptr @queue_poll_store }, [36 x i8] zeroinitializer }, align 32
@queue_wc_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_wc_show, ptr @queue_wc_store }, [36 x i8] zeroinitializer }, align 32
@queue_fua_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_fua_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_dax_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_dax_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@queue_wb_lat_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_wb_lat_show, ptr @queue_wb_lat_store }, [36 x i8] zeroinitializer }, align 32
@queue_poll_delay_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_poll_delay_show, ptr @queue_poll_delay_store }, [36 x i8] zeroinitializer }, align 32
@blk_throtl_sample_time_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @blk_throtl_sample_time_show, ptr @blk_throtl_sample_time_store }, [36 x i8] zeroinitializer }, align 32
@queue_virt_boundary_mask_entry = internal global { %struct.queue_sysfs_entry, [36 x i8] } { %struct.queue_sysfs_entry { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_virt_boundary_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nr_requests\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_ahead_kb\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_hw_sectors_kb\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_sectors_kb\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_segments\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max_discard_segments\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max_integrity_segments\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_segment_size\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scheduler\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hw_sector_size\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"logical_block_size\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"physical_block_size\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chunk_sectors\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"minimum_io_size\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"optimal_io_size\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"discard_granularity\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"discard_max_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"discard_max_hw_bytes\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"discard_zeroes_data\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"write_same_max_bytes\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write_zeroes_max_bytes\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zone_append_max_bytes\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zone_write_granularity\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rotational\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"zoned\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"host-aware\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host-managed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_zones\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nomerges\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rq_affinity\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iostats\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stable_writes\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"add_random\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"io_poll\00", [24 x i8] zeroinitializer }, align 32
@queue_poll_store._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.queue_poll_store = private unnamed_addr constant [17 x i8] c"queue_poll_store\00", align 1
@queue_poll_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.queue_poll_store, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016writes to the poll attribute are ignored.\0A\00", [51 x i8] zeroinitializer }, align 32
@queue_poll_store._entry_ptr = internal global ptr @queue_poll_store._entry, section ".printk_index", align 4
@queue_poll_store._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@queue_poll_store._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.queue_poll_store, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016please use driver specific parameters instead.\0A\00", [46 x i8] zeroinitializer }, align 32
@queue_poll_store._entry_ptr.49 = internal global ptr @queue_poll_store._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write_cache\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write back\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write through\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write back\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write through\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fua\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dax\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wbt_lat_usec\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"io_poll_delay\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"throttle_sample_time\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"virt_boundary_mask\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"queue_sysfs_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 821, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"blk_queue_ktype\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 826, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 847, i32 55 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 847, i32 61 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"queue_attr_group\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 692, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 934, i32 6 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"queue_attrs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 626, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"queue_io_timeout_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"queue_max_open_zones_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [29 x i8] c"queue_max_active_zones_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 607, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 446, i32 23 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 597, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 32, i32 23 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 598, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"queue_requests_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"queue_ra_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"queue_max_hw_sectors_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [24 x i8] c"queue_max_sectors_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [25 x i8] c"queue_max_segments_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [33 x i8] c"queue_max_discard_segments_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [35 x i8] c"queue_max_integrity_segments_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [29 x i8] c"queue_max_segment_size_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"elv_iosched_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"queue_hw_sector_size_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 616, i32 33 }
@___asan_gen_.140 = private unnamed_addr constant [31 x i8] c"queue_logical_block_size_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [32 x i8] c"queue_physical_block_size_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"queue_chunk_sectors_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"queue_io_min_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"queue_io_opt_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [32 x i8] c"queue_discard_granularity_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"queue_discard_max_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"queue_discard_max_hw_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [32 x i8] c"queue_discard_zeroes_data_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"queue_write_same_max_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [29 x i8] c"queue_write_zeroes_max_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [28 x i8] c"queue_zone_append_max_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [35 x i8] c"queue_zone_write_granularity_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"queue_nonrot_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [18 x i8] c"queue_zoned_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [21 x i8] c"queue_nr_zones_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"queue_nomerges_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [24 x i8] c"queue_rq_affinity_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"queue_iostats_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [26 x i8] c"queue_stable_writes_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [19 x i8] c"queue_random_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"queue_poll_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [15 x i8] c"queue_wc_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [16 x i8] c"queue_fua_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [16 x i8] c"queue_dax_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [19 x i8] c"queue_wb_lat_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [23 x i8] c"queue_poll_delay_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [29 x i8] c"blk_throtl_sample_time_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [31 x i8] c"queue_virt_boundary_mask_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 569, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 570, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 572, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 571, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 573, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 584, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 574, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 575, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 576, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 617, i32 19 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 578, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 579, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 580, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 581, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 582, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 585, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 587, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 183, i32 23 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 586, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 588, i32 1 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 590, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 591, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 592, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 593, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 621, i32 1 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 595, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 314, i32 24 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 316, i32 24 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 318, i32 24 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 596, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 600, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 601, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 622, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 624, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 623, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 602, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 439, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 440, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 604, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 519, i32 24 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 521, i32 23 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 529, i32 21 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 531, i32 26 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 532, i32 19 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 605, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 606, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 608, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 603, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 404, i32 23 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 612, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.393 = private constant [21 x i8] c"../block/blk-sysfs.c\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 609, i32 1 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @queue_poll_store._entry, ptr @queue_poll_store._entry.47, ptr @queue_poll_store._entry_ptr, ptr @queue_poll_store._entry_ptr.49, ptr @queue_sysfs_ops, ptr @blk_queue_ktype, ptr @.str, ptr @.str.1, ptr @queue_attr_group, ptr @.str.2, ptr @queue_attrs, ptr @queue_io_timeout_entry, ptr @queue_max_open_zones_entry, ptr @queue_max_active_zones_entry, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @queue_requests_entry, ptr @queue_ra_entry, ptr @queue_max_hw_sectors_entry, ptr @queue_max_sectors_entry, ptr @queue_max_segments_entry, ptr @queue_max_discard_segments_entry, ptr @queue_max_integrity_segments_entry, ptr @queue_max_segment_size_entry, ptr @elv_iosched_entry, ptr @queue_hw_sector_size_entry, ptr @queue_logical_block_size_entry, ptr @queue_physical_block_size_entry, ptr @queue_chunk_sectors_entry, ptr @queue_io_min_entry, ptr @queue_io_opt_entry, ptr @queue_discard_granularity_entry, ptr @queue_discard_max_entry, ptr @queue_discard_max_hw_entry, ptr @queue_discard_zeroes_data_entry, ptr @queue_write_same_max_entry, ptr @queue_write_zeroes_max_entry, ptr @queue_zone_append_max_entry, ptr @queue_zone_write_granularity_entry, ptr @queue_nonrot_entry, ptr @queue_zoned_entry, ptr @queue_nr_zones_entry, ptr @queue_nomerges_entry, ptr @queue_rq_affinity_entry, ptr @queue_iostats_entry, ptr @queue_stable_writes_entry, ptr @queue_random_entry, ptr @queue_poll_entry, ptr @queue_wc_entry, ptr @queue_fua_entry, ptr @queue_dax_entry, ptr @queue_wb_lat_entry, ptr @queue_poll_delay_entry, ptr @blk_throtl_sample_time_entry, ptr @queue_virt_boundary_mask_entry, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @queue_poll_store._rs, ptr @.str.44, ptr @.str.45, ptr @queue_poll_store._rs.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_queue_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_attrs to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_io_timeout_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_max_open_zones_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_max_active_zones_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_requests_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_ra_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_max_hw_sectors_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_max_sectors_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_max_segments_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_max_discard_segments_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_max_integrity_segments_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_max_segment_size_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elv_iosched_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_hw_sector_size_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_logical_block_size_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_physical_block_size_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_chunk_sectors_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_io_min_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_io_opt_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_discard_granularity_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_discard_max_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_discard_max_hw_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_discard_zeroes_data_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_write_same_max_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_write_zeroes_max_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_zone_append_max_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_zone_write_granularity_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_nonrot_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_zoned_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_nr_zones_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_nomerges_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_rq_affinity_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_iostats_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_stable_writes_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_random_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_poll_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_wc_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_fua_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_dax_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_wb_lat_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_poll_delay_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_throtl_sample_time_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_virt_boundary_mask_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_poll_store._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_poll_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_poll_store._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_poll_store._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_release_queue(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -108
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 788) #11
  %poll_stat = getelementptr i8, ptr %kobj, i32 184
  %0 = ptrtoint ptr %poll_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poll_stat, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %poll_cb = getelementptr i8, ptr %kobj, i32 180
  %2 = ptrtoint ptr %poll_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poll_cb, align 8
  tail call void @blk_stat_remove_callback(ptr noundef %add.ptr, ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %poll_cb4 = getelementptr i8, ptr %kobj, i32 180
  %4 = ptrtoint ptr %poll_cb4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poll_cb4, align 8
  tail call void @blk_stat_free_callback(ptr noundef %5) #11
  %elevator.i = getelementptr i8, ptr %kobj, i32 -104
  %6 = ptrtoint ptr %elevator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elevator.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.blk_exit_queue.exit_crit_edge, label %if.then.i

if.end.blk_exit_queue.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_exit_queue.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ioc_clear_queue(ptr noundef %add.ptr) #11
  tail call void @elevator_exit(ptr noundef %add.ptr) #11
  br label %blk_exit_queue.exit

blk_exit_queue.exit:                              ; preds = %if.then.i, %if.end.blk_exit_queue.exit_crit_edge
  tail call void @blkcg_exit_queue(ptr noundef %add.ptr) #11
  %stats = getelementptr i8, ptr %kobj, i32 -92
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats, align 8
  tail call void @blk_free_queue_stats(ptr noundef %9) #11
  %10 = ptrtoint ptr %poll_stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %poll_stat, align 4
  tail call void @kfree(ptr noundef %11) #11
  tail call void @blk_queue_free_zone_bitmaps(ptr noundef %add.ptr) #11
  %mq_ops.i = getelementptr i8, ptr %kobj, i32 -84
  %12 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %blk_exit_queue.exit.if.end7_crit_edge, label %if.then6

blk_exit_queue.exit.if.end7_crit_edge:            ; preds = %blk_exit_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %blk_exit_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_mq_release(ptr noundef %add.ptr) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %blk_exit_queue.exit.if.end7_crit_edge
  tail call void @blk_trace_shutdown(ptr noundef %add.ptr) #11
  %debugfs_mutex = getelementptr i8, ptr %kobj, i32 440
  tail call void @mutex_lock_nested(ptr noundef %debugfs_mutex, i32 noundef 0) #11
  %debugfs_dir = getelementptr i8, ptr %kobj, i32 1708
  %14 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_dir, align 8
  tail call void @debugfs_remove(ptr noundef %15) #11
  tail call void @mutex_unlock(ptr noundef %debugfs_mutex) #11
  %16 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i37.not = icmp eq ptr %17, null
  br i1 %tobool.i37.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_mq_debugfs_unregister(ptr noundef %add.ptr) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %bio_split = getelementptr i8, ptr %kobj, i32 1104
  tail call void @bioset_exit(ptr noundef %bio_split) #11
  %queue_flags = getelementptr i8, ptr %kobj, i32 -60
  %18 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %queue_flags, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %srcu = getelementptr i8, ptr %kobj, i32 1768
  tail call void @cleanup_srcu_struct(ptr noundef %srcu) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %id = getelementptr i8, ptr %kobj, i32 -52
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 8
  tail call void @ida_free(ptr noundef nonnull @blk_queue_ida, i32 noundef %22) #11
  %callback_head = getelementptr i8, ptr %kobj, i32 936
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @blk_free_queue_rcu) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_register_queue(ptr noundef %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %part0 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %0 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 10
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %call = tail call i32 @blk_trace_init_sysfs(ptr noundef %bd_device) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 52
  tail call void @mutex_lock_nested(ptr noundef %sysfs_dir_lock, i32 noundef 0) #11
  %kobj = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 16
  %call2 = tail call ptr @kobject_get(ptr noundef %bd_device) #11
  %call3 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj, ptr noundef %call2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_trace_remove_sysfs(ptr noundef %bd_device) #11
  br label %unlock

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef nonnull @queue_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_trace_remove_sysfs(ptr noundef %bd_device) #11
  tail call void @kobject_del(ptr noundef %kobj) #11
  tail call void @kobject_put(ptr noundef %bd_device) #11
  br label %unlock

if.end12:                                         ; preds = %if.end5
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 45
  tail call void @mutex_lock_nested(ptr noundef %debugfs_mutex, i32 noundef 0) #11
  %parent = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 16, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @blk_debugfs_root to i32))
  %8 = load ptr, ptr @blk_debugfs_root, align 4
  %call15 = tail call ptr @debugfs_create_dir(ptr noundef %7, ptr noundef %8) #11
  %debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 64
  %9 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call15, ptr %debugfs_dir, align 8
  tail call void @mutex_unlock(ptr noundef %debugfs_mutex) #11
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %11, null
  br i1 %tobool.i.not, label %if.end12.if.end20_crit_edge, label %if.then18

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 @__blk_mq_register_dev(ptr noundef %bd_device, ptr noundef %3) #11
  tail call void @blk_mq_debugfs_register(ptr noundef %3) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end12.if.end20_crit_edge
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #11
  %call21 = tail call i32 @disk_register_independent_access_ranges(ptr noundef %disk, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.put_dev_crit_edge

if.end20.put_dev_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_dev

if.end24:                                         ; preds = %if.end20
  %elevator = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %elevator, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.end24.if.end31_crit_edge, label %if.then26

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @elv_register_queue(ptr noundef %3, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.put_dev_crit_edge

if.then26.put_dev_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_dev

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %if.end24.if.end31_crit_edge
  tail call void @blk_queue_flag_set(i32 noundef 22, ptr noundef %3) #11
  tail call void @wbt_enable_default(ptr noundef %3) #11
  tail call void @blk_throtl_register_queue(ptr noundef %3) #11
  %call33 = tail call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 0) #11
  %14 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %elevator, align 4
  %tobool35.not = icmp eq ptr %15, null
  br i1 %tobool35.not, label %if.end31.if.end40_crit_edge, label %if.then36

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %kobj38 = getelementptr inbounds %struct.elevator_queue, ptr %15, i32 0, i32 2
  %call39 = tail call i32 @kobject_uevent(ptr noundef %kobj38, i32 noundef 0) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end31.if.end40_crit_edge
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #11
  br label %unlock

unlock:                                           ; preds = %if.end40, %if.then9, %if.then4
  %ret.1 = phi i32 [ %call3, %if.then4 ], [ %call7, %if.then9 ], [ 0, %if.end40 ]
  tail call void @mutex_unlock(ptr noundef %sysfs_dir_lock) #11
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %queue_flags, align 4
  %18 = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool44.not = icmp eq i32 %18, 0
  br i1 %tobool44.not, label %if.then45, label %unlock.cleanup_crit_edge

unlock.cleanup_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then45:                                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_queue_flag_set(i32 noundef 14, ptr noundef %3) #11
  %q_usage_counter = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 2
  tail call void @percpu_ref_switch_to_percpu(ptr noundef %q_usage_counter) #11
  br label %cleanup

put_dev:                                          ; preds = %if.then26.put_dev_crit_edge, %if.end20.put_dev_crit_edge
  %ret.2 = phi i32 [ %call21, %if.end20.put_dev_crit_edge ], [ %call27, %if.then26.put_dev_crit_edge ]
  tail call void @disk_unregister_independent_access_ranges(ptr noundef %disk) #11
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #11
  tail call void @mutex_unlock(ptr noundef %sysfs_dir_lock) #11
  tail call void @kobject_del(ptr noundef %kobj) #11
  tail call void @blk_trace_remove_sysfs(ptr noundef %bd_device) #11
  tail call void @kobject_put(ptr noundef %bd_device) #11
  br label %cleanup

cleanup:                                          ; preds = %put_dev, %if.then45, %unlock.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %put_dev ], [ %call, %entry.cleanup_crit_edge ], [ %ret.1, %if.then45 ], [ %ret.1, %unlock.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_trace_init_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_trace_remove_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_mq_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @disk_register_independent_access_ranges(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_register_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wbt_enable_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_throtl_register_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_switch_to_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_unregister_independent_access_ranges(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_unregister_queue(ptr noundef %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !186

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 934, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23:                                         ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %queue_flags, align 4
  %4 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool24.not = icmp eq i32 %4, 0
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #11
  tail call void @blk_queue_flag_clear(i32 noundef 22, ptr noundef nonnull %1) #11
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #11
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 52
  tail call void @mutex_lock_nested(ptr noundef %sysfs_dir_lock, i32 noundef 0) #11
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %6, null
  br i1 %tobool.i.not, label %if.end26.if.end30_crit_edge, label %if.then29

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %part0 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %7 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 10
  tail call void @blk_mq_unregister_dev(ptr noundef %bd_device, ptr noundef nonnull %1) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %kobj = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 16
  %call31 = tail call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 1) #11
  tail call void @kobject_del(ptr noundef %kobj) #11
  %part033 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %9 = ptrtoint ptr %part033 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part033, align 4
  %bd_device34 = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 10
  tail call void @blk_trace_remove_sysfs(ptr noundef %bd_device34) #11
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #11
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %elevator, align 4
  %tobool36.not = icmp eq ptr %12, null
  br i1 %tobool36.not, label %if.end30.if.end38_crit_edge, label %if.then37

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @elv_unregister_queue(ptr noundef nonnull %1) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end30.if.end38_crit_edge
  tail call void @disk_unregister_independent_access_ranges(ptr noundef %disk) #11
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #11
  tail call void @mutex_unlock(ptr noundef %sysfs_dir_lock) #11
  %13 = ptrtoint ptr %part033 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %part033, align 4
  %bd_device42 = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 10
  tail call void @kobject_put(ptr noundef %bd_device42) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end23.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_unregister_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_free_callback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_free_queue_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_free_zone_bitmaps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_trace_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_srcu_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_free_queue_rcu(ptr noundef %callback_head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %callback_head, i32 -1044
  %queue_flags = getelementptr i8, ptr %callback_head, i32 -996
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @blk_requestq_srcu_cachep to i32))
  %blk_requestq_srcu_cachep.val.i = load ptr, ptr @blk_requestq_srcu_cachep, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @blk_requestq_cachep to i32))
  %blk_requestq_cachep.val.i = load ptr, ptr @blk_requestq_cachep, align 4
  %retval.0.i = select i1 %tobool.not, ptr %blk_requestq_cachep.val.i, ptr %blk_requestq_srcu_cachep.val.i
  tail call void @kmem_cache_free(ptr noundef %retval.0.i, ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ioc_clear_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @elevator_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_exit_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_attr_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.queue_sysfs_entry, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr4 = getelementptr i8, ptr %kobj, i32 -108
  %sysfs_lock = getelementptr i8, ptr %kobj, i32 692
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #11
  %2 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %show, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr4, ptr noundef %page) #11
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_attr_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.queue_sysfs_entry, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr4 = getelementptr i8, ptr %kobj, i32 -108
  %sysfs_lock = getelementptr i8, ptr %kobj, i32 692
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #11
  %2 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %store, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr4, ptr noundef %page, i32 noundef %length) #11
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @queue_attr_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @queue_io_timeout_entry
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mq_ops = getelementptr i8, ptr %kobj, i32 -84
  %0 = ptrtoint ptr %mq_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq_ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %timeout = getelementptr inbounds %struct.blk_mq_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timeout, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %cmp3 = icmp eq ptr %attr, @queue_max_open_zones_entry
  %cmp5 = icmp eq ptr %attr, @queue_max_active_zones_entry
  %or.cond = or i1 %cmp3, %cmp5
  br i1 %or.cond, label %land.lhs.true6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true6:                                   ; preds = %if.end
  %zoned.i.i = getelementptr i8, ptr %kobj, i32 408
  %4 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %land.lhs.true6.if.end8_crit_edge, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true6.if.end8_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true6.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end8 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true6.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_io_timeout_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_timeout = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 25
  %0 = ptrtoint ptr %rq_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_timeout, align 8
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %1) #11
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_io_timeout_store(ptr noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !187
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.else.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %2) #11
  call void @blk_queue_rq_timeout(ptr noundef %q, i32 noundef %call2.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else.i ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_max_open_zones_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_open_zones.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 42
  %0 = ptrtoint ptr %max_open_zones.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_open_zones.i, align 8
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_max_active_zones_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_active_zones.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 43
  %0 = ptrtoint ptr %max_active_zones.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_active_zones.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_requests_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_requests = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 21
  %0 = ptrtoint ptr %nr_requests to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_requests, align 8
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_requests_store(ptr noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 5
  %0 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %2 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %v.i, align 4, !annotation !187
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %queue_var_store.exit, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %cleanup

queue_var_store.exit:                             ; preds = %if.end
  %3 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %queue_var_store.exit.cleanup_crit_edge, label %if.end3

queue_var_store.exit.cleanup_crit_edge:           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  %5 = call i32 @llvm.umax.i32(i32 %4, i32 4)
  %call7 = call i32 @blk_mq_update_nr_requests(ptr noundef %q, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %call1.call7 = select i1 %tobool.not, i32 %count, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %queue_var_store.exit.cleanup_crit_edge, %queue_var_store.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %queue_var_store.exit.cleanup_crit_edge ], [ %call1.call7, %if.end3 ], [ -22, %queue_var_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_update_nr_requests(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_ra_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %disk = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 15
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bdi = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdi, align 4
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ra_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ra_pages, align 4
  %shl = shl i32 %5, 2
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %shl) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_ra_store(ptr nocapture noundef readonly %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %disk = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 15
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %2 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %v.i, align 4, !annotation !187
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %queue_var_store.exit, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %cleanup

queue_var_store.exit:                             ; preds = %if.end
  %3 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %queue_var_store.exit.cleanup_crit_edge, label %if.end2

queue_var_store.exit.cleanup_crit_edge:           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %4, 2
  %5 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disk, align 8
  %bdi = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdi, align 4
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ra_pages to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %ra_pages, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %queue_var_store.exit.cleanup_crit_edge, %queue_var_store.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ %count, %queue_var_store.exit.cleanup_crit_edge ], [ -22, %queue_var_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_max_hw_sectors_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 3
  %0 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_hw_sectors.i, align 4
  %shr = lshr i32 %1, 1
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %shr) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_max_sectors_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_sectors.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 6
  %0 = ptrtoint ptr %max_sectors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_sectors.i, align 4
  %shr = lshr i32 %1, 1
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %shr) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_max_sectors_store(ptr noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 3
  %0 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_hw_sectors.i, align 4
  %shr = lshr i32 %1, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %2 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %v.i, align 4, !annotation !187
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %queue_var_store.exit, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %cleanup

queue_var_store.exit:                             ; preds = %entry
  %3 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %queue_var_store.exit.cleanup_crit_edge, label %if.end

queue_var_store.exit.cleanup_crit_edge:           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %queue_var_store.exit
  %max_dev_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 4
  %5 = ptrtoint ptr %max_dev_sectors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_dev_sectors, align 4
  %shr2 = lshr i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp3 = icmp ult i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp4 = icmp ult i32 %6, 2
  %7 = call i32 @llvm.umin.i32(i32 %shr, i32 %shr2)
  %spec.select = select i1 %cmp4, i32 %shr, i32 %7
  %cond14 = select i1 %cmp3, i32 %shr2, i32 %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cond14)
  %cmp15 = icmp ugt i32 %4, %cond14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp16 = icmp ult i32 %4, 4
  %or.cond = or i1 %cmp16, %cmp15
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #11
  %shl = shl i32 %4, 1
  %max_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 6
  %8 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %max_sectors, align 4
  %disk = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 15
  %9 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %shr21 = lshr i32 %4, 2
  %bdi = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdi, align 4
  %io_pages = getelementptr inbounds %struct.backing_dev_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %io_pages to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr21, ptr %io_pages, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %queue_var_store.exit.cleanup_crit_edge, %queue_var_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end23 ], [ %count, %queue_var_store.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %queue_var_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_max_segments_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_segments.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 21
  %0 = ptrtoint ptr %max_segments.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_segments.i, align 4
  %conv = zext i16 %1 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %conv) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_max_discard_segments_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_discard_segments.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 23
  %0 = ptrtoint ptr %max_discard_segments.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_discard_segments.i, align 4
  %conv = zext i16 %1 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %conv) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_max_integrity_segments_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_integrity_segments = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 22
  %0 = ptrtoint ptr %max_integrity_segments to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_integrity_segments, align 2
  %conv = zext i16 %1 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %conv) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_max_segment_size_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_segment_size.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 7
  %0 = ptrtoint ptr %max_segment_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_segment_size.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_iosched_show(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_iosched_store(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_logical_block_size_show(ptr noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %q, null
  br i1 %tobool.not.i, label %entry.queue_logical_block_size.exit_crit_edge, label %land.lhs.true.i

entry.queue_logical_block_size.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %queue_logical_block_size.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 9
  %0 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not.i = icmp eq i32 %1, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 512, i32 %1
  br label %queue_logical_block_size.exit

queue_logical_block_size.exit:                    ; preds = %land.lhs.true.i, %entry.queue_logical_block_size.exit_crit_edge
  %retval1.0.i = phi i32 [ 512, %entry.queue_logical_block_size.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %retval1.0.i) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_physical_block_size_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %physical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 8
  %0 = ptrtoint ptr %physical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %physical_block_size.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_chunk_sectors_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 5
  %0 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chunk_sectors, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_io_min_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io_min.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 11
  %0 = ptrtoint ptr %io_min.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_min.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_io_opt_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io_opt.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 12
  %0 = ptrtoint ptr %io_opt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_opt.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_discard_granularity_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 18
  %0 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %discard_granularity, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_discard_max_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_discard_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 13
  %0 = ptrtoint ptr %max_discard_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_discard_sectors, align 4
  %conv = zext i32 %1 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.25, i64 noundef %shl)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_discard_max_store(ptr nocapture noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %0 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v.i, align 4, !annotation !187
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %queue_var_store.exit, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %cleanup

queue_var_store.exit:                             ; preds = %entry
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %queue_var_store.exit.cleanup_crit_edge, label %if.end

queue_var_store.exit.cleanup_crit_edge:           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %queue_var_store.exit
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 18
  %3 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %discard_granularity, align 4
  %sub = add i32 %4, -1
  %and = and i32 %sub, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %2, 9
  %max_hw_discard_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 14
  %5 = ptrtoint ptr %max_hw_discard_sectors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_hw_discard_sectors, align 4
  %7 = call i32 @llvm.umin.i32(i32 %shr, i32 %6)
  %max_discard_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 13
  %8 = ptrtoint ptr %max_discard_sectors to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_discard_sectors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %queue_var_store.exit.cleanup_crit_edge, %queue_var_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end2 ], [ %count, %queue_var_store.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %queue_var_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_discard_max_hw_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_hw_discard_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 14
  %0 = ptrtoint ptr %max_hw_discard_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_hw_discard_sectors, align 4
  %conv = zext i32 %1 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.25, i64 noundef %shl)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_discard_zeroes_data_show(ptr nocapture noundef readnone %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef 0) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_write_same_max_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_write_same_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 15
  %0 = ptrtoint ptr %max_write_same_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_write_same_sectors, align 4
  %conv = zext i32 %1 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.25, i64 noundef %shl)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_write_zeroes_max_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_write_zeroes_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 16
  %0 = ptrtoint ptr %max_write_zeroes_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_write_zeroes_sectors, align 4
  %conv = zext i32 %1 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.25, i64 noundef %shl)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_zone_append_max_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_zone_append_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 17
  %0 = ptrtoint ptr %max_zone_append_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_zone_append_sectors, align 4
  %conv = zext i32 %1 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.25, i64 noundef %shl)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_zone_write_granularity_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_write_granularity.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 20
  %0 = ptrtoint ptr %zone_write_granularity.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_write_granularity.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_nonrot_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %2 = lshr i32 %1, 6
  %.lobit = and i32 %2, 1
  %3 = xor i32 %.lobit, 1
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %3) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_nonrot_store(ptr noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %0 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v.i, align 4, !annotation !187
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %queue_var_store.exit, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %cleanup

queue_var_store.exit:                             ; preds = %entry
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %queue_var_store.exit.cleanup_crit_edge, label %if.end

queue_var_store.exit.cleanup_crit_edge:           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %q) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_clear(i32 noundef 6, ptr noundef %q) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %queue_var_store.exit.cleanup_crit_edge, %queue_var_store.exit.thread
  %retval.0.i11 = phi i32 [ -22, %queue_var_store.exit.thread ], [ %count, %if.then2 ], [ %count, %if.else ], [ %count, %queue_var_store.exit.cleanup_crit_edge ]
  ret i32 %retval.0.i11
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_zoned_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %zoned.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 27
  %0 = ptrtoint ptr %zoned.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zoned.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = call ptr @memcpy(ptr %page, ptr @.str.34, i32 12)
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %page, ptr @.str.35, i32 14)
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = call ptr @memcpy(ptr %page, ptr @.str.36, i32 6)
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ 5, %sw.default ], [ 13, %sw.bb2 ], [ 11, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_nr_zones_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 27
  %0 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %cond.true.i, label %entry.blk_queue_nr_zones.exit_crit_edge

entry.blk_queue_nr_zones.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_queue_nr_zones.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %nr_zones.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 39
  %2 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_zones.i, align 4
  br label %blk_queue_nr_zones.exit

blk_queue_nr_zones.exit:                          ; preds = %cond.true.i, %entry.blk_queue_nr_zones.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.true.i ], [ 0, %entry.blk_queue_nr_zones.exit_crit_edge ]
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %cond.i) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_nomerges_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %2 = lshr i32 %1, 2
  %shl = and i32 %2, 2
  %3 = load volatile i32, ptr %queue_flags, align 4
  %shr.i5 = lshr i32 %3, 9
  %and1.i6 = and i32 %shr.i5, 1
  %or = or i32 %and1.i6, %shl
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %or) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_nomerges_store(ptr noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %0 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v.i, align 4, !annotation !187
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %queue_var_store.exit, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %cleanup

queue_var_store.exit:                             ; preds = %entry
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %queue_var_store.exit.cleanup_crit_edge, label %if.end

queue_var_store.exit.cleanup_crit_edge:           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %queue_var_store.exit
  call void @blk_queue_flag_clear(i32 noundef 3, ptr noundef %q) #11
  call void @blk_queue_flag_clear(i32 noundef 9, ptr noundef %q) #11
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %2, label %if.then3 [
    i32 2, label %if.then2
    i32 0, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_set(i32 noundef 3, ptr noundef %q) #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_set(i32 noundef 9, ptr noundef %q) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then2, %if.end.cleanup_crit_edge, %queue_var_store.exit.cleanup_crit_edge, %queue_var_store.exit.thread
  %retval.0.i15 = phi i32 [ -22, %queue_var_store.exit.thread ], [ %count, %if.then2 ], [ %count, %if.then3 ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %queue_var_store.exit.cleanup_crit_edge ]
  ret i32 %retval.0.i15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_rq_affinity_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %2 = load volatile i32, ptr %queue_flags, align 4
  %3 = lshr i32 %1, 4
  %.lobit = and i32 %3, 1
  %4 = lshr i32 %2, 12
  %.lobit12 = and i32 %4, 1
  %shl = shl nuw nsw i32 %.lobit, %.lobit12
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %shl) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_rq_affinity_store(ptr noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %0 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v.i, align 4, !annotation !187
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %queue_var_store.exit, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %cleanup

queue_var_store.exit:                             ; preds = %entry
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %queue_var_store.exit.cleanup_crit_edge, label %if.end

queue_var_store.exit.cleanup_crit_edge:           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %queue_var_store.exit
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %2, label %if.end.cleanup_crit_edge [
    i32 2, label %if.then2
    i32 1, label %if.then4
    i32 0, label %if.then7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_set(i32 noundef 4, ptr noundef %q) #11
  call void @blk_queue_flag_set(i32 noundef 12, ptr noundef %q) #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_set(i32 noundef 4, ptr noundef %q) #11
  call void @blk_queue_flag_clear(i32 noundef 12, ptr noundef %q) #11
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_clear(i32 noundef 4, ptr noundef %q) #11
  call void @blk_queue_flag_clear(i32 noundef 12, ptr noundef %q) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then4, %if.then2, %if.end.cleanup_crit_edge, %queue_var_store.exit.cleanup_crit_edge, %queue_var_store.exit.thread
  %retval.0.i22 = phi i32 [ -22, %queue_var_store.exit.thread ], [ %count, %if.then2 ], [ %count, %if.then7 ], [ %count, %if.then4 ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %queue_var_store.exit.cleanup_crit_edge ]
  ret i32 %retval.0.i22
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_iostats_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %shr.i = lshr i32 %1, 7
  %and1.i = and i32 %shr.i, 1
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %and1.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_iostats_store(ptr noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %0 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v.i, align 4, !annotation !187
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %queue_var_store.exit, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %cleanup

queue_var_store.exit:                             ; preds = %entry
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %queue_var_store.exit.cleanup_crit_edge, label %if.end

queue_var_store.exit.cleanup_crit_edge:           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_set(i32 noundef 7, ptr noundef %q) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_clear(i32 noundef 7, ptr noundef %q) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %queue_var_store.exit.cleanup_crit_edge, %queue_var_store.exit.thread
  %retval.0.i10 = phi i32 [ -22, %queue_var_store.exit.thread ], [ %count, %if.then1 ], [ %count, %if.else ], [ %count, %queue_var_store.exit.cleanup_crit_edge ]
  ret i32 %retval.0.i10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_stable_writes_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %shr.i = lshr i32 %1, 15
  %and1.i = and i32 %shr.i, 1
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %and1.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_stable_writes_store(ptr noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %0 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v.i, align 4, !annotation !187
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %queue_var_store.exit, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %cleanup

queue_var_store.exit:                             ; preds = %entry
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %queue_var_store.exit.cleanup_crit_edge, label %if.end

queue_var_store.exit.cleanup_crit_edge:           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_set(i32 noundef 15, ptr noundef %q) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_clear(i32 noundef 15, ptr noundef %q) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %queue_var_store.exit.cleanup_crit_edge, %queue_var_store.exit.thread
  %retval.0.i10 = phi i32 [ -22, %queue_var_store.exit.thread ], [ %count, %if.then1 ], [ %count, %if.else ], [ %count, %queue_var_store.exit.cleanup_crit_edge ]
  ret i32 %retval.0.i10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_random_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %shr.i = lshr i32 %1, 10
  %and1.i = and i32 %shr.i, 1
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %and1.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_random_store(ptr noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #11
  %0 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v.i, align 4, !annotation !187
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %queue_var_store.exit, label %queue_var_store.exit.thread

queue_var_store.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  br label %cleanup

queue_var_store.exit:                             ; preds = %entry
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %queue_var_store.exit.cleanup_crit_edge, label %if.end

queue_var_store.exit.cleanup_crit_edge:           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %queue_var_store.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_set(i32 noundef 10, ptr noundef %q) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %q) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %queue_var_store.exit.cleanup_crit_edge, %queue_var_store.exit.thread
  %retval.0.i10 = phi i32 [ -22, %queue_var_store.exit.thread ], [ %count, %if.then1 ], [ %count, %if.else ], [ %count, %queue_var_store.exit.cleanup_crit_edge ]
  ret i32 %retval.0.i10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_poll_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %shr.i = lshr i32 %1, 16
  %and1.i = and i32 %shr.i, 1
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %and1.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_poll_store(ptr noundef %q, ptr nocapture noundef readnone %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @queue_poll_store._rs, ptr noundef nonnull @__func__.queue_poll_store) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #14
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @queue_poll_store._rs.46, ptr noundef nonnull @__func__.queue_poll_store) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.return_crit_edge, label %do.end10

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #14
  br label %return

return:                                           ; preds = %do.end10, %if.end5.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %count, %do.end10 ], [ %count, %if.end5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_wc_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %2 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = call ptr @memcpy(ptr %page, ptr @.str.51, i32 12)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %page, ptr @.str.52, i32 15)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 11, %if.then ], [ 14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_wc_store(ptr noundef %q, ptr nocapture noundef readonly %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(11) @.str.53, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then10, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(14) @.str.54, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else.if.else11_crit_edge, label %lor.lhs.false

if.else.if.else11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else11

lor.lhs.false:                                    ; preds = %if.else
  %call3 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(5) @.str.55, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.else11_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.if.else11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else11

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @blk_queue_flag_set(i32 noundef 17, ptr noundef %q) #11
  br label %cleanup

if.else11:                                        ; preds = %lor.lhs.false.if.else11_crit_edge, %if.else.if.else11_crit_edge
  tail call void @blk_queue_flag_clear(i32 noundef 17, ptr noundef %q) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else11, %if.then10, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else11 ], [ %count, %if.then10 ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_fua_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %shr.i = lshr i32 %1, 18
  %and1.i = and i32 %shr.i, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %and1.i)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_dax_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %queue_flags, align 4
  %shr.i = lshr i32 %1, 19
  %and1.i = and i32 %shr.i, 1
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %and1.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_wb_lat_show(ptr noundef %q, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %entry.return_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %entry.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 0
  br i1 %cmp.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.return_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.return_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i64 @wbt_get_min_lat(ptr noundef %q) #11
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %call1, i32 0) #15, !srcloc !188
  %asmresult.i.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %call1, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #15, !srcloc !189
  %asmresult10.i.i.i = extractvalue { i64, i32 } %5, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 9
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.25, i64 noundef %div1581.i.i)
  br label %return

return:                                           ; preds = %if.end, %for.inc.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.return_crit_edge ], [ -22, %for.inc.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_wb_lat_store(ptr noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i) #11
  %0 = ptrtoint ptr %v.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %v.i, align 8, !annotation !187
  %call.i.i = call i32 @kstrtoll(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %queue_var_store64.exit.thread, label %if.end

queue_var_store64.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %v.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %2)
  %cmp1 = icmp slt i64 %2, -1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %3 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %if.end3.if.then5_crit_edge, label %if.end3.for.body.i.i_crit_edge

if.end3.for.body.i.i_crit_edge:                   ; preds = %if.end3
  br label %for.body.i.i

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end3.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %if.end3.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %for.body.i.i.if.end10_crit_edge, label %for.inc.i.i

for.body.i.i.if.end10_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.then5_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.then5_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %for.inc.i.i.if.then5_crit_edge, %if.end3.if.then5_crit_edge
  %call6 = call i32 @wbt_init(ptr noundef %q) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %for.body.i.i.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %2)
  %cmp11 = icmp eq i64 %2, -1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = call i64 @wbt_default_latency_nsec(ptr noundef %q) #11
  br label %if.end17

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i64 %2, 1000
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp1444 = icmp slt i64 %2, 0
  %spec.select = select i1 %cmp1444, i64 %2, i64 %mul
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  %val.1 = phi i64 [ %call13, %if.then12 ], [ %spec.select, %if.else ]
  %call18 = call i64 @wbt_get_min_lat(ptr noundef %q) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %val.1)
  %cmp19 = icmp eq i64 %call18, %val.1
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_mq_freeze_queue(ptr noundef %q) #11
  call void @blk_mq_quiesce_queue(ptr noundef %q) #11
  call void @wbt_set_min_lat(ptr noundef %q, i64 noundef %val.1) #11
  call void @blk_mq_unquiesce_queue(ptr noundef %q) #11
  call void @blk_mq_unfreeze_queue(ptr noundef %q) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end17.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %queue_var_store64.exit.thread
  %retval.0 = phi i32 [ %count, %if.end21 ], [ -22, %if.end.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ %count, %if.end17.cleanup_crit_edge ], [ %call.i.i, %queue_var_store64.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wbt_get_min_lat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wbt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wbt_default_latency_nsec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wbt_set_min_lat(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_poll_delay_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_nsec = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 26
  %0 = ptrtoint ptr %poll_nsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_nsec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  %div = sdiv i32 %1, 1000
  %val.0 = select i1 %cmp, i32 -1, i32 %div
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.60, i32 noundef %val.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_poll_delay_store(ptr nocapture noundef %q, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !187
  %mq_ops = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 5
  %1 = ptrtoint ptr %mq_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mq_ops, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %poll = getelementptr inbounds %struct.blk_mq_ops, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %poll, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @kstrtoint(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp5 = icmp eq i32 %6, -1
  br i1 %cmp5, label %if.end4.cleanup.sink.split_crit_edge, label %if.else

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp7 = icmp sgt i32 %6, -1
  br i1 %cmp7, label %if.then8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %6, 1000
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.end4.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %mul, %if.then8 ], [ -1, %if.end4.cleanup.sink.split_crit_edge ]
  %poll_nsec = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 26
  %7 = ptrtoint ptr %poll_nsec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %poll_nsec, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_throtl_sample_time_show(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_throtl_sample_time_store(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_virt_boundary_mask_show(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt_boundary_mask = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 2
  %0 = ptrtoint ptr %virt_boundary_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt_boundary_mask, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !109, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !149, !151, !153, !155, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !173, !174, !176}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @blk_queue_ktype, !1, !"blk_queue_ktype", i1 false, i1 false}
!1 = !{!"../block/blk-sysfs.c", i32 826, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/blk-sysfs.c", i32 847, i32 55}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/blk-sysfs.c", i32 847, i32 61}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/blk-sysfs.c", i32 934, i32 6}
!8 = !{ptr @queue_sysfs_ops, !9, !"queue_sysfs_ops", i1 false, i1 false}
!9 = !{!"../block/blk-sysfs.c", i32 821, i32 31}
!10 = !{ptr @queue_attr_group, !11, !"queue_attr_group", i1 false, i1 false}
!11 = !{!"../block/blk-sysfs.c", i32 692, i32 31}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/blk-sysfs.c", i32 607, i32 1}
!14 = !{ptr @queue_io_timeout_entry, !13, !"queue_io_timeout_entry", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../block/blk-sysfs.c", i32 446, i32 23}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../block/blk-sysfs.c", i32 597, i32 1}
!19 = !{ptr @queue_max_open_zones_entry, !18, !"queue_max_open_zones_entry", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../block/blk-sysfs.c", i32 32, i32 23}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../block/blk-sysfs.c", i32 598, i32 1}
!24 = !{ptr @queue_max_active_zones_entry, !23, !"queue_max_active_zones_entry", i1 false, i1 false}
!25 = !{ptr @queue_attrs, !26, !"queue_attrs", i1 false, i1 false}
!26 = !{!"../block/blk-sysfs.c", i32 626, i32 26}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../block/blk-sysfs.c", i32 569, i32 1}
!29 = !{ptr @queue_requests_entry, !28, !"queue_requests_entry", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../block/blk-sysfs.c", i32 570, i32 1}
!32 = !{ptr @queue_ra_entry, !31, !"queue_ra_entry", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../block/blk-sysfs.c", i32 572, i32 1}
!35 = !{ptr @queue_max_hw_sectors_entry, !34, !"queue_max_hw_sectors_entry", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../block/blk-sysfs.c", i32 571, i32 1}
!38 = !{ptr @queue_max_sectors_entry, !37, !"queue_max_sectors_entry", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../block/blk-sysfs.c", i32 573, i32 1}
!41 = !{ptr @queue_max_segments_entry, !40, !"queue_max_segments_entry", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../block/blk-sysfs.c", i32 584, i32 1}
!44 = !{ptr @queue_max_discard_segments_entry, !43, !"queue_max_discard_segments_entry", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../block/blk-sysfs.c", i32 574, i32 1}
!47 = !{ptr @queue_max_integrity_segments_entry, !46, !"queue_max_integrity_segments_entry", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../block/blk-sysfs.c", i32 575, i32 1}
!50 = !{ptr @queue_max_segment_size_entry, !49, !"queue_max_segment_size_entry", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../block/blk-sysfs.c", i32 576, i32 1}
!53 = !{ptr @elv_iosched_entry, !52, !"elv_iosched_entry", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../block/blk-sysfs.c", i32 617, i32 19}
!56 = !{ptr @queue_hw_sector_size_entry, !57, !"queue_hw_sector_size_entry", i1 false, i1 false}
!57 = !{!"../block/blk-sysfs.c", i32 616, i32 33}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../block/blk-sysfs.c", i32 578, i32 1}
!60 = !{ptr @queue_logical_block_size_entry, !59, !"queue_logical_block_size_entry", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../block/blk-sysfs.c", i32 579, i32 1}
!63 = !{ptr @queue_physical_block_size_entry, !62, !"queue_physical_block_size_entry", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../block/blk-sysfs.c", i32 580, i32 1}
!66 = !{ptr @queue_chunk_sectors_entry, !65, !"queue_chunk_sectors_entry", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../block/blk-sysfs.c", i32 581, i32 1}
!69 = !{ptr @queue_io_min_entry, !68, !"queue_io_min_entry", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../block/blk-sysfs.c", i32 582, i32 1}
!72 = !{ptr @queue_io_opt_entry, !71, !"queue_io_opt_entry", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../block/blk-sysfs.c", i32 585, i32 1}
!75 = !{ptr @queue_discard_granularity_entry, !74, !"queue_discard_granularity_entry", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../block/blk-sysfs.c", i32 587, i32 1}
!78 = !{ptr @queue_discard_max_entry, !77, !"queue_discard_max_entry", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../block/blk-sysfs.c", i32 183, i32 23}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../block/blk-sysfs.c", i32 586, i32 1}
!83 = !{ptr @queue_discard_max_hw_entry, !82, !"queue_discard_max_hw_entry", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../block/blk-sysfs.c", i32 588, i32 1}
!86 = !{ptr @queue_discard_zeroes_data_entry, !85, !"queue_discard_zeroes_data_entry", i1 false, i1 false}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../block/blk-sysfs.c", i32 590, i32 1}
!89 = !{ptr @queue_write_same_max_entry, !88, !"queue_write_same_max_entry", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../block/blk-sysfs.c", i32 591, i32 1}
!92 = !{ptr @queue_write_zeroes_max_entry, !91, !"queue_write_zeroes_max_entry", i1 false, i1 false}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../block/blk-sysfs.c", i32 592, i32 1}
!95 = !{ptr @queue_zone_append_max_entry, !94, !"queue_zone_append_max_entry", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../block/blk-sysfs.c", i32 593, i32 1}
!98 = !{ptr @queue_zone_write_granularity_entry, !97, !"queue_zone_write_granularity_entry", i1 false, i1 false}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../block/blk-sysfs.c", i32 621, i32 1}
!101 = !{ptr @queue_nonrot_entry, !100, !"queue_nonrot_entry", i1 false, i1 false}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../block/blk-sysfs.c", i32 595, i32 1}
!104 = !{ptr @queue_zoned_entry, !103, !"queue_zoned_entry", i1 false, i1 false}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../block/blk-sysfs.c", i32 314, i32 24}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../block/blk-sysfs.c", i32 316, i32 24}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../block/blk-sysfs.c", i32 318, i32 24}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../block/blk-sysfs.c", i32 596, i32 1}
!113 = !{ptr @queue_nr_zones_entry, !112, !"queue_nr_zones_entry", i1 false, i1 false}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../block/blk-sysfs.c", i32 600, i32 1}
!116 = !{ptr @queue_nomerges_entry, !115, !"queue_nomerges_entry", i1 false, i1 false}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../block/blk-sysfs.c", i32 601, i32 1}
!119 = !{ptr @queue_rq_affinity_entry, !118, !"queue_rq_affinity_entry", i1 false, i1 false}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../block/blk-sysfs.c", i32 622, i32 1}
!122 = !{ptr @queue_iostats_entry, !121, !"queue_iostats_entry", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../block/blk-sysfs.c", i32 624, i32 1}
!125 = !{ptr @queue_stable_writes_entry, !124, !"queue_stable_writes_entry", i1 false, i1 false}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../block/blk-sysfs.c", i32 623, i32 1}
!128 = !{ptr @queue_random_entry, !127, !"queue_random_entry", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../block/blk-sysfs.c", i32 602, i32 1}
!131 = !{ptr @queue_poll_entry, !130, !"queue_poll_entry", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../block/blk-sysfs.c", i32 439, i32 2}
!134 = !{ptr @queue_poll_store._rs, !133, !"_rs", i1 false, i1 false}
!135 = !{ptr @__func__.queue_poll_store, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @queue_poll_store._entry, !133, !"_entry", i1 false, i1 false}
!138 = !{ptr @queue_poll_store._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @queue_poll_store._rs.46, !140, !"_rs", i1 false, i1 false}
!140 = !{!"../block/blk-sysfs.c", i32 440, i32 2}
!141 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @queue_poll_store._entry.47, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @queue_poll_store._entry_ptr.49, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../block/blk-sysfs.c", i32 604, i32 1}
!146 = !{ptr @queue_wc_entry, !145, !"queue_wc_entry", i1 false, i1 false}
!147 = !{ptr @.str.51, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../block/blk-sysfs.c", i32 519, i32 24}
!149 = !{ptr @.str.52, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../block/blk-sysfs.c", i32 521, i32 23}
!151 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../block/blk-sysfs.c", i32 529, i32 21}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../block/blk-sysfs.c", i32 531, i32 26}
!155 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../block/blk-sysfs.c", i32 532, i32 19}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../block/blk-sysfs.c", i32 605, i32 1}
!159 = !{ptr @queue_fua_entry, !158, !"queue_fua_entry", i1 false, i1 false}
!160 = !{ptr @.str.57, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../block/blk-sysfs.c", i32 606, i32 1}
!162 = !{ptr @queue_dax_entry, !161, !"queue_dax_entry", i1 false, i1 false}
!163 = !{ptr @.str.58, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../block/blk-sysfs.c", i32 608, i32 1}
!165 = !{ptr @queue_wb_lat_entry, !164, !"queue_wb_lat_entry", i1 false, i1 false}
!166 = !{ptr @.str.59, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../block/blk-sysfs.c", i32 603, i32 1}
!168 = !{ptr @queue_poll_delay_entry, !167, !"queue_poll_delay_entry", i1 false, i1 false}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../block/blk-sysfs.c", i32 404, i32 23}
!171 = !{ptr @.str.61, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../block/blk-sysfs.c", i32 612, i32 1}
!173 = !{ptr @blk_throtl_sample_time_entry, !172, !"blk_throtl_sample_time_entry", i1 false, i1 false}
!174 = !{ptr @.str.62, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../block/blk-sysfs.c", i32 609, i32 1}
!176 = !{ptr @queue_virt_boundary_mask_entry, !175, !"queue_virt_boundary_mask_entry", i1 false, i1 false}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{!"branch_weights", i32 1, i32 2000}
!187 = !{!"auto-init"}
!188 = !{i64 1137800, i64 1137827, i64 1137849, i64 1137877}
!189 = !{i64 1138208, i64 1138235, i64 1138268, i64 1138289, i64 1138316, i64 1138342}
