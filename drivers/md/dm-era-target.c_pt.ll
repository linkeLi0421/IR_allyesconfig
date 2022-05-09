; ModuleID = '/llk/IR_all_yes/drivers/md/dm-era-target.c_pt.bc'
source_filename = "../drivers/md/dm-era-target.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_block_validator = type { ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.era = type { ptr, ptr, ptr, i64, i32, i32, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.bio_list, %struct.spinlock, %struct.list_head, %struct.digest, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bio_list = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.digest = type { i32, i32, i32, %struct.writeset_metadata, i32, %struct.dm_disk_bitset, ptr }
%struct.writeset_metadata = type { i32, i64 }
%struct.dm_disk_bitset = type { %struct.dm_array_info, i32, i64, i8 }
%struct.dm_array_info = type { ptr, %struct.dm_btree_value_type, %struct.dm_btree_info }
%struct.dm_btree_value_type = type { ptr, i32, ptr, ptr, ptr }
%struct.dm_btree_info = type { ptr, i32, %struct.dm_btree_value_type }
%struct.atomic_t = type { i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.era_metadata = type { ptr, ptr, ptr, ptr, i64, i32, i32, [2 x %struct.writeset], ptr, i64, i64, %struct.dm_disk_bitset, %struct.dm_btree_info, %struct.dm_array_info, i64, i8, [128 x i8] }
%struct.writeset = type { %struct.writeset_metadata, ptr }
%struct.rpc = type { %struct.list_head, ptr, ptr, ptr, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.metadata_stats = type { i64, i64, i64, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.dm_space_map = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.superblock_disk = type { i32, i32, i64, [16 x i8], i64, i32, [128 x i8], i32, i32, i32, i32, %struct.writeset_disk, i64, i64, i64 }
%struct.writeset_disk = type <{ i32, i64 }>
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }

@era_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str, ptr null, [3 x i32] [i32 1, i32 0, i32 0], ptr @era_ctr, ptr @era_dtr, ptr @era_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @era_postsuspend, ptr @era_preresume, ptr null, ptr @era_status, ptr @era_message, ptr null, ptr null, ptr null, ptr @era_iterate_devices, ptr @era_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_era__292_1745_dm_era_init6 = internal global ptr @dm_era_init, section ".initcall6.init", align 4
@__exitcall_dm_era_exit = internal global ptr @dm_era_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [44 x i8] c"dm_era.description=device-mapper era target\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [44 x i8] c"dm_era.author=Joe Thornber <ejt@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [30 x i8] c"dm_era.file=drivers/md/dm-era\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [19 x i8] c"dm_era.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"era\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid argument count\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error allocating era structure\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error opening metadata device\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error opening data device\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error parsing block size\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not set max io len\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid block size\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading metadata\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm-era\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"could not create workqueue for metadata object\00", [49 x i8] zeroinitializer }, align 32
@era_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&era->worker)\00", [32 x i8] zeroinitializer }, align 32
@era_ctr.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&era->deferred_lock\00", [44 x i8] zeroinitializer }, align 32
@era_ctr.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&era->rpc_lock\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@create_persistent_data_objects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013device-mapper: era: could not create block manager\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"create_persistent_data_objects\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/md/dm-era-target.c\00", [37 x i8] zeroinitializer }, align 32
@create_persistent_data_objects._entry_ptr = internal global ptr @create_persistent_data_objects._entry, section ".printk_index", align 4
@create_fresh_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.19, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013device-mapper: era: dm_tm_create_with_sm failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"create_fresh_metadata\00", [42 x i8] zeroinitializer }, align 32
@create_fresh_metadata._entry_ptr = internal global ptr @create_fresh_metadata._entry, section ".printk_index", align 4
@create_fresh_metadata._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.19, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013device-mapper: era: couldn't create new writeset tree\0A\00", [39 x i8] zeroinitializer }, align 32
@create_fresh_metadata._entry_ptr.24 = internal global ptr @create_fresh_metadata._entry.22, section ".printk_index", align 4
@create_fresh_metadata._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.19, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013device-mapper: era: couldn't create era array\0A\00", [47 x i8] zeroinitializer }, align 32
@create_fresh_metadata._entry_ptr.27 = internal global ptr @create_fresh_metadata._entry.25, section ".printk_index", align 4
@write_superblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.19, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013device-mapper: era: %s: save_sm_root failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write_superblock\00", [47 x i8] zeroinitializer }, align 32
@write_superblock._entry_ptr = internal global ptr @write_superblock._entry, section ".printk_index", align 4
@sb_validator = internal global { %struct.dm_block_validator, [20 x i8] } { %struct.dm_block_validator { ptr @.str.30, ptr @sb_prepare_for_write, ptr @sb_check }, [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"superblock\00", [21 x i8] zeroinitializer }, align 32
@sb_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.19, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: era: sb_check failed: blocknr %llu: wanted %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sb_check\00", [23 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr = internal global ptr @sb_check._entry, section ".printk_index", align 4
@sb_check._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.19, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: era: sb_check failed: magic %llu: wanted %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr.35 = internal global ptr @sb_check._entry.33, section ".printk_index", align 4
@sb_check._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.19, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: era: sb_check failed: csum %u: wanted %u\0A\00", [37 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr.38 = internal global ptr @sb_check._entry.36, section ".printk_index", align 4
@check_metadata_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.19, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013device-mapper: era: Era metadata version %u found, but only versions between %u and %u supported.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"check_metadata_version\00", [41 x i8] zeroinitializer }, align 32
@check_metadata_version._entry_ptr = internal global ptr @check_metadata_version._entry, section ".printk_index", align 4
@open_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.19, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013device-mapper: era: couldn't read_lock superblock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open_metadata\00", [18 x i8] zeroinitializer }, align 32
@open_metadata._entry_ptr = internal global ptr @open_metadata._entry, section ".printk_index", align 4
@open_metadata._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.19, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013device-mapper: era: changing the data block size (from %u to %llu) is not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@open_metadata._entry_ptr.45 = internal global ptr @open_metadata._entry.43, section ".printk_index", align 4
@open_metadata._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.19, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013device-mapper: era: dm_tm_open_with_sm failed\0A\00", [47 x i8] zeroinitializer }, align 32
@open_metadata._entry_ptr.48 = internal global ptr @open_metadata._entry.46, section ".printk_index", align 4
@metadata_digest_lookup_writeset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.19, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013device-mapper: era: %s: dm_btree_lookup failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"metadata_digest_lookup_writeset\00", [32 x i8] zeroinitializer }, align 32
@metadata_digest_lookup_writeset._entry_ptr = internal global ptr @metadata_digest_lookup_writeset._entry, section ".printk_index", align 4
@metadata_digest_transcribe_writeset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.19, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: era: %s: writeset_marked_on_disk failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"metadata_digest_transcribe_writeset\00", [60 x i8] zeroinitializer }, align 32
@metadata_digest_transcribe_writeset._entry_ptr = internal global ptr @metadata_digest_transcribe_writeset._entry, section ".printk_index", align 4
@metadata_digest_transcribe_writeset._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.19, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013device-mapper: era: %s: dm_array_set_value failed\0A\00", [43 x i8] zeroinitializer }, align 32
@metadata_digest_transcribe_writeset._entry_ptr.55 = internal global ptr @metadata_digest_transcribe_writeset._entry.53, section ".printk_index", align 4
@writeset_marked_on_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.19, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013device-mapper: era: %s: dm_bitset_test_bit failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"writeset_marked_on_disk\00", [40 x i8] zeroinitializer }, align 32
@writeset_marked_on_disk._entry_ptr = internal global ptr @writeset_marked_on_disk._entry, section ".printk_index", align 4
@metadata_digest_remove_writeset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.19, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013device-mapper: era: %s: dm_btree_remove failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"metadata_digest_remove_writeset\00", [32 x i8] zeroinitializer }, align 32
@metadata_digest_remove_writeset._entry_ptr = internal global ptr @metadata_digest_remove_writeset._entry, section ".printk_index", align 4
@process_old_eras._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.19, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: era: %s: digest step failed, stopping digestion\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"process_old_eras\00", [47 x i8] zeroinitializer }, align 32
@process_old_eras._entry_ptr = internal global ptr @process_old_eras._entry, section ".printk_index", align 4
@metadata_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.19, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013device-mapper: era: %s: bitset flush failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"metadata_commit\00", [16 x i8] zeroinitializer }, align 32
@metadata_commit._entry_ptr = internal global ptr @metadata_commit._entry, section ".printk_index", align 4
@metadata_commit._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.19, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013device-mapper: era: %s: pre commit failed\0A\00", [51 x i8] zeroinitializer }, align 32
@metadata_commit._entry_ptr.66 = internal global ptr @metadata_commit._entry.64, section ".printk_index", align 4
@metadata_commit._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.63, ptr @.str.19, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@metadata_commit._entry_ptr.68 = internal global ptr @metadata_commit._entry.67, section ".printk_index", align 4
@metadata_commit._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.63, ptr @.str.19, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013device-mapper: era: %s: superblock lock failed\0A\00", [46 x i8] zeroinitializer }, align 32
@metadata_commit._entry_ptr.71 = internal global ptr @metadata_commit._entry.69, section ".printk_index", align 4
@metadata_current_marked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@era_postsuspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.19, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013device-mapper: era: %s: couldn't archive current era\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"era_postsuspend\00", [16 x i8] zeroinitializer }, align 32
@era_postsuspend._entry_ptr = internal global ptr @era_postsuspend._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@metadata_era_archive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.19, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013device-mapper: era: %s: dm_bitset_flush failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"metadata_era_archive\00", [43 x i8] zeroinitializer }, align 32
@metadata_era_archive._entry_ptr = internal global ptr @metadata_era_archive._entry, section ".printk_index", align 4
@metadata_era_archive._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.19, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013device-mapper: era: %s: couldn't insert writeset into btree\0A\00", [33 x i8] zeroinitializer }, align 32
@metadata_era_archive._entry_ptr.83 = internal global ptr @metadata_era_archive._entry.81, section ".printk_index", align 4
@era_preresume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.19, i32 1584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013device-mapper: era: %s: metadata_resize failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"era_preresume\00", [18 x i8] zeroinitializer }, align 32
@era_preresume._entry_ptr = internal global ptr @era_preresume._entry, section ".printk_index", align 4
@era_preresume._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.19, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013device-mapper: era: %s: metadata_commit failed\0A\00", [46 x i8] zeroinitializer }, align 32
@era_preresume._entry_ptr.88 = internal global ptr @era_preresume._entry.86, section ".printk_index", align 4
@era_preresume._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.19, i32 1601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013device-mapper: era: %s: metadata_era_rollover failed\0A\00", [40 x i8] zeroinitializer }, align 32
@era_preresume._entry_ptr.91 = internal global ptr @era_preresume._entry.89, section ".printk_index", align 4
@metadata_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.19, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: era: Invalid number of origin blocks %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"metadata_resize\00", [16 x i8] zeroinitializer }, align 32
@metadata_resize._entry_ptr = internal global ptr @metadata_resize._entry, section ".printk_index", align 4
@metadata_resize._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.19, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: era: %s: writeset_alloc failed for writeset 0\0A\00", [32 x i8] zeroinitializer }, align 32
@metadata_resize._entry_ptr.96 = internal global ptr @metadata_resize._entry.94, section ".printk_index", align 4
@metadata_resize._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.19, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: era: %s: writeset_alloc failed for writeset 1\0A\00", [32 x i8] zeroinitializer }, align 32
@metadata_resize._entry_ptr.99 = internal global ptr @metadata_resize._entry.97, section ".printk_index", align 4
@metadata_resize._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.93, ptr @.str.19, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013device-mapper: era: %s: dm_array_resize failed\0A\00", [46 x i8] zeroinitializer }, align 32
@metadata_resize._entry_ptr.102 = internal global ptr @metadata_resize._entry.100, section ".printk_index", align 4
@writeset_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.19, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: era: %s: couldn't allocate in memory bitset\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"writeset_alloc\00", [17 x i8] zeroinitializer }, align 32
@writeset_alloc._entry_ptr = internal global ptr @writeset_alloc._entry, section ".printk_index", align 4
@metadata_era_rollover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.19, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: era: %s: metadata_archive_era failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"metadata_era_rollover\00", [42 x i8] zeroinitializer }, align 32
@metadata_era_rollover._entry_ptr = internal global ptr @metadata_era_rollover._entry, section ".printk_index", align 4
@metadata_era_rollover._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.19, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013device-mapper: era: %s: new era failed\0A\00", [54 x i8] zeroinitializer }, align 32
@metadata_era_rollover._entry_ptr.109 = internal global ptr @metadata_era_rollover._entry.107, section ".printk_index", align 4
@metadata_new_era._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.19, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013device-mapper: era: %s: writeset_init failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"metadata_new_era\00", [47 x i8] zeroinitializer }, align 32
@metadata_new_era._entry_ptr = internal global ptr @metadata_new_era._entry, section ".printk_index", align 4
@writeset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.19, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: era: %s: setup_on_disk_bitset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"writeset_init\00", [18 x i8] zeroinitializer }, align 32
@writeset_init._entry_ptr = internal global ptr @writeset_init._entry, section ".printk_index", align 4
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%u %llu/%llu %u\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %llu\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" -\00", [29 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u:%u\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %u\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Error\00", [26 x i8] zeroinitializer }, align 32
@metadata_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.19, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013device-mapper: era: dm_sm_get_nr_free returned %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"metadata_get_stats\00", [45 x i8] zeroinitializer }, align 32
@metadata_get_stats._entry_ptr = internal global ptr @metadata_get_stats._entry, section ".printk_index", align 4
@metadata_get_stats._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.19, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: era: dm_pool_get_metadata_dev_size returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@metadata_get_stats._entry_ptr.125 = internal global ptr @metadata_get_stats._entry.123, section ".printk_index", align 4
@era_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.19, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: era: incorrect number of message arguments\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"era_message\00", [20 x i8] zeroinitializer }, align 32
@era_message._entry_ptr = internal global ptr @era_message._entry, section ".printk_index", align 4
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"checkpoint\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"take_metadata_snap\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drop_metadata_snap\00", [45 x i8] zeroinitializer }, align 32
@era_message._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.127, ptr @.str.19, i32 1678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013device-mapper: era: unsupported message '%s'\0A\00", [48 x i8] zeroinitializer }, align 32
@era_message._entry_ptr.133 = internal global ptr @era_message._entry.131, section ".printk_index", align 4
@metadata_take_snap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.19, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: era: %s: metadata snapshot already exists\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"metadata_take_snap\00", [45 x i8] zeroinitializer }, align 32
@metadata_take_snap._entry_ptr = internal global ptr @metadata_take_snap._entry, section ".printk_index", align 4
@metadata_take_snap._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.19, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013device-mapper: era: %s: era rollover failed\0A\00", [49 x i8] zeroinitializer }, align 32
@metadata_take_snap._entry_ptr.138 = internal global ptr @metadata_take_snap._entry.136, section ".printk_index", align 4
@metadata_take_snap._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.135, ptr @.str.19, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@metadata_take_snap._entry_ptr.140 = internal global ptr @metadata_take_snap._entry.139, section ".printk_index", align 4
@metadata_take_snap._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.135, ptr @.str.19, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013device-mapper: era: %s: couldn't increment superblock\0A\00", [39 x i8] zeroinitializer }, align 32
@metadata_take_snap._entry_ptr.143 = internal global ptr @metadata_take_snap._entry.141, section ".printk_index", align 4
@metadata_take_snap._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.135, ptr @.str.19, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013device-mapper: era: %s: couldn't shadow superblock\0A\00", [42 x i8] zeroinitializer }, align 32
@metadata_take_snap._entry_ptr.146 = internal global ptr @metadata_take_snap._entry.144, section ".printk_index", align 4
@metadata_take_snap._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.135, ptr @.str.19, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: era: %s: couldn't inc writeset tree root\0A\00", [37 x i8] zeroinitializer }, align 32
@metadata_take_snap._entry_ptr.149 = internal global ptr @metadata_take_snap._entry.147, section ".printk_index", align 4
@metadata_take_snap._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.135, ptr @.str.19, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013device-mapper: era: %s: couldn't inc era tree root\0A\00", [42 x i8] zeroinitializer }, align 32
@metadata_take_snap._entry_ptr.152 = internal global ptr @metadata_take_snap._entry.150, section ".printk_index", align 4
@metadata_drop_snap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.19, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013device-mapper: era: %s: no snap to drop\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"metadata_drop_snap\00", [45 x i8] zeroinitializer }, align 32
@metadata_drop_snap._entry_ptr = internal global ptr @metadata_drop_snap._entry, section ".printk_index", align 4
@metadata_drop_snap._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.19, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013device-mapper: era: %s: couldn't read lock superblock clone\0A\00", [33 x i8] zeroinitializer }, align 32
@metadata_drop_snap._entry_ptr.157 = internal global ptr @metadata_drop_snap._entry.155, section ".printk_index", align 4
@metadata_drop_snap._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.154, ptr @.str.19, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: era: %s: error deleting writeset tree clone\0A\00", [34 x i8] zeroinitializer }, align 32
@metadata_drop_snap._entry_ptr.160 = internal global ptr @metadata_drop_snap._entry.158, section ".printk_index", align 4
@metadata_drop_snap._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.154, ptr @.str.19, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: era: %s: error deleting era array clone\0A\00", [38 x i8] zeroinitializer }, align 32
@metadata_drop_snap._entry_ptr.163 = internal global ptr @metadata_drop_snap._entry.161, section ".printk_index", align 4
@dm_era_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.19, i32 1733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: era: era target registration failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dm_era_init\00", [20 x i8] zeroinitializer }, align 32
@dm_era_init._entry_ptr = internal global ptr @dm_era_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@___asan_gen_.167 = private unnamed_addr constant [11 x i8] c"era_target\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1712, i32 27 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1713, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1450, i32 15 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1456, i32 15 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1464, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1471, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1476, i32 22 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1478, i32 15 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1485, i32 15 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1491, i32 15 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1502, i32 15 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1508, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1510, i32 15 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1514, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1516, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1519, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 634, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 442, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 450, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 456, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 524, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"sb_validator\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 249, i32 34 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 250, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 224, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 231, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 241, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 208, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 567, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 575, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 586, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 756, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 710, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 721, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 121, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 690, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1235, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 977, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 984, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 990, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 996, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 961, i32 7 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 695, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 723, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1568, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 87, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 887, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 898, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1584, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1590, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1601, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 841, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 851, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 857, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 868, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 77, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 939, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 947, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 922, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 97, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1629, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1636, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1638, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1642, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1643, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1645, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1656, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1137, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1143, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1665, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1669, i32 27 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1672, i32 27 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1675, i32 27 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1678, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1023, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1029, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1035, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1041, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1048, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1056, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1063, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1084, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1090, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1104, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1111, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.665 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.666 = private constant [30 x i8] c"../drivers/md/dm-era-target.c\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 1733, i32 3 }
@llvm.compiler.used = appending global [227 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_dm_era_exit, ptr @__initcall__kmod_dm_era__292_1745_dm_era_init6, ptr @check_metadata_version._entry, ptr @check_metadata_version._entry_ptr, ptr @create_fresh_metadata._entry, ptr @create_fresh_metadata._entry.22, ptr @create_fresh_metadata._entry.25, ptr @create_fresh_metadata._entry_ptr, ptr @create_fresh_metadata._entry_ptr.24, ptr @create_fresh_metadata._entry_ptr.27, ptr @create_persistent_data_objects._entry, ptr @create_persistent_data_objects._entry_ptr, ptr @dm_era_exit, ptr @dm_era_init._entry, ptr @dm_era_init._entry_ptr, ptr @era_message._entry, ptr @era_message._entry.131, ptr @era_message._entry_ptr, ptr @era_message._entry_ptr.133, ptr @era_postsuspend._entry, ptr @era_postsuspend._entry_ptr, ptr @era_preresume._entry, ptr @era_preresume._entry.86, ptr @era_preresume._entry.89, ptr @era_preresume._entry_ptr, ptr @era_preresume._entry_ptr.88, ptr @era_preresume._entry_ptr.91, ptr @metadata_commit._entry, ptr @metadata_commit._entry.64, ptr @metadata_commit._entry.67, ptr @metadata_commit._entry.69, ptr @metadata_commit._entry_ptr, ptr @metadata_commit._entry_ptr.66, ptr @metadata_commit._entry_ptr.68, ptr @metadata_commit._entry_ptr.71, ptr @metadata_digest_lookup_writeset._entry, ptr @metadata_digest_lookup_writeset._entry_ptr, ptr @metadata_digest_remove_writeset._entry, ptr @metadata_digest_remove_writeset._entry_ptr, ptr @metadata_digest_transcribe_writeset._entry, ptr @metadata_digest_transcribe_writeset._entry.53, ptr @metadata_digest_transcribe_writeset._entry_ptr, ptr @metadata_digest_transcribe_writeset._entry_ptr.55, ptr @metadata_drop_snap._entry, ptr @metadata_drop_snap._entry.155, ptr @metadata_drop_snap._entry.158, ptr @metadata_drop_snap._entry.161, ptr @metadata_drop_snap._entry_ptr, ptr @metadata_drop_snap._entry_ptr.157, ptr @metadata_drop_snap._entry_ptr.160, ptr @metadata_drop_snap._entry_ptr.163, ptr @metadata_era_archive._entry, ptr @metadata_era_archive._entry.81, ptr @metadata_era_archive._entry_ptr, ptr @metadata_era_archive._entry_ptr.83, ptr @metadata_era_rollover._entry, ptr @metadata_era_rollover._entry.107, ptr @metadata_era_rollover._entry_ptr, ptr @metadata_era_rollover._entry_ptr.109, ptr @metadata_get_stats._entry, ptr @metadata_get_stats._entry.123, ptr @metadata_get_stats._entry_ptr, ptr @metadata_get_stats._entry_ptr.125, ptr @metadata_new_era._entry, ptr @metadata_new_era._entry_ptr, ptr @metadata_resize._entry, ptr @metadata_resize._entry.100, ptr @metadata_resize._entry.94, ptr @metadata_resize._entry.97, ptr @metadata_resize._entry_ptr, ptr @metadata_resize._entry_ptr.102, ptr @metadata_resize._entry_ptr.96, ptr @metadata_resize._entry_ptr.99, ptr @metadata_take_snap._entry, ptr @metadata_take_snap._entry.136, ptr @metadata_take_snap._entry.139, ptr @metadata_take_snap._entry.141, ptr @metadata_take_snap._entry.144, ptr @metadata_take_snap._entry.147, ptr @metadata_take_snap._entry.150, ptr @metadata_take_snap._entry_ptr, ptr @metadata_take_snap._entry_ptr.138, ptr @metadata_take_snap._entry_ptr.140, ptr @metadata_take_snap._entry_ptr.143, ptr @metadata_take_snap._entry_ptr.146, ptr @metadata_take_snap._entry_ptr.149, ptr @metadata_take_snap._entry_ptr.152, ptr @open_metadata._entry, ptr @open_metadata._entry.43, ptr @open_metadata._entry.46, ptr @open_metadata._entry_ptr, ptr @open_metadata._entry_ptr.45, ptr @open_metadata._entry_ptr.48, ptr @process_old_eras._entry, ptr @process_old_eras._entry_ptr, ptr @sb_check._entry, ptr @sb_check._entry.33, ptr @sb_check._entry.36, ptr @sb_check._entry_ptr, ptr @sb_check._entry_ptr.35, ptr @sb_check._entry_ptr.38, ptr @write_superblock._entry, ptr @write_superblock._entry_ptr, ptr @writeset_alloc._entry, ptr @writeset_alloc._entry_ptr, ptr @writeset_init._entry, ptr @writeset_init._entry_ptr, ptr @writeset_marked_on_disk._entry, ptr @writeset_marked_on_disk._entry_ptr, ptr @era_target, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @era_ctr.__key, ptr @.str.12, ptr @era_ctr.__key.13, ptr @.str.14, ptr @era_ctr.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @sb_validator, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @init_completion.__key, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.164, ptr @.str.165], section "llvm.metadata"
@0 = internal global [167 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @era_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @era_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @era_ctr.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @era_ctr.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_persistent_data_objects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_fresh_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_fresh_metadata._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_fresh_metadata._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_superblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_validator to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_metadata_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_metadata._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_metadata._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_digest_lookup_writeset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_digest_transcribe_writeset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_digest_transcribe_writeset._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writeset_marked_on_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_digest_remove_writeset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_old_eras._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_commit._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_commit._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_commit._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @era_postsuspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_era_archive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_era_archive._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @era_preresume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @era_preresume._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @era_preresume._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_resize._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_resize._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_resize._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writeset_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_era_rollover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_era_rollover._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_new_era._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writeset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_get_stats._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @era_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @era_message._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_take_snap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_take_snap._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_take_snap._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_take_snap._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_take_snap._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_take_snap._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_take_snap._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_drop_snap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_drop_snap._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_drop_snap._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_drop_snap._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_era_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_era_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dm_unregister_target(ptr noundef nonnull @era_target) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_era_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @era_target) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @era_ctr(ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv) #2 align 64 {
entry:
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #14
  %0 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %dummy, align 1, !annotation !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 320) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %error2 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %3 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %error2, align 8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ti, ptr %call7.i.i, align 8
  %5 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %argv, align 4
  %metadata_dev = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 1
  %call5 = tail call i32 @dm_get_device(ptr noundef %ti, ptr noundef %6, i32 noundef 3, ptr noundef %metadata_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %error8 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %7 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.3, ptr %error8, align 8
  tail call fastcc void @era_destroy(ptr noundef nonnull %call7.i.i)
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %arrayidx10 = getelementptr ptr, ptr %argv, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx10, align 4
  %origin_dev = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 2
  %call11 = tail call i32 @dm_get_device(ptr noundef %ti, ptr noundef %9, i32 noundef 3, ptr noundef %origin_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %error14 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %10 = ptrtoint ptr %error14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.4, ptr %error14, align 8
  tail call fastcc void @era_destroy(ptr noundef nonnull %call7.i.i)
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %arrayidx16 = getelementptr ptr, ptr %argv, i32 2
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx16, align 4
  %sectors_per_block = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 4
  %call17 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef %sectors_per_block, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 1
  br i1 %cmp18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %error20 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %13 = ptrtoint ptr %error20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.6, ptr %error20, align 8
  call fastcc void @era_destroy(ptr noundef nonnull %call7.i.i)
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sectors_per_block, align 8
  %conv = zext i32 %15 to i64
  %call23 = call i32 @dm_set_target_max_io_len(ptr noundef %ti, i64 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %error26 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %16 = ptrtoint ptr %error26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.7, ptr %error26, align 8
  call fastcc void @era_destroy(ptr noundef nonnull %call7.i.i)
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sectors_per_block, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp ne i32 %18, 0
  %19 = and i32 %18, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.i = icmp eq i32 %19, 0
  %20 = and i1 %cmp.not.i, %cmp1.i
  br i1 %20, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %error32 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %21 = ptrtoint ptr %error32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.8, ptr %error32, align 8
  call fastcc void @era_destroy(ptr noundef nonnull %call7.i.i)
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %22 = call i32 @llvm.ctpop.i32(i32 %18), !range !330
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %tobool36.not = icmp ult i32 %22, 2
  %23 = call i32 @llvm.cttz.i32(i32 %18, i1 true) #14, !range !330
  %spec.select = select i1 %tobool36.not, i32 %23, i32 -1
  %24 = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select, ptr %24, align 4
  %26 = ptrtoint ptr %metadata_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %metadata_dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sectors_per_block, align 8
  %conv44 = zext i32 %31 to i64
  %call45 = call fastcc ptr @metadata_open(ptr noundef %29, i64 noundef %conv44)
  %cmp.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %error48 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %32 = ptrtoint ptr %error48 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.9, ptr %error48, align 8
  call fastcc void @era_destroy(ptr noundef nonnull %call7.i.i)
  %33 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end33
  %md51 = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %md51 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call45, ptr %md51, align 8
  %call52 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.10, i32 noundef 655370, i32 noundef 1) #14
  %wq = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call52, ptr %wq, align 4
  %tobool54.not = icmp eq ptr %call52, null
  br i1 %tobool54.not, label %if.then55, label %do.body

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %error56 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %36 = ptrtoint ptr %error56 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.11, ptr %error56, align 8
  call fastcc void @era_destroy(ptr noundef nonnull %call7.i.i)
  br label %cleanup

do.body:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %worker = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 8
  call void @__init_work(ptr noundef %worker, i32 noundef 0) #14
  %37 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %worker, align 8
  %lockdep_map = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 8, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @era_ctr.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry61 = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %entry61 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry61, ptr %entry61, align 4
  %prev.i = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry61, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @do_work, ptr %func, align 4
  %deferred_lock = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %deferred_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @era_ctr.__key.13, i16 noundef signext 3) #14
  %deferred_bios = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 10
  %tail.i = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %tail.i, align 4
  %42 = ptrtoint ptr %deferred_bios to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %deferred_bios, align 8
  %rpc_lock = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %rpc_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @era_ctr.__key.15, i16 noundef signext 3) #14
  %rpc_calls = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 12
  %43 = ptrtoint ptr %rpc_calls to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %rpc_calls, ptr %rpc_calls, align 4
  %prev.i130 = getelementptr inbounds %struct.era, ptr %call7.i.i, i32 0, i32 12, i32 1
  %44 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %rpc_calls, ptr %prev.i130, align 8
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %45 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %private, align 4
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %46 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %num_flush_bios, align 4
  %flush_supported = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 13
  %47 = ptrtoint ptr %flush_supported to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load = load i8, ptr %flush_supported, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %flush_supported, align 4
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %48 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %num_discard_bios, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then55, %if.then47, %if.then31, %if.then25, %if.then19, %if.then13, %if.then7, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then7 ], [ -22, %if.then13 ], [ -22, %if.then19 ], [ -22, %if.then25 ], [ %33, %if.then47 ], [ 0, %do.body ], [ -12, %if.then55 ], [ -22, %if.then31 ], [ -12, %if.then1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @era_dtr(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call fastcc void @era_destroy(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @era_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter.i, align 8
  %sectors_per_block_shift.i.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %sectors_per_block_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectors_per_block_shift.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.i = icmp sgt i32 %5, -1
  br i1 %cmp.i.i, label %if.else182.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %sectors_per_block.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %sectors_per_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectors_per_block.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %3)
  %cmp166.i = icmp ult i64 %3, 4294967296
  br i1 %cmp166.i, label %if.then170.i, label %if.else176.i, !prof !331

if.then170.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv171.i = trunc i64 %3 to i32
  %div174.i = udiv i32 %conv171.i, %7
  br label %get_block.exit

if.else176.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %3) #19, !srcloc !332
  %asmresult1.i.i = extractvalue { i64, i64 } %8, 1
  %extract.t25 = trunc i64 %asmresult1.i.i to i32
  br label %get_block.exit

if.else182.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sh_prom183.i = zext i32 %5 to i64
  %shr184.i = lshr i64 %3, %sh_prom183.i
  %extract.t = trunc i64 %shr184.i to i32
  br label %get_block.exit

get_block.exit:                                   ; preds = %if.else182.i, %if.else176.i, %if.then170.i
  %block_nr.0.i.off0 = phi i32 [ %extract.t, %if.else182.i ], [ %div174.i, %if.then170.i ], [ %extract.t25, %if.else176.i ]
  %origin_dev.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %origin_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %origin_dev.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %13 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %14, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %15 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i16 = icmp eq ptr %16, %12
  br i1 %cmp.not.i.i16, label %get_block.exit.remap_to_origin.exit_crit_edge, label %if.then.i.i

get_block.exit.remap_to_origin.exit_crit_edge:    ; preds = %get_block.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %remap_to_origin.exit

if.then.i.i:                                      ; preds = %get_block.exit
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i.i = and i16 %14, -2177
  %17 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %remap_to_origin.exit

remap_to_origin.exit:                             ; preds = %if.then.i.i, %get_block.exit.remap_to_origin.exit_crit_edge
  %18 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #14
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %19 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_opf, align 8
  %21 = and i32 %20, 262145
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %.not = icmp eq i32 %21, 1
  br i1 %.not, label %land.lhs.true6, label %remap_to_origin.exit.cleanup_crit_edge

remap_to_origin.exit.cleanup_crit_edge:           ; preds = %remap_to_origin.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true6:                                   ; preds = %remap_to_origin.exit
  %md = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %md, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !319) #14
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %land.lhs.true6.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true6.rcu_read_lock.exit.i_crit_edge:    ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true6
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i17

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i17:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 696, ptr noundef nonnull @.str.74) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i17, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true6.rcu_read_lock.exit.i_crit_edge
  %current_writeset.i = getelementptr inbounds %struct.era_metadata, ptr %23, i32 0, i32 8
  %28 = ptrtoint ptr %current_writeset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %current_writeset.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i18 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @metadata_current_marked.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i19

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

if.then.i19:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @metadata_current_marked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 961, ptr noundef nonnull @.str.72) #14
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i19, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %bits.i.i = getelementptr inbounds %struct.writeset, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bits.i.i, align 8
  %div3.i.i.i = lshr i32 %block_nr.0.i.off0, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %31, i32 %div3.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %call.i12.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i12.i, label %do.end7.i.metadata_current_marked.exit_crit_edge, label %land.lhs.true.i15.i

do.end7.i.metadata_current_marked.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %metadata_current_marked.exit

land.lhs.true.i15.i:                              ; preds = %do.end7.i
  %call1.i13.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13.i)
  %tobool.not.i14.i = icmp eq i32 %call1.i13.i, 0
  br i1 %tobool.not.i14.i, label %land.lhs.true.i15.i.metadata_current_marked.exit_crit_edge, label %land.lhs.true2.i17.i

land.lhs.true.i15.i.metadata_current_marked.exit_crit_edge: ; preds = %land.lhs.true.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %metadata_current_marked.exit

land.lhs.true2.i17.i:                             ; preds = %land.lhs.true.i15.i
  %.b4.i16.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16.i, label %land.lhs.true2.i17.i.metadata_current_marked.exit_crit_edge, label %if.then.i18.i

land.lhs.true2.i17.i.metadata_current_marked.exit_crit_edge: ; preds = %land.lhs.true2.i17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %metadata_current_marked.exit

if.then.i18.i:                                    ; preds = %land.lhs.true2.i17.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 724, ptr noundef nonnull @.str.75) #14
  br label %metadata_current_marked.exit

metadata_current_marked.exit:                     ; preds = %if.then.i18.i, %land.lhs.true2.i17.i.metadata_current_marked.exit_crit_edge, %land.lhs.true.i15.i.metadata_current_marked.exit_crit_edge, %do.end7.i.metadata_current_marked.exit_crit_edge
  %and.i.i.i = and i32 %block_nr.0.i.off0, 31
  %34 = shl nuw i32 1, %and.i.i.i
  %35 = and i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.i.not = icmp eq i32 %35, 0
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !334
  %36 = tail call i32 @llvm.read_register.i32(metadata !319) #14
  %and.i.i.i.i.i19.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i19.i to ptr
  %preempt_count.i.i.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i20.i, align 4
  %sub.i.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i20.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br i1 %tobool.i.i.not, label %if.then, label %metadata_current_marked.exit.cleanup_crit_edge

metadata_current_marked.exit.cleanup_crit_edge:   ; preds = %metadata_current_marked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %metadata_current_marked.exit
  %deferred_lock.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %deferred_lock.i) #14
  %40 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %bio, align 8
  %tail.i.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i20 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i20, label %if.else.i.i22, label %if.then.i.i21

if.then.i.i21:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %bio, ptr %42, align 8
  br label %bio_list_add.exit.i

if.else.i.i22:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %deferred_bios.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 10
  %44 = ptrtoint ptr %deferred_bios.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %bio, ptr %deferred_bios.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.else.i.i22, %if.then.i.i21
  %45 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bio, ptr %tail.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %deferred_lock.i) #14
  %suspended.i.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %suspended.i.i, i32 noundef 4) #14
  %46 = ptrtoint ptr %suspended.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i5.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i5.i, label %if.then.i6.i, label %bio_list_add.exit.i.cleanup_crit_edge

bio_list_add.exit.i.cleanup_crit_edge:            ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i6.i:                                     ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %wq.i.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wq.i.i, align 4
  %worker.i.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %worker.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i6.i, %bio_list_add.exit.i.cleanup_crit_edge, %metadata_current_marked.exit.cleanup_crit_edge, %remap_to_origin.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %metadata_current_marked.exit.cleanup_crit_edge ], [ 1, %remap_to_origin.exit.cleanup_crit_edge ], [ 0, %bio_list_add.exit.i.cleanup_crit_edge ], [ 0, %if.then.i6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @era_postsuspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  %rpc.i = alloca %struct.rpc, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rpc.i) #14
  %2 = call ptr @memset(ptr %rpc.i, i32 255, i32 80)
  %fn0.i = getelementptr inbounds %struct.rpc, ptr %rpc.i, i32 0, i32 1
  %3 = ptrtoint ptr %fn0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @metadata_era_archive, ptr %fn0.i, align 4
  %fn1.i = getelementptr inbounds %struct.rpc, ptr %rpc.i, i32 0, i32 2
  %4 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fn1.i, align 4
  %call.i = call fastcc i32 @perform_rpc(ptr noundef %1, ptr noundef nonnull %rpc.i) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rpc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %suspended.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %suspended.i, i32 noundef 4) #14
  %5 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %suspended.i, align 4
  %wq.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq.i, align 4
  call void @flush_workqueue(ptr noundef %7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @era_preresume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  %rpc.i = alloca %struct.rpc, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %len.i = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len.i, align 8
  %sectors_per_block.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %sectors_per_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectors_per_block.i, align 8
  %conv.i = zext i32 %7 to i64
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add i64 %add.i, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp169.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !331

if.then173.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv174.i = trunc i64 %sub.i to i32
  %div177.i = udiv i32 %conv174.i, %7
  %conv178.i = zext i32 %div177.i to i64
  br label %calc_nr_blocks.exit

if.else179.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %sub.i) #19, !srcloc !332
  %asmresult1.i.i = extractvalue { i64, i64 } %8, 1
  br label %calc_nr_blocks.exit

calc_nr_blocks.exit:                              ; preds = %if.else179.i, %if.then173.i
  %_r.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %nr_blocks = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %nr_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %_r.0.i)
  %cmp.not = icmp eq i64 %10, %_r.0.i
  br i1 %cmp.not, label %calc_nr_blocks.exit.if.end15_crit_edge, label %if.then

calc_nr_blocks.exit.if.end15_crit_edge:           ; preds = %calc_nr_blocks.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then:                                          ; preds = %calc_nr_blocks.exit
  %md = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %md, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %_r.0.i)
  %cmp.i.i = icmp ult i64 %_r.0.i, 2147483648
  br i1 %cmp.i.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i64 noundef %_r.0.i) #17
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %bits.i.i = getelementptr inbounds %struct.era_metadata, ptr %12, i32 0, i32 7, i32 0, i32 1
  %13 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bits.i.i, align 8
  tail call void @vfree(ptr noundef %14) #14
  %15 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %bits.i.i, align 8
  %bits.i66.i = getelementptr %struct.era_metadata, ptr %12, i32 0, i32 7, i32 1, i32 1
  %16 = ptrtoint ptr %bits.i66.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bits.i66.i, align 8
  tail call void @vfree(ptr noundef %17) #14
  %18 = ptrtoint ptr %bits.i66.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %bits.i66.i, align 8
  %conv.i.i = trunc i64 %_r.0.i to i32
  %sub.i.i.i = add nuw i32 %conv.i.i, 31
  %19 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %19, 536870908
  %call1.i.i = tail call noalias ptr @vzalloc(i32 noundef %mul.i.i.i) #20
  %20 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1.i.i, ptr %bits.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %do.end10.i, label %if.end13.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104) #17
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93) #17
  br label %do.end

if.end13.i:                                       ; preds = %if.end.i
  %call1.i71.i = tail call noalias ptr @vzalloc(i32 noundef %mul.i.i.i) #20
  %21 = ptrtoint ptr %bits.i66.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1.i71.i, ptr %bits.i66.i, align 8
  %tobool.not.i73.i = icmp eq ptr %call1.i71.i, null
  br i1 %tobool.not.i73.i, label %do.end21.i, label %if.end26.i

do.end21.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104) #17
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.93) #17
  %22 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bits.i.i, align 8
  tail call void @vfree(ptr noundef %23) #14
  %24 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %bits.i.i, align 8
  br label %do.end

if.end26.i:                                       ; preds = %if.end13.i
  %25 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %value.i, align 4
  %era_array_info.i = getelementptr inbounds %struct.era_metadata, ptr %12, i32 0, i32 13
  %era_array_root.i = getelementptr inbounds %struct.era_metadata, ptr %12, i32 0, i32 10
  %26 = ptrtoint ptr %era_array_root.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %era_array_root.i, align 8
  %nr_blocks.i = getelementptr inbounds %struct.era_metadata, ptr %12, i32 0, i32 5
  %28 = ptrtoint ptr %nr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_blocks.i, align 8
  %call28.i = call i32 @dm_array_resize(ptr noundef %era_array_info.i, i64 noundef %27, i32 noundef %29, i32 noundef %conv.i.i, ptr noundef nonnull %value.i, ptr noundef %era_array_root.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end, label %do.end33.i

do.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.93) #17
  %30 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bits.i.i, align 8
  call void @vfree(ptr noundef %31) #14
  %32 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %bits.i.i, align 8
  %33 = ptrtoint ptr %bits.i66.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bits.i66.i, align 8
  call void @vfree(ptr noundef %34) #14
  %35 = ptrtoint ptr %bits.i66.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %bits.i66.i, align 8
  br label %do.end

do.end:                                           ; preds = %do.end33.i, %do.end21.i, %do.end10.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ %call28.i, %do.end33.i ], [ -12, %do.end21.i ], [ -12, %do.end10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end26.i
  %36 = ptrtoint ptr %nr_blocks.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.i.i, ptr %nr_blocks.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #14
  %37 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %md, align 8
  %call5 = call fastcc i32 @metadata_commit(ptr noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %_r.0.i, ptr %nr_blocks, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %calc_nr_blocks.exit.if.end15_crit_edge
  %suspended.i = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %suspended.i, i32 noundef 4) #14
  %40 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %suspended.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rpc.i) #14
  %41 = call ptr @memset(ptr %rpc.i, i32 255, i32 80)
  %fn0.i = getelementptr inbounds %struct.rpc, ptr %rpc.i, i32 0, i32 1
  %42 = ptrtoint ptr %fn0.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @metadata_era_rollover, ptr %fn0.i, align 4
  %fn1.i = getelementptr inbounds %struct.rpc, ptr %rpc.i, i32 0, i32 2
  %43 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %fn1.i, align 4
  %call.i = call fastcc i32 @perform_rpc(ptr noundef %1, ptr noundef nonnull %rpc.i) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rpc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end15.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %do.end
  %.str.90.sink = phi ptr [ @.str.84, %do.end ], [ @.str.87, %if.end.cleanup.sink.split_crit_edge ], [ @.str.90, %if.end15.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i.ph, %do.end ], [ %call5, %if.end.cleanup.sink.split_crit_edge ], [ %call.i, %if.end15.cleanup.sink.split_crit_edge ]
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.90.sink, ptr noundef nonnull @.str.85) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @era_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %rpc.i = alloca %struct.rpc, align 4
  %stats = alloca %struct.metadata_stats, align 8
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %stats) #14
  %2 = call ptr @memset(ptr %stats, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %3 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb62
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rpc.i) #14
  %5 = call ptr @memset(ptr %rpc.i, i32 255, i32 80)
  %fn0.i = getelementptr inbounds %struct.rpc, ptr %rpc.i, i32 0, i32 1
  %6 = ptrtoint ptr %fn0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fn0.i, align 4
  %fn1.i = getelementptr inbounds %struct.rpc, ptr %rpc.i, i32 0, i32 2
  %7 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @metadata_get_stats, ptr %fn1.i, align 4
  %arg1.i = getelementptr inbounds %struct.rpc, ptr %rpc.i, i32 0, i32 3
  %8 = ptrtoint ptr %arg1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %stats, ptr %arg1.i, align 4
  %call.i = call fastcc i32 @perform_rpc(ptr noundef %1, ptr noundef nonnull %rpc.i) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rpc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %tobool.not, label %if.end, label %err

if.end:                                           ; preds = %sw.bb
  br i1 %cmp, label %cond.end.thread, label %cond.end

cond.end:                                         ; preds = %if.end
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %stats, align 8
  %total = getelementptr inbounds %struct.metadata_stats, ptr %stats, i32 0, i32 1
  %11 = ptrtoint ptr %total to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %total, align 8
  %era1 = getelementptr inbounds %struct.metadata_stats, ptr %stats, i32 0, i32 3
  %13 = ptrtoint ptr %era1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %era1, align 8
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.114, i32 noundef 8, i64 noundef %10, i64 noundef %12, i32 noundef %14) #14
  %snap = getelementptr inbounds %struct.metadata_stats, ptr %stats, i32 0, i32 2
  %15 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %snap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp3.not = icmp eq i64 %16, 0
  br i1 %cmp3.not, label %cond.end.if.else_crit_edge, label %if.then4

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

cond.end.thread:                                  ; preds = %if.end
  %snap122 = getelementptr inbounds %struct.metadata_stats, ptr %stats, i32 0, i32 2
  %17 = ptrtoint ptr %snap122 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %snap122, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp3.not123 = icmp eq i64 %18, 0
  br i1 %cmp3.not123, label %cond.end.thread.if.else_crit_edge, label %cond.end.thread.cleanup_crit_edge

cond.end.thread.cleanup_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end.thread.if.else_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then4:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %maxlen)
  %cmp5.not = icmp ult i32 %call2, %maxlen
  br i1 %cmp5.not, label %cond.false7, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.false7:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr8 = getelementptr i8, ptr %result, i32 %call2
  %sub9 = sub i32 %maxlen, %call2
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.115, i64 noundef %16) #14
  br label %cleanup

if.else:                                          ; preds = %cond.end.thread.if.else_crit_edge, %cond.end.if.else_crit_edge
  %cond124 = phi i32 [ 0, %cond.end.thread.if.else_crit_edge ], [ %call2, %cond.end.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond124, i32 %maxlen)
  %cmp15.not = icmp ult i32 %cond124, %maxlen
  br i1 %cmp15.not, label %cond.false17, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.false17:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr18 = getelementptr i8, ptr %result, i32 %cond124
  %sub19 = sub i32 %maxlen, %cond124
  %call20 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.116) #14
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %metadata_dev = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %metadata_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %metadata_dev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bd_dev, align 4
  %shr = lshr i32 %24, 20
  %and = and i32 %24, 1048575
  %call29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.117, i32 noundef %shr, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp31 = icmp eq i32 %maxlen, 0
  br i1 %cmp31, label %sw.bb25.cond.end38_crit_edge, label %cond.false33

sw.bb25.cond.end38_crit_edge:                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end38

cond.false33:                                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #16
  %call37 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.118, ptr noundef nonnull %buf) #14
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false33, %sw.bb25.cond.end38_crit_edge
  %cond39 = phi i32 [ %call37, %cond.false33 ], [ 0, %sw.bb25.cond.end38_crit_edge ]
  %origin_dev = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %origin_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %origin_dev, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %bd_dev43 = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %bd_dev43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bd_dev43, align 4
  %shr44 = lshr i32 %30, 20
  %and48 = and i32 %30, 1048575
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.117, i32 noundef %shr44, i32 noundef %and48)
  call void @__sanitizer_cov_trace_cmp4(i32 %cond39, i32 %maxlen)
  %cmp52.not = icmp ult i32 %cond39, %maxlen
  br i1 %cmp52.not, label %cond.false54, label %cond.end38.cleanup_crit_edge

cond.end38.cleanup_crit_edge:                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.false54:                                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr55 = getelementptr i8, ptr %result, i32 %cond39
  %sub56 = sub i32 %maxlen, %cond39
  %sectors_per_block = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sectors_per_block, align 8
  %call58 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr55, i32 noundef %sub56, ptr noundef nonnull @.str.119, ptr noundef nonnull %buf, i32 noundef %32) #14
  br label %cleanup

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %result, align 1
  br label %cleanup

err:                                              ; preds = %sw.bb
  br i1 %cmp, label %err.cleanup_crit_edge, label %cond.false65

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.false65:                                     ; preds = %err
  call void @__sanitizer_cov_trace_pc() #16
  %call68 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.120) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.false65, %err.cleanup_crit_edge, %sw.bb62, %cond.false54, %cond.end38.cleanup_crit_edge, %cond.false17, %if.else.cleanup_crit_edge, %cond.false7, %if.then4.cleanup_crit_edge, %cond.end.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %stats) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @era_message(ptr nocapture noundef readonly %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef readnone %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %rpc.i32 = alloca %struct.rpc, align 4
  %rpc.i28 = alloca %struct.rpc, align 4
  %rpc.i = alloca %struct.rpc, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %argv, align 4
  %call1 = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rpc.i) #14
  %4 = call ptr @memset(ptr %rpc.i, i32 255, i32 80)
  %fn0.i = getelementptr inbounds %struct.rpc, ptr %rpc.i, i32 0, i32 1
  %5 = ptrtoint ptr %fn0.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @metadata_checkpoint, ptr %fn0.i, align 4
  %fn1.i = getelementptr inbounds %struct.rpc, ptr %rpc.i, i32 0, i32 2
  %6 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fn1.i, align 4
  %call.i = call fastcc i32 @perform_rpc(ptr noundef %1, ptr noundef nonnull %rpc.i) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rpc.i) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.129)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rpc.i28) #14
  %7 = call ptr @memset(ptr %rpc.i28, i32 255, i32 80)
  %fn0.i29 = getelementptr inbounds %struct.rpc, ptr %rpc.i28, i32 0, i32 1
  %8 = ptrtoint ptr %fn0.i29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @metadata_take_snap, ptr %fn0.i29, align 4
  %fn1.i30 = getelementptr inbounds %struct.rpc, ptr %rpc.i28, i32 0, i32 2
  %9 = ptrtoint ptr %fn1.i30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fn1.i30, align 4
  %call.i31 = call fastcc i32 @perform_rpc(ptr noundef %1, ptr noundef nonnull %rpc.i28) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rpc.i28) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %call12 = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %do.end19

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rpc.i32) #14
  %10 = call ptr @memset(ptr %rpc.i32, i32 255, i32 80)
  %fn0.i33 = getelementptr inbounds %struct.rpc, ptr %rpc.i32, i32 0, i32 1
  %11 = ptrtoint ptr %fn0.i33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @metadata_drop_snap, ptr %fn0.i33, align 4
  %fn1.i34 = getelementptr inbounds %struct.rpc, ptr %rpc.i32, i32 0, i32 2
  %12 = ptrtoint ptr %fn1.i34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fn1.i34, align 4
  %call.i35 = call fastcc i32 @perform_rpc(ptr noundef %1, ptr noundef nonnull %rpc.i32) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rpc.i32) #14
  br label %cleanup

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %3) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.then14, %if.then8, %if.then2, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end19 ], [ %call.i35, %if.then14 ], [ %call.i31, %if.then8 ], [ %call.i, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @era_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %origin_dev = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %origin_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %origin_dev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %call2 = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef 0, i64 noundef %7, ptr noundef %data) #14
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @era_io_hints(ptr nocapture noundef readonly %ti, ptr noundef %limits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %io_opt = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 12
  %2 = ptrtoint ptr %io_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_opt, align 4
  %shr = lshr i32 %3, 9
  %sectors_per_block = getelementptr inbounds %struct.era, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectors_per_block, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %5)
  %cmp = icmp ult i32 %shr, %5
  br i1 %cmp, label %entry.if.then188_crit_edge, label %if.end185

entry.if.then188_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then188

if.end185:                                        ; preds = %entry
  %rem177 = urem i32 %shr, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem177)
  %tobool187.not = icmp eq i32 %rem177, 0
  br i1 %tobool187.not, label %if.end185.if.end191_crit_edge, label %if.end185.if.then188_crit_edge

if.end185.if.then188_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then188

if.end185.if.end191_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end191

if.then188:                                       ; preds = %if.end185.if.then188_crit_edge, %entry.if.then188_crit_edge
  tail call void @blk_limits_io_min(ptr noundef %limits, i32 noundef 0) #14
  %6 = ptrtoint ptr %sectors_per_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectors_per_block, align 8
  %shl190 = shl i32 %7, 9
  tail call void @blk_limits_io_opt(ptr noundef %limits, i32 noundef %shl190) #14
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %if.end185.if.end191_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @era_destroy(ptr noundef %era) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %md = getelementptr inbounds %struct.era, ptr %era, i32 0, i32 6
  %0 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bits.i.i = getelementptr inbounds %struct.era_metadata, ptr %1, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bits.i.i, align 8
  tail call void @vfree(ptr noundef %3) #14
  %4 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bits.i.i, align 8
  %bits.i6.i = getelementptr %struct.era_metadata, ptr %1, i32 0, i32 7, i32 1, i32 1
  %5 = ptrtoint ptr %bits.i6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bits.i6.i, align 8
  tail call void @vfree(ptr noundef %6) #14
  %7 = ptrtoint ptr %bits.i6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bits.i6.i, align 8
  %sm.i.i = getelementptr inbounds %struct.era_metadata, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sm.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void %11(ptr noundef %9) #14
  %tm.i.i = getelementptr inbounds %struct.era_metadata, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tm.i.i, align 4
  tail call void @dm_tm_destroy(ptr noundef %13) #14
  %bm.i.i = getelementptr inbounds %struct.era_metadata, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %bm.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bm.i.i, align 4
  tail call void @dm_block_manager_destroy(ptr noundef %15) #14
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wq = getelementptr inbounds %struct.era, ptr %era, i32 0, i32 7
  %16 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wq, align 4
  %tobool2.not = icmp eq ptr %17, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @destroy_workqueue(ptr noundef nonnull %17) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %origin_dev = getelementptr inbounds %struct.era, ptr %era, i32 0, i32 2
  %18 = ptrtoint ptr %origin_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %origin_dev, align 8
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %era, align 8
  tail call void @dm_put_device(ptr noundef %21, ptr noundef nonnull %19) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %metadata_dev = getelementptr inbounds %struct.era, ptr %era, i32 0, i32 1
  %22 = ptrtoint ptr %metadata_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %metadata_dev, align 4
  %tobool10.not = icmp eq ptr %23, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %era, align 8
  tail call void @dm_put_device(ptr noundef %25, ptr noundef nonnull %23) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  tail call void @kfree(ptr noundef %era) #14
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @metadata_open(ptr noundef %bdev, i64 noundef %block_size) unnamed_addr #2 align 64 {
entry:
  %vt.i.i.i.i.i = alloca %struct.dm_btree_value_type, align 4
  %sblock.i.i.i = alloca ptr, align 4
  %metadata_len.i.i.i.i.i = alloca i32, align 4
  %sblock.i.i.i.i = alloca ptr, align 4
  %vt.i.i.i.i.i.i = alloca %struct.dm_btree_value_type, align 4
  %b.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 400) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bdev, ptr %call7.i.i, align 8
  %block_size2 = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %block_size2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %block_size, ptr %block_size2, align 8
  %writesets = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 7
  %root = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %root to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %root, align 8
  %root7 = getelementptr %struct.era_metadata, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %root7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %root7, align 8
  %current_writeset = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %current_writeset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %writesets, ptr %current_writeset, align 8
  %call.i = tail call ptr @dm_block_manager_create(ptr noundef %bdev, i32 noundef 4096, i32 noundef 5) #14
  %bm.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %bm.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %bm.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %create_persistent_data_objects.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i.i.i) #14
  %7 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %b.i.i.i, align 4, !annotation !329
  %call.i.i.i = tail call i32 @dm_bm_block_size(ptr noundef %call.i) #14
  %div16.i.i.i = lshr i32 %call.i.i.i, 3
  %call1.i.i.i = call i32 @dm_bm_read_lock(ptr noundef %call.i, i64 noundef 0, ptr noundef null, ptr noundef nonnull %b.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %superblock_all_zeroes.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %8 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b.i.i.i, align 4
  %call2.i.i.i = call ptr @dm_block_data(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i.i)
  %cmp17.not.i.i.i = icmp ult i32 %call.i.i.i, 8
  br i1 %cmp17.not.i.i.i, label %if.end.i.i.i.cond.true.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.i.i.cond.true.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i.i
  %umax.i.i.i = call i32 @llvm.umax.i32(i32 %div16.i.i.i, i32 1) #14
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.018.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.cond.true.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.cond.i.i.i.cond.true.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.018.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %arrayidx.i.i.i = getelementptr i64, ptr %call2.i.i.i, i32 %i.018.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp3.not.i.i.i = icmp eq i64 %11, 0
  br i1 %cmp3.not.i.i.i, label %for.cond.i.i.i, label %if.end5.i.i

superblock_all_zeroes.exit.i.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i.i.i) #14
  br label %create_persistent_data_objects.exit.thread3

cond.true.i.i:                                    ; preds = %for.cond.i.i.i.cond.true.i.i_crit_edge, %if.end.i.i.i.cond.true.i.i_crit_edge
  %12 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b.i.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %13) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i.i.i) #14
  %14 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bm.i, align 4
  %tm.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 3
  %sm.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = call i32 @dm_tm_create_with_sm(ptr noundef %15, i64 noundef 0, ptr noundef %tm.i.i.i.i, ptr noundef %sm.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #17
  br label %create_persistent_data_objects.exit.thread3

if.end.i.i.i.i:                                   ; preds = %cond.true.i.i
  %16 = ptrtoint ptr %tm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tm.i.i.i.i, align 4
  %bitset_info.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 11
  call void @dm_disk_bitset_init(ptr noundef %17, ptr noundef %bitset_info.i.i.i.i.i) #14
  %writeset_tree_info.i.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12
  %value_type.i.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 2
  %18 = ptrtoint ptr %tm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tm.i.i.i.i, align 4
  %20 = ptrtoint ptr %writeset_tree_info.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %writeset_tree_info.i.i.i.i.i.i, align 8
  %levels.i.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 1
  %21 = ptrtoint ptr %levels.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %levels.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %value_type.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %value_type.i.i.i.i.i.i, align 8
  %size.i.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 1
  %23 = ptrtoint ptr %size.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 12, ptr %size.i.i.i.i.i.i, align 4
  %inc.i.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 2
  %24 = ptrtoint ptr %inc.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ws_inc, ptr %inc.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 3
  %25 = ptrtoint ptr %dec.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ws_dec, ptr %dec.i.i.i.i.i.i, align 4
  %equal.i.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 4
  %26 = ptrtoint ptr %equal.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ws_eq, ptr %equal.i.i.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vt.i.i.i.i.i.i) #14
  %27 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i.i.i.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i.i.i.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i.i.i.i, i32 0, i32 3
  %30 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i.i.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %vt.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %vt.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %27, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %28, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %29, align 4
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %30, align 4
  %era_array_info.i.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 13
  call void @dm_array_info_init(ptr noundef %era_array_info.i.i.i.i.i.i, ptr noundef %19, ptr noundef nonnull %vt.i.i.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vt.i.i.i.i.i.i) #14
  %writeset_tree_root.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 9
  %call2.i.i.i.i = call i32 @dm_btree_empty(ptr noundef %writeset_tree_info.i.i.i.i.i.i, ptr noundef %writeset_tree_root.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end9.i.i.i.i, label %if.end.i.i.i.i.bad.i.i.i.i_crit_edge

if.end.i.i.i.i.bad.i.i.i.i_crit_edge:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bad.i.i.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %era_array_root.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 10
  %call10.i.i.i.i = call i32 @dm_array_empty(ptr noundef %era_array_info.i.i.i.i.i.i, ptr noundef %era_array_root.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i.i)
  %tobool11.not.i.i.i.i = icmp eq i32 %call10.i.i.i.i, 0
  br i1 %tobool11.not.i.i.i.i, label %if.end.i1.i.i, label %if.end9.i.i.i.i.bad.i.i.i.i_crit_edge

if.end9.i.i.i.i.bad.i.i.i.i_crit_edge:            ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bad.i.i.i.i

bad.i.i.i.i:                                      ; preds = %if.end9.i.i.i.i.bad.i.i.i.i_crit_edge, %if.end.i.i.i.i.bad.i.i.i.i_crit_edge
  %.str.26.sink.i.i.i.i = phi ptr [ @.str.23, %if.end.i.i.i.i.bad.i.i.i.i_crit_edge ], [ @.str.26, %if.end9.i.i.i.i.bad.i.i.i.i_crit_edge ]
  %r.0.i.i.i.i = phi i32 [ %call2.i.i.i.i, %if.end.i.i.i.i.bad.i.i.i.i_crit_edge ], [ %call10.i.i.i.i, %if.end9.i.i.i.i.bad.i.i.i.i_crit_edge ]
  %call17.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.26.sink.i.i.i.i) #17
  %36 = ptrtoint ptr %sm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sm.i.i.i.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  call void %39(ptr noundef %37) #14
  %40 = ptrtoint ptr %tm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tm.i.i.i.i, align 4
  call void @dm_tm_destroy(ptr noundef %41) #14
  br label %create_persistent_data_objects.exit.thread3

if.end.i1.i.i:                                    ; preds = %if.end9.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i.i.i.i) #14
  %42 = ptrtoint ptr %sblock.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i.i.i.i, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata_len.i.i.i.i.i) #14
  %43 = ptrtoint ptr %metadata_len.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %metadata_len.i.i.i.i.i, align 4, !annotation !329
  %44 = ptrtoint ptr %sm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sm.i.i.i.i, align 8
  %root_size.i.i.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %root_size.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %root_size.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call i32 %47(ptr noundef %45, ptr noundef nonnull %metadata_len.i.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %save_sm_root.exit.thread.i.i.i.i, label %save_sm_root.exit.i.i.i.i

save_sm_root.exit.thread.i.i.i.i:                 ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata_len.i.i.i.i.i) #14
  br label %do.end.i13.i.i.i

save_sm_root.exit.i.i.i.i:                        ; preds = %if.end.i1.i.i
  %48 = ptrtoint ptr %sm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sm.i.i.i.i, align 8
  %metadata_space_map_root.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 16
  %50 = ptrtoint ptr %metadata_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %metadata_len.i.i.i.i.i, align 4
  %copy_root.i.i.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %49, i32 0, i32 12
  %52 = ptrtoint ptr %copy_root.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %copy_root.i.i.i.i.i.i, align 4
  %call.i7.i.i.i.i.i = call i32 %53(ptr noundef %49, ptr noundef %metadata_space_map_root.i.i.i.i.i, i32 noundef %51) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata_len.i.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i.i.i.i)
  %tobool.not.i11.i.i.i = icmp eq i32 %call.i7.i.i.i.i.i, 0
  br i1 %tobool.not.i11.i.i.i, label %if.end.i14.i.i.i, label %save_sm_root.exit.i.i.i.i.do.end.i13.i.i.i_crit_edge

save_sm_root.exit.i.i.i.i.do.end.i13.i.i.i_crit_edge: ; preds = %save_sm_root.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i13.i.i.i

do.end.i13.i.i.i:                                 ; preds = %save_sm_root.exit.i.i.i.i.do.end.i13.i.i.i_crit_edge, %save_sm_root.exit.thread.i.i.i.i
  %retval.0.i18.i.i.i.i = phi i32 [ %call.i.i.i.i.i.i, %save_sm_root.exit.thread.i.i.i.i ], [ %call.i7.i.i.i.i.i, %save_sm_root.exit.i.i.i.i.do.end.i13.i.i.i_crit_edge ]
  %call1.i12.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #17
  br label %write_superblock.exit.thread.i.i.i

if.end.i14.i.i.i:                                 ; preds = %save_sm_root.exit.i.i.i.i
  %54 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bm.i, align 4
  %call.i.i.i.i.i = call i32 @dm_bm_write_lock_zero(ptr noundef %55, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %write_superblock.exit.i.i.i, label %if.end.i14.i.i.i.write_superblock.exit.thread.i.i.i_crit_edge

if.end.i14.i.i.i.write_superblock.exit.thread.i.i.i_crit_edge: ; preds = %if.end.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %write_superblock.exit.thread.i.i.i

write_superblock.exit.thread.i.i.i:               ; preds = %if.end.i14.i.i.i.write_superblock.exit.thread.i.i.i_crit_edge, %do.end.i13.i.i.i
  %retval.0.i16.ph.i.i.i = phi i32 [ %call.i.i.i.i.i, %if.end.i14.i.i.i.write_superblock.exit.thread.i.i.i_crit_edge ], [ %retval.0.i18.i.i.i.i, %do.end.i13.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i.i.i) #14
  br label %if.then3.i.i.i

write_superblock.exit.i.i.i:                      ; preds = %if.end.i14.i.i.i
  %56 = ptrtoint ptr %sblock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sblock.i.i.i.i, align 4
  %call6.i.i.i.i = call ptr @dm_block_data(ptr noundef %57) #14
  %magic.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %magic.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 8865267138412150784, ptr %magic.i.i.i.i.i, align 1
  %flags.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 0, ptr %flags.i.i.i.i.i, align 1
  %uuid.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 3
  %60 = call ptr @memset(ptr %uuid.i.i.i.i.i, i32 0, i32 16)
  %version.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %version.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 16777216, ptr %version.i.i.i.i.i, align 1
  %metadata_space_map_root.i.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 6
  %62 = call ptr @memcpy(ptr %metadata_space_map_root.i.i.i.i.i.i, ptr %metadata_space_map_root.i.i.i.i.i, i32 128)
  %63 = ptrtoint ptr %block_size2 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %block_size2, align 8
  %conv.i.i.i.i.i = trunc i64 %64 to i32
  %65 = call i32 @llvm.bswap.i32(i32 %conv.i.i.i.i.i) #14
  %data_block_size.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 7
  %66 = ptrtoint ptr %data_block_size.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %data_block_size.i.i.i.i.i, align 1
  %metadata_block_size.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 8
  %67 = ptrtoint ptr %metadata_block_size.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 134217728, ptr %metadata_block_size.i.i.i.i.i, align 1
  %nr_blocks.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %nr_blocks.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr_blocks.i.i.i.i.i, align 8
  %70 = call i32 @llvm.bswap.i32(i32 %69) #14
  %nr_blocks1.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 9
  %71 = ptrtoint ptr %nr_blocks1.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %nr_blocks1.i.i.i.i.i, align 1
  %current_era.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 6
  %72 = ptrtoint ptr %current_era.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %current_era.i.i.i.i.i, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #14
  %current_era2.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 10
  %75 = ptrtoint ptr %current_era2.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %current_era2.i.i.i.i.i, align 1
  %76 = ptrtoint ptr %current_writeset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %current_writeset, align 8
  %current_writeset4.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 11
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %80 = call i32 @llvm.bswap.i32(i32 %79) #14
  %81 = ptrtoint ptr %current_writeset4.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %current_writeset4.i.i.i.i.i, align 1
  %root.i.i.i.i.i.i = getelementptr inbounds %struct.writeset_metadata, ptr %77, i32 0, i32 1
  %82 = ptrtoint ptr %root.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %root.i.i.i.i.i.i, align 8
  %84 = call i64 @llvm.bswap.i64(i64 %83) #14
  %root2.i.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 11, i32 1
  %85 = ptrtoint ptr %root2.i.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 %84, ptr %root2.i.i.i.i.i.i, align 1
  %86 = ptrtoint ptr %writeset_tree_root.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %writeset_tree_root.i.i.i.i, align 8
  %88 = call i64 @llvm.bswap.i64(i64 %87) #14
  %writeset_tree_root5.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 12
  %89 = ptrtoint ptr %writeset_tree_root5.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %88, ptr %writeset_tree_root5.i.i.i.i.i, align 1
  %90 = ptrtoint ptr %era_array_root.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %era_array_root.i.i.i.i, align 8
  %92 = call i64 @llvm.bswap.i64(i64 %91) #14
  %era_array_root6.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 13
  %93 = ptrtoint ptr %era_array_root6.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 8)
  store i64 %92, ptr %era_array_root6.i.i.i.i.i, align 1
  %metadata_snap.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 14
  %94 = ptrtoint ptr %metadata_snap.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %metadata_snap.i.i.i.i.i, align 8
  %96 = call i64 @llvm.bswap.i64(i64 %95) #14
  %metadata_snap7.i.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call6.i.i.i.i, i32 0, i32 14
  %97 = ptrtoint ptr %metadata_snap7.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 %96, ptr %metadata_snap7.i.i.i.i.i, align 1
  %98 = ptrtoint ptr %tm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tm.i.i.i.i, align 4
  %100 = ptrtoint ptr %sblock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sblock.i.i.i.i, align 4
  %call7.i.i.i.i = call i32 @dm_tm_commit(ptr noundef %99, ptr noundef %101) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call7.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %write_superblock.exit.i.i.i.cleanup_crit_edge, label %write_superblock.exit.i.i.i.if.then3.i.i.i_crit_edge

write_superblock.exit.i.i.i.if.then3.i.i.i_crit_edge: ; preds = %write_superblock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i.i.i

write_superblock.exit.i.i.i.cleanup_crit_edge:    ; preds = %write_superblock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3.i.i.i:                                   ; preds = %write_superblock.exit.i.i.i.if.then3.i.i.i_crit_edge, %write_superblock.exit.thread.i.i.i
  %retval.0.i1621.i.i.i = phi i32 [ %retval.0.i16.ph.i.i.i, %write_superblock.exit.thread.i.i.i ], [ %call7.i.i.i.i, %write_superblock.exit.i.i.i.if.then3.i.i.i_crit_edge ]
  %102 = ptrtoint ptr %sm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sm.i.i.i.i, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  call void %105(ptr noundef %103) #14
  %106 = ptrtoint ptr %tm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tm.i.i.i.i, align 4
  call void @dm_tm_destroy(ptr noundef %107) #14
  br label %create_persistent_data_objects.exit.thread3

if.end5.i.i:                                      ; preds = %for.body.i.i.i
  %108 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %b.i.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %109) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i.i.i) #14
  %110 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i.i.i, align 4, !annotation !329
  %111 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bm.i, align 4
  %call.i.i4.i.i = call i32 @dm_bm_read_lock(ptr noundef %112, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call.i.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %if.end.i8.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #17
  br label %open_or_format_metadata.exit.thread8.i

if.end.i8.i.i:                                    ; preds = %if.end5.i.i
  %113 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sblock.i.i.i, align 4
  %call2.i7.i.i = call ptr @dm_block_data(ptr noundef %114) #14
  %data_block_size.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i7.i.i, i32 0, i32 7
  %115 = ptrtoint ptr %data_block_size.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %data_block_size.i.i.i, align 1
  %117 = call i32 @llvm.bswap.i32(i32 %116) #14
  %conv.i.i.i = zext i32 %117 to i64
  %118 = ptrtoint ptr %block_size2 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %block_size2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %119, i64 %conv.i.i.i)
  %cmp.not.i.i.i = icmp eq i64 %119, %conv.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end12.i.i.i, label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %if.end.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call11.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %117, i64 noundef %119) #17
  br label %bad.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end.i8.i.i
  %120 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bm.i, align 4
  %metadata_space_map_root.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i7.i.i, i32 0, i32 6
  %tm.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 3
  %sm.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 2
  %call13.i.i.i = call i32 @dm_tm_open_with_sm(ptr noundef %121, i64 noundef 0, ptr noundef %metadata_space_map_root.i.i.i, i32 noundef 128, ptr noundef %tm.i.i.i, ptr noundef %sm.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %open_or_format_metadata.exit.i, label %do.end18.i.i.i

do.end18.i.i.i:                                   ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call20.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #17
  br label %bad.i.i.i

bad.i.i.i:                                        ; preds = %do.end18.i.i.i, %do.end7.i.i.i
  %r.0.i.i.i = phi i32 [ -22, %do.end7.i.i.i ], [ %call13.i.i.i, %do.end18.i.i.i ]
  %122 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sblock.i.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %123) #14
  br label %open_or_format_metadata.exit.thread8.i

open_or_format_metadata.exit.thread8.i:           ; preds = %bad.i.i.i, %do.end.i.i.i
  %retval.0.i9.i.ph.i = phi i32 [ %r.0.i.i.i, %bad.i.i.i ], [ %call.i.i4.i.i, %do.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i.i) #14
  br label %create_persistent_data_objects.exit.thread3

open_or_format_metadata.exit.i:                   ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %124 = ptrtoint ptr %tm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tm.i.i.i, align 4
  %bitset_info.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 11
  call void @dm_disk_bitset_init(ptr noundef %125, ptr noundef %bitset_info.i.i.i.i) #14
  %writeset_tree_info.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12
  %value_type.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 2
  %126 = ptrtoint ptr %tm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tm.i.i.i, align 4
  %128 = ptrtoint ptr %writeset_tree_info.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %writeset_tree_info.i.i.i.i.i, align 8
  %levels.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 1
  %129 = ptrtoint ptr %levels.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %levels.i.i.i.i.i, align 4
  %130 = ptrtoint ptr %value_type.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call7.i.i, ptr %value_type.i.i.i.i.i, align 8
  %size.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 1
  %131 = ptrtoint ptr %size.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 12, ptr %size.i.i.i.i.i, align 4
  %inc.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 2
  %132 = ptrtoint ptr %inc.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @ws_inc, ptr %inc.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 3
  %133 = ptrtoint ptr %dec.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @ws_dec, ptr %dec.i.i.i.i.i, align 4
  %equal.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 4
  %134 = ptrtoint ptr %equal.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @ws_eq, ptr %equal.i.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vt.i.i.i.i.i) #14
  %135 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i.i.i, i32 0, i32 1
  %136 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i.i.i, i32 0, i32 2
  %137 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i.i.i, i32 0, i32 3
  %138 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i.i.i, i32 0, i32 4
  %139 = ptrtoint ptr %vt.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %vt.i.i.i.i.i, align 4
  %140 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 4, ptr %135, align 4
  %141 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %136, align 4
  %142 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %137, align 4
  %143 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %138, align 4
  %era_array_info.i.i.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 13
  call void @dm_array_info_init(ptr noundef %era_array_info.i.i.i.i.i, ptr noundef %127, ptr noundef nonnull %vt.i.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vt.i.i.i.i.i) #14
  %nr_blocks.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i7.i.i, i32 0, i32 9
  %144 = ptrtoint ptr %nr_blocks.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %nr_blocks.i.i.i, align 1
  %146 = call i32 @llvm.bswap.i32(i32 %145) #14
  %nr_blocks22.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 5
  %147 = ptrtoint ptr %nr_blocks22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %nr_blocks22.i.i.i, align 8
  %current_era.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i7.i.i, i32 0, i32 10
  %148 = ptrtoint ptr %current_era.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %current_era.i.i.i, align 1
  %150 = call i32 @llvm.bswap.i32(i32 %149) #14
  %current_era23.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 6
  %151 = ptrtoint ptr %current_era23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %current_era23.i.i.i, align 4
  %current_writeset.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i7.i.i, i32 0, i32 11
  %152 = ptrtoint ptr %current_writeset to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %current_writeset, align 8
  %154 = ptrtoint ptr %current_writeset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %current_writeset.i.i.i, align 1
  %156 = call i32 @llvm.bswap.i32(i32 %155) #14
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %153, align 8
  %root.i.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i7.i.i, i32 0, i32 11, i32 1
  %158 = ptrtoint ptr %root.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 8)
  %159 = load i64, ptr %root.i.i.i.i, align 1
  %160 = call i64 @llvm.bswap.i64(i64 %159) #14
  %root2.i.i.i.i = getelementptr inbounds %struct.writeset_metadata, ptr %153, i32 0, i32 1
  %161 = ptrtoint ptr %root2.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %160, ptr %root2.i.i.i.i, align 8
  %writeset_tree_root.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i7.i.i, i32 0, i32 12
  %162 = ptrtoint ptr %writeset_tree_root.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 8)
  %163 = load i64, ptr %writeset_tree_root.i.i.i, align 1
  %164 = call i64 @llvm.bswap.i64(i64 %163) #14
  %writeset_tree_root26.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 9
  %165 = ptrtoint ptr %writeset_tree_root26.i.i.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %writeset_tree_root26.i.i.i, align 8
  %era_array_root.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i7.i.i, i32 0, i32 13
  %166 = ptrtoint ptr %era_array_root.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 8)
  %167 = load i64, ptr %era_array_root.i.i.i, align 1
  %168 = call i64 @llvm.bswap.i64(i64 %167) #14
  %era_array_root27.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 10
  %169 = ptrtoint ptr %era_array_root27.i.i.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %168, ptr %era_array_root27.i.i.i, align 8
  %metadata_snap.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i7.i.i, i32 0, i32 14
  %170 = ptrtoint ptr %metadata_snap.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 8)
  %171 = load i64, ptr %metadata_snap.i.i.i, align 1
  %172 = call i64 @llvm.bswap.i64(i64 %171) #14
  %metadata_snap28.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 14
  %173 = ptrtoint ptr %metadata_snap28.i.i.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %172, ptr %metadata_snap28.i.i.i, align 8
  %archived_writesets.i.i.i = getelementptr inbounds %struct.era_metadata, ptr %call7.i.i, i32 0, i32 15
  %174 = ptrtoint ptr %archived_writesets.i.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %archived_writesets.i.i.i, align 8
  %175 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sblock.i.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %176) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i.i) #14
  br label %cleanup

create_persistent_data_objects.exit.thread3:      ; preds = %open_or_format_metadata.exit.thread8.i, %if.then3.i.i.i, %bad.i.i.i.i, %do.end.i.i.i.i, %superblock_all_zeroes.exit.i.i
  %retval.0.i3.i = phi i32 [ %retval.0.i9.i.ph.i, %open_or_format_metadata.exit.thread8.i ], [ %call.i.i.i.i, %do.end.i.i.i.i ], [ %r.0.i.i.i.i, %bad.i.i.i.i ], [ %retval.0.i1621.i.i.i, %if.then3.i.i.i ], [ %call1.i.i.i, %superblock_all_zeroes.exit.i.i ]
  %177 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bm.i, align 4
  call void @dm_block_manager_destroy(ptr noundef %178) #14
  br label %if.then13

create_persistent_data_objects.exit:              ; preds = %if.end
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #17
  %179 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bm.i, align 4
  %181 = ptrtoint ptr %180 to i32
  %tobool12.not = icmp eq ptr %180, null
  br i1 %tobool12.not, label %create_persistent_data_objects.exit.cleanup_crit_edge, label %create_persistent_data_objects.exit.if.then13_crit_edge

create_persistent_data_objects.exit.if.then13_crit_edge: ; preds = %create_persistent_data_objects.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

create_persistent_data_objects.exit.cleanup_crit_edge: ; preds = %create_persistent_data_objects.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13:                                        ; preds = %create_persistent_data_objects.exit.if.then13_crit_edge, %create_persistent_data_objects.exit.thread3
  %retval.0.i6 = phi i32 [ %retval.0.i3.i, %create_persistent_data_objects.exit.thread3 ], [ %181, %create_persistent_data_objects.exit.if.then13_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %182 = inttoptr i32 %retval.0.i6 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %create_persistent_data_objects.exit.cleanup_crit_edge, %open_or_format_metadata.exit.i, %write_superblock.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %182, %if.then13 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %create_persistent_data_objects.exit.cleanup_crit_edge ], [ %call7.i.i, %open_or_format_metadata.exit.i ], [ %call7.i.i, %write_superblock.exit.i.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_work(ptr noundef %ws) #2 align 64 {
entry:
  %calls.i = alloca %struct.list_head, align 4
  %plug.i = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %md.i = getelementptr i8, ptr %ws, i32 -8
  %0 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md.i, align 8
  %archived_writesets.i = getelementptr inbounds %struct.era_metadata, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %archived_writesets.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %archived_writesets.i, align 8, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.kick_off_digest.exit_crit_edge, label %if.then.i

entry.kick_off_digest.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %kick_off_digest.exit

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %archived_writesets.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %archived_writesets.i, align 8
  %step.i.i = getelementptr i8, ptr %ws, i32 264
  %5 = ptrtoint ptr %step.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %step.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.kick_off_digest.exit_crit_edge

if.then.i.kick_off_digest.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kick_off_digest.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %digest.i = getelementptr i8, ptr %ws, i32 152
  %7 = call ptr @memset(ptr %digest.i, i32 0, i32 120)
  %8 = ptrtoint ptr %step.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @metadata_digest_lookup_writeset, ptr %step.i.i, align 8
  br label %kick_off_digest.exit

kick_off_digest.exit:                             ; preds = %if.end.i.i, %if.then.i.kick_off_digest.exit_crit_edge, %entry.kick_off_digest.exit_crit_edge
  %step.i = getelementptr i8, ptr %ws, i32 264
  %9 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %step.i, align 8
  %tobool.not.i4 = icmp eq ptr %10, null
  br i1 %tobool.not.i4, label %kick_off_digest.exit.process_old_eras.exit_crit_edge, label %if.end.i

kick_off_digest.exit.process_old_eras.exit_crit_edge: ; preds = %kick_off_digest.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_old_eras.exit

if.end.i:                                         ; preds = %kick_off_digest.exit
  %digest.i5 = getelementptr i8, ptr %ws, i32 152
  %11 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %md.i, align 8
  %call.i = tail call i32 %10(ptr noundef %12, ptr noundef %digest.i5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #17
  %13 = ptrtoint ptr %step.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %step.i, align 8
  br label %process_old_eras.exit

if.else.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %step.i, align 8
  %tobool10.not.i = icmp eq ptr %15, null
  br i1 %tobool10.not.i, label %if.else.i.process_old_eras.exit_crit_edge, label %if.then11.i

if.else.i.process_old_eras.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_old_eras.exit

if.then11.i:                                      ; preds = %if.else.i
  %suspended.i.i = getelementptr i8, ptr %ws, i32 272
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %suspended.i.i, i32 noundef 4) #14
  %16 = ptrtoint ptr %suspended.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i7 = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i7, label %if.then.i.i, label %if.then11.i.process_old_eras.exit_crit_edge

if.then11.i.process_old_eras.exit_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_old_eras.exit

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  %wq.i.i = getelementptr i8, ptr %ws, i32 -4
  %18 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wq.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %ws) #14
  br label %process_old_eras.exit

process_old_eras.exit:                            ; preds = %if.then.i.i, %if.then11.i.process_old_eras.exit_crit_edge, %if.else.i.process_old_eras.exit_crit_edge, %do.end.i, %kick_off_digest.exit.process_old_eras.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i) #14
  %20 = call ptr @memset(ptr %plug.i, i32 255, i32 24)
  %21 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %md.i, align 8
  %current_writeset.i = getelementptr inbounds %struct.era_metadata, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %current_writeset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %current_writeset.i, align 8
  %deferred_lock.i = getelementptr i8, ptr %ws, i32 44
  tail call void @_raw_spin_lock(ptr noundef %deferred_lock.i) #14
  %deferred_bios1.i = getelementptr i8, ptr %ws, i32 88
  %25 = ptrtoint ptr %deferred_bios1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %deferred_bios1.i, align 4
  %tail.i75.i = getelementptr i8, ptr %ws, i32 92
  %27 = ptrtoint ptr %tail.i75.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %tail.i75.i, align 4
  store ptr null, ptr %deferred_bios1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %deferred_lock.i) #14
  %cmp.i.not.i = icmp eq ptr %26, null
  br i1 %cmp.i.not.i, label %process_old_eras.exit.process_deferred_bios.exit_crit_edge, label %while.cond.preheader.i

process_old_eras.exit.process_deferred_bios.exit_crit_edge: ; preds = %process_old_eras.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_deferred_bios.exit

while.cond.preheader.i:                           ; preds = %process_old_eras.exit
  %sectors_per_block_shift.i.i.i = getelementptr i8, ptr %ws, i32 -12
  %sectors_per_block.i.i = getelementptr i8, ptr %ws, i32 -16
  %bits.i.i = getelementptr inbounds %struct.writeset, ptr %24, i32 0, i32 1
  %root.i.i = getelementptr inbounds %struct.writeset_metadata, ptr %24, i32 0, i32 1
  br label %if.then.i.i9

if.then.i.i9:                                     ; preds = %bio_list_add.exit.i.if.then.i.i9_crit_edge, %while.cond.preheader.i
  %failed.0.off0254.i = phi i1 [ false, %while.cond.preheader.i ], [ %failed.1.off0.i, %bio_list_add.exit.i.if.then.i.i9_crit_edge ]
  %commit_needed.0.off0252.i = phi i1 [ false, %while.cond.preheader.i ], [ %commit_needed.1.off0.i, %bio_list_add.exit.i.if.then.i.i9_crit_edge ]
  %marked_bios.sroa.0.0251.i = phi ptr [ null, %while.cond.preheader.i ], [ %marked_bios.sroa.0.1.i, %bio_list_add.exit.i.if.then.i.i9_crit_edge ]
  %marked_bios.sroa.9.0250.i = phi ptr [ null, %while.cond.preheader.i ], [ %deferred_bios.sroa.0.2249.i, %bio_list_add.exit.i.if.then.i.i9_crit_edge ]
  %deferred_bios.sroa.0.2249.i = phi ptr [ %26, %while.cond.preheader.i ], [ %29, %bio_list_add.exit.i.if.then.i.i9_crit_edge ]
  %28 = ptrtoint ptr %deferred_bios.sroa.0.2249.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %deferred_bios.sroa.0.2249.i, align 8
  store ptr null, ptr %deferred_bios.sroa.0.2249.i, align 8
  %30 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %md.i, align 8
  %bitset_info.i = getelementptr inbounds %struct.era_metadata, ptr %31, i32 0, i32 11
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %deferred_bios.sroa.0.2249.i, i32 0, i32 8
  %32 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bi_iter.i.i, align 8
  %34 = ptrtoint ptr %sectors_per_block_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sectors_per_block_shift.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.i.i = icmp sgt i32 %35, -1
  br i1 %cmp.i.i.i, label %if.else182.i.i, label %if.then.i80.i

if.then.i80.i:                                    ; preds = %if.then.i.i9
  %36 = ptrtoint ptr %sectors_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sectors_per_block.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %33)
  %cmp166.i.i = icmp ult i64 %33, 4294967296
  br i1 %cmp166.i.i, label %if.then170.i.i, label %if.else176.i.i, !prof !331

if.then170.i.i:                                   ; preds = %if.then.i80.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv171.i.i = trunc i64 %33 to i32
  %div174.i.i = udiv i32 %conv171.i.i, %37
  br label %get_block.exit.i

if.else176.i.i:                                   ; preds = %if.then.i80.i
  call void @__sanitizer_cov_trace_pc() #16
  %38 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %33) #19, !srcloc !332
  %asmresult1.i.i.i = extractvalue { i64, i64 } %38, 1
  %extract.t241.i = trunc i64 %asmresult1.i.i.i to i32
  br label %get_block.exit.i

if.else182.i.i:                                   ; preds = %if.then.i.i9
  call void @__sanitizer_cov_trace_pc() #16
  %sh_prom183.i.i = zext i32 %35 to i64
  %shr184.i.i = lshr i64 %33, %sh_prom183.i.i
  %extract.t.i = trunc i64 %shr184.i.i to i32
  br label %get_block.exit.i

get_block.exit.i:                                 ; preds = %if.else182.i.i, %if.else176.i.i, %if.then170.i.i
  %block_nr.0.i.off0.i = phi i32 [ %extract.t.i, %if.else182.i.i ], [ %div174.i.i, %if.then170.i.i ], [ %extract.t241.i, %if.else176.i.i ]
  %39 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bits.i.i, align 8
  %div3.i.i.i = lshr i32 %block_nr.0.i.off0.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %40, i32 %div3.i.i.i
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i83.i = and i32 %block_nr.0.i.off0.i, 31
  %43 = shl nuw i32 1, %and.i.i83.i
  %44 = and i32 %42, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i84.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i84.i, label %writeset_test_and_set.exit.i, label %get_block.exit.i.if.else.i11_crit_edge

get_block.exit.i.if.else.i11_crit_edge:           ; preds = %get_block.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i11

writeset_test_and_set.exit.i:                     ; preds = %get_block.exit.i
  %45 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %root.i.i, align 8
  %call3.i.i = tail call i32 @dm_bitset_set_bit(ptr noundef %bitset_info.i, i64 noundef %46, i32 noundef %block_nr.0.i.off0.i, ptr noundef %root.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i10 = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i10, label %writeset_test_and_set.exit.i.if.end15.i_crit_edge, label %writeset_test_and_set.exit.i.if.else.i11_crit_edge

writeset_test_and_set.exit.i.if.else.i11_crit_edge: ; preds = %writeset_test_and_set.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i11

writeset_test_and_set.exit.i.if.end15.i_crit_edge: ; preds = %writeset_test_and_set.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.else.i11:                                      ; preds = %writeset_test_and_set.exit.i.if.else.i11_crit_edge, %get_block.exit.i.if.else.i11_crit_edge
  %retval.0.i236.i = phi i32 [ %call3.i.i, %writeset_test_and_set.exit.i.if.else.i11_crit_edge ], [ 1, %get_block.exit.i.if.else.i11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i236.i)
  %cmp11.i = icmp eq i32 %retval.0.i236.i, 0
  %spec.select.i = select i1 %cmp11.i, i1 true, i1 %commit_needed.0.off0252.i
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i11, %writeset_test_and_set.exit.i.if.end15.i_crit_edge
  %commit_needed.1.off0.i = phi i1 [ %commit_needed.0.off0252.i, %writeset_test_and_set.exit.i.if.end15.i_crit_edge ], [ %spec.select.i, %if.else.i11 ]
  %failed.1.off0.i = phi i1 [ true, %writeset_test_and_set.exit.i.if.end15.i_crit_edge ], [ %failed.0.off0254.i, %if.else.i11 ]
  %47 = ptrtoint ptr %deferred_bios.sroa.0.2249.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %deferred_bios.sroa.0.2249.i, align 8
  %tobool.not.i87.i = icmp eq ptr %marked_bios.sroa.9.0250.i, null
  br i1 %tobool.not.i87.i, label %if.end15.i.bio_list_add.exit.i_crit_edge, label %if.then.i88.i

if.end15.i.bio_list_add.exit.i_crit_edge:         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_list_add.exit.i

if.then.i88.i:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %marked_bios.sroa.9.0250.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %deferred_bios.sroa.0.2249.i, ptr %marked_bios.sroa.9.0250.i, align 8
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.then.i88.i, %if.end15.i.bio_list_add.exit.i_crit_edge
  %marked_bios.sroa.0.1.i = phi ptr [ %marked_bios.sroa.0.0251.i, %if.then.i88.i ], [ %deferred_bios.sroa.0.2249.i, %if.end15.i.bio_list_add.exit.i_crit_edge ]
  %tobool.not.i76.i = icmp eq ptr %29, null
  br i1 %tobool.not.i76.i, label %while.end.i, label %bio_list_add.exit.i.if.then.i.i9_crit_edge

bio_list_add.exit.i.if.then.i.i9_crit_edge:       ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i9

while.end.i:                                      ; preds = %bio_list_add.exit.i
  br i1 %commit_needed.1.off0.i, label %if.then17.i, label %if.end23.i

if.then17.i:                                      ; preds = %while.end.i
  %49 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %md.i, align 8
  %call19.i = tail call fastcc i32 @metadata_commit(ptr noundef %50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp ne i32 %call19.i, 0
  %spec.select72.i = select i1 %tobool20.not.i, i1 true, i1 %failed.1.off0.i
  br i1 %spec.select72.i, label %if.then17.i.while.cond26.preheader.i_crit_edge, label %if.then17.i.if.else31.i_crit_edge

if.then17.i.if.else31.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else31.i

if.then17.i.while.cond26.preheader.i_crit_edge:   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond26.preheader.i

if.end23.i:                                       ; preds = %while.end.i
  br i1 %failed.1.off0.i, label %if.end23.i.while.cond26.preheader.i_crit_edge, label %if.end23.i.if.else31.i_crit_edge

if.end23.i.if.else31.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else31.i

if.end23.i.while.cond26.preheader.i_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond26.preheader.i

while.cond26.preheader.i:                         ; preds = %if.end23.i.while.cond26.preheader.i_crit_edge, %if.then17.i.while.cond26.preheader.i_crit_edge
  %tobool.not.i91260.i = icmp eq ptr %marked_bios.sroa.0.1.i, null
  br i1 %tobool.not.i91260.i, label %while.cond26.preheader.i.process_deferred_bios.exit_crit_edge, label %while.cond26.preheader.i.if.then.i93.i_crit_edge

while.cond26.preheader.i.if.then.i93.i_crit_edge: ; preds = %while.cond26.preheader.i
  br label %if.then.i93.i

while.cond26.preheader.i.process_deferred_bios.exit_crit_edge: ; preds = %while.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_deferred_bios.exit

if.then.i93.i:                                    ; preds = %if.then.i93.i.if.then.i93.i_crit_edge, %while.cond26.preheader.i.if.then.i93.i_crit_edge
  %marked_bios.sroa.0.2261.i = phi ptr [ %52, %if.then.i93.i.if.then.i93.i_crit_edge ], [ %marked_bios.sroa.0.1.i, %while.cond26.preheader.i.if.then.i93.i_crit_edge ]
  %51 = ptrtoint ptr %marked_bios.sroa.0.2261.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %marked_bios.sroa.0.2261.i, align 8
  store ptr null, ptr %marked_bios.sroa.0.2261.i, align 8
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %marked_bios.sroa.0.2261.i, i32 0, i32 6
  %53 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 10, ptr %bi_status.i.i, align 2
  tail call void @bio_endio(ptr noundef nonnull %marked_bios.sroa.0.2261.i) #14
  %tobool.not.i91.i = icmp eq ptr %52, null
  br i1 %tobool.not.i91.i, label %if.then.i93.i.process_deferred_bios.exit_crit_edge, label %if.then.i93.i.if.then.i93.i_crit_edge

if.then.i93.i.if.then.i93.i_crit_edge:            ; preds = %if.then.i93.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i93.i

if.then.i93.i.process_deferred_bios.exit_crit_edge: ; preds = %if.then.i93.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_deferred_bios.exit

if.else31.i:                                      ; preds = %if.end23.i.if.else31.i_crit_edge, %if.then17.i.if.else31.i_crit_edge
  call void @blk_start_plug(ptr noundef nonnull %plug.i) #14
  %tobool.not.i99257.i = icmp eq ptr %marked_bios.sroa.0.1.i, null
  br i1 %tobool.not.i99257.i, label %if.else31.i.while.end41.i_crit_edge, label %if.else31.i.if.then.i101.i_crit_edge

if.else31.i.if.then.i101.i_crit_edge:             ; preds = %if.else31.i
  br label %if.then.i101.i

if.else31.i.while.end41.i_crit_edge:              ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end41.i

if.then.i101.i:                                   ; preds = %if.end40.i.if.then.i101.i_crit_edge, %if.else31.i.if.then.i101.i_crit_edge
  %marked_bios.sroa.0.4258.i = phi ptr [ %55, %if.end40.i.if.then.i101.i_crit_edge ], [ %marked_bios.sroa.0.1.i, %if.else31.i.if.then.i101.i_crit_edge ]
  %54 = ptrtoint ptr %marked_bios.sroa.0.4258.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %marked_bios.sroa.0.4258.i, align 8
  store ptr null, ptr %marked_bios.sroa.0.4258.i, align 8
  br i1 %commit_needed.1.off0.i, label %if.then37.i, label %if.then.i101.i.if.end40.i_crit_edge

if.then.i101.i.if.end40.i_crit_edge:              ; preds = %if.then.i101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

if.then37.i:                                      ; preds = %if.then.i101.i
  %bi_iter.i107.i = getelementptr inbounds %struct.bio, ptr %marked_bios.sroa.0.4258.i, i32 0, i32 8
  %56 = ptrtoint ptr %bi_iter.i107.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %bi_iter.i107.i, align 8
  %58 = ptrtoint ptr %sectors_per_block_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sectors_per_block_shift.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp.i.i109.i = icmp sgt i32 %59, -1
  br i1 %cmp.i.i109.i, label %if.else182.i228.i, label %if.then.i114.i

if.then.i114.i:                                   ; preds = %if.then37.i
  %60 = ptrtoint ptr %sectors_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sectors_per_block.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %57)
  %cmp166.i218.i = icmp ult i64 %57, 4294967296
  br i1 %cmp166.i218.i, label %if.then170.i223.i, label %if.else176.i225.i, !prof !331

if.then170.i223.i:                                ; preds = %if.then.i114.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv171.i220.i = trunc i64 %57 to i32
  %div174.i221.i = udiv i32 %conv171.i220.i, %61
  br label %get_block.exit230.i

if.else176.i225.i:                                ; preds = %if.then.i114.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %61, i64 %57) #19, !srcloc !332
  %asmresult1.i.i224.i = extractvalue { i64, i64 } %62, 1
  %extract.t246.i = trunc i64 %asmresult1.i.i224.i to i32
  br label %get_block.exit230.i

if.else182.i228.i:                                ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  %sh_prom183.i226.i = zext i32 %59 to i64
  %shr184.i227.i = lshr i64 %57, %sh_prom183.i226.i
  %extract.t243.i = trunc i64 %shr184.i227.i to i32
  br label %get_block.exit230.i

get_block.exit230.i:                              ; preds = %if.else182.i228.i, %if.else176.i225.i, %if.then170.i223.i
  %block_nr.0.i229.off0.i = phi i32 [ %extract.t243.i, %if.else182.i228.i ], [ %div174.i221.i, %if.then170.i223.i ], [ %extract.t246.i, %if.else176.i225.i ]
  %63 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bits.i.i, align 8
  call void @_set_bit(i32 noundef %block_nr.0.i229.off0.i, ptr noundef %64) #14
  br label %if.end40.i

if.end40.i:                                       ; preds = %get_block.exit230.i, %if.then.i101.i.if.end40.i_crit_edge
  call void @submit_bio_noacct(ptr noundef nonnull %marked_bios.sroa.0.4258.i) #14
  %tobool.not.i99.i = icmp eq ptr %55, null
  br i1 %tobool.not.i99.i, label %if.end40.i.while.end41.i_crit_edge, label %if.end40.i.if.then.i101.i_crit_edge

if.end40.i.if.then.i101.i_crit_edge:              ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i101.i

if.end40.i.while.end41.i_crit_edge:               ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end41.i

while.end41.i:                                    ; preds = %if.end40.i.while.end41.i_crit_edge, %if.else31.i.while.end41.i_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug.i) #14
  br label %process_deferred_bios.exit

process_deferred_bios.exit:                       ; preds = %while.end41.i, %if.then.i93.i.process_deferred_bios.exit_crit_edge, %while.cond26.preheader.i.process_deferred_bios.exit_crit_edge, %process_old_eras.exit.process_deferred_bios.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %calls.i) #14
  %65 = getelementptr inbounds %struct.list_head, ptr %calls.i, i32 0, i32 1
  %66 = ptrtoint ptr %calls.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %calls.i, ptr %calls.i, align 4
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %calls.i, ptr %65, align 4
  %rpc_lock.i = getelementptr i8, ptr %ws, i32 96
  call void @_raw_spin_lock(ptr noundef %rpc_lock.i) #14
  %rpc_calls.i = getelementptr i8, ptr %ws, i32 140
  %68 = ptrtoint ptr %rpc_calls.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %rpc_calls.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %69, %rpc_calls.i
  br i1 %cmp.i.not.i.i, label %process_deferred_bios.exit.list_splice_init.exit.i_crit_edge, label %if.then.i.i12

process_deferred_bios.exit.list_splice_init.exit.i_crit_edge: ; preds = %process_deferred_bios.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit.i

if.then.i.i12:                                    ; preds = %process_deferred_bios.exit
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %calls.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %calls.i, align 4
  %prev2.i.i.i = getelementptr i8, ptr %ws, i32 144
  %72 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %calls.i, ptr %prev3.i.i.i, align 4
  store ptr %69, ptr %calls.i, align 4
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %71, ptr %73, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev6.i.i.i, align 4
  %77 = ptrtoint ptr %rpc_calls.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %rpc_calls.i, ptr %rpc_calls.i, align 4
  store ptr %rpc_calls.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i12, %process_deferred_bios.exit.list_splice_init.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rpc_lock.i) #14
  %78 = ptrtoint ptr %calls.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %calls.i, align 4
  %cmp.not89.i = icmp eq ptr %79, %calls.i
  br i1 %cmp.not89.i, label %list_splice_init.exit.i.if.end43.i_crit_edge, label %list_splice_init.exit.i.for.body.i_crit_edge

list_splice_init.exit.i.for.body.i_crit_edge:     ; preds = %list_splice_init.exit.i
  br label %for.body.i

list_splice_init.exit.i.if.end43.i_crit_edge:     ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %list_splice_init.exit.i.for.body.i_crit_edge
  %rpc.090.i = phi ptr [ %tmp.092.i, %cond.end.i.for.body.i_crit_edge ], [ %79, %list_splice_init.exit.i.for.body.i_crit_edge ]
  %80 = ptrtoint ptr %rpc.090.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %tmp.092.i = load ptr, ptr %rpc.090.i, align 4
  %fn0.i = getelementptr inbounds %struct.rpc, ptr %rpc.090.i, i32 0, i32 1
  %81 = ptrtoint ptr %fn0.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fn0.i, align 4
  %tobool.not.i14 = icmp eq ptr %82, null
  br i1 %tobool.not.i14, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %md.i, align 8
  %call.i15 = call i32 %82(ptr noundef %84) #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %fn1.i = getelementptr inbounds %struct.rpc, ptr %rpc.090.i, i32 0, i32 2
  %85 = ptrtoint ptr %fn1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fn1.i, align 4
  %87 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %md.i, align 8
  %arg.i = getelementptr inbounds %struct.rpc, ptr %rpc.090.i, i32 0, i32 3
  %89 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arg.i, align 4
  %call10.i = call i32 %86(ptr noundef %88, ptr noundef %90) #14
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i15, %cond.true.i ], [ %call10.i, %cond.false.i ]
  %result.i = getelementptr inbounds %struct.rpc, ptr %rpc.090.i, i32 0, i32 4
  %91 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %cond.i, ptr %result.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.092.i, %calls.i
  br i1 %cmp.not.i, label %if.then.i16, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.then.i16:                                      ; preds = %cond.end.i
  %92 = ptrtoint ptr %md.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %md.i, align 8
  %call18.i = call fastcc i32 @metadata_commit(ptr noundef %93) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then.i16.if.end43.i_crit_edge, label %if.then20.i

if.then.i16.if.end43.i_crit_edge:                 ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

if.then20.i:                                      ; preds = %if.then.i16
  %94 = ptrtoint ptr %calls.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %calls.i, align 4
  %cmp32.not93.i = icmp eq ptr %95, %calls.i
  br i1 %cmp32.not93.i, label %if.then20.i.if.end43.i_crit_edge, label %if.then20.i.for.body34.i_crit_edge

if.then20.i.for.body34.i_crit_edge:               ; preds = %if.then20.i
  br label %for.body34.i

if.then20.i.if.end43.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %if.then20.i.for.body34.i_crit_edge
  %rpc.194.i = phi ptr [ %tmp.1.i, %for.body34.i.for.body34.i_crit_edge ], [ %95, %if.then20.i.for.body34.i_crit_edge ]
  %96 = ptrtoint ptr %rpc.194.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %tmp.1.i = load ptr, ptr %rpc.194.i, align 4
  %result35.i = getelementptr inbounds %struct.rpc, ptr %rpc.194.i, i32 0, i32 4
  %97 = ptrtoint ptr %result35.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call18.i, ptr %result35.i, align 4
  %cmp32.not.i = icmp eq ptr %tmp.1.i, %calls.i
  br i1 %cmp32.not.i, label %for.body34.i.if.end43.i_crit_edge, label %for.body34.i.for.body34.i_crit_edge

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body34.i

for.body34.i.if.end43.i_crit_edge:                ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

if.end43.i:                                       ; preds = %for.body34.i.if.end43.i_crit_edge, %if.then20.i.if.end43.i_crit_edge, %if.then.i16.if.end43.i_crit_edge, %list_splice_init.exit.i.if.end43.i_crit_edge
  %98 = ptrtoint ptr %calls.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %calls.i, align 4
  %cmp55.not95.i = icmp eq ptr %99, %calls.i
  br i1 %cmp55.not95.i, label %if.end43.i.process_rpc_calls.exit_crit_edge, label %if.end43.i.for.body57.i_crit_edge

if.end43.i.for.body57.i_crit_edge:                ; preds = %if.end43.i
  br label %for.body57.i

if.end43.i.process_rpc_calls.exit_crit_edge:      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_rpc_calls.exit

for.body57.i:                                     ; preds = %for.body57.i.for.body57.i_crit_edge, %if.end43.i.for.body57.i_crit_edge
  %rpc.296.i = phi ptr [ %tmp.2.i, %for.body57.i.for.body57.i_crit_edge ], [ %99, %if.end43.i.for.body57.i_crit_edge ]
  %100 = ptrtoint ptr %rpc.296.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %tmp.2.i = load ptr, ptr %rpc.296.i, align 4
  %complete.i = getelementptr inbounds %struct.rpc, ptr %rpc.296.i, i32 0, i32 5
  call void @complete(ptr noundef %complete.i) #14
  %cmp55.not.i = icmp eq ptr %tmp.2.i, %calls.i
  br i1 %cmp55.not.i, label %for.body57.i.process_rpc_calls.exit_crit_edge, label %for.body57.i.for.body57.i_crit_edge

for.body57.i.for.body57.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body57.i

for.body57.i.process_rpc_calls.exit_crit_edge:    ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_rpc_calls.exit

process_rpc_calls.exit:                           ; preds = %for.body57.i.process_rpc_calls.exit_crit_edge, %if.end43.i.process_rpc_calls.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %calls.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_block_manager_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_manager_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_block_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_read_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bm_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_create_with_sm(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_empty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_empty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_disk_bitset_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ws_inc(ptr nocapture noundef readonly %context, ptr nocapture noundef readonly %value, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3.not = icmp eq i32 %count, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tm = getelementptr inbounds %struct.era_metadata, ptr %context, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %value, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = mul i32 %i.04, 12
  %ws_d.sroa.4.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 %mul
  %0 = ptrtoint ptr %ws_d.sroa.4.0.add.ptr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %ws_d.sroa.4.0.copyload = load i64, ptr %ws_d.sroa.4.0.add.ptr.sroa_idx, align 1
  %1 = tail call i64 @llvm.bswap.i64(i64 %ws_d.sroa.4.0.copyload)
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tm, align 4
  tail call void @dm_tm_inc(ptr noundef %3, i64 noundef %1) #14
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ws_dec(ptr noundef %context, ptr nocapture noundef readonly %value, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3.not = icmp eq i32 %count, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bitset_info = getelementptr inbounds %struct.era_metadata, ptr %context, i32 0, i32 11
  %add.ptr = getelementptr i8, ptr %value, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = mul i32 %i.04, 12
  %ws_d.sroa.4.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 %mul
  %0 = ptrtoint ptr %ws_d.sroa.4.0.add.ptr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %ws_d.sroa.4.0.copyload = load i64, ptr %ws_d.sroa.4.0.add.ptr.sroa_idx, align 1
  %1 = tail call i64 @llvm.bswap.i64(i64 %ws_d.sroa.4.0.copyload)
  %call = tail call i32 @dm_bitset_del(ptr noundef %bitset_info, i64 noundef %1) #14
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ws_eq(ptr nocapture noundef readnone %context, ptr nocapture noundef readonly %value1, ptr nocapture noundef readonly %value2) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(12) %value1, ptr noundef dereferenceable(12) %value2, i32 12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_inc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_del(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_array_info_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_commit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_write_lock_zero(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sb_prepare_for_write(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %sb_block_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #14
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #14
  %0 = tail call i64 @llvm.bswap.i64(i64 %call1)
  %blocknr = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %blocknr to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 %0, ptr %blocknr, align 1
  %flags = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 1
  %sub = add i32 %sb_block_size, -4
  %call2 = tail call i32 @dm_bm_checksum(ptr noundef %flags, i32 noundef %sub, i32 noundef 146538381) #14
  %2 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %call, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sb_check(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %sb_block_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #14
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #14
  %blocknr = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %blocknr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %blocknr, align 1
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %2)
  %cmp.not = icmp eq i64 %call1, %2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i64 @dm_block_location(ptr noundef %b) #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i64 noundef %2, i64 noundef %call3) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %magic to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %magic, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 8865267138412150784, i64 %4)
  %cmp5.not = icmp eq i64 %4, 8865267138412150784
  br i1 %cmp5.not, label %if.end13, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %5, i64 noundef 2126579579) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 1
  %sub = add i32 %sb_block_size, -4
  %call14 = tail call i32 @dm_bm_checksum(ptr noundef %flags, i32 noundef %sub, i32 noundef 146538381) #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %call14)
  %7 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %call, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp15.not = icmp eq i32 %6, %8
  br i1 %cmp15.not, label %if.end23, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call14, i32 noundef %9) #17
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %version.i = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %version.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %version.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp1.i = icmp ugt i32 %12, 1
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp1.i
  br i1 %or.cond.i, label %do.end.i, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %12, i32 noundef 1, i32 noundef 1) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end23.cleanup_crit_edge, %do.end19, %do.end9, %do.end
  %retval.0 = phi i32 [ -15, %do.end ], [ -84, %do.end9 ], [ -84, %do.end19 ], [ -22, %do.end.i ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_block_location(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_checksum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_open_with_sm(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_digest_lookup_writeset(ptr noundef %md, ptr noundef %d) #2 align 64 {
entry:
  %key = alloca i64, align 8
  %disk = alloca %struct.writeset_disk, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #14
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key, align 8, !annotation !329
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %disk) #14
  %1 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %disk, align 4, !annotation !329
  %2 = getelementptr inbounds %struct.writeset_disk, ptr %disk, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4, !annotation !329
  %writeset_tree_info = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 12
  %writeset_tree_root = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 9
  %4 = ptrtoint ptr %writeset_tree_root to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %writeset_tree_root, align 8
  %call = call i32 @dm_btree_find_lowest_key(ptr noundef %writeset_tree_info, i64 noundef %5, ptr noundef nonnull %key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %key, align 8
  %conv = trunc i64 %7 to i32
  %8 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %d, align 8
  %9 = ptrtoint ptr %writeset_tree_root to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %writeset_tree_root, align 8
  %call3 = call i32 @dm_btree_lookup(ptr noundef %writeset_tree_info, i64 noundef %10, ptr noundef nonnull %key, ptr noundef nonnull %disk) #14
  %11 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %call3, label %do.end [
    i32 0, label %if.end10
    i32 -61, label %if.then7
  ]

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %step = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 6
  %12 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %step, align 8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %writeset = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 3
  %13 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %disk, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #14
  %16 = ptrtoint ptr %writeset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %writeset, align 8
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %2, align 4
  %19 = call i64 @llvm.bswap.i64(i64 %18) #14
  %root2.i = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %root2.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %root2.i, align 8
  %21 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %key, align 8
  %conv11 = trunc i64 %22 to i32
  %23 = call i32 @llvm.bswap.i32(i32 %conv11)
  %value = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 4
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %value, align 8
  %tm = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 3
  %25 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tm, align 4
  %info = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 5
  call void @dm_disk_bitset_init(ptr noundef %26, ptr noundef %info) #14
  %27 = ptrtoint ptr %writeset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %writeset, align 8
  %nr_blocks = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 5
  %29 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_blocks, align 8
  %31 = call i32 @llvm.umin.i32(i32 %28, i32 %30)
  %nr_bits16 = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 1
  %32 = ptrtoint ptr %nr_bits16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %nr_bits16, align 4
  %current_bit = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 2
  %33 = ptrtoint ptr %current_bit to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %current_bit, align 8
  %step17 = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 6
  %34 = ptrtoint ptr %step17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @metadata_digest_transcribe_writeset, ptr %step17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %call3, %do.end ], [ 0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %disk) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_find_lowest_key(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_lookup(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_digest_transcribe_writeset(ptr noundef %md, ptr noundef %d) #2 align 64 {
entry:
  %marked = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %marked) #14
  %0 = ptrtoint ptr %marked to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %marked, align 1, !annotation !329
  %current_bit = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %current_bit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %current_bit, align 8
  %add = add i32 %2, 100
  %nr_bits = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 1
  %3 = ptrtoint ptr %nr_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_bits, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %add, i32 %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp252 = icmp ult i32 %2, %5
  br i1 %cmp252, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %info = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 5
  %root.i = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 3, i32 1
  %era_array_info = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 13
  %era_array_root = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 10
  %value = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %b.053 = phi i32 [ %2, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %root.i, align 8
  %call.i = call i32 @dm_bitset_test_bit(ptr noundef %info, i64 noundef %7, i32 noundef %b.053, ptr noundef %root.i, ptr noundef nonnull %marked) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end

do.body4.i:                                       ; preds = %for.body
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %root.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %7)
  %cmp.not.i = icmp eq i64 %9, %7
  br i1 %cmp.not.i, label %if.end, label %do.body10.i, !prof !331

do.body10.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-era-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #14, !srcloc !336
  unreachable

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #17
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #17
  br label %cleanup

if.end:                                           ; preds = %do.body4.i
  %10 = ptrtoint ptr %marked to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %marked, align 1, !range !335
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.end7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %era_array_root to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %era_array_root, align 8
  %call9 = call i32 @dm_array_set_value(ptr noundef %era_array_info, i64 noundef %13, i32 noundef %b.053, ptr noundef %value, ptr noundef %era_array_root) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.for.inc_crit_edge, label %do.end14

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52) #17
  br label %cleanup

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add i32 %b.053, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %b.0.lcssa = phi i32 [ %2, %entry.for.end_crit_edge ], [ %5, %for.inc.for.end_crit_edge ]
  %14 = ptrtoint ptr %nr_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %b.0.lcssa, i32 %15)
  %cmp19 = icmp eq i32 %b.0.lcssa, %15
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %step = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 6
  %16 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @metadata_digest_remove_writeset, ptr %step, align 8
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %current_bit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %b.0.lcssa, ptr %current_bit, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %do.end14, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call9, %do.end14 ], [ 0, %if.else ], [ 0, %if.then21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %marked) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_set_value(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_digest_remove_writeset(ptr noundef %md, ptr nocapture noundef %d) #2 align 64 {
entry:
  %key = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #14
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %key, align 8
  %writeset_tree_info = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 12
  %writeset_tree_root = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 9
  %3 = ptrtoint ptr %writeset_tree_root to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %writeset_tree_root, align 8
  %call = call i32 @dm_btree_remove(ptr noundef %writeset_tree_info, i64 noundef %4, ptr noundef nonnull %key, ptr noundef %writeset_tree_root) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %step = getelementptr inbounds %struct.digest, ptr %d, i32 0, i32 6
  %5 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @metadata_digest_lookup_writeset, ptr %step, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_test_bit(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_remove(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @metadata_commit(ptr noundef %md) unnamed_addr #2 align 64 {
entry:
  %metadata_len.i = alloca i32, align 4
  %sblock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock) #14
  %0 = ptrtoint ptr %sblock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock, align 4, !annotation !329
  %current_writeset = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 8
  %1 = ptrtoint ptr %current_writeset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %current_writeset, align 8
  %root = getelementptr inbounds %struct.writeset_metadata, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %root, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not = icmp eq i64 %4, 0
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then:                                          ; preds = %entry
  %bitset_info = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 11
  %call = tail call i32 @dm_bitset_flush(ptr noundef %bitset_info, i64 noundef %4, ptr noundef %root) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end10_crit_edge, label %do.end

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #17
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %tm = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 3
  %5 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tm, align 4
  %call11 = tail call i32 @dm_tm_pre_commit(ptr noundef %6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63) #17
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata_len.i) #14
  %7 = ptrtoint ptr %metadata_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %metadata_len.i, align 4, !annotation !329
  %sm.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 2
  %8 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sm.i, align 8
  %root_size.i.i = getelementptr inbounds %struct.dm_space_map, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %root_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %root_size.i.i, align 4
  %call.i.i = call i32 %11(ptr noundef %9, ptr noundef nonnull %metadata_len.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %save_sm_root.exit.thread, label %save_sm_root.exit

save_sm_root.exit.thread:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata_len.i) #14
  br label %do.end25

save_sm_root.exit:                                ; preds = %if.end19
  %12 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sm.i, align 8
  %metadata_space_map_root.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 16
  %14 = ptrtoint ptr %metadata_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %metadata_len.i, align 4
  %copy_root.i.i = getelementptr inbounds %struct.dm_space_map, ptr %13, i32 0, i32 12
  %16 = ptrtoint ptr %copy_root.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %copy_root.i.i, align 4
  %call.i7.i = call i32 %17(ptr noundef %13, ptr noundef %metadata_space_map_root.i, i32 noundef %15) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata_len.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool21.not = icmp eq i32 %call.i7.i, 0
  br i1 %tobool21.not, label %if.end28, label %save_sm_root.exit.do.end25_crit_edge

save_sm_root.exit.do.end25_crit_edge:             ; preds = %save_sm_root.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

do.end25:                                         ; preds = %save_sm_root.exit.do.end25_crit_edge, %save_sm_root.exit.thread
  %retval.0.i59 = phi i32 [ %call.i.i, %save_sm_root.exit.thread ], [ %call.i7.i, %save_sm_root.exit.do.end25_crit_edge ]
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.63) #17
  br label %cleanup

if.end28:                                         ; preds = %save_sm_root.exit
  %bm.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 1
  %18 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bm.i, align 4
  %call.i = call i32 @dm_bm_write_lock(ptr noundef %19, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.63) #17
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sblock, align 4
  %call38 = call ptr @dm_block_data(ptr noundef %21) #14
  %magic.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 4
  %22 = ptrtoint ptr %magic.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 8865267138412150784, ptr %magic.i, align 1
  %flags.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %flags.i, align 1
  %uuid.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 3
  %24 = call ptr @memset(ptr %uuid.i, i32 0, i32 16)
  %version.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 5
  %25 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 16777216, ptr %version.i, align 1
  %metadata_space_map_root.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 6
  %26 = call ptr @memcpy(ptr %metadata_space_map_root.i.i, ptr %metadata_space_map_root.i, i32 128)
  %block_size.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 4
  %27 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %block_size.i, align 8
  %conv.i = trunc i64 %28 to i32
  %29 = call i32 @llvm.bswap.i32(i32 %conv.i) #14
  %data_block_size.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 7
  %30 = ptrtoint ptr %data_block_size.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %data_block_size.i, align 1
  %metadata_block_size.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 8
  %31 = ptrtoint ptr %metadata_block_size.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 134217728, ptr %metadata_block_size.i, align 1
  %nr_blocks.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 5
  %32 = ptrtoint ptr %nr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_blocks.i, align 8
  %34 = call i32 @llvm.bswap.i32(i32 %33) #14
  %nr_blocks1.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 9
  %35 = ptrtoint ptr %nr_blocks1.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %nr_blocks1.i, align 1
  %current_era.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 6
  %36 = ptrtoint ptr %current_era.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %current_era.i, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #14
  %current_era2.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 10
  %39 = ptrtoint ptr %current_era2.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %current_era2.i, align 1
  %40 = ptrtoint ptr %current_writeset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %current_writeset, align 8
  %current_writeset4.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 11
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %44 = call i32 @llvm.bswap.i32(i32 %43) #14
  %45 = ptrtoint ptr %current_writeset4.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %current_writeset4.i, align 1
  %root.i.i = getelementptr inbounds %struct.writeset_metadata, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %root.i.i, align 8
  %48 = call i64 @llvm.bswap.i64(i64 %47) #14
  %root2.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 11, i32 1
  %49 = ptrtoint ptr %root2.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %root2.i.i, align 1
  %writeset_tree_root.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 9
  %50 = ptrtoint ptr %writeset_tree_root.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %writeset_tree_root.i, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51) #14
  %writeset_tree_root5.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 12
  %53 = ptrtoint ptr %writeset_tree_root5.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %writeset_tree_root5.i, align 1
  %era_array_root.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 10
  %54 = ptrtoint ptr %era_array_root.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %era_array_root.i, align 8
  %56 = call i64 @llvm.bswap.i64(i64 %55) #14
  %era_array_root6.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 13
  %57 = ptrtoint ptr %era_array_root6.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %era_array_root6.i, align 1
  %metadata_snap.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 14
  %58 = ptrtoint ptr %metadata_snap.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %metadata_snap.i, align 8
  %60 = call i64 @llvm.bswap.i64(i64 %59) #14
  %metadata_snap7.i = getelementptr inbounds %struct.superblock_disk, ptr %call38, i32 0, i32 14
  %61 = ptrtoint ptr %metadata_snap7.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %60, ptr %metadata_snap7.i, align 1
  %62 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tm, align 4
  %64 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sblock, align 4
  %call40 = call i32 @dm_tm_commit(ptr noundef %63, ptr noundef %65) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end34, %do.end25, %do.end16, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call11, %do.end16 ], [ %retval.0.i59, %do.end25 ], [ %call.i, %do.end34 ], [ %call40, %if.end37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_set_bit(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_flush(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_pre_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_write_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_era_archive(ptr noundef %md) #2 align 64 {
entry:
  %keys = alloca [1 x i64], align 8
  %value = alloca %struct.writeset_disk, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keys) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %value) #14
  %bitset_info = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 11
  %current_writeset = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 8
  %0 = ptrtoint ptr %current_writeset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_writeset, align 8
  %root = getelementptr inbounds %struct.writeset_metadata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %root, align 8
  %call = tail call i32 @dm_bitset_flush(ptr noundef %bitset_info, i64 noundef %3, ptr noundef %root) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.writeset_disk, ptr %value, i32 0, i32 1
  %5 = ptrtoint ptr %current_writeset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_writeset, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 4
  %root.i = getelementptr inbounds %struct.writeset_metadata, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %root.i, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #14
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %4, align 4
  %current_era = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 6
  %15 = ptrtoint ptr %current_era to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_era, align 4
  %conv = zext i32 %16 to i64
  %17 = ptrtoint ptr %keys to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %keys, align 8
  %writeset_tree_info = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 12
  %writeset_tree_root = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 9
  %18 = ptrtoint ptr %writeset_tree_root to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %writeset_tree_root, align 8
  %call9 = call i32 @dm_btree_insert(ptr noundef %writeset_tree_info, i64 noundef %19, ptr noundef nonnull %keys, ptr noundef nonnull %value, ptr noundef %writeset_tree_root) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80) #17
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %current_writeset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %current_writeset, align 8
  %root20 = getelementptr inbounds %struct.writeset_metadata, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %root20 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %root20, align 8
  %archived_writesets = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 15
  %23 = ptrtoint ptr %archived_writesets to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %archived_writesets, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end14, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call9, %do.end14 ], [ 0, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %value) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keys) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perform_rpc(ptr noundef %era, ptr noundef %rpc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.rpc, ptr %rpc, i32 0, i32 4
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  %complete = getelementptr inbounds %struct.rpc, ptr %rpc, i32 0, i32 5
  %1 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.rpc, ptr %rpc, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @init_completion.__key) #14
  %rpc_lock = getelementptr inbounds %struct.era, ptr %era, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %rpc_lock) #14
  %rpc_calls = getelementptr inbounds %struct.era, ptr %era, i32 0, i32 12
  %2 = ptrtoint ptr %rpc_calls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpc_calls, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rpc, ptr noundef %rpc_calls, ptr noundef %3) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rpc, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %rpc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %rpc, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %rpc, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rpc_calls, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %rpc_calls to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %rpc, ptr %rpc_calls, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rpc_lock) #14
  %suspended.i = getelementptr inbounds %struct.era, ptr %era, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %suspended.i, i32 noundef 4) #14
  %8 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %list_add.exit.wake_worker.exit_crit_edge

list_add.exit.wake_worker.exit_crit_edge:         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %wake_worker.exit

if.then.i:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  %wq.i = getelementptr inbounds %struct.era, ptr %era, i32 0, i32 7
  %10 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq.i, align 4
  %worker.i = getelementptr inbounds %struct.era, ptr %era, i32 0, i32 8
  %call.i.i11 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %worker.i) #14
  br label %wake_worker.exit

wake_worker.exit:                                 ; preds = %if.then.i, %list_add.exit.wake_worker.exit_crit_edge
  tail call void @wait_for_completion(ptr noundef %complete) #14
  %12 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %result, align 4
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_insert(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_era_rollover(ptr noundef %md) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %current_writeset = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 8
  %0 = ptrtoint ptr %current_writeset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_writeset, align 8
  %root = getelementptr inbounds %struct.writeset_metadata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %root, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @metadata_era_archive(ptr noundef %md)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106) #17
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %4 = ptrtoint ptr %current_writeset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_writeset, align 8
  %writesets.i.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 7
  %cmp.i.i = icmp eq ptr %5, %writesets.i.i
  %arrayidx2.i.i = getelementptr %struct.era_metadata, ptr %md, i32 0, i32 7, i32 1
  %cond.i.i = select i1 %cmp.i.i, ptr %arrayidx2.i.i, ptr %writesets.i.i
  %bitset_info.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 11
  %nr_blocks.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 5
  %6 = ptrtoint ptr %nr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_blocks.i, align 8
  %bits.i.i = getelementptr inbounds %struct.writeset, ptr %cond.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bits.i.i, align 8
  %sub.i.i.i = add i32 %7, 31
  %10 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %10, 536870908
  %11 = call ptr @memset(ptr %9, i32 0, i32 %mul.i.i.i)
  %12 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %cond.i.i, align 8
  %root.i.i = getelementptr inbounds %struct.writeset_metadata, ptr %cond.i.i, i32 0, i32 1
  %call.i.i.i = tail call i32 @dm_bitset_empty(ptr noundef %bitset_info.i, ptr noundef %root.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %setup_on_disk_bitset.exit.i.i, label %if.end4.do.end10_crit_edge

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

setup_on_disk_bitset.exit.i.i:                    ; preds = %if.end4
  %13 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %root.i.i, align 8
  %call1.i.i.i = tail call i32 @dm_bitset_resize(ptr noundef %bitset_info.i, i64 noundef %14, i32 noundef 0, i32 noundef %7, i1 noundef zeroext false, ptr noundef %root.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i, label %metadata_new_era.exit.thread, label %setup_on_disk_bitset.exit.i.i.do.end10_crit_edge

setup_on_disk_bitset.exit.i.i.do.end10_crit_edge: ; preds = %setup_on_disk_bitset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

metadata_new_era.exit.thread:                     ; preds = %setup_on_disk_bitset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !337
  %15 = ptrtoint ptr %current_writeset to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %cond.i.i, ptr %current_writeset, align 8
  tail call void @synchronize_rcu() #14
  %current_era.i = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 6
  %16 = ptrtoint ptr %current_era.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %current_era.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %current_era.i, align 4
  br label %cleanup

do.end10:                                         ; preds = %setup_on_disk_bitset.exit.i.i.do.end10_crit_edge, %if.end4.do.end10_crit_edge
  %retval.0.i14.i.i = phi i32 [ %call1.i.i.i, %setup_on_disk_bitset.exit.i.i.do.end10_crit_edge ], [ %call.i.i.i, %if.end4.do.end10_crit_edge ]
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113) #17
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111) #17
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.106) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %metadata_new_era.exit.thread, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i14.i.i, %do.end10 ], [ 0, %metadata_new_era.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_resize(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_empty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_resize(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_get_stats(ptr nocapture noundef readonly %md, ptr nocapture noundef writeonly %ptr) #2 align 64 {
entry:
  %nr_free = alloca i64, align 8
  %nr_total = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nr_free) #14
  %0 = ptrtoint ptr %nr_free to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %nr_free, align 8, !annotation !329
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nr_total) #14
  %1 = ptrtoint ptr %nr_total to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %nr_total, align 8, !annotation !329
  %sm = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 2
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 8
  %get_nr_free.i = getelementptr inbounds %struct.dm_space_map, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %get_nr_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_nr_free.i, align 4
  %call.i = call i32 %5(ptr noundef %3, ptr noundef nonnull %nr_free) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %call.i) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm, align 8
  %get_nr_blocks.i = getelementptr inbounds %struct.dm_space_map, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %get_nr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_nr_blocks.i, align 4
  %call.i26 = call i32 %9(ptr noundef %7, ptr noundef nonnull %nr_total) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool4.not = icmp eq i32 %call.i26, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %call.i26) #17
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %nr_total to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %nr_total, align 8
  %12 = ptrtoint ptr %nr_free to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %nr_free, align 8
  %sub = sub i64 %11, %13
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %sub, ptr %ptr, align 8
  %total = getelementptr inbounds %struct.metadata_stats, ptr %ptr, i32 0, i32 1
  %15 = ptrtoint ptr %total to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %11, ptr %total, align 8
  %metadata_snap = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 14
  %16 = ptrtoint ptr %metadata_snap to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %metadata_snap, align 8
  %snap = getelementptr inbounds %struct.metadata_stats, ptr %ptr, i32 0, i32 2
  %18 = ptrtoint ptr %snap to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %snap, align 8
  %current_era = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 6
  %19 = ptrtoint ptr %current_era to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_era, align 4
  %era = getelementptr inbounds %struct.metadata_stats, ptr %ptr, i32 0, i32 3
  %21 = ptrtoint ptr %era to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %era, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i26, %do.end8 ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nr_total) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nr_free) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_checkpoint(ptr noundef %md) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @metadata_era_rollover(ptr noundef %md)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_take_snap(ptr noundef %md) #2 align 64 {
entry:
  %inc = alloca i32, align 4
  %clone = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inc) #14
  %0 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %inc, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clone) #14
  %1 = ptrtoint ptr %clone to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %clone, align 4, !annotation !329
  %metadata_snap = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 14
  %2 = ptrtoint ptr %metadata_snap to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %metadata_snap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @metadata_era_rollover(ptr noundef %md)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.135) #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc i32 @metadata_commit(ptr noundef %md)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.135) #17
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %sm = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 2
  %4 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm, align 8
  %inc_blocks.i.i = getelementptr inbounds %struct.dm_space_map, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %inc_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inc_blocks.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %5, i64 noundef 0, i64 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.135) #17
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %tm = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 3
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tm, align 4
  %call27 = call i32 @dm_tm_shadow_block(ptr noundef %9, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %clone, ptr noundef nonnull %inc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body38, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.135) #17
  %10 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sm, align 8
  %dec_blocks.i.i = getelementptr inbounds %struct.dm_space_map, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %dec_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dec_blocks.i.i, align 4
  %call.i.i109 = call i32 %13(ptr noundef %11, i64 noundef 0, i64 noundef 1) #14
  br label %cleanup

do.body38:                                        ; preds = %if.end26
  %14 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool39.not = icmp eq i32 %15, 0
  br i1 %tobool39.not, label %do.body44, label %do.end52, !prof !338

do.body44:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-era-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1052, 0\0A.popsection", ""() #14, !srcloc !339
  unreachable

do.end52:                                         ; preds = %do.body38
  %16 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm, align 8
  %writeset_tree_root = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 9
  %18 = ptrtoint ptr %writeset_tree_root to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %writeset_tree_root, align 8
  %add.i = add i64 %19, 1
  %inc_blocks.i.i110 = getelementptr inbounds %struct.dm_space_map, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %inc_blocks.i.i110 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inc_blocks.i.i110, align 4
  %call.i.i111 = call i32 %21(ptr noundef %17, i64 noundef %19, i64 noundef %add.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i111)
  %tobool55.not = icmp eq i32 %call.i.i111, 0
  br i1 %tobool55.not, label %if.end63, label %do.end59

do.end59:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #16
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.135) #17
  %22 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tm, align 4
  %24 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clone, align 4
  call void @dm_tm_unlock(ptr noundef %23, ptr noundef %25) #14
  br label %cleanup

if.end63:                                         ; preds = %do.end52
  %26 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sm, align 8
  %era_array_root = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 10
  %28 = ptrtoint ptr %era_array_root to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %era_array_root, align 8
  %add.i112 = add i64 %29, 1
  %inc_blocks.i.i113 = getelementptr inbounds %struct.dm_space_map, ptr %27, i32 0, i32 8
  %30 = ptrtoint ptr %inc_blocks.i.i113 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inc_blocks.i.i113, align 4
  %call.i.i114 = call i32 %31(ptr noundef %27, i64 noundef %29, i64 noundef %add.i112) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114)
  %tobool66.not = icmp eq i32 %call.i.i114, 0
  br i1 %tobool66.not, label %if.end77, label %do.end70

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.135) #17
  %32 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sm, align 8
  %34 = ptrtoint ptr %writeset_tree_root to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %writeset_tree_root, align 8
  %add.i115 = add i64 %35, 1
  %dec_blocks.i.i116 = getelementptr inbounds %struct.dm_space_map, ptr %33, i32 0, i32 9
  %36 = ptrtoint ptr %dec_blocks.i.i116 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dec_blocks.i.i116, align 4
  %call.i.i117 = call i32 %37(ptr noundef %33, i64 noundef %35, i64 noundef %add.i115) #14
  %38 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tm, align 4
  %40 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clone, align 4
  call void @dm_tm_unlock(ptr noundef %39, ptr noundef %41) #14
  br label %cleanup

if.end77:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clone, align 4
  %call78 = call i64 @dm_block_location(ptr noundef %43) #14
  %44 = ptrtoint ptr %metadata_snap to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %call78, ptr %metadata_snap, align 8
  %45 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tm, align 4
  %47 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clone, align 4
  call void @dm_tm_unlock(ptr noundef %46, ptr noundef %48) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end70, %do.end59, %do.end32, %do.end23, %do.end14, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1, %do.end5 ], [ %call9, %do.end14 ], [ %call.i.i, %do.end23 ], [ %call27, %do.end32 ], [ %call.i.i111, %do.end59 ], [ %call.i.i114, %do.end70 ], [ 0, %if.end77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clone) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_drop_snap(ptr noundef %md) #2 align 64 {
entry:
  %clone = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clone) #14
  %0 = ptrtoint ptr %clone to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %clone, align 4, !annotation !329
  %metadata_snap = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 14
  %1 = ptrtoint ptr %metadata_snap to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %metadata_snap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tm = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 3
  %3 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tm, align 4
  %call2 = call i32 @dm_tm_read_lock(ptr noundef %4, i64 noundef %2, ptr noundef nonnull @sb_validator, ptr noundef nonnull %clone) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.154) #17
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %metadata_snap to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %metadata_snap, align 8
  %6 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clone, align 4
  %call11 = call ptr @dm_block_data(ptr noundef %7) #14
  %writeset_tree_info = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 12
  %writeset_tree_root = getelementptr inbounds %struct.superblock_disk, ptr %call11, i32 0, i32 12
  %8 = ptrtoint ptr %writeset_tree_root to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %writeset_tree_root, align 1
  %10 = call i64 @llvm.bswap.i64(i64 %9)
  %call12 = call i32 @dm_btree_del(ptr noundef %writeset_tree_info, i64 noundef %10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end21, label %do.end17

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.154) #17
  %11 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tm, align 4
  %13 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clone, align 4
  call void @dm_tm_unlock(ptr noundef %12, ptr noundef %14) #14
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %era_array_info = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 13
  %era_array_root = getelementptr inbounds %struct.superblock_disk, ptr %call11, i32 0, i32 13
  %15 = ptrtoint ptr %era_array_root to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %era_array_root, align 1
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  %call22 = call i32 @dm_array_del(ptr noundef %era_array_info, i64 noundef %17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end31, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.154) #17
  %18 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tm, align 4
  %20 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clone, align 4
  call void @dm_tm_unlock(ptr noundef %19, ptr noundef %21) #14
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clone, align 4
  %call32 = call i64 @dm_block_location(ptr noundef %23) #14
  %24 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tm, align 4
  %26 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clone, align 4
  call void @dm_tm_unlock(ptr noundef %25, ptr noundef %27) #14
  %sm = getelementptr inbounds %struct.era_metadata, ptr %md, i32 0, i32 2
  %28 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm, align 8
  %add.i = add i64 %call32, 1
  %dec_blocks.i.i = getelementptr inbounds %struct.dm_space_map, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %dec_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dec_blocks.i.i, align 4
  %call.i.i = call i32 %31(ptr noundef %29, i64 noundef %call32, i64 noundef %add.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end27, %do.end17, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %do.end6 ], [ %call12, %do.end17 ], [ %call22, %do.end27 ], [ %call.i.i, %if.end31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clone) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_shadow_block(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_unlock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_read_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_del(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_del(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_min(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !165, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !258, !259, !261, !263, !265, !267, !268, !269, !271, !272, !273, !274, !276, !277, !278, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318}
!llvm.named.register.sp = !{!319}
!llvm.module.flags = !{!320, !321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

!0 = !{ptr @__initcall__kmod_dm_era__292_1745_dm_era_init6, !1, !"__initcall__kmod_dm_era__292_1745_dm_era_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-era-target.c", i32 1745, i32 1}
!2 = !{ptr @__exitcall_dm_era_exit, !3, !"__exitcall_dm_era_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-era-target.c", i32 1746, i32 1}
!4 = !{ptr @__UNIQUE_ID_description293, !5, !"__UNIQUE_ID_description293", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-era-target.c", i32 1748, i32 1}
!6 = !{ptr @__UNIQUE_ID_author294, !7, !"__UNIQUE_ID_author294", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-era-target.c", i32 1749, i32 1}
!8 = !{ptr @__UNIQUE_ID_file295, !9, !"__UNIQUE_ID_file295", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-era-target.c", i32 1750, i32 1}
!10 = !{ptr @__UNIQUE_ID_license296, !9, !"__UNIQUE_ID_license296", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-era-target.c", i32 1713, i32 10}
!13 = !{ptr @era_target, !14, !"era_target", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-era-target.c", i32 1712, i32 27}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-era-target.c", i32 1450, i32 15}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-era-target.c", i32 1456, i32 15}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-era-target.c", i32 1464, i32 15}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-era-target.c", i32 1471, i32 15}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-era-target.c", i32 1476, i32 22}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-era-target.c", i32 1478, i32 15}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-era-target.c", i32 1485, i32 15}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-era-target.c", i32 1491, i32 15}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-era-target.c", i32 1502, i32 15}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-era-target.c", i32 1508, i32 12}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-era-target.c", i32 1510, i32 15}
!37 = !{ptr @era_ctr.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-era-target.c", i32 1514, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @era_ctr.__key.13, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-era-target.c", i32 1516, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @era_ctr.__key.15, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-era-target.c", i32 1519, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-era-target.c", i32 634, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @create_persistent_data_objects._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @create_persistent_data_objects._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-era-target.c", i32 442, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @create_fresh_metadata._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @create_fresh_metadata._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-era-target.c", i32 450, i32 3}
!59 = !{ptr @create_fresh_metadata._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @create_fresh_metadata._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-era-target.c", i32 456, i32 3}
!63 = !{ptr @create_fresh_metadata._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @create_fresh_metadata._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-era-target.c", i32 524, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @write_superblock._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @write_superblock._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/dm-era-target.c", i32 250, i32 10}
!72 = !{ptr @sb_validator, !73, !"sb_validator", i1 false, i1 false}
!73 = !{!"../drivers/md/dm-era-target.c", i32 249, i32 34}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/md/dm-era-target.c", i32 224, i32 3}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sb_check._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @sb_check._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/dm-era-target.c", i32 231, i32 3}
!81 = !{ptr @sb_check._entry.33, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @sb_check._entry_ptr.35, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/md/dm-era-target.c", i32 241, i32 3}
!85 = !{ptr @sb_check._entry.36, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sb_check._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-era-target.c", i32 208, i32 3}
!89 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @check_metadata_version._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @check_metadata_version._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/dm-era-target.c", i32 567, i32 3}
!94 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @open_metadata._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @open_metadata._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/md/dm-era-target.c", i32 575, i32 3}
!99 = !{ptr @open_metadata._entry.43, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @open_metadata._entry_ptr.45, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/md/dm-era-target.c", i32 586, i32 3}
!103 = !{ptr @open_metadata._entry.46, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @open_metadata._entry_ptr.48, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/dm-era-target.c", i32 756, i32 3}
!107 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @metadata_digest_lookup_writeset._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @metadata_digest_lookup_writeset._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/md/dm-era-target.c", i32 710, i32 4}
!112 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @metadata_digest_transcribe_writeset._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @metadata_digest_transcribe_writeset._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/md/dm-era-target.c", i32 721, i32 4}
!117 = !{ptr @metadata_digest_transcribe_writeset._entry.53, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @metadata_digest_transcribe_writeset._entry_ptr.55, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/md/dm-era-target.c", i32 121, i32 3}
!121 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @writeset_marked_on_disk._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @writeset_marked_on_disk._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/dm-era-target.c", i32 690, i32 3}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @metadata_digest_remove_writeset._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @metadata_digest_remove_writeset._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/md/dm-era-target.c", i32 1235, i32 3}
!131 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @process_old_eras._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @process_old_eras._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/md/dm-era-target.c", i32 977, i32 4}
!136 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @metadata_commit._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @metadata_commit._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/md/dm-era-target.c", i32 984, i32 3}
!141 = !{ptr @metadata_commit._entry.64, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @metadata_commit._entry_ptr.66, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @metadata_commit._entry.67, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/md/dm-era-target.c", i32 990, i32 3}
!145 = !{ptr @metadata_commit._entry_ptr.68, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/md/dm-era-target.c", i32 996, i32 3}
!148 = !{ptr @metadata_commit._entry.69, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @metadata_commit._entry_ptr.71, !147, !"_entry_ptr", i1 false, i1 false}
!150 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!151 = !{!"../drivers/md/dm-era-target.c", i32 961, i32 7}
!152 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!153 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!154 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!155 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!159 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/md/dm-era-target.c", i32 1568, i32 3}
!162 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @era_postsuspend._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @era_postsuspend._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @init_completion.__key, !166, !"__key", i1 false, i1 false}
!166 = !{!"../include/linux/completion.h", i32 87, i32 2}
!167 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/md/dm-era-target.c", i32 887, i32 3}
!170 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @metadata_era_archive._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @metadata_era_archive._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/md/dm-era-target.c", i32 898, i32 3}
!175 = !{ptr @metadata_era_archive._entry.81, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @metadata_era_archive._entry_ptr.83, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/md/dm-era-target.c", i32 1584, i32 4}
!179 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @era_preresume._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @era_preresume._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/md/dm-era-target.c", i32 1590, i32 4}
!184 = !{ptr @era_preresume._entry.86, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @era_preresume._entry_ptr.88, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/md/dm-era-target.c", i32 1601, i32 3}
!188 = !{ptr @era_preresume._entry.89, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @era_preresume._entry_ptr.91, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/md/dm-era-target.c", i32 841, i32 3}
!192 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @metadata_resize._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @metadata_resize._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.95, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/md/dm-era-target.c", i32 851, i32 3}
!197 = !{ptr @metadata_resize._entry.94, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @metadata_resize._entry_ptr.96, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/md/dm-era-target.c", i32 857, i32 3}
!201 = !{ptr @metadata_resize._entry.97, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @metadata_resize._entry_ptr.99, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/md/dm-era-target.c", i32 868, i32 3}
!205 = !{ptr @metadata_resize._entry.100, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @metadata_resize._entry_ptr.102, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/md/dm-era-target.c", i32 77, i32 3}
!209 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @writeset_alloc._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @writeset_alloc._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/md/dm-era-target.c", i32 939, i32 4}
!214 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @metadata_era_rollover._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @metadata_era_rollover._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/md/dm-era-target.c", i32 947, i32 3}
!219 = !{ptr @metadata_era_rollover._entry.107, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @metadata_era_rollover._entry_ptr.109, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/md/dm-era-target.c", i32 922, i32 3}
!223 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @metadata_new_era._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @metadata_new_era._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/md/dm-era-target.c", i32 97, i32 3}
!228 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @writeset_init._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @writeset_init._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/md/dm-era-target.c", i32 1629, i32 3}
!233 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/md/dm-era-target.c", i32 1636, i32 4}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/md/dm-era-target.c", i32 1638, i32 4}
!237 = !{ptr @.str.117, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/md/dm-era-target.c", i32 1642, i32 3}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/md/dm-era-target.c", i32 1643, i32 3}
!241 = !{ptr @.str.119, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/md/dm-era-target.c", i32 1645, i32 3}
!243 = !{ptr @.str.120, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/md/dm-era-target.c", i32 1656, i32 2}
!245 = !{ptr @.str.121, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/md/dm-era-target.c", i32 1137, i32 3}
!247 = !{ptr @.str.122, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @metadata_get_stats._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @metadata_get_stats._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/md/dm-era-target.c", i32 1143, i32 3}
!252 = !{ptr @metadata_get_stats._entry.123, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @metadata_get_stats._entry_ptr.125, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/md/dm-era-target.c", i32 1665, i32 3}
!256 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @era_message._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @era_message._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.128, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/md/dm-era-target.c", i32 1669, i32 27}
!261 = !{ptr @.str.129, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/md/dm-era-target.c", i32 1672, i32 27}
!263 = !{ptr @.str.130, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/md/dm-era-target.c", i32 1675, i32 27}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/md/dm-era-target.c", i32 1678, i32 2}
!267 = !{ptr @era_message._entry.131, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @era_message._entry_ptr.133, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/md/dm-era-target.c", i32 1023, i32 3}
!271 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @metadata_take_snap._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @metadata_take_snap._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.137, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/md/dm-era-target.c", i32 1029, i32 3}
!276 = !{ptr @metadata_take_snap._entry.136, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @metadata_take_snap._entry_ptr.138, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @metadata_take_snap._entry.139, !279, !"_entry", i1 false, i1 false}
!279 = !{!"../drivers/md/dm-era-target.c", i32 1035, i32 3}
!280 = !{ptr @metadata_take_snap._entry_ptr.140, !279, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.142, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/md/dm-era-target.c", i32 1041, i32 3}
!283 = !{ptr @metadata_take_snap._entry.141, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @metadata_take_snap._entry_ptr.143, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.145, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/md/dm-era-target.c", i32 1048, i32 3}
!287 = !{ptr @metadata_take_snap._entry.144, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @metadata_take_snap._entry_ptr.146, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.148, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/md/dm-era-target.c", i32 1056, i32 3}
!291 = !{ptr @metadata_take_snap._entry.147, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @metadata_take_snap._entry_ptr.149, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.151, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/md/dm-era-target.c", i32 1063, i32 3}
!295 = !{ptr @metadata_take_snap._entry.150, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @metadata_take_snap._entry_ptr.152, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.153, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/md/dm-era-target.c", i32 1084, i32 3}
!299 = !{ptr @.str.154, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @metadata_drop_snap._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @metadata_drop_snap._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.156, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/md/dm-era-target.c", i32 1090, i32 3}
!304 = !{ptr @metadata_drop_snap._entry.155, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @metadata_drop_snap._entry_ptr.157, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.159, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/md/dm-era-target.c", i32 1104, i32 3}
!308 = !{ptr @metadata_drop_snap._entry.158, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @metadata_drop_snap._entry_ptr.160, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.162, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/md/dm-era-target.c", i32 1111, i32 3}
!312 = !{ptr @metadata_drop_snap._entry.161, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @metadata_drop_snap._entry_ptr.163, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.164, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/md/dm-era-target.c", i32 1733, i32 3}
!316 = !{ptr @.str.165, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @dm_era_init._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @dm_era_init._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{!"sp"}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"min_enum_size", i32 4}
!322 = !{i32 8, !"branch-target-enforcement", i32 0}
!323 = !{i32 8, !"sign-return-address", i32 0}
!324 = !{i32 8, !"sign-return-address-all", i32 0}
!325 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!329 = !{!"auto-init"}
!330 = !{i32 0, i32 33}
!331 = !{!"branch_weights", i32 2000, i32 1}
!332 = !{i64 2148546692, i64 2148546972, i64 2148547306, i64 2148547640}
!333 = !{i64 2149509353}
!334 = !{i64 2149509619}
!335 = !{i8 0, i8 2}
!336 = !{i64 2154816980, i64 2154817471, i64 2154817017, i64 2154817073, i64 2154817107, i64 2154817131, i64 2154817172, i64 2154817193, i64 2154817221, i64 2154817255}
!337 = !{i64 2154855110}
!338 = !{!"branch_weights", i32 1, i32 2000}
!339 = !{i64 2154915222, i64 2154915714, i64 2154915259, i64 2154915315, i64 2154915349, i64 2154915373, i64 2154915414, i64 2154915435, i64 2154915463, i64 2154915497}
