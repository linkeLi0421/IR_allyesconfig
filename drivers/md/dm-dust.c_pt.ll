; ModuleID = '/llk/IR_all_yes/drivers/md/dm-dust.c_pt.bc'
source_filename = "../drivers/md/dm-dust.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.dust_device = type { ptr, %struct.rb_root, i64, %struct.spinlock, i32, i32, i32, i64, i8 }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.badblock = type { %struct.rb_node, i64, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@dust_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str, ptr null, [3 x i32] [i32 1, i32 0, i32 0], ptr @dust_ctr, ptr @dust_dtr, ptr @dust_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dust_status, ptr @dust_message, ptr @dust_prepare_ioctl, ptr null, ptr null, ptr @dust_iterate_devices, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_dust__269_589_dm_dust_init6 = internal global ptr @dm_dust_init, section ".initcall6.init", align 4
@__exitcall_dm_dust_exit = internal global ptr @dm_dust_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description270 = internal constant [51 x i8] c"dm_dust.description=device-mapper dust test target\00", section ".modinfo", align 1
@__UNIQUE_ID_author271 = internal constant [50 x i8] c"dm_dust.author=Bryan Gurney <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file272 = internal constant [32 x i8] c"dm_dust.file=drivers/md/dm-dust\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [20 x i8] c"dm_dust.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dust\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid argument count\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid block size parameter\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Block size must be at least 512\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Block size must be a power of 2\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Block size is too large\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid device offset sector\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot allocate context\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device lookup failed\00", [43 x i8] zeroinitializer }, align 32
@dust_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dd->dust_lock\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__dust_map_write._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 201, ptr null, ptr null }, align 1
@.str.11 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016device-mapper: dust: block %llu removed from badblocklist by write\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__dust_map_write\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/md/dm-dust.c\00", [43 x i8] zeroinitializer }, align 32
@__dust_map_write._entry_ptr = internal global ptr @__dust_map_write._entry, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s %s\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fail_read_on_bad_block\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bypass\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quiet\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"verbose\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %llu %u\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"addbadblock\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"removebadblock\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"queryblock\00", [21 x i8] zeroinitializer }, align 32
@dust_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.13, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: dust: %s requires an additional argument\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dust_message\00", [19 x i8] zeroinitializer }, align 32
@dust_message._entry_ptr = internal global ptr @dust_message._entry, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@dust_message._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.13, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016device-mapper: dust: disabling read failures on bad sectors\0A\00", [33 x i8] zeroinitializer }, align 32
@dust_message._entry_ptr.28 = internal global ptr @dust_message._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@dust_message._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.13, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016device-mapper: dust: enabling read failures on bad sectors\0A\00", [34 x i8] zeroinitializer }, align 32
@dust_message._entry_ptr.32 = internal global ptr @dust_message._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"countbadblocks\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"countbadblocks: %llu badblock(s) found\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clearbadblocks\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"listbadblocks\00", [18 x i8] zeroinitializer }, align 32
@dust_message._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.13, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: dust: selected block value out of range\0A\00", [38 x i8] zeroinitializer }, align 32
@dust_message._entry_ptr.39 = internal global ptr @dust_message._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@dust_message._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.24, ptr @.str.13, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013device-mapper: dust: selected write fail count out of range\0A\00", [33 x i8] zeroinitializer }, align 32
@dust_message._entry_ptr.43 = internal global ptr @dust_message._entry.41, section ".printk_index", align 4
@dust_message._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.13, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dust_message._entry_ptr.45 = internal global ptr @dust_message._entry.44, section ".printk_index", align 4
@dust_message._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.24, ptr @.str.13, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013device-mapper: dust: invalid number of arguments '%d'\0A\00", [39 x i8] zeroinitializer }, align 32
@dust_message._entry_ptr.48 = internal global ptr @dust_message._entry.46, section ".printk_index", align 4
@dust_message._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.24, ptr @.str.13, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: dust: unrecognized message '%s' received\0A\00", [37 x i8] zeroinitializer }, align 32
@dust_message._entry_ptr.51 = internal global ptr @dust_message._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: no badblocks found\00", [41 x i8] zeroinitializer }, align 32
@__func__.dust_clear_badblocks = private unnamed_addr constant [21 x i8] c"dust_clear_badblocks\00", align 1
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: badblocks cleared\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No blocks in badblocklist\00", [38 x i8] zeroinitializer }, align 32
@dust_add_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.13, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: dust: %s: badblock allocation failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dust_add_block\00", [17 x i8] zeroinitializer }, align 32
@dust_add_block._entry_ptr = internal global ptr @dust_add_block._entry, section ".printk_index", align 4
@dust_add_block._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.13, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013device-mapper: dust: %s: block %llu already in badblocklist\0A\00", [33 x i8] zeroinitializer }, align 32
@dust_add_block._entry_ptr.60 = internal global ptr @dust_add_block._entry.58, section ".printk_index", align 4
@dust_add_block._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.13, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016device-mapper: dust: %s: badblock added at block %llu with write fail count %u\0A\00", [46 x i8] zeroinitializer }, align 32
@dust_add_block._entry_ptr.63 = internal global ptr @dust_add_block._entry.61, section ".printk_index", align 4
@dust_remove_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.13, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: dust: %s: block %llu not found in badblocklist\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dust_remove_block\00", [46 x i8] zeroinitializer }, align 32
@dust_remove_block._entry_ptr = internal global ptr @dust_remove_block._entry, section ".printk_index", align 4
@dust_remove_block._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.13, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016device-mapper: dust: %s: badblock removed at block %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@dust_remove_block._entry_ptr.68 = internal global ptr @dust_remove_block._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: block %llu found in badblocklist\00", [59 x i8] zeroinitializer }, align 32
@__func__.dust_query_block = private unnamed_addr constant [17 x i8] c"dust_query_block\00", align 1
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: block %llu not found in badblocklist\00", [55 x i8] zeroinitializer }, align 32
@dm_dust_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.13, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013device-mapper: dust: dm_register_target failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dm_dust_init\00", [19 x i8] zeroinitializer }, align 32
@dm_dust_init._entry_ptr = internal global ptr @dm_dust_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"dust_target\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 561, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 562, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 332, i32 15 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 337, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 342, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 347, i32 15 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 352, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 358, i32 22 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 359, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 365, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 370, i32 15 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 392, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 200, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 521, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 527, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 429, i32 28 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 430, i32 28 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 431, i32 28 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 432, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 433, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 434, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 437, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 438, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 441, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 443, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 447, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 455, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 467, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 484, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 489, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 495, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 505, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 508, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 280, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 282, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 301, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 307, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 114, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 123, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 133, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 88, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 98, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 151, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 153, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private constant [24 x i8] c"../drivers/md/dm-dust.c\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 579, i32 3 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__dust_map_write._entry, ptr @__dust_map_write._entry_ptr, ptr @__exitcall_dm_dust_exit, ptr @__initcall__kmod_dm_dust__269_589_dm_dust_init6, ptr @dm_dust_exit, ptr @dm_dust_init._entry, ptr @dm_dust_init._entry_ptr, ptr @dust_add_block._entry, ptr @dust_add_block._entry.58, ptr @dust_add_block._entry.61, ptr @dust_add_block._entry_ptr, ptr @dust_add_block._entry_ptr.60, ptr @dust_add_block._entry_ptr.63, ptr @dust_message._entry, ptr @dust_message._entry.26, ptr @dust_message._entry.30, ptr @dust_message._entry.37, ptr @dust_message._entry.41, ptr @dust_message._entry.44, ptr @dust_message._entry.46, ptr @dust_message._entry.49, ptr @dust_message._entry_ptr, ptr @dust_message._entry_ptr.28, ptr @dust_message._entry_ptr.32, ptr @dust_message._entry_ptr.39, ptr @dust_message._entry_ptr.43, ptr @dust_message._entry_ptr.45, ptr @dust_message._entry_ptr.48, ptr @dust_message._entry_ptr.51, ptr @dust_remove_block._entry, ptr @dust_remove_block._entry.66, ptr @dust_remove_block._entry_ptr, ptr @dust_remove_block._entry_ptr.68, ptr @dust_target, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dust_ctr.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_message._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_message._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_message._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_message._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_message._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_message._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_message._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_add_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_add_block._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_add_block._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_remove_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dust_remove_block._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dust_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_dust_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dm_unregister_target(ptr noundef nonnull @dust_target) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_dust_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @dust_target) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dust_ctr(ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv) #2 align 64 {
entry:
  %tmp = alloca i64, align 8
  %dummy = alloca i8, align 1
  %blksz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tmp, align 8, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #10
  %1 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dummy, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blksz) #10
  %2 = ptrtoint ptr %blksz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %blksz, align 4, !annotation !152
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %len, align 8
  %5 = tail call i64 @llvm.umin.i64(i64 %4, i64 2097152)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %argc)
  %cmp2.not = icmp eq i32 %argc, 3
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %argv, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @kstrtouint(ptr noundef %8, i32 noundef 10, ptr noundef nonnull %blksz) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blksz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then4_crit_edge, label %if.end6

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %error5 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %11 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.2, ptr %error5, align 8
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %10)
  %cmp7 = icmp ult i32 %10, 512
  br i1 %cmp7, label %if.then8, label %is_power_of_2.exit

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %error9 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %12 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.3, ptr %error9, align 8
  br label %cleanup

is_power_of_2.exit:                               ; preds = %if.end6
  %13 = call i32 @llvm.ctpop.i32(i32 %10) #10, !range !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp1.i = icmp ult i32 %13, 2
  br i1 %cmp1.i, label %if.end14, label %if.then12

if.then12:                                        ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #12
  %error13 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %14 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.4, ptr %error13, align 8
  br label %cleanup

if.end14:                                         ; preds = %is_power_of_2.exit
  %15 = lshr i32 %10, 9
  %shr.i = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %shr.i)
  %cmp16 = icmp ult i64 %5, %shr.i
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %error19 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %16 = ptrtoint ptr %error19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.5, ptr %error19, align 8
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %arrayidx21 = getelementptr ptr, ptr %argv, i32 1
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx21, align 4
  %call22 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef nonnull %tmp, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 1
  br i1 %cmp23.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %error29 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %19 = ptrtoint ptr %error29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.7, ptr %error29, align 8
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 88) #14
  %cmp32 = icmp eq ptr %call7.i.i, null
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %error35 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %21 = ptrtoint ptr %error35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.8, ptr %error35, align 8
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %22 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %argv, align 4
  %24 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ti, align 8
  %call38 = call i32 @dm_table_get_mode(ptr noundef %25) #10
  %call39 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %23, i32 noundef %call38, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %error42 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %26 = ptrtoint ptr %error42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.9, ptr %error42, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %sect_per_block44 = getelementptr inbounds %struct.dust_device, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %sect_per_block44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %15, ptr %sect_per_block44, align 4
  %28 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blksz, align 4
  %blksz45 = getelementptr inbounds %struct.dust_device, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %blksz45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %blksz45, align 4
  %31 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tmp, align 8
  %start = getelementptr inbounds %struct.dust_device, ptr %call7.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %start, align 8
  %34 = call i32 @llvm.cttz.i32(i32 %15, i1 false) #10, !range !153
  %sect_per_block_shift = getelementptr inbounds %struct.dust_device, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %sect_per_block_shift to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sect_per_block_shift, align 8
  %fail_read_on_bb = getelementptr inbounds %struct.dust_device, ptr %call7.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %fail_read_on_bb to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %fail_read_on_bb, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %fail_read_on_bb, align 8
  %badblocklist = getelementptr inbounds %struct.dust_device, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %badblocklist to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %badblocklist, align 4
  %badblock_count = getelementptr inbounds %struct.dust_device, ptr %call7.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %badblock_count to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %badblock_count, align 8
  %dust_lock = getelementptr inbounds %struct.dust_device, ptr %call7.i.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %dust_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @dust_ctr.__key, i16 noundef signext 3) #10
  %39 = ptrtoint ptr %fail_read_on_bb to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load48 = load i8, ptr %fail_read_on_bb, align 8
  %bf.clear49 = and i8 %bf.load48, -65
  store i8 %bf.clear49, ptr %fail_read_on_bb, align 8
  %40 = ptrtoint ptr %sect_per_block44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sect_per_block44, align 4
  %conv53 = zext i32 %41 to i64
  %call54 = call i32 @dm_set_target_max_io_len(ptr noundef %ti, i64 noundef %conv53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %do.end68, label %do.body60, !prof !154

do.body60:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-dust.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #10, !srcloc !155
  unreachable

do.end68:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %42 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %num_discard_bios, align 8
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %43 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %num_flush_bios, align 4
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %44 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %if.then41, %if.then34, %if.then28, %if.then18, %if.then12, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then4 ], [ -22, %if.then8 ], [ -22, %if.then18 ], [ -22, %if.then28 ], [ -12, %if.then34 ], [ -22, %if.then41 ], [ 0, %do.end68 ], [ -22, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blksz) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dust_dtr(ptr noundef %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %badblocklist = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 1
  %badblock_count = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %badblock_count to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %badblock_count, align 8
  %call.i = tail call ptr @rb_first(ptr noundef %badblocklist) #10
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.body.i, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp1.not.i = icmp eq i64 %3, 0
  br i1 %cmp1.not.i, label %do.body.i.__dust_clear_badblocks.exit_crit_edge, label %do.body4.i, !prof !154

do.body.i.__dust_clear_badblocks.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dust_clear_badblocks.exit

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-dust.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 247, 0\0A.popsection", ""() #10, !srcloc !156
  unreachable

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %nnode.060.i = phi ptr [ %call12.i, %while.body.i.while.body.i_crit_edge ], [ %call.i, %entry.while.body.i_crit_edge ]
  %count.addr.059.i = phi i64 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %call12.i = tail call ptr @rb_next(ptr noundef nonnull %nnode.060.i) #10
  tail call void @rb_erase(ptr noundef nonnull %nnode.060.i, ptr noundef %badblocklist) #10
  %dec.i = add i64 %count.addr.059.i, -1
  tail call void @kfree(ptr noundef nonnull %nnode.060.i) #10
  %tobool11.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool11.not.i, label %do.body13.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

do.body13.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i)
  %cmp14.not.i = icmp eq i64 %dec.i, 0
  br i1 %cmp14.not.i, label %do.body31.i, label %do.body22.i, !prof !154

do.body22.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-dust.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #10, !srcloc !157
  unreachable

do.body31.i:                                      ; preds = %do.body13.i
  %4 = ptrtoint ptr %badblocklist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %badblocklist, align 4
  %cmp32.not.i = icmp eq ptr %5, null
  br i1 %cmp32.not.i, label %do.body31.i.__dust_clear_badblocks.exit_crit_edge, label %do.body40.i, !prof !154

do.body31.i.__dust_clear_badblocks.exit_crit_edge: ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dust_clear_badblocks.exit

do.body40.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-dust.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #10, !srcloc !158
  unreachable

__dust_clear_badblocks.exit:                      ; preds = %do.body31.i.__dust_clear_badblocks.exit_crit_edge, %do.body.i.__dust_clear_badblocks.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %7) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dust_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %7, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %7, -2177
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %11 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #10
  %start = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %14 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bi_iter, align 8
  %begin = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %16 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %begin, align 8
  %sub = sub i64 %15, %17
  %add = add i64 %sub, %13
  store i64 %add, ptr %bi_iter, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %18 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %fail_read_on_bb = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %fail_read_on_bb to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %fail_read_on_bb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %bf.cast = icmp slt i8 %bf.load, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %bio_set_dev.exit
  br i1 %bf.cast, label %if.then.i24, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i24:                                      ; preds = %if.then
  %sect_per_block_shift.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %sect_per_block_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sect_per_block_shift.i, align 8
  %sh_prom.i = zext i32 %22 to i64
  %shr.i = lshr i64 %add, %sh_prom.i
  %dust_lock.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dust_lock.i) #10
  %badblocklist.i.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %badblocklist.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %node.016.i.i.i = load ptr, ptr %badblocklist.i.i, align 4
  %tobool.not17.i.i.i = icmp eq ptr %node.016.i.i.i, null
  br i1 %tobool.not17.i.i.i, label %if.then.i24.__dust_map_read.exit.i_crit_edge, label %if.then.i24.while.body.i.i.i_crit_edge

if.then.i24.while.body.i.i.i_crit_edge:           ; preds = %if.then.i24
  br label %while.body.i.i.i

if.then.i24.__dust_map_read.exit.i_crit_edge:     ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dust_map_read.exit.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.then.i24.while.body.i.i.i_crit_edge
  %node.018.i.i.i = phi ptr [ %node.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %node.016.i.i.i, %if.then.i24.while.body.i.i.i_crit_edge ]
  %bb.i.i.i = getelementptr inbounds %struct.badblock, ptr %node.018.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %bb.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bb.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %shr.i)
  %cmp.i.i.i = icmp ugt i64 %25, %shr.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %shr.i)
  %cmp2.i.i.i = icmp ult i64 %25, %shr.i
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %if.else.i.i.i.__dust_map_read.exit.i_crit_edge

if.else.i.i.i.__dust_map_read.exit.i_crit_edge:   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dust_map_read.exit.i

if.then3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.then.i.i.i
  %node.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then3.i.i.i ]
  %26 = ptrtoint ptr %node.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %node.0.i.i.i = load ptr, ptr %node.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.__dust_map_read.exit.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

cleanup.i.i.i.__dust_map_read.exit.i_crit_edge:   ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dust_map_read.exit.i

__dust_map_read.exit.i:                           ; preds = %cleanup.i.i.i.__dust_map_read.exit.i_crit_edge, %if.else.i.i.i.__dust_map_read.exit.i_crit_edge, %if.then.i24.__dust_map_read.exit.i_crit_edge
  %node.0.lcssa.i.i.i = phi ptr [ null, %if.then.i24.__dust_map_read.exit.i_crit_edge ], [ null, %cleanup.i.i.i.__dust_map_read.exit.i_crit_edge ], [ %node.018.i.i.i, %if.else.i.i.i.__dust_map_read.exit.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %node.0.lcssa.i.i.i, null
  %..i.i = select i1 %tobool.not.i.i, i32 1, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dust_lock.i, i32 noundef %call2.i) #10
  br label %if.end

if.else:                                          ; preds = %bio_set_dev.exit
  br i1 %bf.cast, label %if.then.i33, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i33:                                      ; preds = %if.else
  %sect_per_block_shift.i25 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %sect_per_block_shift.i25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sect_per_block_shift.i25, align 8
  %sh_prom.i26 = zext i32 %28 to i64
  %shr.i27 = lshr i64 %add, %sh_prom.i26
  %dust_lock.i28 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 3
  %call2.i29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dust_lock.i28) #10
  %badblocklist.i.i30 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %badblocklist.i.i30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %node.016.i.i.i31 = load ptr, ptr %badblocklist.i.i30, align 4
  %tobool.not17.i.i.i32 = icmp eq ptr %node.016.i.i.i31, null
  br i1 %tobool.not17.i.i.i32, label %if.then.i33.__dust_map_write.exit.i_crit_edge, label %if.then.i33.while.body.i.i.i37_crit_edge

if.then.i33.while.body.i.i.i37_crit_edge:         ; preds = %if.then.i33
  br label %while.body.i.i.i37

if.then.i33.__dust_map_write.exit.i_crit_edge:    ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dust_map_write.exit.i

while.body.i.i.i37:                               ; preds = %cleanup.i.i.i47.while.body.i.i.i37_crit_edge, %if.then.i33.while.body.i.i.i37_crit_edge
  %node.018.i.i.i34 = phi ptr [ %node.0.i.i.i45, %cleanup.i.i.i47.while.body.i.i.i37_crit_edge ], [ %node.016.i.i.i31, %if.then.i33.while.body.i.i.i37_crit_edge ]
  %bb.i.i.i35 = getelementptr inbounds %struct.badblock, ptr %node.018.i.i.i34, i32 0, i32 1
  %30 = ptrtoint ptr %bb.i.i.i35 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bb.i.i.i35, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %shr.i27)
  %cmp.i.i.i36 = icmp ugt i64 %31, %shr.i27
  br i1 %cmp.i.i.i36, label %if.then.i.i.i39, label %if.else.i.i.i41

if.then.i.i.i39:                                  ; preds = %while.body.i.i.i37
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i.i38 = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i34, i32 0, i32 2
  br label %cleanup.i.i.i47

if.else.i.i.i41:                                  ; preds = %while.body.i.i.i37
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %shr.i27)
  %cmp2.i.i.i40 = icmp ult i64 %31, %shr.i27
  br i1 %cmp2.i.i.i40, label %if.then3.i.i.i43, label %land.lhs.true.i.i

if.then3.i.i.i43:                                 ; preds = %if.else.i.i.i41
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i.i42 = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i34, i32 0, i32 1
  br label %cleanup.i.i.i47

cleanup.i.i.i47:                                  ; preds = %if.then3.i.i.i43, %if.then.i.i.i39
  %node.1.in.i.i.i44 = phi ptr [ %rb_left.i.i.i38, %if.then.i.i.i39 ], [ %rb_right.i.i.i42, %if.then3.i.i.i43 ]
  %32 = ptrtoint ptr %node.1.in.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %node.0.i.i.i45 = load ptr, ptr %node.1.in.i.i.i44, align 4
  %tobool.not.i.i.i46 = icmp eq ptr %node.0.i.i.i45, null
  br i1 %tobool.not.i.i.i46, label %cleanup.i.i.i47.__dust_map_write.exit.i_crit_edge, label %cleanup.i.i.i47.while.body.i.i.i37_crit_edge

cleanup.i.i.i47.while.body.i.i.i37_crit_edge:     ; preds = %cleanup.i.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i37

cleanup.i.i.i47.__dust_map_write.exit.i_crit_edge: ; preds = %cleanup.i.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dust_map_write.exit.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i.i41
  %wr_fail_cnt.i.i = getelementptr inbounds %struct.badblock, ptr %node.018.i.i.i34, i32 0, i32 2
  %33 = ptrtoint ptr %wr_fail_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wr_fail_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.not.i.i = icmp eq i8 %34, 0
  br i1 %cmp.not.i.i, label %if.then4.critedge.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i.i = add i8 %34, -1
  %35 = ptrtoint ptr %wr_fail_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %dec.i.i, ptr %wr_fail_cnt.i.i, align 8
  br label %__dust_map_write.exit.i

if.then4.critedge.i.i:                            ; preds = %land.lhs.true.i.i
  tail call void @rb_erase(ptr noundef nonnull %node.018.i.i.i34, ptr noundef %badblocklist.i.i30) #10
  %badblock_count.i.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %badblock_count.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %badblock_count.i.i, align 8
  %dec6.i.i = add i64 %37, -1
  store i64 %dec6.i.i, ptr %badblock_count.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %node.018.i.i.i34) #10
  %38 = ptrtoint ptr %fail_read_on_bb to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i.i = load i8, ptr %fail_read_on_bb, align 8
  %39 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %bf.cast.not.i.i = icmp eq i8 %39, 0
  br i1 %bf.cast.not.i.i, label %if.then7.i.i, label %if.then4.critedge.i.i.__dust_map_write.exit.i_crit_edge

if.then4.critedge.i.i.__dust_map_write.exit.i_crit_edge: ; preds = %if.then4.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dust_map_write.exit.i

if.then7.i.i:                                     ; preds = %if.then4.critedge.i.i
  %sect_per_block.i.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %sect_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sect_per_block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i27)
  %cmp179.i.i = icmp ult i64 %shr.i27, 4294967296
  br i1 %cmp179.i.i, label %if.then183.i.i, label %if.else189.i.i, !prof !154

if.then183.i.i:                                   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv184.i.i = trunc i64 %shr.i27 to i32
  %div187.i.i = udiv i32 %conv184.i.i, %41
  %conv188.i.i = zext i32 %div187.i.i to i64
  br label %if.end193.i.i

if.else189.i.i:                                   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %shr.i27) #15, !srcloc !159
  %asmresult1.i.i.i = extractvalue { i64, i64 } %42, 1
  br label %if.end193.i.i

if.end193.i.i:                                    ; preds = %if.else189.i.i, %if.then183.i.i
  %thisblock.addr.0.i.i = phi i64 [ %conv188.i.i, %if.then183.i.i ], [ %asmresult1.i.i.i, %if.else189.i.i ]
  %call196.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %thisblock.addr.0.i.i) #13
  br label %__dust_map_write.exit.i

__dust_map_write.exit.i:                          ; preds = %if.end193.i.i, %if.then4.critedge.i.i.__dust_map_write.exit.i_crit_edge, %if.then.i.i, %cleanup.i.i.i47.__dust_map_write.exit.i_crit_edge, %if.then.i33.__dust_map_write.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 4, %if.then.i.i ], [ 1, %if.then4.critedge.i.i.__dust_map_write.exit.i_crit_edge ], [ 1, %if.end193.i.i ], [ 1, %if.then.i33.__dust_map_write.exit.i_crit_edge ], [ 1, %cleanup.i.i.i47.__dust_map_write.exit.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dust_lock.i28, i32 noundef %call2.i29) #10
  br label %if.end

if.end:                                           ; preds = %__dust_map_write.exit.i, %if.else.if.end_crit_edge, %__dust_map_read.exit.i, %if.then.if.end_crit_edge
  %r.0 = phi i32 [ %..i.i, %__dust_map_read.exit.i ], [ 1, %if.then.if.end_crit_edge ], [ %retval.0.i.i, %__dust_map_write.exit.i ], [ 1, %if.else.if.end_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dust_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %cond.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %4, i32 0, i32 3
  %fail_read_on_bb = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %fail_read_on_bb to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %fail_read_on_bb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %bf.cast.not, ptr @.str.16, ptr @.str.15
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %bf.cast3.not = icmp eq i8 %6, 0
  %cond4 = select i1 %bf.cast3.not, ptr @.str.18, ptr @.str.17
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull %cond, ptr noundef nonnull %cond4) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp7 = icmp eq i32 %maxlen, 0
  br i1 %cmp7, label %sw.bb6.sw.epilog_crit_edge, label %cond.false9

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

cond.false9:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %name13 = getelementptr inbounds %struct.dm_dev, ptr %8, i32 0, i32 3
  %start = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start, align 8
  %blksz = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blksz, align 4
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.19, ptr noundef %name13, i64 noundef %10, i32 noundef %12) #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %cond.false9, %sw.bb6.sw.epilog_crit_edge, %cond.false, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dust_message(ptr nocapture noundef readonly %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %badblocklist.i838 = alloca %struct.rb_root, align 4
  %badblocklist.i = alloca %struct.rb_root, align 4
  %tmp = alloca i64, align 8
  %tmp_ui = alloca i32, align 4
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #10
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %tmp, align 8, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_ui) #10
  %9 = ptrtoint ptr %tmp_ui to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tmp_ui, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #10
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %dummy, align 1, !annotation !152
  %11 = zext i32 %argc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %argc, label %do.end593 [
    i32 1, label %if.then
    i32 2, label %if.then95
    i32 3, label %if.then329
  ]

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %argv, align 4
  %call1 = tail call i32 @strcasecmp(ptr noundef %13, ptr noundef nonnull @.str.20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.do.end_crit_edge, label %lor.lhs.false

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then
  %call3 = tail call i32 @strcasecmp(ptr noundef %13, ptr noundef nonnull @.str.21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false5

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @strcasecmp(ptr noundef %13, ptr noundef nonnull @.str.22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false5.do.end_crit_edge, label %if.else

lor.lhs.false5.do.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false5.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.then.do.end_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %13) #13
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false5
  %call14 = tail call i32 @strcasecmp(ptr noundef %13, ptr noundef nonnull @.str.25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end19, label %if.else22

do.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #13
  %fail_read_on_bb = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %fail_read_on_bb to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %fail_read_on_bb, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %fail_read_on_bb, align 8
  br label %cleanup

if.else22:                                        ; preds = %if.else
  %call24 = tail call i32 @strcasecmp(ptr noundef %13, ptr noundef nonnull @.str.29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end29, label %if.else36

do.end29:                                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  %fail_read_on_bb32 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %fail_read_on_bb32 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load33 = load i8, ptr %fail_read_on_bb32, align 8
  %bf.set35 = or i8 %bf.load33, -128
  store i8 %bf.set35, ptr %fail_read_on_bb32, align 8
  br label %cleanup

if.else36:                                        ; preds = %if.else22
  %call38 = tail call i32 @strcasecmp(ptr noundef %13, ptr noundef nonnull @.str.33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.body42, label %if.else55

do.body42:                                        ; preds = %if.else36
  %dust_lock = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 3
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dust_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp51.not.not = icmp eq i32 %maxlen, 0
  br i1 %cmp51.not.not, label %do.body42.cond.end_crit_edge, label %cond.false

do.body42.cond.end_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %badblock_count = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %badblock_count to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %badblock_count, align 8
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.34, i64 noundef %17) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body42.cond.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dust_lock, i32 noundef %call46) #10
  br label %cleanup

if.else55:                                        ; preds = %if.else36
  %call57 = tail call i32 @strcasecmp(ptr noundef %13, ptr noundef nonnull @.str.35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.else61

if.then59:                                        ; preds = %if.else55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %badblocklist.i) #10
  %dust_lock.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dust_lock.i) #10
  %badblocklist5.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %badblocklist5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %badblocklist5.i, align 4
  %20 = ptrtoint ptr %badblocklist.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %badblocklist.i, align 4
  %badblock_count6.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %badblock_count6.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %badblock_count6.i, align 8
  store ptr null, ptr %badblocklist5.i, align 4
  store i64 0, ptr %badblock_count6.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dust_lock.i, i32 noundef %call2.i) #10
  %call.i.i = call ptr @rb_first(ptr noundef nonnull %badblocklist.i) #10
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %do.body.i.i, label %if.then59.while.body.i.i_crit_edge

if.then59.while.body.i.i_crit_edge:               ; preds = %if.then59
  br label %while.body.i.i

do.body.i.i:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp1.not.i.i = icmp eq i64 %22, 0
  br i1 %cmp1.not.i.i, label %if.then.i, label %do.body4.i.i, !prof !154

do.body4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-dust.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 247, 0\0A.popsection", ""() #10, !srcloc !156
  unreachable

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then59.while.body.i.i_crit_edge
  %nnode.060.i.i = phi ptr [ %call12.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call.i.i, %if.then59.while.body.i.i_crit_edge ]
  %count.addr.059.i.i = phi i64 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %22, %if.then59.while.body.i.i_crit_edge ]
  %call12.i.i = call ptr @rb_next(ptr noundef nonnull %nnode.060.i.i) #10
  call void @rb_erase(ptr noundef nonnull %nnode.060.i.i, ptr noundef nonnull %badblocklist.i) #10
  %dec.i.i = add i64 %count.addr.059.i.i, -1
  call void @kfree(ptr noundef nonnull %nnode.060.i.i) #10
  %tobool11.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool11.not.i.i, label %do.body13.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

do.body13.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i.i)
  %cmp14.not.i.i = icmp eq i64 %dec.i.i, 0
  br i1 %cmp14.not.i.i, label %do.body31.i.i, label %do.body22.i.i, !prof !154

do.body22.i.i:                                    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-dust.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #10, !srcloc !157
  unreachable

do.body31.i.i:                                    ; preds = %do.body13.i.i
  %23 = ptrtoint ptr %badblocklist.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %badblocklist.i, align 4
  %cmp32.not.i.i = icmp eq ptr %24, null
  br i1 %cmp32.not.i.i, label %if.else.i, label %do.body40.i.i, !prof !154

do.body40.i.i:                                    ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-dust.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #10, !srcloc !158
  unreachable

if.then.i:                                        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp11.not.i.not = icmp eq i32 %maxlen, 0
  br i1 %cmp11.not.i.not, label %if.then.i.dust_clear_badblocks.exit_crit_edge, label %if.then.i.if.end.sink.split.i_crit_edge

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.then.i.dust_clear_badblocks.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dust_clear_badblocks.exit

if.else.i:                                        ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp14.not.i.not = icmp eq i32 %maxlen, 0
  br i1 %cmp14.not.i.not, label %if.else.i.dust_clear_badblocks.exit_crit_edge, label %if.else.i.if.end.sink.split.i_crit_edge

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.else.i.dust_clear_badblocks.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dust_clear_badblocks.exit

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i.if.end.sink.split.i_crit_edge
  %.str.53.sink.i = phi ptr [ @.str.52, %if.then.i.if.end.sink.split.i_crit_edge ], [ @.str.53, %if.else.i.if.end.sink.split.i_crit_edge ]
  %call20.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull %.str.53.sink.i, ptr noundef nonnull @__func__.dust_clear_badblocks) #10
  br label %dust_clear_badblocks.exit

dust_clear_badblocks.exit:                        ; preds = %if.end.sink.split.i, %if.else.i.dust_clear_badblocks.exit_crit_edge, %if.then.i.dust_clear_badblocks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %badblocklist.i) #10
  br label %cleanup

if.else61:                                        ; preds = %if.else55
  %call63 = tail call i32 @strcasecmp(ptr noundef %13, ptr noundef nonnull @.str.17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.else78

if.then65:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #12
  %quiet_mode = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %quiet_mode to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load66 = load i8, ptr %quiet_mode, align 8
  %storemerge = xor i8 %bf.load66, 64
  store i8 %storemerge, ptr %quiet_mode, align 8
  br label %cleanup

if.else78:                                        ; preds = %if.else61
  %call80 = tail call i32 @strcasecmp(ptr noundef %13, ptr noundef nonnull @.str.36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %if.else78.do.end603_crit_edge

if.else78.do.end603_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end603

if.then82:                                        ; preds = %if.else78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %badblocklist.i838) #10
  %dust_lock.i839 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 3
  %call2.i840 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dust_lock.i839) #10
  %badblocklist5.i841 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %badblocklist5.i841 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %badblocklist5.i841, align 4
  %28 = ptrtoint ptr %badblocklist.i838 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %badblocklist.i838, align 4
  %call6.i = call ptr @rb_first(ptr noundef nonnull %badblocklist.i838) #10
  %tobool.not1.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not1.i, label %if.then82.for.end.i_crit_edge, label %if.then82.for.body.i_crit_edge

if.then82.for.body.i_crit_edge:                   ; preds = %if.then82
  br label %for.body.i

if.then82.for.end.i_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %if.then82.for.body.i_crit_edge
  %node.05.i = phi ptr [ %call12.i, %cond.end.i.for.body.i_crit_edge ], [ %call6.i, %if.then82.for.body.i_crit_edge ]
  %num.04.i = phi i64 [ %inc.i, %cond.end.i.for.body.i_crit_edge ], [ 0, %if.then82.for.body.i_crit_edge ]
  %sz.02.i = phi i32 [ %add.i, %cond.end.i.for.body.i_crit_edge ], [ 0, %if.then82.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.02.i, i32 %maxlen)
  %cmp8.not.i = icmp ult i32 %sz.02.i, %maxlen
  br i1 %cmp8.not.i, label %cond.false.i, label %for.body.i.cond.end.i_crit_edge

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr10.i = getelementptr i8, ptr %result, i32 %sz.02.i
  %sub.i = sub i32 %maxlen, %sz.02.i
  %bb.i = getelementptr inbounds %struct.badblock, ptr %node.05.i, i32 0, i32 1
  %29 = ptrtoint ptr %bb.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bb.i, align 8
  %call11.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10.i, i32 noundef %sub.i, ptr noundef nonnull @.str.54, i64 noundef %30) #10
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call11.i, %cond.false.i ], [ 0, %for.body.i.cond.end.i_crit_edge ]
  %add.i = add i32 %cond.i, %sz.02.i
  %inc.i = add i64 %num.04.i, 1
  %call12.i = call ptr @rb_next(ptr noundef nonnull %node.05.i) #10
  %tobool.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool.not.i, label %for.end.loopexit.i, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc.i)
  %phi.cmp.i = icmp eq i64 %inc.i, 0
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.then82.for.end.i_crit_edge
  %sz.0.lcssa.i = phi i32 [ 0, %if.then82.for.end.i_crit_edge ], [ %add.i, %for.end.loopexit.i ]
  %num.0.lcssa.i = phi i1 [ true, %if.then82.for.end.i_crit_edge ], [ %phi.cmp.i, %for.end.loopexit.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dust_lock.i839, i32 noundef %call2.i840) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.lcssa.i, i32 %maxlen)
  %cmp15.not.i = icmp ult i32 %sz.0.lcssa.i, %maxlen
  %or.cond.i = select i1 %num.0.lcssa.i, i1 %cmp15.not.i, i1 false
  br i1 %or.cond.i, label %cond.false18.i, label %for.end.i.dust_list_badblocks.exit_crit_edge

for.end.i.dust_list_badblocks.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dust_list_badblocks.exit

cond.false18.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr19.i = getelementptr i8, ptr %result, i32 %sz.0.lcssa.i
  %sub20.i = sub i32 %maxlen, %sz.0.lcssa.i
  %call21.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19.i, i32 noundef %sub20.i, ptr noundef nonnull @.str.55) #10
  br label %dust_list_badblocks.exit

dust_list_badblocks.exit:                         ; preds = %cond.false18.i, %for.end.i.dust_list_badblocks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %badblocklist.i838) #10
  br label %cleanup

if.then95:                                        ; preds = %entry
  %arrayidx96 = getelementptr ptr, ptr %argv, i32 1
  %31 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx96, align 4
  %call97 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %32, ptr noundef nonnull @.str.6, ptr noundef nonnull %tmp, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call97)
  %cmp98.not = icmp eq i32 %call97, 1
  br i1 %cmp98.not, label %if.end101, label %if.then95.cleanup_crit_edge

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end101:                                        ; preds = %if.then95
  %33 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tmp, align 8
  %sect_per_block = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %sect_per_block to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sect_per_block, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %7)
  %cmp280 = icmp ult i64 %7, 4294967296
  br i1 %cmp280, label %if.then284, label %if.else290, !prof !154

if.then284:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %conv285 = trunc i64 %7 to i32
  %div288 = udiv i32 %conv285, %36
  %conv289 = zext i32 %div288 to i64
  br label %if.end294

if.else290:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %37 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %7) #15, !srcloc !159
  %asmresult1.i = extractvalue { i64, i64 } %37, 1
  br label %if.end294

if.end294:                                        ; preds = %if.else290, %if.then284
  %size.0 = phi i64 [ %conv289, %if.then284 ], [ %asmresult1.i, %if.else290 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %size.0)
  %cmp296 = icmp ugt i64 %34, %size.0
  br i1 %cmp296, label %do.end301, label %if.end304

do.end301:                                        ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #12
  %call303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end304:                                        ; preds = %if.end294
  %38 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %argv, align 4
  %call306 = call i32 @strcasecmp(ptr noundef %39, ptr noundef nonnull @.str.20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %if.then308, label %if.else310

if.then308:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #12
  %call309 = call fastcc i32 @dust_add_block(ptr noundef %1, i64 noundef %34, i8 noundef zeroext 0)
  br label %cleanup

if.else310:                                       ; preds = %if.end304
  %call312 = call i32 @strcasecmp(ptr noundef %39, ptr noundef nonnull @.str.21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %if.then314, label %if.else316

if.then314:                                       ; preds = %if.else310
  %dust_lock.i846 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 3
  %call2.i847 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dust_lock.i846) #10
  %badblocklist.i848 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %badblocklist.i848 to i32
  call void @__asan_load4_noabort(i32 %40)
  %node.016.i.i = load ptr, ptr %badblocklist.i848, align 4
  %tobool.not17.i.i = icmp eq ptr %node.016.i.i, null
  br i1 %tobool.not17.i.i, label %if.then314.if.then.i851_crit_edge, label %if.then314.while.body.i.i850_crit_edge

if.then314.while.body.i.i850_crit_edge:           ; preds = %if.then314
  br label %while.body.i.i850

if.then314.if.then.i851_crit_edge:                ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i851

while.body.i.i850:                                ; preds = %cleanup.i.i.while.body.i.i850_crit_edge, %if.then314.while.body.i.i850_crit_edge
  %node.018.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i850_crit_edge ], [ %node.016.i.i, %if.then314.while.body.i.i850_crit_edge ]
  %bb.i.i = getelementptr inbounds %struct.badblock, ptr %node.018.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %bb.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bb.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %34)
  %cmp.i.i849 = icmp ugt i64 %42, %34
  br i1 %cmp.i.i849, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i850
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i850
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %34)
  %cmp2.i.i = icmp ult i64 %42, %34
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end15.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %43 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.if.then.i851_crit_edge, label %cleanup.i.i.while.body.i.i850_crit_edge

cleanup.i.i.while.body.i.i850_crit_edge:          ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i850

cleanup.i.i.if.then.i851_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i851

if.then.i851:                                     ; preds = %cleanup.i.i.if.then.i851_crit_edge, %if.then314.if.then.i851_crit_edge
  %quiet_mode.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %quiet_mode.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %quiet_mode.i, align 8
  %45 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %bf.cast.not.i = icmp eq i8 %45, 0
  br i1 %bf.cast.not.i, label %do.end11.i, label %if.then.i851.dust_remove_block.exit_crit_edge

if.then.i851.dust_remove_block.exit_crit_edge:    ; preds = %if.then.i851
  call void @__sanitizer_cov_trace_pc() #12
  br label %dust_remove_block.exit

do.end11.i:                                       ; preds = %if.then.i851
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i64 noundef %34) #13
  br label %dust_remove_block.exit

if.end15.i:                                       ; preds = %if.else.i.i
  call void @rb_erase(ptr noundef nonnull %node.018.i.i, ptr noundef %badblocklist.i848) #10
  %badblock_count.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %badblock_count.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %badblock_count.i, align 8
  %dec.i = add i64 %47, -1
  store i64 %dec.i, ptr %badblock_count.i, align 8
  %quiet_mode17.i = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 8
  %48 = ptrtoint ptr %quiet_mode17.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load18.i = load i8, ptr %quiet_mode17.i, align 8
  %49 = and i8 %bf.load18.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %bf.cast21.not.i = icmp eq i8 %49, 0
  br i1 %bf.cast21.not.i, label %do.end25.i, label %if.end15.i.if.end28.i_crit_edge

if.end15.i.if.end28.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

do.end25.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i64 noundef %34) #13
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end25.i, %if.end15.i.if.end28.i_crit_edge
  call void @kfree(ptr noundef nonnull %node.018.i.i) #10
  br label %dust_remove_block.exit

dust_remove_block.exit:                           ; preds = %if.end28.i, %do.end11.i, %if.then.i851.dust_remove_block.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end28.i ], [ -22, %do.end11.i ], [ -22, %if.then.i851.dust_remove_block.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dust_lock.i846, i32 noundef %call2.i847) #10
  br label %cleanup

if.else316:                                       ; preds = %if.else310
  %call318 = call i32 @strcasecmp(ptr noundef %39, ptr noundef nonnull @.str.22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318)
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %if.then320, label %if.else316.do.end603_crit_edge

if.else316.do.end603_crit_edge:                   ; preds = %if.else316
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end603

if.then320:                                       ; preds = %if.else316
  %dust_lock.i852 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 3
  %call2.i853 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dust_lock.i852) #10
  %badblocklist.i854 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %badblocklist.i854 to i32
  call void @__asan_load4_noabort(i32 %50)
  %node.016.i.i855 = load ptr, ptr %badblocklist.i854, align 4
  %tobool.not17.i.i856 = icmp eq ptr %node.016.i.i855, null
  br i1 %tobool.not17.i.i856, label %if.then320.if.else.i874_crit_edge, label %if.then320.while.body.i.i860_crit_edge

if.then320.while.body.i.i860_crit_edge:           ; preds = %if.then320
  br label %while.body.i.i860

if.then320.if.else.i874_crit_edge:                ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i874

while.body.i.i860:                                ; preds = %cleanup.i.i870.while.body.i.i860_crit_edge, %if.then320.while.body.i.i860_crit_edge
  %node.018.i.i857 = phi ptr [ %node.0.i.i868, %cleanup.i.i870.while.body.i.i860_crit_edge ], [ %node.016.i.i855, %if.then320.while.body.i.i860_crit_edge ]
  %bb.i.i858 = getelementptr inbounds %struct.badblock, ptr %node.018.i.i857, i32 0, i32 1
  %51 = ptrtoint ptr %bb.i.i858 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bb.i.i858, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %34)
  %cmp.i.i859 = icmp ugt i64 %52, %34
  br i1 %cmp.i.i859, label %if.then.i.i862, label %if.else.i.i864

if.then.i.i862:                                   ; preds = %while.body.i.i860
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i861 = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i857, i32 0, i32 2
  br label %cleanup.i.i870

if.else.i.i864:                                   ; preds = %while.body.i.i860
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %34)
  %cmp2.i.i863 = icmp ult i64 %52, %34
  br i1 %cmp2.i.i863, label %if.then3.i.i866, label %if.then.i872

if.then3.i.i866:                                  ; preds = %if.else.i.i864
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i865 = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i857, i32 0, i32 1
  br label %cleanup.i.i870

cleanup.i.i870:                                   ; preds = %if.then3.i.i866, %if.then.i.i862
  %node.1.in.i.i867 = phi ptr [ %rb_left.i.i861, %if.then.i.i862 ], [ %rb_right.i.i865, %if.then3.i.i866 ]
  %53 = ptrtoint ptr %node.1.in.i.i867 to i32
  call void @__asan_load4_noabort(i32 %53)
  %node.0.i.i868 = load ptr, ptr %node.1.in.i.i867, align 4
  %tobool.not.i.i869 = icmp eq ptr %node.0.i.i868, null
  br i1 %tobool.not.i.i869, label %cleanup.i.i870.if.else.i874_crit_edge, label %cleanup.i.i870.while.body.i.i860_crit_edge

cleanup.i.i870.while.body.i.i860_crit_edge:       ; preds = %cleanup.i.i870
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i860

cleanup.i.i870.if.else.i874_crit_edge:            ; preds = %cleanup.i.i870
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i874

if.then.i872:                                     ; preds = %if.else.i.i864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp8.not.i871.not = icmp eq i32 %maxlen, 0
  br i1 %cmp8.not.i871.not, label %if.then.i872.dust_query_block.exit_crit_edge, label %if.then.i872.if.end.sink.split.i875_crit_edge

if.then.i872.if.end.sink.split.i875_crit_edge:    ; preds = %if.then.i872
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i875

if.then.i872.dust_query_block.exit_crit_edge:     ; preds = %if.then.i872
  call void @__sanitizer_cov_trace_pc() #12
  br label %dust_query_block.exit

if.else.i874:                                     ; preds = %cleanup.i.i870.if.else.i874_crit_edge, %if.then320.if.else.i874_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp11.not.i873.not = icmp eq i32 %maxlen, 0
  br i1 %cmp11.not.i873.not, label %if.else.i874.dust_query_block.exit_crit_edge, label %if.else.i874.if.end.sink.split.i875_crit_edge

if.else.i874.if.end.sink.split.i875_crit_edge:    ; preds = %if.else.i874
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i875

if.else.i874.dust_query_block.exit_crit_edge:     ; preds = %if.else.i874
  call void @__sanitizer_cov_trace_pc() #12
  br label %dust_query_block.exit

if.end.sink.split.i875:                           ; preds = %if.else.i874.if.end.sink.split.i875_crit_edge, %if.then.i872.if.end.sink.split.i875_crit_edge
  %.str.70.sink.i = phi ptr [ @.str.69, %if.then.i872.if.end.sink.split.i875_crit_edge ], [ @.str.70, %if.else.i874.if.end.sink.split.i875_crit_edge ]
  %call17.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull %.str.70.sink.i, ptr noundef nonnull @__func__.dust_query_block, i64 noundef %34) #10
  br label %dust_query_block.exit

dust_query_block.exit:                            ; preds = %if.end.sink.split.i875, %if.else.i874.dust_query_block.exit_crit_edge, %if.then.i872.dust_query_block.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dust_lock.i852, i32 noundef %call2.i853) #10
  br label %cleanup

if.then329:                                       ; preds = %entry
  %arrayidx330 = getelementptr ptr, ptr %argv, i32 1
  %54 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx330, align 4
  %call331 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %55, ptr noundef nonnull @.str.6, ptr noundef nonnull %tmp, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call331)
  %cmp332.not = icmp eq i32 %call331, 1
  br i1 %cmp332.not, label %if.end335, label %if.then329.cleanup_crit_edge

if.then329.cleanup_crit_edge:                     ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end335:                                        ; preds = %if.then329
  %arrayidx336 = getelementptr ptr, ptr %argv, i32 2
  %56 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx336, align 4
  %call337 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %57, ptr noundef nonnull @.str.40, ptr noundef nonnull %tmp_ui, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call337)
  %cmp338.not = icmp eq i32 %call337, 1
  br i1 %cmp338.not, label %if.end341, label %if.end335.cleanup_crit_edge

if.end335.cleanup_crit_edge:                      ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end341:                                        ; preds = %if.end335
  %58 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tmp, align 8
  %60 = ptrtoint ptr %tmp_ui to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tmp_ui, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %61)
  %cmp342 = icmp ugt i32 %61, 255
  br i1 %cmp342, label %do.end347, label %if.end350

do.end347:                                        ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #12
  %call349 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end350:                                        ; preds = %if.end341
  %conv351 = trunc i32 %61 to i8
  %sect_per_block353 = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %sect_per_block353 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sect_per_block353, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %7)
  %cmp554 = icmp ult i64 %7, 4294967296
  br i1 %cmp554, label %if.then562, label %if.else568, !prof !154

if.then562:                                       ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #12
  %conv563 = trunc i64 %7 to i32
  %div566 = udiv i32 %conv563, %63
  %conv567 = zext i32 %div566 to i64
  br label %if.end572

if.else568:                                       ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #12
  %64 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %63, i64 %7) #15, !srcloc !159
  %asmresult1.i882 = extractvalue { i64, i64 } %64, 1
  br label %if.end572

if.end572:                                        ; preds = %if.else568, %if.then562
  %size.1 = phi i64 [ %conv567, %if.then562 ], [ %asmresult1.i882, %if.else568 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %size.1)
  %cmp574 = icmp ugt i64 %59, %size.1
  br i1 %cmp574, label %do.end579, label %if.end582

do.end579:                                        ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #12
  %call581 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end582:                                        ; preds = %if.end572
  %65 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %argv, align 4
  %call584 = call i32 @strcasecmp(ptr noundef %66, ptr noundef nonnull @.str.20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call584)
  %tobool585.not = icmp eq i32 %call584, 0
  br i1 %tobool585.not, label %if.then586, label %if.end582.do.end603_crit_edge

if.end582.do.end603_crit_edge:                    ; preds = %if.end582
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end603

if.then586:                                       ; preds = %if.end582
  call void @__sanitizer_cov_trace_pc() #12
  %call587 = call fastcc i32 @dust_add_block(ptr noundef %1, i64 noundef %59, i8 noundef zeroext %conv351)
  br label %cleanup

do.end593:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call595 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %argc) #13
  br label %cleanup

do.end603:                                        ; preds = %if.end582.do.end603_crit_edge, %if.else316.do.end603_crit_edge, %if.else78.do.end603_crit_edge
  %67 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %argv, align 4
  %call606 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %68) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end603, %do.end593, %if.then586, %do.end579, %do.end347, %if.end335.cleanup_crit_edge, %if.then329.cleanup_crit_edge, %dust_query_block.exit, %dust_remove_block.exit, %if.then308, %do.end301, %if.then95.cleanup_crit_edge, %dust_list_badblocks.exit, %if.then65, %dust_clear_badblocks.exit, %cond.end, %do.end29, %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end301 ], [ -22, %do.end347 ], [ -22, %do.end579 ], [ -22, %if.then95.cleanup_crit_edge ], [ -22, %if.then329.cleanup_crit_edge ], [ -22, %if.end335.cleanup_crit_edge ], [ -22, %do.end603 ], [ -22, %do.end593 ], [ %call587, %if.then586 ], [ %call309, %if.then308 ], [ %retval.0.i, %dust_remove_block.exit ], [ 1, %dust_query_block.exit ], [ -22, %do.end ], [ 0, %do.end19 ], [ 0, %do.end29 ], [ 1, %cond.end ], [ 1, %dust_clear_badblocks.exit ], [ 0, %if.then65 ], [ 1, %dust_list_badblocks.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_ui) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dust_prepare_ioctl(ptr nocapture noundef readonly %ti, ptr nocapture noundef writeonly %bdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %bdev, align 4
  %start = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %len, align 8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bd_nr_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %14)
  %cmp.not = icmp ne i64 %10, %14
  %spec.select = zext i1 %cmp.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dust_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %start = getelementptr inbounds %struct.dust_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef %5, i64 noundef %7, ptr noundef %data) #10
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dust_add_block(ptr noundef %dd, i64 noundef %block, i8 noundef zeroext %wr_fail_cnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 32) #14
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.then, label %do.body5

if.then:                                          ; preds = %entry
  %quiet_mode = getelementptr inbounds %struct.dust_device, ptr %dd, i32 0, i32 8
  %1 = ptrtoint ptr %quiet_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %quiet_mode, align 8
  %2 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %bf.cast.not = icmp eq i8 %2, 0
  br i1 %bf.cast.not, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #13
  br label %cleanup

do.body5:                                         ; preds = %entry
  %dust_lock = getelementptr inbounds %struct.dust_device, ptr %dd, i32 0, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dust_lock) #10
  %bb = getelementptr inbounds %struct.badblock, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %bb to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %block, ptr %bb, align 8
  %wr_fail_cnt14 = getelementptr inbounds %struct.badblock, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %wr_fail_cnt14 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %wr_fail_cnt, ptr %wr_fail_cnt14, align 8
  %badblocklist = getelementptr inbounds %struct.dust_device, ptr %dd, i32 0, i32 1
  %5 = ptrtoint ptr %badblocklist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %badblocklist, align 4
  %tobool.not27.i = icmp eq ptr %6, null
  br i1 %tobool.not27.i, label %do.body5.if.end30_crit_edge, label %do.body5.while.body.i_crit_edge

do.body5.while.body.i_crit_edge:                  ; preds = %do.body5
  br label %while.body.i

do.body5.if.end30_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %do.body5.while.body.i_crit_edge
  %7 = phi ptr [ %11, %if.end6.i.while.body.i_crit_edge ], [ %6, %do.body5.while.body.i_crit_edge ]
  %bb1.i = getelementptr inbounds %struct.badblock, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bb1.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bb1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %block)
  %cmp.i = icmp ugt i64 %9, %block
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %block)
  %cmp3.i = icmp ult i64 %9, %block
  br i1 %cmp3.i, label %if.then4.i, label %if.then16

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %link.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %10 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le.i = ptrtoint ptr %7 to i32
  br label %if.end30

if.then16:                                        ; preds = %if.else.i
  %quiet_mode17 = getelementptr inbounds %struct.dust_device, ptr %dd, i32 0, i32 8
  %12 = ptrtoint ptr %quiet_mode17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load18 = load i8, ptr %quiet_mode17, align 8
  %13 = and i8 %bf.load18, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %bf.cast21.not = icmp eq i8 %13, 0
  br i1 %bf.cast21.not, label %do.end25, label %if.then16.if.end28_crit_edge

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end25:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i64 noundef %block) #13
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.then16.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dust_lock, i32 noundef %call9) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

if.end30:                                         ; preds = %while.cond.while.end_crit_edge.i, %do.body5.if.end30_crit_edge
  %link.0.lcssa.i = phi ptr [ %link.1.i, %while.cond.while.end_crit_edge.i ], [ %badblocklist, %do.body5.if.end30_crit_edge ]
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %do.body5.if.end30_crit_edge ]
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %parent.0.lcssa.i, ptr %call7.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 2
  %16 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_left.i.i, align 8
  %17 = ptrtoint ptr %link.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %link.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i, ptr noundef %badblocklist) #10
  %badblock_count = getelementptr inbounds %struct.dust_device, ptr %dd, i32 0, i32 2
  %18 = ptrtoint ptr %badblock_count to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %badblock_count, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %badblock_count, align 8
  %quiet_mode31 = getelementptr inbounds %struct.dust_device, ptr %dd, i32 0, i32 8
  %20 = ptrtoint ptr %quiet_mode31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load32 = load i8, ptr %quiet_mode31, align 8
  %21 = and i8 %bf.load32, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %bf.cast35.not = icmp eq i8 %21, 0
  br i1 %bf.cast35.not, label %do.end39, label %if.end30.if.end43_crit_edge

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %conv41 = zext i8 %wr_fail_cnt to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.57, i64 noundef %block, i32 noundef %conv41) #13
  br label %if.end43

if.end43:                                         ; preds = %do.end39, %if.end30.if.end43_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dust_lock, i32 noundef %call9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end28, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -22, %if.end28 ], [ -12, %do.end ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !66, !67, !69, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !138, !140, !141, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_dm_dust__269_589_dm_dust_init6, !1, !"__initcall__kmod_dm_dust__269_589_dm_dust_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-dust.c", i32 589, i32 1}
!2 = !{ptr @__exitcall_dm_dust_exit, !3, !"__exitcall_dm_dust_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-dust.c", i32 590, i32 1}
!4 = !{ptr @__UNIQUE_ID_description270, !5, !"__UNIQUE_ID_description270", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-dust.c", i32 592, i32 1}
!6 = !{ptr @__UNIQUE_ID_author271, !7, !"__UNIQUE_ID_author271", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-dust.c", i32 593, i32 1}
!8 = !{ptr @__UNIQUE_ID_file272, !9, !"__UNIQUE_ID_file272", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-dust.c", i32 594, i32 1}
!10 = !{ptr @__UNIQUE_ID_license273, !9, !"__UNIQUE_ID_license273", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-dust.c", i32 562, i32 10}
!13 = !{ptr @dust_target, !14, !"dust_target", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-dust.c", i32 561, i32 27}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-dust.c", i32 332, i32 15}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-dust.c", i32 337, i32 15}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-dust.c", i32 342, i32 15}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-dust.c", i32 347, i32 15}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-dust.c", i32 352, i32 15}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-dust.c", i32 358, i32 22}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-dust.c", i32 359, i32 15}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-dust.c", i32 365, i32 15}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-dust.c", i32 370, i32 15}
!33 = !{ptr @dust_ctr.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-dust.c", i32 392, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-dust.c", i32 200, i32 4}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__dust_map_write._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @__dust_map_write._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-dust.c", i32 521, i32 3}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-dust.c", i32 527, i32 3}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/dm-dust.c", i32 429, i32 28}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-dust.c", i32 430, i32 28}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-dust.c", i32 431, i32 28}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/md/dm-dust.c", i32 432, i32 4}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dust_message._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @dust_message._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-dust.c", i32 433, i32 35}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-dust.c", i32 434, i32 4}
!65 = !{ptr @dust_message._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @dust_message._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/md/dm-dust.c", i32 437, i32 35}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/dm-dust.c", i32 438, i32 4}
!71 = !{ptr @dust_message._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @dust_message._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/dm-dust.c", i32 441, i32 35}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-dust.c", i32 443, i32 4}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/md/dm-dust.c", i32 447, i32 35}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/dm-dust.c", i32 455, i32 35}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/md/dm-dust.c", i32 467, i32 4}
!83 = !{ptr @dust_message._entry.37, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dust_message._entry_ptr.39, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-dust.c", i32 484, i32 23}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-dust.c", i32 489, i32 4}
!89 = !{ptr @dust_message._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dust_message._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @dust_message._entry.44, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/md/dm-dust.c", i32 495, i32 4}
!93 = !{ptr @dust_message._entry_ptr.45, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/md/dm-dust.c", i32 505, i32 3}
!96 = !{ptr @dust_message._entry.46, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @dust_message._entry_ptr.48, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/md/dm-dust.c", i32 508, i32 3}
!100 = !{ptr @dust_message._entry.49, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dust_message._entry_ptr.51, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/md/dm-dust.c", i32 280, i32 3}
!104 = !{ptr @__func__.dust_clear_badblocks, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/dm-dust.c", i32 282, i32 3}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/md/dm-dust.c", i32 301, i32 3}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/md/dm-dust.c", i32 307, i32 3}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/md/dm-dust.c", i32 114, i32 4}
!113 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @dust_add_block._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @dust_add_block._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/md/dm-dust.c", i32 123, i32 4}
!118 = !{ptr @dust_add_block._entry.58, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @dust_add_block._entry_ptr.60, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/md/dm-dust.c", i32 133, i32 3}
!122 = !{ptr @dust_add_block._entry.61, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @dust_add_block._entry_ptr.63, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/dm-dust.c", i32 88, i32 4}
!126 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @dust_remove_block._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @dust_remove_block._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/md/dm-dust.c", i32 98, i32 3}
!131 = !{ptr @dust_remove_block._entry.66, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @dust_remove_block._entry_ptr.68, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/dm-dust.c", i32 151, i32 3}
!135 = !{ptr @__func__.dust_query_block, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/md/dm-dust.c", i32 153, i32 3}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/md/dm-dust.c", i32 579, i32 3}
!140 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @dm_dust_init._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @dm_dust_init._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{i32 0, i32 33}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2154328343, i64 2154328828, i64 2154328380, i64 2154328436, i64 2154328470, i64 2154328494, i64 2154328535, i64 2154328556, i64 2154328584, i64 2154328618}
!156 = !{i64 2154315028, i64 2154315513, i64 2154315065, i64 2154315121, i64 2154315155, i64 2154315179, i64 2154315220, i64 2154315241, i64 2154315269, i64 2154315303}
!157 = !{i64 2154320668, i64 2154321153, i64 2154320705, i64 2154320761, i64 2154320795, i64 2154320819, i64 2154320860, i64 2154320881, i64 2154320909, i64 2154320943}
!158 = !{i64 2154322295, i64 2154322780, i64 2154322332, i64 2154322388, i64 2154322422, i64 2154322446, i64 2154322487, i64 2154322508, i64 2154322536, i64 2154322570}
!159 = !{i64 2148425486, i64 2148425766, i64 2148426100, i64 2148426434}
