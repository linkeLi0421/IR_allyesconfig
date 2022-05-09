; ModuleID = '/llk/IR_all_yes/block/partitions/core.c_pt.bc'
source_filename = "../block/partitions/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bdev_disk_changed\22, \22a\22\09"
module asm "\09.weak\09__crc_bdev_disk_changed\09\09\09\09"
module asm "\09.long\09__crc_bdev_disk_changed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdev_disk_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22bdev_disk_changed\22\09\09\09\09\09"
module asm "__kstrtabns_bdev_disk_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.81 }
%struct.atomic_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.anon.85 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.22, %union.anon.35, %struct.atomic_t, i32 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.35 = type { %struct.atomic_t }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"partition\00", [22 x i8] zeroinitializer }, align 32
@part_attr_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @part_attr_group, ptr @blk_trace_attr_group, ptr null], [20 x i8] zeroinitializer }, align 32
@part_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str, ptr @part_attr_groups, ptr @part_uevent, ptr null, ptr @part_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"block/partitions/core.c\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_bdev_disk_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdev_disk_changed = external dso_local constant [0 x i8], align 1
@__ksymtab_bdev_disk_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdev_disk_changed to i32), ptr @__kstrtab_bdev_disk_changed, ptr @__kstrtabns_bdev_disk_changed }, section "___ksymtab_gpl+bdev_disk_changed", align 4
@part_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @part_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@blk_trace_attr_group = external dso_local global %struct.attribute_group, align 4
@part_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_partition, ptr @dev_attr_start, ptr @dev_attr_size, ptr @dev_attr_ro, ptr @dev_attr_alignment_offset, ptr @dev_attr_discard_alignment, ptr @dev_attr_stat, ptr @dev_attr_inflight, ptr @dev_attr_fail, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_partition = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @part_partition_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_start = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @part_start_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @part_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ro = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @part_ro_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_alignment_offset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @part_alignment_offset_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_discard_alignment = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @part_discard_alignment_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @part_stat_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inflight = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @part_inflight_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fail = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @part_fail_show, ptr @part_fail_store }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alignment_offset\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"discard_alignment\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inflight\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"make-it-fail\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PARTN=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PARTNAME=%s\00", [20 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@add_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.1, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014%s: partitions not supported on host managed zoned block device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"add_partition\00", [18 x i8] zeroinitializer }, align 32
@add_partition._entry_ptr = internal global ptr @add_partition._entry, section ".printk_index", align 4
@add_partition._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.1, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016%s: disabling host aware zoned block device support due to partitions\0A\00", [55 x i8] zeroinitializer }, align 32
@add_partition._entry_ptr.22 = internal global ptr @add_partition._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%sp%d\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@block_class = external dso_local global %struct.class, align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"holders\00", [24 x i8] zeroinitializer }, align 32
@dev_attr_whole_disk = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @whole_disk_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"whole_disk\00", [21 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@blk_add_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.1, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: partition table beyond EOD, \00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"blk_add_partitions\00", [45 x i8] zeroinitializer }, align 32
@blk_add_partitions._entry_ptr = internal global ptr @blk_add_partitions._entry, section ".printk_index", align 4
@blk_add_partitions._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.1, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014%s: ignoring partition table on host managed zoned block device\0A\00", [61 x i8] zeroinitializer }, align 32
@blk_add_partitions._entry_ptr.32 = internal global ptr @blk_add_partitions._entry.30, section ".printk_index", align 4
@blk_add_partitions._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.1, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: partition table partially beyond EOD, \00", [51 x i8] zeroinitializer }, align 32
@blk_add_partitions._entry_ptr.35 = internal global ptr @blk_add_partitions._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s:\00", [27 x i8] zeroinitializer }, align 32
@check_part = internal constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @adfspart_check_ICS, ptr @adfspart_check_POWERTEC, ptr @adfspart_check_EESOX, ptr @adfspart_check_CUMANA, ptr @adfspart_check_ADFS, ptr @cmdline_partition, ptr @efi_partition, ptr @sgi_partition, ptr @ldm_partition, ptr @msdos_partition, ptr @osf_partition, ptr @sun_partition, ptr @amiga_partition, ptr @atari_partition, ptr @mac_partition, ptr @ultrix_partition, ptr @karma_partition, ptr @sysv68_partition, ptr null], [52 x i8] zeroinitializer }, align 32
@check_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.1, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_partition\00", [16 x i8] zeroinitializer }, align 32
@check_partition._entry_ptr = internal global ptr @check_partition._entry, section ".printk_index", align 4
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" unable to read partition table\0A\00", [63 x i8] zeroinitializer }, align 32
@check_partition._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.1, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_partition._entry_ptr.43 = internal global ptr @check_partition._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@disk_unlock_native_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.1, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01ctruncated\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disk_unlock_native_capacity\00", [36 x i8] zeroinitializer }, align 32
@disk_unlock_native_capacity._entry_ptr = internal global ptr @disk_unlock_native_capacity._entry, section ".printk_index", align 4
@disk_unlock_native_capacity._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.1, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\01cenabling native capacity\0A\00", [36 x i8] zeroinitializer }, align 32
@disk_unlock_native_capacity._entry_ptr.48 = internal global ptr @disk_unlock_native_capacity._entry.46, section ".printk_index", align 4
@blk_add_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.1, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: p%d start %llu is beyond EOD, \00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"blk_add_partition\00", [46 x i8] zeroinitializer }, align 32
@blk_add_partition._entry_ptr = internal global ptr @blk_add_partition._entry, section ".printk_index", align 4
@blk_add_partition._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.1, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: p%d size %llu extends beyond EOD, \00", [55 x i8] zeroinitializer }, align 32
@blk_add_partition._entry_ptr.53 = internal global ptr @blk_add_partition._entry.51, section ".printk_index", align 4
@blk_add_partition._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.1, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013 %s: p%d could not be added: %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@blk_add_partition._entry_ptr.56 = internal global ptr @blk_add_partition._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 278, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"part_attr_groups\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 253, i32 38 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"part_type\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 277, i32 20 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 545, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"part_attr_group\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 249, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"part_attrs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 234, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"dev_attr_partition\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 221, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"dev_attr_start\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"dev_attr_size\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"dev_attr_ro\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"dev_attr_alignment_offset\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"dev_attr_discard_alignment\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"dev_attr_stat\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"dev_attr_inflight\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"dev_attr_fail\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 230, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 186, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 222, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 192, i32 22 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 223, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 224, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 225, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 206, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 226, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 227, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 228, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 231, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 271, i32 22 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 273, i32 23 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 695, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 723, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 337, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 341, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 366, i32 22 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 368, i32 22 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 400, i32 47 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"dev_attr_whole_disk\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 309, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 271, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 618, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 630, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 642, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 140, i32 39 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 141, i32 37 }
@___asan_gen_.212 = private unnamed_addr constant [11 x i8] c"check_part\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 17, i32 14 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 160, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 174, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 175, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 531, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 535, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 562, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 571, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.264 = private constant [27 x i8] c"../block/partitions/core.c\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 589, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 416, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 717, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__ksymtab_bdev_disk_changed, ptr @add_partition._entry, ptr @add_partition._entry.20, ptr @add_partition._entry_ptr, ptr @add_partition._entry_ptr.22, ptr @blk_add_partition._entry, ptr @blk_add_partition._entry.51, ptr @blk_add_partition._entry.54, ptr @blk_add_partition._entry_ptr, ptr @blk_add_partition._entry_ptr.53, ptr @blk_add_partition._entry_ptr.56, ptr @blk_add_partitions._entry, ptr @blk_add_partitions._entry.30, ptr @blk_add_partitions._entry.33, ptr @blk_add_partitions._entry_ptr, ptr @blk_add_partitions._entry_ptr.32, ptr @blk_add_partitions._entry_ptr.35, ptr @check_partition._entry, ptr @check_partition._entry.42, ptr @check_partition._entry_ptr, ptr @check_partition._entry_ptr.43, ptr @disk_unlock_native_capacity._entry, ptr @disk_unlock_native_capacity._entry.46, ptr @disk_unlock_native_capacity._entry_ptr, ptr @disk_unlock_native_capacity._entry_ptr.48, ptr @.str, ptr @part_attr_groups, ptr @part_type, ptr @.str.1, ptr @part_attr_group, ptr @part_attrs, ptr @dev_attr_partition, ptr @dev_attr_start, ptr @dev_attr_size, ptr @dev_attr_ro, ptr @dev_attr_alignment_offset, ptr @dev_attr_discard_alignment, ptr @dev_attr_stat, ptr @dev_attr_inflight, ptr @dev_attr_fail, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @dev_attr_whole_disk, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @check_part, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_attr_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_partition to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_start to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ro to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alignment_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_discard_alignment to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inflight to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_partition._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_whole_disk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_add_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_add_partitions._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_add_partitions._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_part to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_partition._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_unlock_native_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_unlock_native_capacity._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_add_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_add_partition._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_add_partition._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @part_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_partno = getelementptr i8, ptr %dev, i32 944
  %0 = ptrtoint ptr %bd_partno to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bd_partno, align 8
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.13, i32 noundef %conv) #16
  %bd_meta_info = getelementptr i8, ptr %dev, i32 1100
  %2 = ptrtoint ptr %bd_meta_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_meta_info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %volname = getelementptr inbounds %struct.partition_meta_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %volname to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %volname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.14, ptr noundef %volname) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @part_release(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr i8, ptr %dev, i32 992
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  tail call void @put_disk(ptr noundef %1) #16
  %bd_inode = getelementptr i8, ptr %dev, i32 -12
  %2 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_inode, align 4
  tail call void @iput(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdev_add_partition(ptr noundef %disk, i32 noundef %partno, i64 noundef %start, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #16
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %0 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %part0.i, align 4
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_inode.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc zeroext i1 @partition_overlaps(ptr noundef %disk, i64 noundef %start, i64 noundef %length, i32 noundef -1)
  br i1 %call1, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call fastcc ptr @add_partition(ptr noundef %disk, i32 noundef %partno, i64 noundef %start, i64 noundef %length, i32 noundef 0, ptr noundef null)
  %cmp.i.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call4 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %6, i32 0
  br label %out

out:                                              ; preds = %if.end3, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %spec.select.i, %if.end3 ], [ -6, %entry.out_crit_edge ], [ -16, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #16
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @partition_overlaps(ptr noundef %disk, i64 noundef %start, i64 noundef %length, i32 noundef %skip_partno) unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !136) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !146
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %idx, align 4
  %part_tbl = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 6
  %call = call ptr @xa_find(ptr noundef %part_tbl, ptr noundef nonnull %idx, i32 noundef -1, i32 noundef 8) #16
  %tobool.not28 = icmp eq ptr %call, null
  br i1 %tobool.not28, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %add6 = add i64 %length, %start
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %part.029 = phi ptr [ %call, %for.body.lr.ph ], [ %call11, %for.inc.for.body_crit_edge ]
  %bd_partno = getelementptr inbounds %struct.block_device, ptr %part.029, i32 0, i32 15
  %5 = ptrtoint ptr %bd_partno to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bd_partno, align 8
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %skip_partno)
  %cmp.not = icmp eq i32 %conv, %skip_partno
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %part.029 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %part.029, align 8
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %part.029, i32 0, i32 1
  %9 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bd_nr_sectors.i, align 8
  %add = add i64 %10, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %start)
  %cmp3 = icmp ugt i64 %add, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %add6, i64 %8)
  %cmp8 = icmp ugt i64 %add6, %8
  %or.cond = and i1 %cmp8, %cmp3
  br i1 %or.cond, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call11 = call ptr @xa_find_after(ptr noundef %part_tbl, ptr noundef nonnull %idx, i32 noundef -1, i32 noundef 8) #16
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %tobool.not.lcssa = phi i1 [ false, %rcu_read_lock.exit.for.end_crit_edge ], [ true, %land.lhs.true.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  %call.i19 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i19, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %for.end
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !147
  %11 = call i32 @llvm.read_register.i32(metadata !136) #16
  %and.i.i.i.i.i26 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #16
  ret i1 %tobool.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_partition(ptr noundef %disk, i32 noundef %partno, i64 noundef %start, i64 noundef %len, i32 noundef %flags, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %part0 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %0 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 13, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !148

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 326, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %partno)
  %cmp24 = icmp sgt i32 %partno, 255
  br i1 %cmp24, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %zoned = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37, i32 27
  %5 = ptrtoint ptr %zoned to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %zoned, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end27.sw.epilog_crit_edge [
    i32 2, label %do.end30
    i32 1, label %do.end37
  ]

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 3
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %disk_name) #19
  br label %cleanup

do.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %disk_name39 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 3
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %disk_name39) #19
  tail call void @blk_queue_set_zoned(ptr noundef %disk, i32 noundef 0) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end37, %if.end27.sw.epilog_crit_edge
  %part_tbl = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 6
  %call42 = tail call ptr @xa_load(ptr noundef %part_tbl, i32 noundef %partno) #16
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end46, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end46:                                         ; preds = %sw.epilog
  %8 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part0, align 4
  %bd_device48 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 10
  %call49 = tail call ptr @get_device(ptr noundef %bd_device48) #16
  %conv = trunc i32 %partno to i8
  %call50 = tail call ptr @bdev_alloc(ptr noundef %disk, i8 noundef zeroext %conv) #16
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %out_put_disk, label %if.end53

if.end53:                                         ; preds = %if.end46
  %10 = ptrtoint ptr %call50 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %start, ptr %call50, align 8
  tail call fastcc void @bdev_set_nr_sectors(ptr noundef nonnull %call50, i64 noundef %len)
  %bd_device54 = getelementptr inbounds %struct.block_device, ptr %call50, i32 0, i32 10
  %init_name.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 10, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end53.dev_name.exit_crit_edge

if.end53.dev_name.exit_crit_edge:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %bd_device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_device, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end53.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end53.dev_name.exit_crit_edge ]
  %call56 = tail call i32 @strlen(ptr noundef %retval.0.i) #20
  %sub = add i32 %call56, -1
  %arrayidx = getelementptr i8, ptr %retval.0.i, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv57 = zext i8 %16 to i32
  %17 = add nsw i32 %conv57, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %17)
  %18 = icmp ult i32 %17, -10
  %.str.24..str.23 = select i1 %18, ptr @.str.24, ptr @.str.23
  %call62 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %bd_device54, ptr noundef nonnull %.str.24..str.23, ptr noundef %retval.0.i, i32 noundef %partno) #16
  tail call void @device_initialize(ptr noundef %bd_device54) #16
  %class = getelementptr inbounds %struct.block_device, ptr %call50, i32 0, i32 10, i32 33
  %19 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @block_class, ptr %class, align 4
  %type = getelementptr inbounds %struct.block_device, ptr %call50, i32 0, i32 10, i32 4
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @part_type, ptr %type, align 4
  %parent = getelementptr inbounds %struct.block_device, ptr %call50, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %bd_device, ptr %parent, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, ptr %call50, i32 0, i32 15
  %22 = ptrtoint ptr %bd_partno to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bd_partno, align 8
  %conv64 = zext i8 %23 to i32
  %minors = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 2
  %24 = ptrtoint ptr %minors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %minors, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv64)
  %cmp65 = icmp sgt i32 %25, %conv64
  br i1 %cmp65, label %if.then67, label %if.else70

if.then67:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %disk, align 8
  %shl = shl i32 %27, 20
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 1
  %28 = ptrtoint ptr %first_minor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %first_minor, align 4
  %add = add i32 %29, %conv64
  %or = or i32 %add, %shl
  br label %if.end77

if.else70:                                        ; preds = %dev_name.exit
  %call71 = tail call i32 @blk_alloc_ext_minor() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.else70.out_put_crit_edge, label %if.end75

if.else70.out_put_crit_edge:                      ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put

if.end75:                                         ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #18
  %or76 = or i32 %call71, 271581184
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.then67
  %devt.0 = phi i32 [ %or, %if.then67 ], [ %or76, %if.end75 ]
  %devt78 = getelementptr inbounds %struct.block_device, ptr %call50, i32 0, i32 10, i32 29
  %30 = ptrtoint ptr %devt78 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %devt.0, ptr %devt78, align 8
  %tobool79.not = icmp eq ptr %info, null
  br i1 %tobool79.not, label %if.end77.if.end86_crit_edge, label %if.then80

if.end77.if.end86_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then80:                                        ; preds = %if.end77
  %call81 = tail call ptr @kmemdup(ptr noundef nonnull %info, i32 noundef 101, i32 noundef 3264) #16
  %bd_meta_info = getelementptr inbounds %struct.block_device, ptr %call50, i32 0, i32 22
  %31 = ptrtoint ptr %bd_meta_info to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call81, ptr %bd_meta_info, align 4
  %tobool83.not = icmp eq ptr %call81, null
  br i1 %tobool83.not, label %if.then80.out_put_crit_edge, label %if.then80.if.end86_crit_edge

if.then80.if.end86_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then80.out_put_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put

if.end86:                                         ; preds = %if.then80.if.end86_crit_edge, %if.end77.if.end86_crit_edge
  %uevent_suppress.i = getelementptr inbounds %struct.block_device, ptr %call50, i32 0, i32 10, i32 0, i32 8
  %32 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %uevent_suppress.i, align 4
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %uevent_suppress.i, align 4
  %call87 = tail call i32 @device_add(ptr noundef %bd_device54) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.out_put_crit_edge

if.end86.out_put_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put

if.end90:                                         ; preds = %if.end86
  %call91 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.25, ptr noundef %bd_device54) #16
  %bd_holder_dir = getelementptr inbounds %struct.block_device, ptr %call50, i32 0, i32 14
  %33 = ptrtoint ptr %bd_holder_dir to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call91, ptr %bd_holder_dir, align 4
  %tobool93.not = icmp eq ptr %call91, null
  br i1 %tobool93.not, label %if.end90.out_del_crit_edge, label %if.end95

if.end90.out_del_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_del

if.end95:                                         ; preds = %if.end90
  %34 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i182 = load i8, ptr %uevent_suppress.i, align 4
  %bf.clear.i183 = and i8 %bf.load.i182, -9
  store i8 %bf.clear.i183, ptr %uevent_suppress.i, align 4
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool96.not = icmp eq i32 %and, 0
  br i1 %tobool96.not, label %if.end95.if.end102_crit_edge, label %if.then97

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

if.then97:                                        ; preds = %if.end95
  %call98 = tail call i32 @device_create_file(ptr noundef %bd_device54, ptr noundef nonnull @dev_attr_whole_disk) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then97.if.end102_crit_edge, label %if.then97.out_del_crit_edge

if.then97.out_del_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_del

if.then97.if.end102_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

if.end102:                                        ; preds = %if.then97.if.end102_crit_edge, %if.end95.if.end102_crit_edge
  %call104 = tail call fastcc i32 @xa_insert(ptr noundef %part_tbl, i32 noundef %partno, ptr noundef nonnull %call50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end102.out_del_crit_edge

if.end102.out_del_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_del

if.end107:                                        ; preds = %if.end102
  tail call void @bdev_add(ptr noundef nonnull %call50, i32 noundef %devt.0) #16
  %uevent_suppress.i184 = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 10, i32 0, i32 8
  %35 = ptrtoint ptr %uevent_suppress.i184 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i185 = load i8, ptr %uevent_suppress.i184, align 4
  %36 = and i8 %bf.load.i185, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool109.not = icmp eq i8 %36, 0
  br i1 %tobool109.not, label %if.then110, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  %call112 = tail call i32 @kobject_uevent(ptr noundef %bd_device54, i32 noundef 0) #16
  br label %cleanup

out_del:                                          ; preds = %if.end102.out_del_crit_edge, %if.then97.out_del_crit_edge, %if.end90.out_del_crit_edge
  %err.0 = phi i32 [ %call98, %if.then97.out_del_crit_edge ], [ %call104, %if.end102.out_del_crit_edge ], [ -12, %if.end90.out_del_crit_edge ]
  %37 = ptrtoint ptr %bd_holder_dir to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bd_holder_dir, align 4
  tail call void @kobject_put(ptr noundef %38) #16
  tail call void @device_del(ptr noundef %bd_device54) #16
  br label %out_put

out_put:                                          ; preds = %out_del, %if.end86.out_put_crit_edge, %if.then80.out_put_crit_edge, %if.else70.out_put_crit_edge
  %err.1 = phi i32 [ %call87, %if.end86.out_put_crit_edge ], [ %err.0, %out_del ], [ -12, %if.then80.out_put_crit_edge ], [ %call71, %if.else70.out_put_crit_edge ]
  tail call void @put_device(ptr noundef %bd_device54) #16
  %39 = inttoptr i32 %err.1 to ptr
  br label %cleanup

out_put_disk:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @put_disk(ptr noundef %disk) #16
  br label %cleanup

cleanup:                                          ; preds = %out_put_disk, %out_put, %if.then110, %if.end107.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end30, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %39, %out_put ], [ inttoptr (i32 -12 to ptr), %out_put_disk ], [ inttoptr (i32 -6 to ptr), %do.end30 ], [ %call50, %if.then110 ], [ %call50, %if.end107.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %sw.epilog.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdev_del_partition(ptr noundef %disk, i32 noundef %partno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #16
  %part_tbl = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 6
  %call = tail call ptr @xa_load(ptr noundef %part_tbl, i32 noundef %partno) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %bd_openers = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %bd_openers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bd_openers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @delete_partition(ptr noundef nonnull %call)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end3, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ -16, %if.end.out_unlock_crit_edge ], [ 0, %if.end3 ], [ -6, %entry.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #16
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @delete_partition(ptr noundef %part) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %part, i32 0, i32 17
  %1 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_disk, align 8
  %dep_map = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 13, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !148

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 286, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call i32 @fsync_bdev(ptr noundef %part) #16
  %call25 = tail call i32 @__invalidate_device(ptr noundef %part, i1 noundef zeroext true) #16
  %bd_disk26 = getelementptr inbounds %struct.block_device, ptr %part, i32 0, i32 17
  %3 = ptrtoint ptr %bd_disk26 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_disk26, align 8
  %part_tbl = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 6
  %bd_partno = getelementptr inbounds %struct.block_device, ptr %part, i32 0, i32 15
  %5 = ptrtoint ptr %bd_partno to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bd_partno, align 8
  %conv = zext i8 %6 to i32
  %call27 = tail call ptr @xa_erase(ptr noundef %part_tbl, i32 noundef %conv) #16
  %bd_holder_dir = getelementptr inbounds %struct.block_device, ptr %part, i32 0, i32 14
  %7 = ptrtoint ptr %bd_holder_dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bd_holder_dir, align 4
  tail call void @kobject_put(ptr noundef %8) #16
  %bd_device = getelementptr inbounds %struct.block_device, ptr %part, i32 0, i32 10
  tail call void @device_del(ptr noundef %bd_device) #16
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %part, i32 0, i32 7
  %9 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_inode, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 28, i32 1
  %11 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %12, null
  %i_hash.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 28
  %cmp.i.i = icmp eq ptr %12, %i_hash.i
  %or.cond = select i1 %tobool.not.i.i.not.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond, label %if.end.remove_inode_hash.exit_crit_edge, label %if.then.i

if.end.remove_inode_hash.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %remove_inode_hash.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__remove_inode_hash(ptr noundef %10) #16
  br label %remove_inode_hash.exit

remove_inode_hash.exit:                           ; preds = %if.then.i, %if.end.remove_inode_hash.exit_crit_edge
  tail call void @put_device(ptr noundef %bd_device) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdev_resize_partition(ptr noundef %disk, i32 noundef %partno, i64 noundef %start, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #16
  %part_tbl = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 6
  %call = tail call ptr @xa_load(ptr noundef %part_tbl, i32 noundef %partno) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %call, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %start)
  %cmp.not = icmp eq i64 %1, %start
  br i1 %cmp.not, label %if.end2, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end2:                                          ; preds = %if.end
  %call3 = tail call fastcc zeroext i1 @partition_overlaps(ptr noundef %disk, i64 noundef %start, i64 noundef %length, i32 noundef %partno)
  br i1 %call3, label %if.end2.out_unlock_crit_edge, label %if.end5

if.end2.out_unlock_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @bdev_set_nr_sectors(ptr noundef nonnull %call, i64 noundef %length)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end5, %if.end2.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.out_unlock_crit_edge ], [ -16, %if.end2.out_unlock_crit_edge ], [ 0, %if.end5 ], [ -6, %entry.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdev_set_nr_sectors(ptr noundef %bdev, i64 noundef %sectors) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_size_lock = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %bd_size_lock) #16
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 7
  %0 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_inode, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !136) #16
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %entry.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

entry.i_size_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !136) #16
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !150
  %11 = tail call i32 @llvm.read_register.i32(metadata !136) #16
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %16, ptrtoint (ptr @lockdep_recursion to i32)
  %17 = inttoptr i32 %add.i28.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !151
  %20 = tail call i32 @llvm.read_register.i32(metadata !136) #16
  %and.i.i.i7.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !136) #16
  %and.i.i.i29.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !136) #16
  %and.i.i.i9.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %31, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !152
  %32 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %35, ptrtoint (ptr @hardirqs_enabled to i32)
  %36 = inttoptr i32 %add47.i.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !153
  %39 = tail call i32 @llvm.read_register.i32(metadata !136) #16
  %and.i.i.i12.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %42, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool54.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !154

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %entry.i_size_write.exit_crit_edge
  %shl = shl i64 %sectors, 9
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %43 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %44, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !155
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %45 = tail call ptr @llvm.returnaddress(i32 0) #16
  %46 = ptrtoint ptr %45 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %46) #16
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %47 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %shl, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %46) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !156
  %48 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !157
  %50 = tail call i32 @llvm.read_register.i32(metadata !136) #16
  %and.i.i.i26.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %bd_nr_sectors = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 1
  %54 = ptrtoint ptr %bd_nr_sectors to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %sectors, ptr %bd_nr_sectors, align 8
  tail call void @_raw_spin_unlock(ptr noundef %bd_size_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_drop_partitions(ptr noundef %disk) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 13, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !148

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %idx, align 4
  %part_tbl = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 6
  %call24 = call ptr @xa_find(ptr noundef %part_tbl, ptr noundef nonnull %idx, i32 noundef -1, i32 noundef 8) #16
  %tobool25.not32 = icmp eq ptr %call24, null
  br i1 %tobool25.not32, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %part.033 = phi ptr [ %call27, %for.body.for.body_crit_edge ], [ %call24, %if.end.for.body_crit_edge ]
  call fastcc void @delete_partition(ptr noundef nonnull %part.033)
  %call27 = call ptr @xa_find_after(ptr noundef %part_tbl, ptr noundef nonnull %idx, i32 noundef -1, i32 noundef 8) #16
  %tobool25.not = icmp eq ptr %call27, null
  br i1 %tobool25.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdev_disk_changed(ptr noundef %disk, i1 noundef zeroext %invalidate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 13, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !148

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 666, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %1 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %part0.i, align 4
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_inode.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 28, i32 1
  %5 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i.not, label %if.end.cleanup_crit_edge, label %rescan.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

rescan.preheader:                                 ; preds = %if.end
  %open_partitions = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 14
  %state = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 12
  %flags = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 11
  %disk_name.i.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 3
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %fops.i.i.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 8
  br label %rescan

rescan:                                           ; preds = %blk_add_partitions.exit.rescan_crit_edge, %rescan.preheader
  %ret.0 = phi i32 [ -11, %blk_add_partitions.exit.rescan_crit_edge ], [ 0, %rescan.preheader ]
  %7 = ptrtoint ptr %open_partitions to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %open_partitions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool27.not = icmp eq i32 %8, 0
  br i1 %tobool27.not, label %if.end29, label %rescan.cleanup_crit_edge

rescan.cleanup_crit_edge:                         ; preds = %rescan
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %rescan
  %9 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part0.i, align 4
  %call30 = tail call i32 @sync_blockdev(ptr noundef %10) #16
  %11 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %part0.i, align 4
  tail call void @invalidate_bdev(ptr noundef %12) #16
  tail call void @blk_drop_partitions(ptr noundef %disk)
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #16
  br i1 %invalidate, label %if.then33, label %if.end40.thread

if.then33:                                        ; preds = %if.end29
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %15 = and i32 %14, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %.not = icmp eq i32 %15, 5
  br i1 %.not, label %if.then33.if.end40_crit_edge, label %if.then38

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @set_capacity(ptr noundef %disk, i64 noundef 0) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then33.if.end40_crit_edge
  %16 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool42.not = icmp eq i64 %19, 0
  br i1 %tobool42.not, label %if.then49.critedge, label %if.end40.if.then43_crit_edge

if.end40.if.then43_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then43

if.end40.thread:                                  ; preds = %if.end29
  %20 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i74 = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bd_nr_sectors.i.i74 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bd_nr_sectors.i.i74, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool42.not75 = icmp eq i64 %23, 0
  br i1 %tobool42.not75, label %if.end40.thread.cleanup_crit_edge, label %if.end40.thread.if.then43_crit_edge

if.end40.thread.if.then43_crit_edge:              ; preds = %if.end40.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then43

if.end40.thread.cleanup_crit_edge:                ; preds = %if.end40.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then43:                                        ; preds = %if.end40.thread.if.then43_crit_edge, %if.end40.if.then43_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.then43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 56) #21
  %tobool.not.i.i.i70 = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i70, label %if.end.i.cleanup_crit_edge, label %if.end.i.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i
  %call2.i.i.i = tail call noalias ptr @vzalloc(i32 noundef 32768) #22
  %parts.i.i.i = getelementptr inbounds %struct.parsed_partitions, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %parts.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call2.i.i.i, ptr %parts.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.then5.i.i.i, label %if.end.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %limit.i.i.i = getelementptr inbounds %struct.parsed_partitions, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %limit.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 256, ptr %limit.i.i.i, align 4
  %call1.i.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #16
  %29 = inttoptr i32 %call1.i.i to ptr
  %pp_buf.i.i = getelementptr inbounds %struct.parsed_partitions, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %pp_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %pp_buf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool3.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %parts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parts.i.i.i, align 4
  tail call void @vfree(ptr noundef %32) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #16
  br label %cleanup

if.end5.i.i:                                      ; preds = %if.end.i.i
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %29, align 1
  %34 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %disk, ptr %call7.i.i.i.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.parsed_partitions, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %call8.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 32, ptr noundef nonnull @.str.36, ptr noundef %disk_name.i.i) #16
  %35 = ptrtoint ptr %pp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pp_buf.i.i, align 4
  %call12.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef %name.i.i) #16
  %call16.i.i = tail call i32 @strlen(ptr noundef %name.i.i) #23
  %sub.i.i = add i32 %call16.i.i, -1
  %arrayidx17.i.i = getelementptr %struct.parsed_partitions, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 %sub.i.i
  %37 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx17.i.i, align 1
  %conv.i.i = zext i8 %38 to i32
  %39 = add nsw i32 %conv.i.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %39)
  %40 = icmp ult i32 %39, -10
  br i1 %40, label %if.end5.i.i.while.body.i.i.preheader_crit_edge, label %if.then20.i.i

if.end5.i.i.while.body.i.i.preheader_crit_edge:   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.preheader

if.then20.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 28672, ptr %name.i.i, align 4
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %if.then20.i.i, %if.end5.i.i.while.body.i.i.preheader_crit_edge
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %err.0100.i.i = phi i32 [ %spec.select93.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.i.preheader ]
  %i.099.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.i.preheader ]
  %arrayidx26.i.i = getelementptr [19 x ptr], ptr @check_part, i32 0, i32 %i.099.i.i
  %42 = ptrtoint ptr %parts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parts.i.i.i, align 4
  %44 = ptrtoint ptr %limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %limit.i.i.i, align 4
  %mul.i.i = shl i32 %45, 7
  %46 = call ptr @memset(ptr %43, i32 0, i32 %mul.i.i)
  %inc.i.i = add nuw nsw i32 %i.099.i.i, 1
  %47 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx26.i.i, align 4
  %call29.i.i = tail call i32 %48(ptr noundef nonnull %call7.i.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp.i.i = icmp slt i32 %call29.i.i, 0
  %spec.select93.i.i = select i1 %cmp.i.i, i32 %call29.i.i, i32 %err.0100.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool25.not.i.i = icmp sgt i32 %call29.i.i, 0
  %49 = and i32 %inc.i.i, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %49)
  %tobool27.not.i.i = icmp eq i32 %49, 18
  %or.cond.i.i = select i1 %tobool25.not.i.i, i1 true, i1 %tobool27.not.i.i
  br i1 %or.cond.i.i, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29.i.i)
  %cmp33.not.i.i = icmp slt i32 %call29.i.i, 1
  br i1 %cmp33.not.i.i, label %if.end39.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %pp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pp_buf.i.i, align 4
  %call37.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %51) #19
  %52 = ptrtoint ptr %pp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pp_buf.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  tail call void @free_pages(i32 noundef %54, i32 noundef 0) #16
  br label %check_partition.exit.i

if.end39.i.i:                                     ; preds = %while.end.i.i
  %access_beyond_eod.i.i = getelementptr inbounds %struct.parsed_partitions, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %access_beyond_eod.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %access_beyond_eod.i.i, align 8, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool40.not.i.i = icmp eq i8 %56, 0
  %spec.select94.i.i = select i1 %tobool40.not.i.i, i32 %spec.select93.i.i, i32 -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select94.i.i)
  %tobool43.not.i.i = icmp eq i32 %spec.select94.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end39.i.i.if.end56.i.i_crit_edge, label %if.then47.i.i

if.end39.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56.i.i

if.then47.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %pp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pp_buf.i.i, align 4
  %call49.i.i = tail call i32 @strlcat(ptr noundef %58, ptr noundef nonnull @.str.41, i32 noundef 4096) #16
  %59 = ptrtoint ptr %pp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pp_buf.i.i, align 4
  %call55.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %60) #19
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then47.i.i, %if.end39.i.i.if.end56.i.i_crit_edge
  %61 = ptrtoint ptr %pp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pp_buf.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  tail call void @free_pages(i32 noundef %63, i32 noundef 0) #16
  %64 = ptrtoint ptr %parts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %parts.i.i.i, align 4
  tail call void @vfree(ptr noundef %65) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #16
  %66 = inttoptr i32 %spec.select94.i.i to ptr
  br label %check_partition.exit.i

check_partition.exit.i:                           ; preds = %if.end56.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i.i, %do.end.i.i ], [ %66, %if.end56.i.i ]
  %tobool1.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool1.not.i, label %check_partition.exit.i.cleanup_crit_edge, label %if.end3.i

check_partition.exit.i.cleanup_crit_edge:         ; preds = %check_partition.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3.i:                                        ; preds = %check_partition.exit.i
  %cmp.i61.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61.i, label %if.then5.i, label %if.end13.i

if.then5.i:                                       ; preds = %if.end3.i
  %cmp.i = icmp eq ptr %retval.0.i.i, inttoptr (i32 -28 to ptr)
  br i1 %cmp.i, label %do.end.i, label %if.then5.i.cleanup_crit_edge

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end.i:                                         ; preds = %if.then5.i
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %disk_name.i.i) #19
  %call9.i = tail call fastcc zeroext i1 @disk_unlock_native_capacity(ptr noundef %disk) #16
  br i1 %call9.i, label %do.end.i.blk_add_partitions.exit_crit_edge, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end.i.blk_add_partitions.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blk_add_partitions.exit

if.end13.i:                                       ; preds = %if.end3.i
  %67 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %queue.i, align 4
  %zoned.i = getelementptr inbounds %struct.request_queue, ptr %68, i32 0, i32 37, i32 27
  %69 = ptrtoint ptr %zoned.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %zoned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp14.i = icmp eq i32 %70, 2
  br i1 %cmp14.i, label %do.end18.i, label %if.end23.i

do.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %disk_name.i.i) #19
  br label %out_free_state.i

if.end23.i:                                       ; preds = %if.end13.i
  %access_beyond_eod.i = getelementptr inbounds %struct.parsed_partitions, ptr %retval.0.i.i, i32 0, i32 5
  %71 = ptrtoint ptr %access_beyond_eod.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %access_beyond_eod.i, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool24.not.i = icmp eq i8 %72, 0
  br i1 %tobool24.not.i, label %if.end23.i.if.end36.i_crit_edge, label %do.end28.i

if.end23.i.if.end36.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36.i

do.end28.i:                                       ; preds = %if.end23.i
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %disk_name.i.i) #19
  %call33.i = tail call fastcc zeroext i1 @disk_unlock_native_capacity(ptr noundef %disk) #16
  br i1 %call33.i, label %do.end28.i.out_free_state.i_crit_edge, label %do.end28.i.if.end36.i_crit_edge

do.end28.i.if.end36.i_crit_edge:                  ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36.i

do.end28.i.out_free_state.i_crit_edge:            ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_state.i

if.end36.i:                                       ; preds = %do.end28.i.if.end36.i_crit_edge, %if.end23.i.if.end36.i_crit_edge
  %73 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %74, i32 0, i32 10
  %call37.i = tail call i32 @kobject_uevent(ptr noundef %bd_device.i, i32 noundef 2) #16
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %retval.0.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp3876.i = icmp sgt i32 %76, 1
  br i1 %cmp3876.i, label %for.body.lr.ph.i, label %if.end36.i.out_free_state.i_crit_edge

if.end36.i.out_free_state.i_crit_edge:            ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_state.i

for.body.lr.ph.i:                                 ; preds = %if.end36.i
  %parts.i.i = getelementptr inbounds %struct.parsed_partitions, ptr %retval.0.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.077.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %77 = ptrtoint ptr %parts.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %parts.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.anon.85, ptr %78, i32 %p.077.i
  %size1.i.i = getelementptr %struct.anon.85, ptr %78, i32 %p.077.i, i32 1
  %79 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %size1.i.i, align 8
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %tobool.not.i.i = icmp eq i64 %80, 0
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i62.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i62.i:                                     ; preds = %for.body.i
  %83 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %bd_nr_sectors.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %bd_nr_sectors.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %82, i64 %86)
  %cmp.not.i.i = icmp ult i64 %82, %86
  br i1 %cmp.not.i.i, label %if.end10.i.i, label %do.end.i65.i

do.end.i65.i:                                     ; preds = %if.end.i62.i
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %disk_name.i.i, i32 noundef %p.077.i, i64 noundef %82) #19
  %87 = ptrtoint ptr %fops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fops.i.i.i, align 8
  %unlock_native_capacity.i.i.i = getelementptr inbounds %struct.block_device_operations, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %unlock_native_capacity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %unlock_native_capacity.i.i.i, align 4
  %tobool.not.i.i64.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i64.i, label %do.end.i65.i.disk_unlock_native_capacity.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.end.i65.i.disk_unlock_native_capacity.exit.i.i_crit_edge: ; preds = %do.end.i65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disk_unlock_native_capacity.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end.i65.i
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %91, label %lor.lhs.false.i.i.i.disk_unlock_native_capacity.exit.i.i_crit_edge

lor.lhs.false.i.i.i.disk_unlock_native_capacity.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disk_unlock_native_capacity.exit.i.i

disk_unlock_native_capacity.exit.i.i:             ; preds = %lor.lhs.false.i.i.i.disk_unlock_native_capacity.exit.i.i_crit_edge, %do.end.i65.i.disk_unlock_native_capacity.exit.i.i_crit_edge
  %call2.i.i66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #19
  br label %for.inc.i

91:                                               ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #19
  %92 = ptrtoint ptr %fops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fops.i.i.i, align 8
  %unlock_native_capacity8.i.i.i = getelementptr inbounds %struct.block_device_operations, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %unlock_native_capacity8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %unlock_native_capacity8.i.i.i, align 4
  tail call void %95(ptr noundef %disk) #16
  br label %out_free_state.i

if.end10.i.i:                                     ; preds = %if.end.i62.i
  %add.i.i = add i64 %82, %80
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %86)
  %cmp12.i.i = icmp ugt i64 %add.i.i, %86
  br i1 %cmp12.i.i, label %do.end16.i.i, label %if.end10.i.i.if.end25.i.i_crit_edge

if.end10.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i.i

do.end16.i.i:                                     ; preds = %if.end10.i.i
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %disk_name.i.i, i32 noundef %p.077.i, i64 noundef %80) #19
  %96 = ptrtoint ptr %fops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fops.i.i.i, align 8
  %unlock_native_capacity.i87.i.i = getelementptr inbounds %struct.block_device_operations, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %unlock_native_capacity.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %unlock_native_capacity.i87.i.i, align 4
  %tobool.not.i88.i.i = icmp eq ptr %99, null
  br i1 %tobool.not.i88.i.i, label %do.end16.i.i.if.end23.i.i_crit_edge, label %lor.lhs.false.i92.i.i

do.end16.i.i.if.end23.i.i_crit_edge:              ; preds = %do.end16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i.i

lor.lhs.false.i92.i.i:                            ; preds = %do.end16.i.i
  %call.i90.i.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90.i.i)
  %tobool1.not.i91.i.i = icmp eq i32 %call.i90.i.i, 0
  br i1 %tobool1.not.i91.i.i, label %disk_unlock_native_capacity.exit99.thread.i.i, label %lor.lhs.false.i92.i.i.if.end23.i.i_crit_edge

lor.lhs.false.i92.i.i.if.end23.i.i_crit_edge:     ; preds = %lor.lhs.false.i92.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i.i

disk_unlock_native_capacity.exit99.thread.i.i:    ; preds = %lor.lhs.false.i92.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i95.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #19
  %100 = ptrtoint ptr %fops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fops.i.i.i, align 8
  %unlock_native_capacity8.i96.i.i = getelementptr inbounds %struct.block_device_operations, ptr %101, i32 0, i32 7
  %102 = ptrtoint ptr %unlock_native_capacity8.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %unlock_native_capacity8.i96.i.i, align 4
  tail call void %103(ptr noundef %disk) #16
  br label %out_free_state.i

if.end23.i.i:                                     ; preds = %lor.lhs.false.i92.i.i.if.end23.i.i_crit_edge, %do.end16.i.i.if.end23.i.i_crit_edge
  %call2.i93.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #19
  %104 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i101.i.i = getelementptr inbounds %struct.block_device, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %bd_nr_sectors.i.i101.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %bd_nr_sectors.i.i101.i.i, align 8
  %sub.i67.i = sub i64 %107, %82
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.end23.i.i, %if.end10.i.i.if.end25.i.i_crit_edge
  %size.0.i.i = phi i64 [ %sub.i67.i, %if.end23.i.i ], [ %80, %if.end10.i.i.if.end25.i.i_crit_edge ]
  %108 = ptrtoint ptr %parts.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %parts.i.i, align 4
  %flags.i.i = getelementptr %struct.anon.85, ptr %109, i32 %p.077.i, i32 2
  %110 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags.i.i, align 8
  %info.i.i = getelementptr %struct.anon.85, ptr %109, i32 %p.077.i, i32 4
  %call30.i.i = tail call fastcc ptr @add_partition(ptr noundef %disk, i32 noundef %p.077.i, i64 noundef %82, i64 noundef %size.0.i.i, i32 noundef %111, ptr noundef %info.i.i) #16
  %cmp.i.i.i = icmp ule ptr %call30.i.i, inttoptr (i32 -4096 to ptr)
  %cmp33.not.i68.i = icmp eq ptr %call30.i.i, inttoptr (i32 -6 to ptr)
  %or.cond.i69.i = or i1 %cmp.i.i.i, %cmp33.not.i68.i
  br i1 %or.cond.i69.i, label %if.end44.i.i, label %do.end37.i.i

do.end37.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %112 = ptrtoint ptr %call30.i.i to i32
  %sub42.i.i = sub i32 0, %112
  %call43.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %disk_name.i.i, i32 noundef %p.077.i, i32 noundef %sub42.i.i) #19
  br label %for.inc.i

if.end44.i.i:                                     ; preds = %if.end25.i.i
  %113 = ptrtoint ptr %parts.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %parts.i.i, align 4
  %flags47.i.i = getelementptr %struct.anon.85, ptr %114, i32 %p.077.i, i32 2
  %115 = ptrtoint ptr %flags47.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags47.i.i, align 8
  %and.i.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool48.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end44.i.i.for.inc.i_crit_edge, label %if.then49.i.i

if.end44.i.i.for.inc.i_crit_edge:                 ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then49.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %bd_dev.i.i = getelementptr inbounds %struct.block_device, ptr %call30.i.i, i32 0, i32 5
  %117 = ptrtoint ptr %bd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bd_dev.i.i, align 4
  tail call void @md_autodetect_dev(i32 noundef %118) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then49.i.i, %if.end44.i.i.for.inc.i_crit_edge, %do.end37.i.i, %disk_unlock_native_capacity.exit.i.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %p.077.i, 1
  %119 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %limit.i, align 4
  %cmp38.i = icmp slt i32 %inc.i, %120
  br i1 %cmp38.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.out_free_state.i_crit_edge

for.inc.i.out_free_state.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_state.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

out_free_state.i:                                 ; preds = %for.inc.i.out_free_state.i_crit_edge, %disk_unlock_native_capacity.exit99.thread.i.i, %91, %if.end36.i.out_free_state.i_crit_edge, %do.end28.i.out_free_state.i_crit_edge, %do.end18.i
  %ret.0.i = phi i32 [ 0, %do.end18.i ], [ -11, %do.end28.i.out_free_state.i_crit_edge ], [ -11, %91 ], [ -11, %disk_unlock_native_capacity.exit99.thread.i.i ], [ 0, %if.end36.i.out_free_state.i_crit_edge ], [ 0, %for.inc.i.out_free_state.i_crit_edge ]
  %parts.i71.i = getelementptr inbounds %struct.parsed_partitions, ptr %retval.0.i.i, i32 0, i32 2
  %121 = ptrtoint ptr %parts.i71.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %parts.i71.i, align 4
  tail call void @vfree(ptr noundef %122) #16
  tail call void @kfree(ptr noundef nonnull %retval.0.i.i) #16
  br label %blk_add_partitions.exit

blk_add_partitions.exit:                          ; preds = %out_free_state.i, %do.end.i.blk_add_partitions.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out_free_state.i ], [ -11, %do.end.i.blk_add_partitions.exit_crit_edge ]
  %cmp45 = icmp eq i32 %retval.0.i, -11
  br i1 %cmp45, label %blk_add_partitions.exit.rescan_crit_edge, label %blk_add_partitions.exit.cleanup_crit_edge

blk_add_partitions.exit.cleanup_crit_edge:        ; preds = %blk_add_partitions.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

blk_add_partitions.exit.rescan_crit_edge:         ; preds = %blk_add_partitions.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rescan

if.then49.critedge:                               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %bd_device = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 10
  %call51 = tail call i32 @kobject_uevent(ptr noundef %bd_device, i32 noundef 2) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then49.critedge, %blk_add_partitions.exit.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %check_partition.exit.i.cleanup_crit_edge, %if.then4.i.i, %if.then5.i.i.i, %if.end.i.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %if.end40.thread.cleanup_crit_edge, %rescan.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %if.end.cleanup_crit_edge ], [ %ret.0, %if.then49.critedge ], [ 0, %if.then5.i.i.i ], [ 0, %if.then4.i.i ], [ -5, %if.then5.i.cleanup_crit_edge ], [ -5, %do.end.i.cleanup_crit_edge ], [ 0, %if.then43.cleanup_crit_edge ], [ 0, %check_partition.exit.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %ret.0, %if.end40.thread.cleanup_crit_edge ], [ %retval.0.i, %blk_add_partitions.exit.cleanup_crit_edge ], [ -16, %rescan.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @read_part_sector(ptr nocapture noundef %state, i64 noundef %n, ptr nocapture noundef writeonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %n)
  %cmp.not = icmp ugt i64 %5, %n
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %access_beyond_eod = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 5
  %6 = ptrtoint ptr %access_beyond_eod to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %access_beyond_eod, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_mapping, align 8
  %shr = lshr i64 %n, 3
  %conv = trunc i64 %shr to i32
  %call.i = tail call ptr @read_cache_page(ptr noundef %10, i32 noundef %conv, ptr noundef null, ptr noundef null) #16
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end5:                                          ; preds = %if.end
  %11 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !154

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, -1
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %11, align 4
  %and.i16.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !148

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !154

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i18.i = add i32 %19, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %20, %if.end.i20.i ]
  %21 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.57) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #16, !srcloc !159
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !154

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i25.i = add i32 %19, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %22, %if.end.i27.i ]
  %23 = inttoptr i32 %retval.0.i28.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %if.end8, label %out_put_page

if.end8:                                          ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %p, align 4
  %call9 = tail call ptr @page_address(ptr noundef %call.i) #16
  %n.tr = trunc i64 %n to i32
  %28 = shl i32 %n.tr, 9
  %idx.ext = and i32 %28, 3584
  %add.ptr = getelementptr i8, ptr %call9, i32 %idx.ext
  br label %cleanup

out_put_page:                                     ; preds = %PageError.exit
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %11, align 4
  %and.i.i21 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %tobool.not.i.i22 = icmp eq i32 %and.i.i21, 0
  br i1 %tobool.not.i.i22, label %if.end.i.i25, label %if.then.i.i24, !prof !154

if.then.i.i24:                                    ; preds = %out_put_page
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i23 = add i32 %30, -1
  br label %_compound_head.exit.i27

if.end.i.i25:                                     ; preds = %out_put_page
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i27

_compound_head.exit.i27:                          ; preds = %if.end.i.i25, %if.then.i.i24
  %retval.0.i.i26 = phi i32 [ %sub.i.i23, %if.then.i.i24 ], [ %31, %if.end.i.i25 ]
  %32 = inttoptr i32 %retval.0.i.i26 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !148

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i27
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.58) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !160
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i27
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !162
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@read_part_sector, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !164

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %32, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_crit_edge

folio_put_testzero.exit.i.i.out_crit_edge:        ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %32) #16
  br label %out

out:                                              ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_crit_edge, %if.end.out_crit_edge
  %36 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %p, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %out ], [ %add.ptr, %if.end8 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @part_partition_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_partno = getelementptr i8, ptr %dev, i32 944
  %0 = ptrtoint ptr %bd_partno to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bd_partno, align 8
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @part_start_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.4, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_size_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @part_ro_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_read_only.i = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bd_read_only.i, align 8, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.bdev_read_only.exit_crit_edge

entry.bdev_read_only.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %bdev_read_only.exit

lor.rhs.i:                                        ; preds = %entry
  %bd_disk.i = getelementptr i8, ptr %dev, i32 992
  %2 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bd_read_only.i.i, align 8, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %lor.rhs.i.bdev_read_only.exit_crit_edge

lor.rhs.i.bdev_read_only.exit_crit_edge:          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bdev_read_only.exit

lor.rhs.i.i:                                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i, align 4
  %10 = lshr i32 %9, 1
  %.lobit.i = and i32 %10, 1
  br label %bdev_read_only.exit

bdev_read_only.exit:                              ; preds = %lor.rhs.i.i, %lor.rhs.i.bdev_read_only.exit_crit_edge, %entry.bdev_read_only.exit_crit_edge
  %11 = phi i32 [ 1, %entry.bdev_read_only.exit_crit_edge ], [ 1, %lor.rhs.i.bdev_read_only.exit_crit_edge ], [ %.lobit.i, %lor.rhs.i.i ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %11)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @part_alignment_offset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -48
  %bd_queue.i = getelementptr i8, ptr %dev, i32 996
  %0 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_queue.i, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr, align 8
  %physical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 8
  %4 = ptrtoint ptr %physical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %physical_block_size.i, align 4
  %io_min.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 11
  %6 = ptrtoint ptr %io_min.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_min.i, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7) #16
  %shr.i = lshr i32 %8, 9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %3)
  %cmp171.i = icmp ult i64 %3, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !154

if.then175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv176.i = trunc i64 %3 to i32
  %rem177.i = urem i32 %conv176.i, %shr.i
  br label %queue_limit_alignment_offset.exit

if.else181.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shr.i, i64 %3) #24, !srcloc !165
  %asmresult.i279.i = extractvalue { i64, i64 } %9, 0
  %shr.i.i = lshr i64 %asmresult.i279.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %queue_limit_alignment_offset.exit

queue_limit_alignment_offset.exit:                ; preds = %if.else181.i, %if.then175.i
  %__rem.0.i = phi i32 [ %rem177.i, %if.then175.i ], [ %conv.i.i, %if.else181.i ]
  %shl187.neg.i = mul i32 %__rem.0.i, -512
  %alignment_offset.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 10
  %10 = ptrtoint ptr %alignment_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alignment_offset.i, align 4
  %add188.i = add i32 %11, %8
  %sub189.i = add i32 %add188.i, %shl187.neg.i
  %rem190.i = urem i32 %sub189.i, %8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %rem190.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @part_discard_alignment_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -48
  %bd_queue.i = getelementptr i8, ptr %dev, i32 996
  %0 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_queue.i, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr, align 8
  %max_discard_sectors.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 13
  %4 = ptrtoint ptr %max_discard_sectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_discard_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.queue_limit_discard_alignment.exit_crit_edge, label %if.end.i

entry.queue_limit_discard_alignment.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %queue_limit_discard_alignment.exit

if.end.i:                                         ; preds = %entry
  %discard_alignment.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 19
  %6 = ptrtoint ptr %discard_alignment.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %discard_alignment.i, align 4
  %shr.i = lshr i32 %7, 9
  %discard_granularity.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 18
  %8 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %discard_granularity.i, align 4
  %shr1.i = lshr i32 %9, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %9)
  %tobool2.not.i = icmp ult i32 %9, 512
  br i1 %tobool2.not.i, label %if.end.i.queue_limit_discard_alignment.exit_crit_edge, label %if.else170.i

if.end.i.queue_limit_discard_alignment.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %queue_limit_discard_alignment.exit

if.else170.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %3)
  %cmp172.i = icmp ult i64 %3, 4294967296
  br i1 %cmp172.i, label %if.then176.i, label %if.else182.i, !prof !154

if.then176.i:                                     ; preds = %if.else170.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv177.i = trunc i64 %3 to i32
  %rem178.i = urem i32 %conv177.i, %shr1.i
  br label %if.end186.i

if.else182.i:                                     ; preds = %if.else170.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shr1.i, i64 %3) #24, !srcloc !165
  %asmresult.i281.i = extractvalue { i64, i64 } %10, 0
  %shr.i.i = lshr i64 %asmresult.i281.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.else182.i, %if.then176.i
  %__rem.0.i = phi i32 [ %rem178.i, %if.then176.i ], [ %conv.i.i, %if.else182.i ]
  %add188.i = add nuw nsw i32 %shr1.i, %shr.i
  %sub189.i = sub i32 %add188.i, %__rem.0.i
  %rem190.i = urem i32 %sub189.i, %shr1.i
  %shl191.i = shl nuw i32 %rem190.i, 9
  br label %queue_limit_discard_alignment.exit

queue_limit_discard_alignment.exit:               ; preds = %if.end186.i, %if.end.i.queue_limit_discard_alignment.exit_crit_edge, %entry.queue_limit_discard_alignment.exit_crit_edge
  %retval.0.i = phi i32 [ %shl191.i, %if.end186.i ], [ 0, %entry.queue_limit_discard_alignment.exit_crit_edge ], [ 0, %if.end.i.queue_limit_discard_alignment.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_stat_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_inflight_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_fail_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_fail_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_set_zoned(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdev_alloc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_alloc_ext_minor() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xa_insert(ptr noundef %xa, i32 noundef %index, ptr noundef %entry1) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_lock(ptr noundef %xa) #16
  %call = tail call i32 @__xa_insert(ptr noundef %xa, i32 noundef %index, ptr noundef %entry1, i32 noundef 3264) #16
  tail call void @_raw_spin_unlock(ptr noundef %xa) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdev_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @whole_disk_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsync_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__invalidate_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__remove_inode_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @disk_unlock_native_capacity(ptr noundef %disk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fops = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 8
  %0 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fops, align 8
  %unlock_native_capacity = getelementptr inbounds %struct.block_device_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %unlock_native_capacity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unlock_native_capacity, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 12
  %call = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end4, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #19
  br label %return

do.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #19
  %4 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fops, align 8
  %unlock_native_capacity8 = getelementptr inbounds %struct.block_device_operations, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %unlock_native_capacity8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unlock_native_capacity8, align 4
  tail call void %7(ptr noundef %disk) #16
  br label %return

return:                                           ; preds = %do.end4, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ true, %do.end4 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfspart_check_ICS(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfspart_check_POWERTEC(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfspart_check_EESOX(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfspart_check_CUMANA(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfspart_check_ADFS(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmdline_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sgi_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ldm_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msdos_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @osf_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amiga_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atari_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ultrix_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @karma_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv68_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_autodetect_dev(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !28, !29, !31, !32, !34, !36, !37, !39, !40, !42, !43, !45, !47, !49, !51, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !101, !102, !103, !105, !107, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134}
!llvm.named.register.sp = !{!136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/core.c", i32 278, i32 11}
!2 = !{ptr @part_type, !3, !"part_type", i1 false, i1 false}
!3 = !{!"../block/partitions/core.c", i32 277, i32 20}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/partitions/core.c", i32 545, i32 2}
!6 = !{ptr @__ksymtab_bdev_disk_changed, !7, !"__ksymtab_bdev_disk_changed", i1 false, i1 false}
!7 = !{!"../block/partitions/core.c", i32 712, i32 1}
!8 = !{ptr @part_attr_groups, !9, !"part_attr_groups", i1 false, i1 false}
!9 = !{!"../block/partitions/core.c", i32 253, i32 38}
!10 = !{ptr @part_attr_group, !11, !"part_attr_group", i1 false, i1 false}
!11 = !{!"../block/partitions/core.c", i32 249, i32 31}
!12 = !{ptr @part_attrs, !13, !"part_attrs", i1 false, i1 false}
!13 = !{!"../block/partitions/core.c", i32 234, i32 26}
!14 = !{ptr @dev_attr_partition, !15, !"dev_attr_partition", i1 false, i1 false}
!15 = !{!"../block/partitions/core.c", i32 221, i32 8}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../block/partitions/core.c", i32 186, i32 22}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../block/partitions/core.c", i32 222, i32 8}
!20 = !{ptr @dev_attr_start, !19, !"dev_attr_start", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../block/partitions/core.c", i32 192, i32 22}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../block/partitions/core.c", i32 223, i32 8}
!25 = !{ptr @dev_attr_size, !24, !"dev_attr_size", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../block/partitions/core.c", i32 224, i32 8}
!28 = !{ptr @dev_attr_ro, !27, !"dev_attr_ro", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../block/partitions/core.c", i32 225, i32 8}
!31 = !{ptr @dev_attr_alignment_offset, !30, !"dev_attr_alignment_offset", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../block/partitions/core.c", i32 206, i32 22}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../block/partitions/core.c", i32 226, i32 8}
!36 = !{ptr @dev_attr_discard_alignment, !35, !"dev_attr_discard_alignment", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../block/partitions/core.c", i32 227, i32 8}
!39 = !{ptr @dev_attr_stat, !38, !"dev_attr_stat", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../block/partitions/core.c", i32 228, i32 8}
!42 = !{ptr @dev_attr_inflight, !41, !"dev_attr_inflight", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../block/partitions/core.c", i32 231, i32 2}
!45 = !{ptr @dev_attr_fail, !46, !"dev_attr_fail", i1 false, i1 false}
!46 = !{!"../block/partitions/core.c", i32 230, i32 32}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../block/partitions/core.c", i32 271, i32 22}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../block/partitions/core.c", i32 273, i32 23}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../block/partitions/core.c", i32 337, i32 3}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @add_partition._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @add_partition._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../block/partitions/core.c", i32 341, i32 3}
!65 = !{ptr @add_partition._entry.20, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @add_partition._entry_ptr.22, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../block/partitions/core.c", i32 366, i32 22}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../block/partitions/core.c", i32 368, i32 22}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../block/partitions/core.c", i32 400, i32 47}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../block/partitions/core.c", i32 309, i32 8}
!75 = !{ptr @dev_attr_whole_disk, !74, !"dev_attr_whole_disk", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!78 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../block/partitions/core.c", i32 618, i32 4}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @blk_add_partitions._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @blk_add_partitions._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../block/partitions/core.c", i32 630, i32 3}
!86 = !{ptr @blk_add_partitions._entry.30, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @blk_add_partitions._entry_ptr.32, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../block/partitions/core.c", i32 642, i32 3}
!90 = !{ptr @blk_add_partitions._entry.33, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @blk_add_partitions._entry_ptr.35, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../block/partitions/core.c", i32 140, i32 39}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../block/partitions/core.c", i32 141, i32 37}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../block/partitions/core.c", i32 143, i32 24}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../block/partitions/core.c", i32 160, i32 3}
!100 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @check_partition._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @check_partition._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../block/partitions/core.c", i32 174, i32 4}
!105 = !{ptr @check_partition._entry.42, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../block/partitions/core.c", i32 175, i32 3}
!107 = !{ptr @check_partition._entry_ptr.43, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @check_part, !109, !"check_part", i1 false, i1 false}
!109 = !{!"../block/partitions/core.c", i32 17, i32 14}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../block/partitions/core.c", i32 531, i32 3}
!112 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @disk_unlock_native_capacity._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @disk_unlock_native_capacity._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../block/partitions/core.c", i32 535, i32 2}
!117 = !{ptr @disk_unlock_native_capacity._entry.46, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @disk_unlock_native_capacity._entry_ptr.48, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../block/partitions/core.c", i32 562, i32 3}
!121 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @blk_add_partition._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @blk_add_partition._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../block/partitions/core.c", i32 571, i32 3}
!126 = !{ptr @blk_add_partition._entry.51, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @blk_add_partition._entry_ptr.53, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../block/partitions/core.c", i32 589, i32 3}
!130 = !{ptr @blk_add_partition._entry.54, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @blk_add_partition._entry_ptr.56, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/mm.h", i32 717, i32 2}
!136 = !{!"sp"}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i64 2149480410}
!147 = !{i64 2149480676}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{i64 2152512726}
!150 = !{i64 2149989031}
!151 = !{i64 2149993965}
!152 = !{i64 2150015683}
!153 = !{i64 2150020577}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2150097104}
!156 = !{i64 2150097429}
!157 = !{i64 2152524588}
!158 = !{i8 0, i8 2}
!159 = !{i64 2150629741, i64 2150630232, i64 2150629778, i64 2150629834, i64 2150629868, i64 2150629892, i64 2150629933, i64 2150629954, i64 2150629982, i64 2150630016}
!160 = !{i64 2153238328, i64 2153238811, i64 2153238365, i64 2153238421, i64 2153238455, i64 2153238479, i64 2153238520, i64 2153238541, i64 2153238569, i64 2153238603}
!161 = !{i64 2148756440}
!162 = !{i64 2148671149, i64 2148671181, i64 2148671210, i64 2148671244, i64 2148671275, i64 2148671298}
!163 = !{i64 2148756669}
!164 = !{i64 2148492562, i64 2148492567, i64 2148492580, i64 2148492624, i64 2148492658, i64 2148492679}
!165 = !{i64 2148517749, i64 2148518029, i64 2148518363, i64 2148518697}
