; ModuleID = '/llk/IR_all_yes/drivers/md/dm-cache-policy-smq.c_pt.bc'
source_filename = "../drivers/md/dm-cache-policy-smq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dm_cache_policy_type = type { %struct.list_head, [16 x i8], [3 x i32], ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dm_cache_policy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smq_policy = type { %struct.dm_cache_policy, %struct.spinlock, i32, i64, i64, i32, i32, i32, %struct.entry_space, %struct.entry_alloc, %struct.entry_alloc, %struct.entry_alloc, %struct.entry_alloc, ptr, ptr, %struct.queue, %struct.queue, %struct.queue, %struct.stats, %struct.stats, i32, %struct.smq_hash_table, %struct.smq_hash_table, i8, i32, i8, i32, i32, i32, i32, i32, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.entry_space = type { ptr, ptr }
%struct.entry_alloc = type { ptr, i32, i32, %struct.ilist }
%struct.ilist = type { i32, i32, i32 }
%struct.queue = type { ptr, i32, i32, [64 x %struct.ilist], i32, i32, i32, [64 x i32] }
%struct.stats = type { i32, i32, i32 }
%struct.smq_hash_table = type { ptr, i64, ptr }
%struct.entry = type { i32, i32, i32, i16, i64 }
%struct.policy_work = type { i32, i64, i32 }

@cleaner_policy_type = internal global { %struct.dm_cache_policy_type, [44 x i8] } { %struct.dm_cache_policy_type { %struct.list_head zeroinitializer, [16 x i8] c"cleaner\00\00\00\00\00\00\00\00\00", [3 x i32] [i32 2, i32 0, i32 0], ptr null, i32 4, ptr null, ptr @cleaner_create }, [44 x i8] zeroinitializer }, align 32
@smq_policy_type = internal global { %struct.dm_cache_policy_type, [44 x i8] } { %struct.dm_cache_policy_type { %struct.list_head zeroinitializer, [16 x i8] c"smq\00\00\00\00\00\00\00\00\00\00\00\00\00", [3 x i32] [i32 2, i32 0, i32 0], ptr null, i32 4, ptr null, ptr @smq_create }, [44 x i8] zeroinitializer }, align 32
@mq_policy_type = internal global { %struct.dm_cache_policy_type, [44 x i8] } { %struct.dm_cache_policy_type { %struct.list_head zeroinitializer, [16 x i8] c"mq\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [3 x i32] [i32 2, i32 0, i32 0], ptr null, i32 4, ptr null, ptr @mq_create }, [44 x i8] zeroinitializer }, align 32
@default_policy_type = internal global { %struct.dm_cache_policy_type, [44 x i8] } { %struct.dm_cache_policy_type { %struct.list_head zeroinitializer, [16 x i8] c"default\00\00\00\00\00\00\00\00\00", [3 x i32] [i32 2, i32 0, i32 0], ptr @smq_policy_type, i32 4, ptr null, ptr @smq_create }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_cache_smq__297_1933_smq_init6 = internal global ptr @smq_init, section ".initcall6.init", align 4
@__exitcall_smq_exit = internal global ptr @smq_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [55 x i8] c"dm_cache_smq.author=Joe Thornber <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [42 x i8] c"dm_cache_smq.file=drivers/md/dm-cache-smq\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [25 x i8] c"dm_cache_smq.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [42 x i8] c"dm_cache_smq.description=smq cache policy\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [36 x i8] c"dm_cache_smq.alias=dm-cache-default\00", section ".modinfo", align 1
@__UNIQUE_ID_alias303 = internal constant [31 x i8] c"dm_cache_smq.alias=dm-cache-mq\00", section ".modinfo", align 1
@__UNIQUE_ID_alias304 = internal constant [36 x i8] c"dm_cache_smq.alias=dm-cache-cleaner\00", section ".modinfo", align 1
@__smq_create._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1743, ptr null, ptr null }, align 1
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: cache-policy-smq: couldn't initialize entry space\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__smq_create\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/md/dm-cache-policy-smq.c\00", [63 x i8] zeroinitializer }, align 32
@__smq_create._entry_ptr = internal global ptr @__smq_create._entry, section ".printk_index", align 4
@__smq_create._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1764, ptr null, ptr null }, align 1
@.str.4 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013device-mapper: cache-policy-smq: couldn't allocate hotspot hit bitset\0A\00", [55 x i8] zeroinitializer }, align 32
@__smq_create._entry_ptr.5 = internal global ptr @__smq_create._entry.3, section ".printk_index", align 4
@__smq_create._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1772, ptr null, ptr null }, align 1
@.str.7 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: cache-policy-smq: couldn't allocate cache hit bitset\0A\00", [57 x i8] zeroinitializer }, align 32
@__smq_create._entry_ptr.8 = internal global ptr @__smq_create._entry.6, section ".printk_index", align 4
@__smq_create.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&mq->lock\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@queue_demotion.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@default_promote_level.table = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 1, i32 1, i32 1, i32 2, i32 4, i32 6, i32 7, i32 8, i32 7, i32 6, i32 4, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1], [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"random_threshold\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sequential_threshold\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"discard_promote_adjustment\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read_promote_adjustment\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"write_promote_adjustment\00", [39 x i8] zeroinitializer }, align 32
@mq_set_config_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\014device-mapper: cache-policy-smq: tunable '%s' no longer has any effect, mq policy is now an alias for smq\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mq_set_config_value\00", [44 x i8] zeroinitializer }, align 32
@mq_set_config_value._entry_ptr = internal global ptr @mq_set_config_value._entry, section ".printk_index", align 4
@.str.17 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"10 random_threshold 0 sequential_threshold 0 discard_promote_adjustment 0 read_promote_adjustment 0 write_promote_adjustment 0 \00", [32 x i8] zeroinitializer }, align 32
@smq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: cache-policy-smq: register failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smq_init\00", [23 x i8] zeroinitializer }, align 32
@smq_init._entry_ptr = internal global ptr @smq_init._entry, section ".printk_index", align 4
@smq_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 1897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013device-mapper: cache-policy-smq: register failed (as mq) %d\0A\00", [33 x i8] zeroinitializer }, align 32
@smq_init._entry_ptr.22 = internal global ptr @smq_init._entry.20, section ".printk_index", align 4
@smq_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 1903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: cache-policy-smq: register failed (as cleaner) %d\0A\00", [60 x i8] zeroinitializer }, align 32
@smq_init._entry_ptr.25 = internal global ptr @smq_init._entry.23, section ".printk_index", align 4
@smq_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 1909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: cache-policy-smq: register failed (as default) %d\0A\00", [60 x i8] zeroinitializer }, align 32
@smq_init._entry_ptr.28 = internal global ptr @smq_init._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"cleaner_policy_type\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1868, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"smq_policy_type\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1852, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"mq_policy_type\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1860, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"default_policy_type\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1876, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1743, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1764, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1772, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1780, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1029, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1648, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1649, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1650, i32 23 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1651, i32 23 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1652, i32 23 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1653, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1665, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1891, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1897, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1903, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [36 x i8] c"../drivers/md/dm-cache-policy-smq.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1909, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_smq_exit, ptr @__initcall__kmod_dm_cache_smq__297_1933_smq_init6, ptr @__smq_create._entry, ptr @__smq_create._entry.3, ptr @__smq_create._entry.6, ptr @__smq_create._entry_ptr, ptr @__smq_create._entry_ptr.5, ptr @__smq_create._entry_ptr.8, ptr @mq_set_config_value._entry, ptr @mq_set_config_value._entry_ptr, ptr @smq_exit, ptr @smq_init._entry, ptr @smq_init._entry.20, ptr @smq_init._entry.23, ptr @smq_init._entry.26, ptr @smq_init._entry_ptr, ptr @smq_init._entry_ptr.22, ptr @smq_init._entry_ptr.25, ptr @smq_init._entry_ptr.28, ptr @cleaner_policy_type, ptr @smq_policy_type, ptr @mq_policy_type, ptr @default_policy_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @default_promote_level.table, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleaner_policy_type to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smq_policy_type to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mq_policy_type to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_policy_type to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_promote_level.table to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mq_set_config_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smq_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smq_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smq_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smq_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dm_cache_policy_unregister(ptr noundef nonnull @cleaner_policy_type) #10
  tail call void @dm_cache_policy_unregister(ptr noundef nonnull @smq_policy_type) #10
  tail call void @dm_cache_policy_unregister(ptr noundef nonnull @mq_policy_type) #10
  tail call void @dm_cache_policy_unregister(ptr noundef nonnull @default_policy_type) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_cache_policy_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smq_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_cache_policy_register(ptr noundef nonnull @smq_policy_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @dm_cache_policy_register(ptr noundef nonnull @mq_policy_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call2) #13
  br label %out_mq

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @dm_cache_policy_register(ptr noundef nonnull @cleaner_policy_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call11) #13
  br label %out_cleaner

if.end19:                                         ; preds = %if.end10
  %call20 = tail call i32 @dm_cache_policy_register(ptr noundef nonnull @default_policy_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %do.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %call20) #13
  tail call void @dm_cache_policy_unregister(ptr noundef nonnull @cleaner_policy_type) #10
  br label %out_cleaner

out_cleaner:                                      ; preds = %do.end25, %do.end16
  tail call void @dm_cache_policy_unregister(ptr noundef nonnull @mq_policy_type) #10
  br label %out_mq

out_mq:                                           ; preds = %out_cleaner, %do.end7
  tail call void @dm_cache_policy_unregister(ptr noundef nonnull @smq_policy_type) #10
  br label %cleanup

cleanup:                                          ; preds = %out_mq, %if.end19.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %out_mq ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cleaner_create(i32 noundef %cache_size, i64 noundef %origin_size, i64 noundef %cache_block_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__smq_create(i32 noundef %cache_size, i64 noundef %origin_size, i64 noundef %cache_block_size, i1 noundef zeroext false, i1 noundef zeroext false)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__smq_create(i32 noundef %cache_size, i64 noundef %origin_size, i64 noundef %cache_block_size, i1 noundef zeroext %mimic_mq, i1 noundef zeroext %migrations_allowed) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %migrations_allowed to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3512) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smq_destroy, ptr %call7.i.i, align 8
  %lookup.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %lookup.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @smq_lookup, ptr %lookup.i, align 4
  %lookup_with_work.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %lookup_with_work.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @smq_lookup_with_work, ptr %lookup_with_work.i, align 8
  %get_background_work.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %get_background_work.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @smq_get_background_work, ptr %get_background_work.i, align 4
  %complete_background_work.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %complete_background_work.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @smq_complete_background_work, ptr %complete_background_work.i, align 8
  %set_dirty.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %set_dirty.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @smq_set_dirty, ptr %set_dirty.i, align 4
  %clear_dirty.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %clear_dirty.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @smq_clear_dirty, ptr %clear_dirty.i, align 8
  %load_mapping.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %load_mapping.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @smq_load_mapping, ptr %load_mapping.i, align 4
  %invalidate_mapping.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %invalidate_mapping.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @smq_invalidate_mapping, ptr %invalidate_mapping.i, align 8
  %get_hint.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %get_hint.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smq_get_hint, ptr %get_hint.i, align 4
  %residency.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %residency.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @smq_residency, ptr %residency.i, align 8
  %tick.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %tick.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @smq_tick, ptr %tick.i, align 4
  %allow_migrations.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 14
  %13 = ptrtoint ptr %allow_migrations.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @smq_allow_migrations, ptr %allow_migrations.i, align 8
  br i1 %mimic_mq, label %if.then.i, label %if.end.init_policy_functions.exit_crit_edge

if.end.init_policy_functions.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_policy_functions.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %set_config_value.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 13
  %14 = ptrtoint ptr %set_config_value.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mq_set_config_value, ptr %set_config_value.i, align 4
  %emit_config_values.i = getelementptr inbounds %struct.dm_cache_policy, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %emit_config_values.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mq_emit_config_values, ptr %emit_config_values.i, align 8
  br label %init_policy_functions.exit

init_policy_functions.exit:                       ; preds = %if.then.i, %if.end.init_policy_functions.exit_crit_edge
  %cache_size3 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %cache_size3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cache_size, ptr %cache_size3, align 4
  %cache_block_size4 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %cache_block_size4 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %cache_block_size, ptr %cache_block_size4, align 8
  %hotspot_block_size = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 4
  %nr_hotspot_blocks = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 5
  %mul.i = shl i64 %cache_block_size, 4
  %18 = ptrtoint ptr %hotspot_block_size to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %mul.i, ptr %hotspot_block_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4099, i32 %cache_size)
  %cmp.i = icmp ugt i32 %cache_size, 4099
  %div10.i = lshr i32 %cache_size, 2
  %cond.i = select i1 %cmp.i, i32 %div10.i, i32 1024
  %19 = ptrtoint ptr %nr_hotspot_blocks to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i, ptr %nr_hotspot_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %cache_block_size)
  %cmp112.i = icmp ugt i64 %mul.i, %cache_block_size
  br i1 %cmp112.i, label %init_policy_functions.exit.land.rhs.i_crit_edge, label %init_policy_functions.exit.calc_hotspot_params.exit_crit_edge

init_policy_functions.exit.calc_hotspot_params.exit_crit_edge: ; preds = %init_policy_functions.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_hotspot_params.exit

init_policy_functions.exit.land.rhs.i_crit_edge:  ; preds = %init_policy_functions.exit
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %init_policy_functions.exit.land.rhs.i_crit_edge
  %20 = phi i64 [ %div211.i, %while.body.i.land.rhs.i_crit_edge ], [ %mul.i, %init_policy_functions.exit.land.rhs.i_crit_edge ]
  %21 = ptrtoint ptr %nr_hotspot_blocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_hotspot_blocks, align 8
  %conv.i.i = zext i32 %22 to i64
  %mul.i.i = mul i64 %20, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i.i, i64 %origin_size)
  %cmp.i.i = icmp ugt i64 %mul.i.i, %origin_size
  br i1 %cmp.i.i, label %while.body.i, label %land.rhs.i.calc_hotspot_params.exit_crit_edge

land.rhs.i.calc_hotspot_params.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_hotspot_params.exit

while.body.i:                                     ; preds = %land.rhs.i
  %div211.i = lshr i64 %20, 1
  %23 = ptrtoint ptr %hotspot_block_size to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %div211.i, ptr %hotspot_block_size, align 8
  %cmp1.i = icmp ugt i64 %div211.i, %cache_block_size
  br i1 %cmp1.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.calc_hotspot_params.exit_crit_edge

while.body.i.calc_hotspot_params.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_hotspot_params.exit

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

calc_hotspot_params.exit:                         ; preds = %while.body.i.calc_hotspot_params.exit_crit_edge, %land.rhs.i.calc_hotspot_params.exit_crit_edge, %init_policy_functions.exit.calc_hotspot_params.exit_crit_edge
  %24 = ptrtoint ptr %hotspot_block_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %hotspot_block_size, align 8
  %26 = ptrtoint ptr %cache_block_size4 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cache_block_size4, align 8
  %call8 = tail call i64 @div64_u64(i64 noundef %25, i64 noundef %27) #10
  %conv = trunc i64 %call8 to i32
  %cache_blocks_per_hotspot_block = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %cache_blocks_per_hotspot_block to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %cache_blocks_per_hotspot_block, align 4
  %hotspot_level_jump = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %hotspot_level_jump to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %hotspot_level_jump, align 8
  %es = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %nr_hotspot_blocks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_hotspot_blocks, align 8
  %add = add i32 %cache_size, 256
  %add11 = add i32 %add, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11)
  %tobool.not.i = icmp eq i32 %add11, 0
  br i1 %tobool.not.i, label %if.then.i215, label %if.end.i

if.then.i215:                                     ; preds = %calc_hotspot_params.exit
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %end.i, align 8
  %33 = ptrtoint ptr %es to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %es, align 4
  br label %if.end16

if.end.i:                                         ; preds = %calc_hotspot_params.exit
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add11, i32 24) #10
  %35 = extractvalue { i32, i1 } %34, 1
  %36 = extractvalue { i32, i1 } %34, 0
  %retval.0.i.i = select i1 %35, i32 -1, i32 %36
  %call1.i = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.i) #15
  %37 = ptrtoint ptr %es to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call1.i, ptr %es, align 4
  %tobool4.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool4.not.i, label %do.end, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr %struct.entry, ptr %call1.i, i32 %add11
  %end8.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %end8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i, ptr %end8.i, align 8
  br label %if.end16

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %bad_pool_init

if.end16:                                         ; preds = %if.end6.i, %if.then.i215
  %writeback_sentinel_alloc = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 9
  tail call fastcc void @init_allocator(ptr noundef %writeback_sentinel_alloc, ptr noundef %es, i32 noundef 0, i32 noundef 128)
  %begin.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 9, i32 1
  br label %for.body

for.body:                                         ; preds = %get_entry.exit.for.body_crit_edge, %if.end16
  %i.0307 = phi i32 [ 0, %if.end16 ], [ %inc, %get_entry.exit.for.body_crit_edge ]
  %39 = ptrtoint ptr %writeback_sentinel_alloc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %writeback_sentinel_alloc, align 4
  %41 = ptrtoint ptr %begin.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %begin.i, align 8
  %add.i = add i32 %42, %i.0307
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  %add.ptr.i.i = getelementptr %struct.entry, ptr %44, i32 %add.i
  %end.i.i = getelementptr inbounds %struct.entry_space, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i.i, align 4
  %cmp.not.i.i = icmp ult ptr %add.ptr.i.i, %46
  br i1 %cmp.not.i.i, label %get_entry.exit, label %do.body2.i.i, !prof !89

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

get_entry.exit:                                   ; preds = %for.body
  %sentinel = getelementptr %struct.entry, ptr %44, i32 %add.i, i32 3
  %47 = ptrtoint ptr %sentinel to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load = load i16, ptr %sentinel, align 4
  %bf.set = or i16 %bf.load, 128
  store i16 %bf.set, ptr %sentinel, align 4
  %inc = add nuw nsw i32 %i.0307, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %get_entry.exit.for.body_crit_edge

get_entry.exit.for.body_crit_edge:                ; preds = %get_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %get_entry.exit
  %demote_sentinel_alloc = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 10
  tail call fastcc void @init_allocator(ptr noundef %demote_sentinel_alloc, ptr noundef %es, i32 noundef 128, i32 noundef 256)
  %begin.i216 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 10, i32 1
  br label %for.body25

for.body25:                                       ; preds = %get_entry.exit222.for.body25_crit_edge, %for.end
  %i.1308 = phi i32 [ 0, %for.end ], [ %inc33, %get_entry.exit222.for.body25_crit_edge ]
  %48 = ptrtoint ptr %demote_sentinel_alloc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %demote_sentinel_alloc, align 4
  %50 = ptrtoint ptr %begin.i216 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %begin.i216, align 8
  %add.i217 = add i32 %51, %i.1308
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  %add.ptr.i.i218 = getelementptr %struct.entry, ptr %53, i32 %add.i217
  %end.i.i219 = getelementptr inbounds %struct.entry_space, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %end.i.i219 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i.i219, align 4
  %cmp.not.i.i220 = icmp ult ptr %add.ptr.i.i218, %55
  br i1 %cmp.not.i.i220, label %get_entry.exit222, label %do.body2.i.i221, !prof !89

do.body2.i.i221:                                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

get_entry.exit222:                                ; preds = %for.body25
  %sentinel28 = getelementptr %struct.entry, ptr %53, i32 %add.i217, i32 3
  %56 = ptrtoint ptr %sentinel28 to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load29 = load i16, ptr %sentinel28, align 4
  %bf.set31 = or i16 %bf.load29, 128
  store i16 %bf.set31, ptr %sentinel28, align 4
  %inc33 = add nuw nsw i32 %i.1308, 1
  %exitcond309.not = icmp eq i32 %inc33, 128
  br i1 %exitcond309.not, label %for.end34, label %get_entry.exit222.for.body25_crit_edge

get_entry.exit222.for.body25_crit_edge:           ; preds = %get_entry.exit222
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25

for.end34:                                        ; preds = %get_entry.exit222
  %hotspot_alloc = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 11
  %57 = ptrtoint ptr %nr_hotspot_blocks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_hotspot_blocks, align 8
  %add37 = add i32 %58, 256
  tail call fastcc void @init_allocator(ptr noundef %hotspot_alloc, ptr noundef %es, i32 noundef 256, i32 noundef %add37)
  %cache_alloc = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 12
  %59 = ptrtoint ptr %nr_hotspot_blocks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_hotspot_blocks, align 8
  %add40 = add i32 %60, 256
  %add44 = add i32 %add40, %cache_size
  tail call fastcc void @init_allocator(ptr noundef %cache_alloc, ptr noundef %es, i32 noundef %add40, i32 noundef %add44)
  %61 = ptrtoint ptr %nr_hotspot_blocks to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_hotspot_blocks, align 8
  %sub.i.i = add i32 %62, 31
  %63 = lshr i32 %sub.i.i, 3
  %mul.i.i223 = and i32 %63, 536870908
  %call1.i224 = tail call noalias ptr @vzalloc(i32 noundef %mul.i.i223) #15
  %hotspot_hit_bits = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 13
  %64 = ptrtoint ptr %hotspot_hit_bits to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call1.i224, ptr %hotspot_hit_bits, align 4
  %tobool48.not = icmp eq ptr %call1.i224, null
  br i1 %tobool48.not, label %do.end52, label %if.end55

do.end52:                                         ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %bad_hotspot_hit_bits

if.end55:                                         ; preds = %for.end34
  %65 = ptrtoint ptr %nr_hotspot_blocks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr_hotspot_blocks, align 8
  %sub.i.i225 = add i32 %66, 31
  %67 = lshr i32 %sub.i.i225, 3
  %mul.i.i226 = and i32 %67, 536870908
  %68 = call ptr @memset(ptr %call1.i224, i32 0, i32 %mul.i.i226)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cache_size)
  %tobool59.not = icmp eq i32 %cache_size, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end55
  %sub.i.i227 = add i32 %cache_size, 31
  %69 = lshr i32 %sub.i.i227, 3
  %mul.i.i228 = and i32 %69, 536870908
  %call1.i229 = tail call noalias ptr @vzalloc(i32 noundef %mul.i.i228) #15
  %cache_hit_bits = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 14
  %70 = ptrtoint ptr %cache_hit_bits to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call1.i229, ptr %cache_hit_bits, align 8
  %tobool64.not = icmp eq ptr %call1.i229, null
  br i1 %tobool64.not, label %do.end68, label %if.end71

do.end68:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %bad_cache_hit_bits

if.end71:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %cache_size3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cache_size3, align 4
  %sub.i.i230 = add i32 %72, 31
  %73 = lshr i32 %sub.i.i230, 3
  %mul.i.i231 = and i32 %73, 536870908
  %74 = call ptr @memset(ptr %call1.i229, i32 0, i32 %mul.i.i231)
  br label %if.end76

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %cache_hit_bits75 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 14
  %75 = ptrtoint ptr %cache_hit_bits75 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %cache_hit_bits75, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.end71
  %tick = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 20
  %76 = ptrtoint ptr %tick to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %tick, align 4
  %lock = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @__smq_create.__key, i16 noundef signext 3) #10
  %hotspot = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 15
  %77 = ptrtoint ptr %hotspot to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %es, ptr %hotspot, align 4
  %nr_elts.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 15, i32 1
  %78 = ptrtoint ptr %nr_elts.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %nr_elts.i, align 8
  %nr_levels2.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 15, i32 2
  %79 = ptrtoint ptr %nr_levels2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 64, ptr %nr_levels2.i, align 4
  %qs.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 15, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end76
  %i.02.i = phi i32 [ 0, %if.end76 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i232 = getelementptr %struct.ilist, ptr %qs.i, i32 %i.02.i
  %80 = ptrtoint ptr %add.ptr.i232 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %add.ptr.i232, align 4
  %tail.i.i = getelementptr %struct.ilist, ptr %qs.i, i32 %i.02.i, i32 2
  %81 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 268435455, ptr %tail.i.i, align 4
  %head.i.i = getelementptr %struct.ilist, ptr %qs.i, i32 %i.02.i, i32 1
  %82 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 268435455, ptr %head.i.i, align 4
  %arrayidx.i = getelementptr %struct.smq_policy, ptr %call7.i.i, i32 0, i32 15, i32 7, i32 %i.02.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.02.i, 1
  %84 = ptrtoint ptr %nr_levels2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_levels2.i, align 4
  %cmp.i233 = icmp ult i32 %inc.i, %85
  br i1 %cmp.i233, label %for.body.i.for.body.i_crit_edge, label %q_init.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

q_init.exit:                                      ; preds = %for.body.i
  %last_target_nr_elts.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 15, i32 4
  %86 = ptrtoint ptr %last_target_nr_elts.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %last_target_nr_elts.i, align 8
  %nr_top_levels.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 15, i32 5
  %nr_in_top_levels.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 15, i32 6
  %87 = ptrtoint ptr %nr_top_levels.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 8, ptr %nr_top_levels.i, align 4
  %88 = ptrtoint ptr %nr_hotspot_blocks to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nr_hotspot_blocks, align 8
  %div214 = lshr i32 %89, 6
  %90 = ptrtoint ptr %cache_size3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cache_size3, align 4
  %92 = ptrtoint ptr %cache_blocks_per_hotspot_block to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cache_blocks_per_hotspot_block, align 4
  %div87 = udiv i32 %91, %93
  %94 = tail call i32 @llvm.umin.i32(i32 %div214, i32 %div87)
  %95 = ptrtoint ptr %nr_in_top_levels.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %nr_in_top_levels.i, align 8
  %clean = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 16
  %96 = ptrtoint ptr %clean to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %es, ptr %clean, align 4
  %nr_elts.i234 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 16, i32 1
  %97 = ptrtoint ptr %nr_elts.i234 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %nr_elts.i234, align 8
  %nr_levels2.i235 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 16, i32 2
  %98 = ptrtoint ptr %nr_levels2.i235 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 64, ptr %nr_levels2.i235, align 4
  %qs.i236 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 16, i32 3
  br label %for.body.i244

for.body.i244:                                    ; preds = %for.body.i244.for.body.i244_crit_edge, %q_init.exit
  %i.02.i237 = phi i32 [ 0, %q_init.exit ], [ %inc.i242, %for.body.i244.for.body.i244_crit_edge ]
  %add.ptr.i238 = getelementptr %struct.ilist, ptr %qs.i236, i32 %i.02.i237
  %99 = ptrtoint ptr %add.ptr.i238 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %add.ptr.i238, align 4
  %tail.i.i239 = getelementptr %struct.ilist, ptr %qs.i236, i32 %i.02.i237, i32 2
  %100 = ptrtoint ptr %tail.i.i239 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 268435455, ptr %tail.i.i239, align 4
  %head.i.i240 = getelementptr %struct.ilist, ptr %qs.i236, i32 %i.02.i237, i32 1
  %101 = ptrtoint ptr %head.i.i240 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 268435455, ptr %head.i.i240, align 4
  %arrayidx.i241 = getelementptr %struct.smq_policy, ptr %call7.i.i, i32 0, i32 16, i32 7, i32 %i.02.i237
  %102 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %arrayidx.i241, align 4
  %inc.i242 = add nuw i32 %i.02.i237, 1
  %103 = ptrtoint ptr %nr_levels2.i235 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nr_levels2.i235, align 4
  %cmp.i243 = icmp ult i32 %inc.i242, %104
  br i1 %cmp.i243, label %for.body.i244.for.body.i244_crit_edge, label %q_init.exit248

for.body.i244.for.body.i244_crit_edge:            ; preds = %for.body.i244
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i244

q_init.exit248:                                   ; preds = %for.body.i244
  %last_target_nr_elts.i245 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 16, i32 4
  %105 = ptrtoint ptr %last_target_nr_elts.i245 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %last_target_nr_elts.i245, align 8
  %nr_top_levels.i246 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 16, i32 5
  %106 = ptrtoint ptr %nr_top_levels.i246 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %nr_top_levels.i246, align 4
  %nr_in_top_levels.i247 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 16, i32 6
  %107 = ptrtoint ptr %nr_in_top_levels.i247 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %nr_in_top_levels.i247, align 8
  %dirty = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 17
  %108 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %es, ptr %dirty, align 4
  %nr_elts.i249 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 17, i32 1
  %109 = ptrtoint ptr %nr_elts.i249 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %nr_elts.i249, align 8
  %nr_levels2.i250 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 17, i32 2
  %110 = ptrtoint ptr %nr_levels2.i250 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 64, ptr %nr_levels2.i250, align 4
  %qs.i251 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 17, i32 3
  br label %for.body.i259

for.body.i259:                                    ; preds = %for.body.i259.for.body.i259_crit_edge, %q_init.exit248
  %i.02.i252 = phi i32 [ 0, %q_init.exit248 ], [ %inc.i257, %for.body.i259.for.body.i259_crit_edge ]
  %add.ptr.i253 = getelementptr %struct.ilist, ptr %qs.i251, i32 %i.02.i252
  %111 = ptrtoint ptr %add.ptr.i253 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %add.ptr.i253, align 4
  %tail.i.i254 = getelementptr %struct.ilist, ptr %qs.i251, i32 %i.02.i252, i32 2
  %112 = ptrtoint ptr %tail.i.i254 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 268435455, ptr %tail.i.i254, align 4
  %head.i.i255 = getelementptr %struct.ilist, ptr %qs.i251, i32 %i.02.i252, i32 1
  %113 = ptrtoint ptr %head.i.i255 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 268435455, ptr %head.i.i255, align 4
  %arrayidx.i256 = getelementptr %struct.smq_policy, ptr %call7.i.i, i32 0, i32 17, i32 7, i32 %i.02.i252
  %114 = ptrtoint ptr %arrayidx.i256 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %arrayidx.i256, align 4
  %inc.i257 = add nuw i32 %i.02.i252, 1
  %115 = ptrtoint ptr %nr_levels2.i250 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nr_levels2.i250, align 4
  %cmp.i258 = icmp ult i32 %inc.i257, %116
  br i1 %cmp.i258, label %for.body.i259.for.body.i259_crit_edge, label %q_init.exit263

for.body.i259.for.body.i259_crit_edge:            ; preds = %for.body.i259
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i259

q_init.exit263:                                   ; preds = %for.body.i259
  %last_target_nr_elts.i260 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 17, i32 4
  %117 = ptrtoint ptr %last_target_nr_elts.i260 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %last_target_nr_elts.i260, align 8
  %nr_top_levels.i261 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 17, i32 5
  %118 = ptrtoint ptr %nr_top_levels.i261 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %nr_top_levels.i261, align 4
  %nr_in_top_levels.i262 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 17, i32 6
  %119 = ptrtoint ptr %nr_in_top_levels.i262 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %nr_in_top_levels.i262, align 8
  %hotspot_stats = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 18
  %120 = ptrtoint ptr %hotspot_stats to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 48, ptr %hotspot_stats, align 4
  %hits.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 18, i32 1
  %121 = ptrtoint ptr %hits.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %hits.i, align 8
  %misses.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 18, i32 2
  %122 = ptrtoint ptr %misses.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %misses.i, align 4
  %cache_stats = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 19
  %123 = ptrtoint ptr %cache_stats to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 48, ptr %cache_stats, align 8
  %hits.i264 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 19, i32 1
  %124 = ptrtoint ptr %hits.i264 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %hits.i264, align 4
  %misses.i265 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 19, i32 2
  %125 = ptrtoint ptr %misses.i265 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %misses.i265, align 8
  %table = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 21
  %126 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %es, ptr %table, align 8
  %div10.i.op = add nsw i32 %div10.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %cache_size)
  %cmp.i266 = icmp ugt i32 %cache_size, 67
  %127 = call i32 @llvm.ctlz.i32(i32 %div10.i.op, i1 false), !range !91
  %.op = sub nuw nsw i32 32, %127
  %sub.i.i.i.pn.i = select i1 %cmp.i266, i32 %.op, i32 4
  %cond80.i = shl nuw i32 1, %sub.i.i.i.pn.i
  %conv82.i = zext i32 %sub.i.i.i.pn.i to i64
  %hash_bits.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 21, i32 1
  %128 = ptrtoint ptr %hash_bits.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv82.i, ptr %hash_bits.i, align 8
  %129 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cond80.i, i32 4) #10
  %130 = extractvalue { i32, i1 } %129, 1
  %131 = extractvalue { i32, i1 } %129, 0
  %retval.0.i.i267 = select i1 %130, i32 -1, i32 %131
  %call84.i = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i.i267) #15
  %buckets.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 21, i32 2
  %132 = ptrtoint ptr %buckets.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call84.i, ptr %buckets.i, align 8
  %tobool.not.i268 = icmp eq ptr %call84.i, null
  br i1 %tobool.not.i268, label %q_init.exit263.bad_alloc_table_crit_edge, label %q_init.exit263.for.body.i271_crit_edge

q_init.exit263.for.body.i271_crit_edge:           ; preds = %q_init.exit263
  br label %for.body.i271

q_init.exit263.bad_alloc_table_crit_edge:         ; preds = %q_init.exit263
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_alloc_table

for.body.i271:                                    ; preds = %for.body.i271.for.body.i271_crit_edge, %q_init.exit263.for.body.i271_crit_edge
  %i.0123.i = phi i32 [ %inc.i270, %for.body.i271.for.body.i271_crit_edge ], [ 0, %q_init.exit263.for.body.i271_crit_edge ]
  %133 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %buckets.i, align 8
  %arrayidx.i269 = getelementptr i32, ptr %134, i32 %i.0123.i
  %135 = ptrtoint ptr %arrayidx.i269 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 268435455, ptr %arrayidx.i269, align 4
  %inc.i270 = add nuw i32 %i.0123.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i270, %cond80.i
  br i1 %exitcond.not.i, label %if.end99, label %for.body.i271.for.body.i271_crit_edge

for.body.i271.for.body.i271_crit_edge:            ; preds = %for.body.i271
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i271

if.end99:                                         ; preds = %for.body.i271
  %hotspot_table = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 22
  %136 = ptrtoint ptr %nr_hotspot_blocks to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %nr_hotspot_blocks, align 8
  %138 = ptrtoint ptr %hotspot_table to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %es, ptr %hotspot_table, align 8
  %div118.i273 = lshr i32 %137, 2
  %div118.i273.op = add nsw i32 %div118.i273, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %137)
  %cmp.i274 = icmp ugt i32 %137, 67
  %139 = call i32 @llvm.ctlz.i32(i32 %div118.i273.op, i1 false), !range !91
  %.op310 = sub nuw nsw i32 32, %139
  %sub.i.i.i.pn.i281 = select i1 %cmp.i274, i32 %.op310, i32 4
  %cond80.i282 = shl nuw i32 1, %sub.i.i.i.pn.i281
  %conv82.i283 = zext i32 %sub.i.i.i.pn.i281 to i64
  %hash_bits.i284 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 22, i32 1
  %140 = ptrtoint ptr %hash_bits.i284 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %conv82.i283, ptr %hash_bits.i284, align 8
  %141 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cond80.i282, i32 4) #10
  %142 = extractvalue { i32, i1 } %141, 1
  %143 = extractvalue { i32, i1 } %141, 0
  %retval.0.i.i285 = select i1 %142, i32 -1, i32 %143
  %call84.i286 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i.i285) #15
  %buckets.i287 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 22, i32 2
  %144 = ptrtoint ptr %buckets.i287 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call84.i286, ptr %buckets.i287, align 8
  %tobool.not.i288 = icmp eq ptr %call84.i286, null
  br i1 %tobool.not.i288, label %if.end99.bad_alloc_hotspot_table_crit_edge, label %if.end99.for.body.i295_crit_edge

if.end99.for.body.i295_crit_edge:                 ; preds = %if.end99
  br label %for.body.i295

if.end99.bad_alloc_hotspot_table_crit_edge:       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_alloc_hotspot_table

for.body.i295:                                    ; preds = %for.body.i295.for.body.i295_crit_edge, %if.end99.for.body.i295_crit_edge
  %i.0123.i291 = phi i32 [ %inc.i293, %for.body.i295.for.body.i295_crit_edge ], [ 0, %if.end99.for.body.i295_crit_edge ]
  %145 = ptrtoint ptr %buckets.i287 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %buckets.i287, align 8
  %arrayidx.i292 = getelementptr i32, ptr %146, i32 %i.0123.i291
  %147 = ptrtoint ptr %arrayidx.i292 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 268435455, ptr %arrayidx.i292, align 4
  %inc.i293 = add nuw i32 %i.0123.i291, 1
  %exitcond.not.i294 = icmp eq i32 %inc.i293, %cond80.i282
  br i1 %exitcond.not.i294, label %if.end105, label %for.body.i295.for.body.i295_crit_edge

for.body.i295.for.body.i295_crit_edge:            ; preds = %for.body.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i295

if.end105:                                        ; preds = %for.body.i295
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %148 = load volatile i32, ptr @jiffies, align 128
  %add.i298 = add i32 %148, 1000
  %next_writeback_period.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 24
  %149 = ptrtoint ptr %next_writeback_period.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %add.i298, ptr %next_writeback_period.i, align 4
  %150 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %150, 6000
  %next_demote_period.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 26
  %151 = ptrtoint ptr %next_demote_period.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %add1.i, ptr %next_demote_period.i, align 4
  %current_writeback_sentinels.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 23
  %152 = ptrtoint ptr %current_writeback_sentinels.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %current_writeback_sentinels.i, align 8
  %current_demote_sentinels.i = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 25
  %153 = ptrtoint ptr %current_demote_sentinels.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %current_demote_sentinels.i, align 8
  tail call fastcc void @__sentinels_init(ptr noundef %call7.i.i) #10
  %154 = ptrtoint ptr %current_writeback_sentinels.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %current_writeback_sentinels.i, align 8, !range !92
  %156 = xor i8 %155, 1
  store i8 %156, ptr %current_writeback_sentinels.i, align 8
  %157 = ptrtoint ptr %current_demote_sentinels.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %current_demote_sentinels.i, align 8, !range !92
  %159 = xor i8 %158, 1
  store i8 %159, ptr %current_demote_sentinels.i, align 8
  tail call fastcc void @__sentinels_init(ptr noundef %call7.i.i) #10
  %read_promote_level = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 28
  %160 = ptrtoint ptr %read_promote_level to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 64, ptr %read_promote_level, align 4
  %write_promote_level = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 27
  %161 = ptrtoint ptr %write_promote_level to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 64, ptr %write_promote_level, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %162 = load volatile i32, ptr @jiffies, align 128
  %next_hotspot_period = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 29
  %163 = ptrtoint ptr %next_hotspot_period to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %next_hotspot_period, align 8
  %164 = load volatile i32, ptr @jiffies, align 128
  %next_cache_period = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 30
  %165 = ptrtoint ptr %next_cache_period to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %next_cache_period, align 4
  %call106 = tail call ptr @btracker_create(i32 noundef 4096) #10
  %bg_work = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 31
  %166 = ptrtoint ptr %bg_work to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call106, ptr %bg_work, align 8
  %tobool108.not = icmp eq ptr %call106, null
  br i1 %tobool108.not, label %bad_btracker, label %if.end110

if.end110:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %migrations_allowed112 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 32
  %167 = ptrtoint ptr %migrations_allowed112 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %frombool1, ptr %migrations_allowed112, align 4
  br label %cleanup

bad_btracker:                                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %168 = ptrtoint ptr %buckets.i287 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %buckets.i287, align 8
  tail call void @vfree(ptr noundef %169) #10
  br label %bad_alloc_hotspot_table

bad_alloc_hotspot_table:                          ; preds = %bad_btracker, %if.end99.bad_alloc_hotspot_table_crit_edge
  %170 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %buckets.i, align 8
  tail call void @vfree(ptr noundef %171) #10
  br label %bad_alloc_table

bad_alloc_table:                                  ; preds = %bad_alloc_hotspot_table, %q_init.exit263.bad_alloc_table_crit_edge
  %cache_hit_bits116 = getelementptr inbounds %struct.smq_policy, ptr %call7.i.i, i32 0, i32 14
  %172 = ptrtoint ptr %cache_hit_bits116 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cache_hit_bits116, align 8
  tail call void @vfree(ptr noundef %173) #10
  br label %bad_cache_hit_bits

bad_cache_hit_bits:                               ; preds = %bad_alloc_table, %do.end68
  %174 = ptrtoint ptr %hotspot_hit_bits to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hotspot_hit_bits, align 4
  tail call void @vfree(ptr noundef %175) #10
  br label %bad_hotspot_hit_bits

bad_hotspot_hit_bits:                             ; preds = %bad_cache_hit_bits, %do.end52
  %176 = ptrtoint ptr %es to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %es, align 4
  tail call void @vfree(ptr noundef %177) #10
  br label %bad_pool_init

bad_pool_init:                                    ; preds = %bad_hotspot_hit_bits, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %bad_pool_init, %if.end110, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %bad_pool_init ], [ %call7.i.i, %if.end110 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_allocator(ptr nocapture noundef %ea, ptr noundef %es, i32 noundef %begin, i32 noundef %end) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ea to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %es, ptr %ea, align 4
  %nr_allocated = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 2
  %1 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nr_allocated, align 4
  %begin2 = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 1
  %2 = ptrtoint ptr %begin2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %begin, ptr %begin2, align 4
  %free = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 3
  %3 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %free, align 4
  %tail.i = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 268435455, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 268435455, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %begin, i32 %end)
  %cmp.not16 = icmp eq i32 %begin, %end
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %l_add_tail.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %l_add_tail.exit.for.body_crit_edge ], [ %begin, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ea, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %add.ptr.i = getelementptr %struct.entry, ptr %9, i32 %i.017
  %end.i = getelementptr inbounds %struct.entry_space, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %11
  br i1 %cmp.not.i, label %__get_entry.exit, label %do.body2.i, !prof !89

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

__get_entry.exit:                                 ; preds = %for.body
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %13)
  %cmp.i.i.i = icmp eq i32 %13, 268435455
  br i1 %cmp.i.i.i, label %__get_entry.exit.l_tail.exit.i_crit_edge, label %if.end.i.i.i

__get_entry.exit.l_tail.exit.i_crit_edge:         ; preds = %__get_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_tail.exit.i

if.end.i.i.i:                                     ; preds = %__get_entry.exit
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %9, i32 %13
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.l_tail.exit.i_crit_edge, label %do.body2.i.i.i.i, !prof !89

if.end.i.i.i.l_tail.exit.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_tail.exit.i

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_tail.exit.i:                                    ; preds = %if.end.i.i.i.l_tail.exit.i_crit_edge, %__get_entry.exit.l_tail.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %__get_entry.exit.l_tail.exit.i_crit_edge ], [ %add.ptr.i.i.i.i, %if.end.i.i.i.l_tail.exit.i_crit_edge ]
  %next.i = getelementptr %struct.entry, ptr %9, i32 %i.017, i32 2
  %14 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %next.i, align 8
  %bf.set.i = or i32 %bf.load.i, -16
  store i32 %bf.set.i, ptr %next.i, align 8
  %15 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail.i, align 4
  %prev.i = getelementptr %struct.entry, ptr %9, i32 %i.017, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load2.i = load i32, ptr %prev.i, align 4
  %bf.shl.i = shl i32 %16, 4
  %bf.clear3.i = and i32 %bf.load2.i, 15
  %bf.set4.i = or i32 %bf.clear3.i, %bf.shl.i
  store i32 %bf.set4.i, ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i.i.i, null
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %cmp.i31.i = icmp ugt ptr %19, %add.ptr.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %l_tail.exit.i
  br i1 %cmp.i31.i, label %if.then.i.do.body3.i.i_crit_edge, label %lor.rhs.i.i, !prof !93

if.then.i.do.body3.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

lor.rhs.i.i:                                      ; preds = %if.then.i
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %cmp1.not.i.i = icmp ugt ptr %21, %add.ptr.i
  br i1 %cmp1.not.i.i, label %to_index.exit.i, label %lor.rhs.i.i.do.body3.i.i_crit_edge, !prof !89

lor.rhs.i.i.do.body3.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %lor.rhs.i.i.do.body3.i.i_crit_edge, %if.then.i.do.body3.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit.i:                                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 24
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.ptr.div.i.i, ptr %tail.i, align 4
  %next7.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %next7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load8.i = load i32, ptr %next7.i, align 8
  %bf.shl10.i = shl nsw i32 %sub.ptr.div.i.i, 4
  %bf.clear11.i = and i32 %bf.load8.i, 15
  %bf.set12.i = or i32 %bf.clear11.i, %bf.shl10.i
  store i32 %bf.set12.i, ptr %next7.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %l_tail.exit.i
  br i1 %cmp.i31.i, label %if.else.i.do.body3.i35.i_crit_edge, label %lor.rhs.i34.i, !prof !93

if.else.i.do.body3.i35.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i

lor.rhs.i34.i:                                    ; preds = %if.else.i
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i, align 4
  %cmp1.not.i33.i = icmp ugt ptr %25, %add.ptr.i
  br i1 %cmp1.not.i33.i, label %to_index.exit40.i, label %lor.rhs.i34.i.do.body3.i35.i_crit_edge, !prof !89

lor.rhs.i34.i.do.body3.i35.i_crit_edge:           ; preds = %lor.rhs.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i

do.body3.i35.i:                                   ; preds = %lor.rhs.i34.i.do.body3.i35.i_crit_edge, %if.else.i.do.body3.i35.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit40.i:                                ; preds = %lor.rhs.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i36.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i37.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i38.i = sub i32 %sub.ptr.lhs.cast.i36.i, %sub.ptr.rhs.cast.i37.i
  %sub.ptr.div.i39.i = sdiv exact i32 %sub.ptr.sub.i38.i, 24
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.ptr.div.i39.i, ptr %tail.i, align 4
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.ptr.div.i39.i, ptr %head.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %to_index.exit40.i, %to_index.exit.i
  %sentinel.i = getelementptr %struct.entry, ptr %9, i32 %i.017, i32 3
  %28 = ptrtoint ptr %sentinel.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load15.i = load i16, ptr %sentinel.i, align 4
  %29 = and i16 %bf.load15.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %bf.cast.not.i = icmp eq i16 %29, 0
  br i1 %bf.cast.not.i, label %if.then17.i, label %if.end.i.l_add_tail.exit_crit_edge

if.end.i.l_add_tail.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_add_tail.exit

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %free, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %free, align 4
  br label %l_add_tail.exit

l_add_tail.exit:                                  ; preds = %if.then17.i, %if.end.i.l_add_tail.exit_crit_edge
  %inc = add i32 %i.017, 1
  %cmp.not = icmp eq i32 %inc, %end
  br i1 %cmp.not, label %l_add_tail.exit.for.end_crit_edge, label %l_add_tail.exit.for.body_crit_edge

l_add_tail.exit.for.body_crit_edge:               ; preds = %l_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

l_add_tail.exit.for.end_crit_edge:                ; preds = %l_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %l_add_tail.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btracker_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smq_destroy(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bg_work = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 31
  %0 = ptrtoint ptr %bg_work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bg_work, align 8
  tail call void @btracker_destroy(ptr noundef %1) #10
  %buckets.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 22, i32 2
  %2 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buckets.i, align 8
  tail call void @vfree(ptr noundef %3) #10
  %buckets.i7 = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21, i32 2
  %4 = ptrtoint ptr %buckets.i7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i7, align 8
  tail call void @vfree(ptr noundef %5) #10
  %hotspot_hit_bits = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 13
  %6 = ptrtoint ptr %hotspot_hit_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hotspot_hit_bits, align 4
  tail call void @vfree(ptr noundef %7) #10
  %cache_hit_bits = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 14
  %8 = ptrtoint ptr %cache_hit_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache_hit_bits, align 8
  tail call void @vfree(ptr noundef %9) #10
  %es = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 8
  %10 = ptrtoint ptr %es to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %es, align 4
  tail call void @vfree(ptr noundef %11) #10
  tail call void @kfree(ptr noundef %p) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smq_lookup(ptr noundef %p, i64 noundef %oblock, ptr nocapture noundef writeonly %cblock, i32 noundef %data_dir, i1 noundef zeroext %fast_copy, ptr nocapture noundef writeonly %background_work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call6 = tail call fastcc i32 @__lookup(ptr noundef %p, i64 noundef %oblock, ptr noundef %cblock, i32 noundef %data_dir, i1 noundef zeroext %fast_copy, ptr noundef null, ptr noundef %background_work)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smq_lookup_with_work(ptr noundef %p, i64 noundef %oblock, ptr nocapture noundef writeonly %cblock, i32 noundef %data_dir, i1 noundef zeroext %fast_copy, ptr noundef %work) #2 align 64 {
entry:
  %background_queued = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %background_queued) #10
  %lock = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call6 = call fastcc i32 @__lookup(ptr noundef %p, i64 noundef %oblock, ptr noundef %cblock, i32 noundef %data_dir, i1 noundef zeroext %fast_copy, ptr noundef %work, ptr noundef nonnull %background_queued)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %background_queued) #10
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smq_get_background_work(ptr noundef %p, i1 noundef zeroext %idle, ptr noundef %result) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %bg_work = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 31
  %0 = ptrtoint ptr %bg_work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bg_work, align 8
  %call6 = tail call i32 @btracker_issue(ptr noundef %1, ptr noundef %result) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call6)
  %cmp7 = icmp eq i32 %call6, -61
  %2 = and i1 %cmp7, %idle
  br i1 %2, label %clean_target_met.exit, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

clean_target_met.exit:                            ; preds = %entry
  %nr_elts.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17, i32 1
  %3 = ptrtoint ptr %nr_elts.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_elts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %clean_target_met.exit.if.end14_crit_edge, label %if.then10

clean_target_met.exit.if.end14_crit_edge:         ; preds = %clean_target_met.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then10:                                        ; preds = %clean_target_met.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @queue_writeback(ptr noundef %p, i1 noundef zeroext true)
  %5 = ptrtoint ptr %bg_work to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bg_work, align 8
  %call13 = tail call i32 @btracker_issue(ptr noundef %6, ptr noundef %result) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %clean_target_met.exit.if.end14_crit_edge, %entry.if.end14_crit_edge
  %r.0 = phi i32 [ -61, %clean_target_met.exit.if.end14_crit_edge ], [ %call13, %if.then10 ], [ %call6, %entry.if.end14_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smq_complete_background_work(ptr noundef %p, ptr noundef %work, i1 noundef zeroext %success) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %cache_alloc.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12
  %cblock.i = getelementptr inbounds %struct.policy_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %cblock.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cblock.i, align 8
  %2 = ptrtoint ptr %cache_alloc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_alloc.i, align 4
  %begin.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %begin.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %begin.i.i, align 4
  %add.i.i = add i32 %5, %1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr %struct.entry, ptr %7, i32 %add.i.i
  %end.i.i.i = getelementptr inbounds %struct.entry_space, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i.i, align 4
  %cmp.not.i.i.i = icmp ult ptr %add.ptr.i.i.i, %9
  br i1 %cmp.not.i.i.i, label %get_entry.exit.i, label %do.body2.i.i.i, !prof !89

do.body2.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

get_entry.exit.i:                                 ; preds = %entry
  %10 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %work, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %get_entry.exit.i.__complete_background_work.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb10.i
  ]

get_entry.exit.i.__complete_background_work.exit_crit_edge: ; preds = %get_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__complete_background_work.exit

sw.bb.i:                                          ; preds = %get_entry.exit.i
  %pending_work.i.i = getelementptr %struct.entry, ptr %7, i32 %add.i.i, i32 3
  %13 = ptrtoint ptr %pending_work.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i.i = load i16, ptr %pending_work.i.i, align 4
  %14 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %bf.cast.not.i.i = icmp eq i16 %14, 0
  br i1 %bf.cast.not.i.i, label %do.body3.i.i, label %clear_pending.exit.i, !prof !93

do.body3.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1170, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

clear_pending.exit.i:                             ; preds = %sw.bb.i
  %bf.clear9.i.i = and i16 %bf.load.i.i, -65
  %15 = ptrtoint ptr %pending_work.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %bf.clear9.i.i, ptr %pending_work.i.i, align 4
  br i1 %success, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %clear_pending.exit.i
  %oblock.i = getelementptr inbounds %struct.policy_work, ptr %work, i32 0, i32 1
  %16 = ptrtoint ptr %oblock.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %oblock.i, align 8
  %oblock2.i = getelementptr %struct.entry, ptr %7, i32 %add.i.i, i32 4
  %18 = ptrtoint ptr %oblock2.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %oblock2.i, align 8
  %bf.set.i = or i16 %bf.clear9.i.i, -1024
  %19 = ptrtoint ptr %pending_work.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.set.i, ptr %pending_work.i.i, align 4
  %table.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21
  %hash_bits.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21, i32 1
  %20 = ptrtoint ptr %hash_bits.i.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %hash_bits.i.i.i, align 8
  %conv.i.i.i = trunc i64 %21 to i32
  %conv.i.i.i.i = trunc i64 %17 to i32
  %shr.i.i.i.i = lshr i64 %17, 32
  %conv1.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %mul.i.i.i.i.i = mul i32 %conv1.i.i.i.i, 1640531527
  %xor.i.i.i.i = xor i32 %mul.i.i.i.i.i, %conv.i.i.i.i
  %mul.i.i.i.i.i.i = mul i32 %xor.i.i.i.i, 1640531527
  %sub.i.i.i.i.i = sub i32 32, %conv.i.i.i
  %shr.i.i.i.i.i = lshr i32 %mul.i.i.i.i.i.i, %sub.i.i.i.i.i
  %buckets.i.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21, i32 2
  %22 = ptrtoint ptr %buckets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buckets.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr i32, ptr %23, i32 %shr.i.i.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i.i.i.i = load i32, ptr %add.ptr.i.i.i, align 8
  %bf.shl.i.i.i.i = shl i32 %25, 4
  %bf.clear.i.i.i.i = and i32 %bf.load.i.i.i.i, 15
  %bf.set.i.i.i.i = or i32 %bf.clear.i.i.i.i, %bf.shl.i.i.i.i
  store i32 %bf.set.i.i.i.i, ptr %add.ptr.i.i.i, align 8
  %27 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %table.i.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %cmp.i.i.i.i.i = icmp ugt ptr %30, %add.ptr.i.i.i
  br i1 %cmp.i.i.i.i.i, label %if.then.i.do.body3.i.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i.i, !prof !93

if.then.i.do.body3.i.i.i.i.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i.i

lor.rhs.i.i.i.i.i:                                ; preds = %if.then.i
  %end.i.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i.i.i.i.i, align 4
  %cmp1.not.i.i.i.i.i = icmp ugt ptr %32, %add.ptr.i.i.i
  br i1 %cmp1.not.i.i.i.i.i, label %h_insert.exit.i.i, label %lor.rhs.i.i.i.i.i.do.body3.i.i.i.i.i_crit_edge, !prof !89

lor.rhs.i.i.i.i.i.do.body3.i.i.i.i.i_crit_edge:   ; preds = %lor.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i.i

do.body3.i.i.i.i.i:                               ; preds = %lor.rhs.i.i.i.i.i.do.body3.i.i.i.i.i_crit_edge, %if.then.i.do.body3.i.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

h_insert.exit.i.i:                                ; preds = %lor.rhs.i.i.i.i.i
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %sub.ptr.div.i.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i.i, 24
  %33 = ptrtoint ptr %buckets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buckets.i.i.i.i, align 8
  %arrayidx2.i.i.i.i = getelementptr i32, ptr %34, i32 %shr.i.i.i.i.i
  %35 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.ptr.div.i.i.i.i.i, ptr %arrayidx2.i.i.i.i, align 4
  %36 = ptrtoint ptr %pending_work.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i36.i = load i16, ptr %pending_work.i.i, align 4
  %37 = and i16 %bf.load.i36.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %bf.cast.not.i37.i = icmp eq i16 %37, 0
  br i1 %bf.cast.not.i37.i, label %if.then.i.i, label %h_insert.exit.i.i.__complete_background_work.exit_crit_edge

h_insert.exit.i.i.__complete_background_work.exit_crit_edge: ; preds = %h_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__complete_background_work.exit

if.then.i.i:                                      ; preds = %h_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = and i16 %bf.load.i36.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %bf.cast.not.i.i.i = icmp eq i16 %38, 0
  %clean.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 16
  %dirty1.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17
  %clean.sink.i.i.i = select i1 %bf.cast.not.i.i.i, ptr %clean.i.i.i, ptr %dirty1.i.i.i
  tail call fastcc void @q_push(ptr noundef %clean.sink.i.i.i, ptr noundef %add.ptr.i.i.i) #10
  br label %__complete_background_work.exit

if.else.i:                                        ; preds = %clear_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @free_entry(ptr noundef %cache_alloc.i, ptr noundef %add.ptr.i.i.i) #10
  br label %__complete_background_work.exit

sw.bb4.i:                                         ; preds = %get_entry.exit.i
  br i1 %success, label %if.then6.i, label %if.else8.i

if.then6.i:                                       ; preds = %sw.bb4.i
  %oblock.i.i = getelementptr %struct.entry, ptr %7, i32 %add.i.i, i32 4
  %39 = ptrtoint ptr %oblock.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %oblock.i.i, align 8
  %hash_bits.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21, i32 1
  %41 = ptrtoint ptr %hash_bits.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %hash_bits.i.i, align 8
  %conv.i.i = trunc i64 %42 to i32
  %conv.i.i38.i = trunc i64 %40 to i32
  %shr.i.i.i = lshr i64 %40, 32
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %mul.i.i.i.i = mul i32 %conv1.i.i.i, 1640531527
  %xor.i.i.i = xor i32 %mul.i.i.i.i, %conv.i.i38.i
  %mul.i.i.i.i39.i = mul i32 %xor.i.i.i, 1640531527
  %sub.i.i.i.i = sub i32 32, %conv.i.i
  %shr.i.i.i40.i = lshr i32 %mul.i.i.i.i39.i, %sub.i.i.i.i
  %buckets.i.i.i41.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21, i32 2
  %43 = ptrtoint ptr %buckets.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buckets.i.i.i41.i, align 8
  %arrayidx.i.i.i42.i = getelementptr i32, ptr %44, i32 %shr.i.i.i40.i
  %45 = ptrtoint ptr %arrayidx.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %46)
  %cmp.i.i.i.i43.i = icmp eq i32 %46, 268435455
  br i1 %cmp.i.i.i.i43.i, label %if.then6.i.h_remove.exit.i_crit_edge, label %if.end.i.i.i.i.i

if.then6.i.h_remove.exit.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.then6.i
  %table.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21
  %47 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %table.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr %struct.entry, ptr %50, i32 %46
  %end.i.i.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %end.i.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i.i, %52
  br i1 %cmp.not.i.i.i.i.i.i, label %h_head.exit.i.i.i, label %do.body2.i.i.i.i.i.i, !prof !89

do.body2.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

h_head.exit.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  %tobool.not17.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i.i, null
  br i1 %tobool.not17.i.i.i, label %h_head.exit.i.i.i.h_remove.exit.i_crit_edge, label %for.body.i.preheader.i.i

h_head.exit.i.i.i.h_remove.exit.i_crit_edge:      ; preds = %h_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit.i

for.body.i.preheader.i.i:                         ; preds = %h_head.exit.i.i.i
  %oblock1.i19.i.i = getelementptr %struct.entry, ptr %50, i32 %46, i32 4
  %53 = ptrtoint ptr %oblock1.i19.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %oblock1.i19.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %40)
  %cmp.i20.i.i = icmp eq i64 %54, %40
  br i1 %cmp.i20.i.i, label %if.else.i.i.i, label %for.body.i.preheader.i.i.if.end.i.i.i_crit_edge

for.body.i.preheader.i.i.if.end.i.i.i_crit_edge:  ; preds = %for.body.i.preheader.i.i
  br label %if.end.i.i.i

for.body.i.i.i:                                   ; preds = %h_next.exit.i.i.i
  %oblock1.i.i.i = getelementptr %struct.entry, ptr %50, i32 %bf.lshr.i.i.i.i, i32 4
  %55 = ptrtoint ptr %oblock1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %oblock1.i.i.i, align 8
  %cmp.i.i.i = icmp eq i64 %56, %40
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i.if.end.i.i.i_crit_edge, %for.body.i.preheader.i.i.if.end.i.i.i_crit_edge
  %e.018.i21.i.i = phi ptr [ %add.ptr.i.i.i10.i.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i.i, %for.body.i.preheader.i.i.if.end.i.i.i_crit_edge ]
  %57 = ptrtoint ptr %e.018.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load.i.i.i44.i = load i32, ptr %e.018.i21.i.i, align 8
  %bf.lshr.i.i.i.i = lshr i32 %bf.load.i.i.i44.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i.i.i)
  %cmp.i.i9.i.i.i = icmp eq i32 %bf.lshr.i.i.i.i, 268435455
  br i1 %cmp.i.i9.i.i.i, label %if.end.i.i.i.h_remove.exit.i_crit_edge, label %if.end.i.i13.i.i.i

if.end.i.i.i.h_remove.exit.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit.i

if.end.i.i13.i.i.i:                               ; preds = %if.end.i.i.i
  %add.ptr.i.i.i10.i.i.i = getelementptr %struct.entry, ptr %50, i32 %bf.lshr.i.i.i.i
  %cmp.not.i.i.i12.i.i.i = icmp ult ptr %add.ptr.i.i.i10.i.i.i, %52
  br i1 %cmp.not.i.i.i12.i.i.i, label %h_next.exit.i.i.i, label %do.body2.i.i.i14.i.i.i, !prof !89

do.body2.i.i.i14.i.i.i:                           ; preds = %if.end.i.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

h_next.exit.i.i.i:                                ; preds = %if.end.i.i13.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i10.i.i.i, null
  br i1 %tobool.not.i.i.i, label %h_next.exit.i.i.i.h_remove.exit.i_crit_edge, label %for.body.i.i.i

h_next.exit.i.i.i.h_remove.exit.i_crit_edge:      ; preds = %h_next.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %add.ptr.i.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load2.i.i.i = load i32, ptr %add.ptr.i.i.i10.i.i.i, align 8
  %bf.lshr.i.i.i = and i32 %bf.load2.i.i.i, -16
  %bf.clear.i.i.i = and i32 %bf.load.i.i.i44.i, 15
  %bf.set.i.i.i = or i32 %bf.lshr.i.i.i, %bf.clear.i.i.i
  %59 = ptrtoint ptr %e.018.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %bf.set.i.i.i, ptr %e.018.i21.i.i, align 8
  br label %h_remove.exit.i

if.else.i.i.i:                                    ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load2.i29.i.i = load i32, ptr %add.ptr.i.i.i.i.i.i, align 8
  %bf.lshr3.i.i.i = lshr i32 %bf.load2.i29.i.i, 4
  %61 = ptrtoint ptr %arrayidx.i.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %bf.lshr3.i.i.i, ptr %arrayidx.i.i.i42.i, align 4
  br label %h_remove.exit.i

h_remove.exit.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i, %h_next.exit.i.i.i.h_remove.exit.i_crit_edge, %if.end.i.i.i.h_remove.exit.i_crit_edge, %h_head.exit.i.i.i.h_remove.exit.i_crit_edge, %if.then6.i.h_remove.exit.i_crit_edge
  tail call fastcc void @free_entry(ptr noundef %cache_alloc.i, ptr noundef %add.ptr.i.i.i) #10
  br label %__complete_background_work.exit

if.else8.i:                                       ; preds = %sw.bb4.i
  %pending_work.i45.i = getelementptr %struct.entry, ptr %7, i32 %add.i.i, i32 3
  %62 = ptrtoint ptr %pending_work.i45.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load.i46.i = load i16, ptr %pending_work.i45.i, align 4
  %63 = and i16 %bf.load.i46.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %bf.cast.not.i47.i = icmp eq i16 %63, 0
  br i1 %bf.cast.not.i47.i, label %do.body3.i48.i, label %clear_pending.exit50.i, !prof !93

do.body3.i48.i:                                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1170, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

clear_pending.exit50.i:                           ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear9.i49.i = and i16 %bf.load.i46.i, -65
  %64 = ptrtoint ptr %pending_work.i45.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %bf.clear9.i49.i, ptr %pending_work.i45.i, align 4
  %65 = and i16 %bf.load.i46.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %bf.cast.not.i52.i = icmp eq i16 %65, 0
  %clean.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 16
  %dirty1.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17
  %clean.sink.i.i = select i1 %bf.cast.not.i52.i, ptr %clean.i.i, ptr %dirty1.i.i
  tail call fastcc void @q_push(ptr noundef %clean.sink.i.i, ptr noundef %add.ptr.i.i.i) #10
  br label %__complete_background_work.exit

sw.bb10.i:                                        ; preds = %get_entry.exit.i
  %pending_work.i53.i = getelementptr %struct.entry, ptr %7, i32 %add.i.i, i32 3
  %66 = ptrtoint ptr %pending_work.i53.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load.i54.i = load i16, ptr %pending_work.i53.i, align 4
  %67 = and i16 %bf.load.i54.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %bf.cast.not.i55.i = icmp eq i16 %67, 0
  br i1 %bf.cast.not.i55.i, label %do.body3.i56.i, label %clear_pending.exit58.i, !prof !93

do.body3.i56.i:                                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1170, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

clear_pending.exit58.i:                           ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear9.i57.i = and i16 %bf.load.i54.i, -65
  %68 = ptrtoint ptr %pending_work.i53.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %bf.clear9.i57.i, ptr %pending_work.i53.i, align 4
  %69 = and i16 %bf.load.i54.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %bf.cast.not.i61.i = icmp eq i16 %69, 0
  %clean.i62.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 16
  %dirty1.i63.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17
  %clean.sink.i64.i = select i1 %bf.cast.not.i61.i, ptr %clean.i62.i, ptr %dirty1.i63.i
  tail call fastcc void @q_push(ptr noundef %clean.sink.i64.i, ptr noundef %add.ptr.i.i.i) #10
  br label %__complete_background_work.exit

__complete_background_work.exit:                  ; preds = %clear_pending.exit58.i, %clear_pending.exit50.i, %h_remove.exit.i, %if.else.i, %if.then.i.i, %h_insert.exit.i.i.__complete_background_work.exit_crit_edge, %get_entry.exit.i.__complete_background_work.exit_crit_edge
  %bg_work.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 31
  %70 = ptrtoint ptr %bg_work.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bg_work.i, align 8
  tail call void @btracker_complete(ptr noundef %71, ptr noundef %work) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smq_set_dirty(ptr noundef %p, i32 noundef %cblock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %cache_alloc.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %cache_alloc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_alloc.i, align 4
  %begin.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %begin.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %begin.i.i, align 4
  %add.i.i = add i32 %3, %cblock
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr %struct.entry, ptr %5, i32 %add.i.i
  %end.i.i.i = getelementptr inbounds %struct.entry_space, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i, align 4
  %cmp.not.i.i.i = icmp ult ptr %add.ptr.i.i.i, %7
  br i1 %cmp.not.i.i.i, label %get_entry.exit.i, label %do.body2.i.i.i, !prof !89

do.body2.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

get_entry.exit.i:                                 ; preds = %entry
  %pending_work.i = getelementptr %struct.entry, ptr %5, i32 %add.i.i, i32 3
  %8 = ptrtoint ptr %pending_work.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %pending_work.i, align 4
  %9 = and i16 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %bf.cast.not.i = icmp eq i16 %9, 0
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %get_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set.i = or i16 %bf.load.i, 512
  %10 = ptrtoint ptr %pending_work.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %bf.set.i, ptr %pending_work.i, align 4
  br label %__smq_set_clear_dirty.exit

if.else.i:                                        ; preds = %get_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %bf.cast.not.i.i = icmp eq i16 %11, 0
  %dirty1.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17
  %clean.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 16
  %cond.i.i = select i1 %bf.cast.not.i.i, ptr %clean.i.i, ptr %dirty1.i.i
  tail call fastcc void @q_del(ptr noundef %cond.i.i, ptr noundef %add.ptr.i.i.i) #10
  %12 = ptrtoint ptr %pending_work.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load7.i = load i16, ptr %pending_work.i, align 4
  %bf.set10.i = or i16 %bf.load7.i, 512
  store i16 %bf.set10.i, ptr %pending_work.i, align 4
  tail call fastcc void @q_push(ptr noundef %dirty1.i.i, ptr noundef %add.ptr.i.i.i) #10
  br label %__smq_set_clear_dirty.exit

__smq_set_clear_dirty.exit:                       ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smq_clear_dirty(ptr noundef %p, i32 noundef %cblock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %cache_alloc.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %cache_alloc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_alloc.i, align 4
  %begin.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %begin.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %begin.i.i, align 4
  %add.i.i = add i32 %3, %cblock
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr %struct.entry, ptr %5, i32 %add.i.i
  %end.i.i.i = getelementptr inbounds %struct.entry_space, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i, align 4
  %cmp.not.i.i.i = icmp ult ptr %add.ptr.i.i.i, %7
  br i1 %cmp.not.i.i.i, label %get_entry.exit.i, label %do.body2.i.i.i, !prof !89

do.body2.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

get_entry.exit.i:                                 ; preds = %entry
  %pending_work.i = getelementptr %struct.entry, ptr %5, i32 %add.i.i, i32 3
  %8 = ptrtoint ptr %pending_work.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %pending_work.i, align 4
  %9 = and i16 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %bf.cast.not.i = icmp eq i16 %9, 0
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %get_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear3.i = and i16 %bf.load.i, -513
  %10 = ptrtoint ptr %pending_work.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %bf.clear3.i, ptr %pending_work.i, align 4
  br label %__smq_set_clear_dirty.exit

if.else.i:                                        ; preds = %get_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %bf.cast.not.i.i = icmp eq i16 %11, 0
  %dirty1.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17
  %clean.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 16
  %cond.i.i = select i1 %bf.cast.not.i.i, ptr %clean.i.i, ptr %dirty1.i.i
  tail call fastcc void @q_del(ptr noundef %cond.i.i, ptr noundef %add.ptr.i.i.i) #10
  %12 = ptrtoint ptr %pending_work.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load7.i = load i16, ptr %pending_work.i, align 4
  %bf.clear9.i = and i16 %bf.load7.i, -513
  store i16 %bf.clear9.i, ptr %pending_work.i, align 4
  tail call fastcc void @q_push(ptr noundef %clean.i.i, ptr noundef %add.ptr.i.i.i) #10
  br label %__smq_set_clear_dirty.exit

__smq_set_clear_dirty.exit:                       ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smq_load_mapping(ptr nocapture noundef %p, i64 noundef %oblock, i32 noundef %cblock, i1 noundef zeroext %dirty, i32 noundef %hint, i1 noundef zeroext %hint_valid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_alloc = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %cache_alloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_alloc, align 4
  %begin.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %begin.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %begin.i, align 4
  %add.i = add i32 %3, %cblock
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr %struct.entry, ptr %5, i32 %add.i
  %end.i.i = getelementptr inbounds %struct.entry_space, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %cmp.not.i.i = icmp ult ptr %add.ptr.i.i, %7
  br i1 %cmp.not.i.i, label %__get_entry.exit.i, label %do.body2.i.i, !prof !89

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

__get_entry.exit.i:                               ; preds = %entry
  %allocated.i = getelementptr %struct.entry, ptr %5, i32 %add.i, i32 3
  %8 = ptrtoint ptr %allocated.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %allocated.i, align 4
  %9 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %bf.cast.not.i = icmp eq i16 %9, 0
  br i1 %bf.cast.not.i, label %do.end7.i, label %do.body2.i, !prof !89

do.body2.i:                                       ; preds = %__get_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 749, 0\0A.popsection", ""() #10, !srcloc !96
  unreachable

do.end7.i:                                        ; preds = %__get_entry.exit.i
  %free.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 3
  %prev.i.i.i = getelementptr %struct.entry, ptr %5, i32 %add.i, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i.i.i = load i32, ptr %prev.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %bf.lshr.i.i.i, 268435455
  br i1 %cmp.i.i.i.i, label %do.end7.i.l_prev.exit.i.i_crit_edge, label %if.end.i.i.i.i

do.end7.i.l_prev.exit.i.i_crit_edge:              ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_prev.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end7.i
  %add.ptr.i.i.i.i.i = getelementptr %struct.entry, ptr %5, i32 %bf.lshr.i.i.i
  %cmp.not.i.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.l_prev.exit.i.i_crit_edge, label %do.body2.i.i.i.i.i, !prof !89

if.end.i.i.i.i.l_prev.exit.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_prev.exit.i.i

do.body2.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_prev.exit.i.i:                                  ; preds = %if.end.i.i.i.i.l_prev.exit.i.i_crit_edge, %do.end7.i.l_prev.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ null, %do.end7.i.l_prev.exit.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i, %if.end.i.i.i.i.l_prev.exit.i.i_crit_edge ]
  %next.i.i.i = getelementptr %struct.entry, ptr %5, i32 %add.i, i32 2
  %11 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i40.i.i = load i32, ptr %next.i.i.i, align 8
  %bf.lshr.i41.i.i = lshr i32 %bf.load.i40.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i41.i.i)
  %cmp.i.i42.i.i = icmp eq i32 %bf.lshr.i41.i.i, 268435455
  br i1 %cmp.i.i42.i.i, label %l_prev.exit.i.i.l_next.exit.i.i_crit_edge, label %if.end.i.i46.i.i

l_prev.exit.i.i.l_next.exit.i.i_crit_edge:        ; preds = %l_prev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_next.exit.i.i

if.end.i.i46.i.i:                                 ; preds = %l_prev.exit.i.i
  %add.ptr.i.i.i43.i.i = getelementptr %struct.entry, ptr %5, i32 %bf.lshr.i41.i.i
  %cmp.not.i.i.i45.i.i = icmp ult ptr %add.ptr.i.i.i43.i.i, %7
  br i1 %cmp.not.i.i.i45.i.i, label %if.end.i.i46.i.i.l_next.exit.i.i_crit_edge, label %do.body2.i.i.i47.i.i, !prof !89

if.end.i.i46.i.i.l_next.exit.i.i_crit_edge:       ; preds = %if.end.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_next.exit.i.i

do.body2.i.i.i47.i.i:                             ; preds = %if.end.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit.i.i:                                  ; preds = %if.end.i.i46.i.i.l_next.exit.i.i_crit_edge, %l_prev.exit.i.i.l_next.exit.i.i_crit_edge
  %retval.0.i.i48.i.i = phi ptr [ null, %l_prev.exit.i.i.l_next.exit.i.i_crit_edge ], [ %add.ptr.i.i.i43.i.i, %if.end.i.i46.i.i.l_next.exit.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %l_next.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr.i.i = and i32 %bf.load.i40.i.i, -16
  %next3.i.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %next3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load4.i.i = load i32, ptr %next3.i.i, align 8
  %bf.clear.i.i = and i32 %bf.load4.i.i, 15
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.lshr.i.i
  store i32 %bf.set.i.i, ptr %next3.i.i, align 8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %l_next.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 3, i32 1
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.lshr.i41.i.i, ptr %head.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %tobool8.not.i.i = icmp eq ptr %retval.0.i.i48.i.i, null
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load21.i.i = load i32, ptr %prev.i.i.i, align 4
  br i1 %tobool8.not.i.i, label %if.else19.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr12.i.i = and i32 %bf.load21.i.i, -16
  %prev13.i.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i48.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev13.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load14.i.i = load i32, ptr %prev13.i.i, align 4
  %bf.clear17.i.i = and i32 %bf.load14.i.i, 15
  %bf.set18.i.i = or i32 %bf.clear17.i.i, %bf.lshr12.i.i
  store i32 %bf.set18.i.i, ptr %prev13.i.i, align 4
  br label %if.end23.i.i

if.else19.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr22.i.i = lshr i32 %bf.load21.i.i, 4
  %tail.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 3, i32 2
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bf.lshr22.i.i, ptr %tail.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.else19.i.i, %if.then9.i.i
  %17 = ptrtoint ptr %allocated.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load24.i.i = load i16, ptr %allocated.i, align 4
  %18 = and i16 %bf.load24.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %bf.cast.not.i.i = icmp eq i16 %18, 0
  br i1 %bf.cast.not.i.i, label %if.then27.i.i, label %if.end23.i.i.alloc_particular_entry.exit_crit_edge

if.end23.i.i.alloc_particular_entry.exit_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_particular_entry.exit

if.then27.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %free.i, align 4
  %dec.i.i = add i32 %20, -1
  store i32 %dec.i.i, ptr %free.i, align 4
  br label %alloc_particular_entry.exit

alloc_particular_entry.exit:                      ; preds = %if.then27.i.i, %if.end23.i.i.alloc_particular_entry.exit_crit_edge
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i.i = load i32, ptr %add.ptr.i.i, align 8
  %bf.set.i16.i = or i32 %bf.load.i.i, -16
  store i32 %bf.set.i16.i, ptr %add.ptr.i.i, align 8
  %22 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load1.i.i = load i32, ptr %next.i.i.i, align 8
  %bf.set3.i.i = or i32 %bf.load1.i.i, -16
  store i32 %bf.set3.i.i, ptr %next.i.i.i, align 8
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load4.i17.i = load i32, ptr %prev.i.i.i, align 4
  %bf.set6.i.i = or i32 %bf.load4.i17.i, -16
  store i32 %bf.set6.i.i, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %allocated.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load7.i.i = load i16, ptr %allocated.i, align 4
  %bf.clear11.i.i = and i16 %bf.load7.i.i, 63
  %bf.set15.i.i = or i16 %bf.clear11.i.i, 768
  store i16 %bf.set15.i.i, ptr %allocated.i, align 4
  %nr_allocated.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 2
  %25 = ptrtoint ptr %nr_allocated.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_allocated.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %nr_allocated.i, align 4
  %oblock4 = getelementptr %struct.entry, ptr %5, i32 %add.i, i32 4
  %27 = ptrtoint ptr %oblock4 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %oblock, ptr %oblock4, align 8
  %bf.load = load i16, ptr %allocated.i, align 4
  %bf.shl = select i1 %dirty, i16 512, i16 0
  %bf.clear = and i16 %bf.load, 447
  %bf.set = or i16 %bf.clear, %bf.shl
  %28 = tail call i32 @llvm.umin.i32(i32 %hint, i32 63)
  %mul.i.i.i = mul i32 %cblock, 29918791
  %shr.i.i = lshr i32 %mul.i.i.i, 23
  %and.i = and i32 %shr.i.i, 63
  %cond12 = select i1 %hint_valid, i32 %28, i32 %and.i
  %29 = trunc i32 %cond12 to i16
  %bf.shl14 = shl nuw i16 %29, 10
  %bf.set16 = or i16 %bf.set, %bf.shl14
  %30 = ptrtoint ptr %allocated.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %bf.set16, ptr %allocated.i, align 4
  %table.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21
  %hash_bits.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21, i32 1
  %31 = ptrtoint ptr %hash_bits.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %hash_bits.i.i, align 8
  %conv.i.i = trunc i64 %32 to i32
  %conv.i.i.i = trunc i64 %oblock to i32
  %shr.i.i.i = lshr i64 %oblock, 32
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %mul.i.i.i.i = mul i32 %conv1.i.i.i, 1640531527
  %xor.i.i.i = xor i32 %mul.i.i.i.i, %conv.i.i.i
  %mul.i.i.i.i.i = mul i32 %xor.i.i.i, 1640531527
  %sub.i.i.i.i = sub i32 32, %conv.i.i
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, %sub.i.i.i.i
  %buckets.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21, i32 2
  %33 = ptrtoint ptr %buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buckets.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i32, ptr %34, i32 %shr.i.i.i.i
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load.i.i.i29 = load i32, ptr %add.ptr.i.i, align 8
  %bf.shl.i.i.i = shl i32 %36, 4
  %bf.clear.i.i.i = and i32 %bf.load.i.i.i29, 15
  %bf.set.i.i.i = or i32 %bf.clear.i.i.i, %bf.shl.i.i.i
  store i32 %bf.set.i.i.i, ptr %add.ptr.i.i, align 8
  %38 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %table.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %cmp.i.i.i.i30 = icmp ugt ptr %41, %add.ptr.i.i
  br i1 %cmp.i.i.i.i30, label %alloc_particular_entry.exit.do.body3.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i, !prof !93

alloc_particular_entry.exit.do.body3.i.i.i.i_crit_edge: ; preds = %alloc_particular_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %alloc_particular_entry.exit
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp1.not.i.i.i.i = icmp ugt ptr %43, %add.ptr.i.i
  br i1 %cmp1.not.i.i.i.i, label %h_insert.exit.i, label %lor.rhs.i.i.i.i.do.body3.i.i.i.i_crit_edge, !prof !89

lor.rhs.i.i.i.i.do.body3.i.i.i.i_crit_edge:       ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i

do.body3.i.i.i.i:                                 ; preds = %lor.rhs.i.i.i.i.do.body3.i.i.i.i_crit_edge, %alloc_particular_entry.exit.do.body3.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

h_insert.exit.i:                                  ; preds = %lor.rhs.i.i.i.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 24
  %44 = ptrtoint ptr %buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buckets.i.i.i, align 8
  %arrayidx2.i.i.i = getelementptr i32, ptr %45, i32 %shr.i.i.i.i
  %46 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.ptr.div.i.i.i.i, ptr %arrayidx2.i.i.i, align 4
  %47 = ptrtoint ptr %allocated.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i31 = load i16, ptr %allocated.i, align 4
  %48 = and i16 %bf.load.i31, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %bf.cast.not.i32 = icmp eq i16 %48, 0
  br i1 %bf.cast.not.i32, label %if.then.i, label %h_insert.exit.i.push_front.exit_crit_edge

h_insert.exit.i.push_front.exit_crit_edge:        ; preds = %h_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %push_front.exit

if.then.i:                                        ; preds = %h_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = and i16 %bf.load.i31, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %bf.cast.not.i.i33 = icmp eq i16 %49, 0
  %clean.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 16
  %dirty1.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17
  %clean.sink.i.i = select i1 %bf.cast.not.i.i33, ptr %clean.i.i, ptr %dirty1.i.i
  tail call fastcc void @q_push_front(ptr noundef %clean.sink.i.i, ptr noundef %add.ptr.i.i) #10
  br label %push_front.exit

push_front.exit:                                  ; preds = %if.then.i, %h_insert.exit.i.push_front.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smq_invalidate_mapping(ptr nocapture noundef %p, i32 noundef %cblock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_alloc = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %cache_alloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_alloc, align 4
  %begin.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %begin.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %begin.i, align 4
  %add.i = add i32 %3, %cblock
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr %struct.entry, ptr %5, i32 %add.i
  %end.i.i = getelementptr inbounds %struct.entry_space, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %cmp.not.i.i = icmp ult ptr %add.ptr.i.i, %7
  br i1 %cmp.not.i.i, label %get_entry.exit, label %do.body2.i.i, !prof !89

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

get_entry.exit:                                   ; preds = %entry
  %allocated = getelementptr %struct.entry, ptr %5, i32 %add.i, i32 3
  %8 = ptrtoint ptr %allocated to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %allocated, align 4
  %9 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %bf.cast.not = icmp eq i16 %9, 0
  br i1 %bf.cast.not, label %get_entry.exit.cleanup_crit_edge, label %if.end

get_entry.exit.cleanup_crit_edge:                 ; preds = %get_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %get_entry.exit
  %10 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %bf.cast.not.i = icmp eq i16 %10, 0
  %dirty1.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17
  %clean.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 16
  %cond.i = select i1 %bf.cast.not.i, ptr %clean.i, ptr %dirty1.i
  tail call fastcc void @q_del(ptr noundef %cond.i, ptr noundef %add.ptr.i.i) #10
  %oblock.i = getelementptr %struct.entry, ptr %5, i32 %add.i, i32 4
  %11 = ptrtoint ptr %oblock.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %oblock.i, align 8
  %hash_bits.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21, i32 1
  %13 = ptrtoint ptr %hash_bits.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %hash_bits.i, align 8
  %conv.i = trunc i64 %14 to i32
  %conv.i.i = trunc i64 %12 to i32
  %shr.i.i = lshr i64 %12, 32
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %xor.i.i = xor i32 %mul.i.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %sub.i.i.i = sub i32 32, %conv.i
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, %sub.i.i.i
  %buckets.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21, i32 2
  %15 = ptrtoint ptr %buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buckets.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i32, ptr %16, i32 %shr.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %18)
  %cmp.i.i.i.i = icmp eq i32 %18, 268435455
  br i1 %cmp.i.i.i.i, label %if.end.h_remove.exit_crit_edge, label %if.end.i.i.i.i

if.end.h_remove.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit

if.end.i.i.i.i:                                   ; preds = %if.end
  %table = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 21
  %19 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %table, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %add.ptr.i.i.i.i.i = getelementptr %struct.entry, ptr %22, i32 %18
  %end.i.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i, %24
  br i1 %cmp.not.i.i.i.i.i, label %h_head.exit.i.i, label %do.body2.i.i.i.i.i, !prof !89

do.body2.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

h_head.exit.i.i:                                  ; preds = %if.end.i.i.i.i
  %tobool.not17.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool.not17.i.i, label %h_head.exit.i.i.h_remove.exit_crit_edge, label %for.body.i.preheader.i

h_head.exit.i.i.h_remove.exit_crit_edge:          ; preds = %h_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit

for.body.i.preheader.i:                           ; preds = %h_head.exit.i.i
  %oblock1.i19.i = getelementptr %struct.entry, ptr %22, i32 %18, i32 4
  %25 = ptrtoint ptr %oblock1.i19.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %oblock1.i19.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %12)
  %cmp.i20.i = icmp eq i64 %26, %12
  br i1 %cmp.i20.i, label %if.else.i.i, label %for.body.i.preheader.i.if.end.i.i_crit_edge

for.body.i.preheader.i.if.end.i.i_crit_edge:      ; preds = %for.body.i.preheader.i
  br label %if.end.i.i

for.body.i.i:                                     ; preds = %h_next.exit.i.i
  %oblock1.i.i = getelementptr %struct.entry, ptr %22, i32 %bf.lshr.i.i.i, i32 4
  %27 = ptrtoint ptr %oblock1.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %oblock1.i.i, align 8
  %cmp.i.i = icmp eq i64 %28, %12
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.if.end.i.i_crit_edge, %for.body.i.preheader.i.if.end.i.i_crit_edge
  %e.018.i21.i = phi ptr [ %add.ptr.i.i.i10.i.i, %for.body.i.i.if.end.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i, %for.body.i.preheader.i.if.end.i.i_crit_edge ]
  %29 = ptrtoint ptr %e.018.i21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i.i.i = load i32, ptr %e.018.i21.i, align 8
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i.i)
  %cmp.i.i9.i.i = icmp eq i32 %bf.lshr.i.i.i, 268435455
  br i1 %cmp.i.i9.i.i, label %if.end.i.i.h_remove.exit_crit_edge, label %if.end.i.i13.i.i

if.end.i.i.h_remove.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit

if.end.i.i13.i.i:                                 ; preds = %if.end.i.i
  %add.ptr.i.i.i10.i.i = getelementptr %struct.entry, ptr %22, i32 %bf.lshr.i.i.i
  %cmp.not.i.i.i12.i.i = icmp ult ptr %add.ptr.i.i.i10.i.i, %24
  br i1 %cmp.not.i.i.i12.i.i, label %h_next.exit.i.i, label %do.body2.i.i.i14.i.i, !prof !89

do.body2.i.i.i14.i.i:                             ; preds = %if.end.i.i13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

h_next.exit.i.i:                                  ; preds = %if.end.i.i13.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i10.i.i, null
  br i1 %tobool.not.i.i, label %h_next.exit.i.i.h_remove.exit_crit_edge, label %for.body.i.i

h_next.exit.i.i.h_remove.exit_crit_edge:          ; preds = %h_next.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %add.ptr.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load2.i.i = load i32, ptr %add.ptr.i.i.i10.i.i, align 8
  %bf.lshr.i.i = and i32 %bf.load2.i.i, -16
  %bf.clear.i.i = and i32 %bf.load.i.i.i, 15
  %bf.set.i.i = or i32 %bf.lshr.i.i, %bf.clear.i.i
  %31 = ptrtoint ptr %e.018.i21.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bf.set.i.i, ptr %e.018.i21.i, align 8
  br label %h_remove.exit

if.else.i.i:                                      ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load2.i29.i = load i32, ptr %add.ptr.i.i.i.i.i, align 8
  %bf.lshr3.i.i = lshr i32 %bf.load2.i29.i, 4
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %bf.lshr3.i.i, ptr %arrayidx.i.i.i, align 4
  br label %h_remove.exit

h_remove.exit:                                    ; preds = %if.else.i.i, %if.then.i.i, %h_next.exit.i.i.h_remove.exit_crit_edge, %if.end.i.i.h_remove.exit_crit_edge, %h_head.exit.i.i.h_remove.exit_crit_edge, %if.end.h_remove.exit_crit_edge
  tail call fastcc void @free_entry(ptr noundef %cache_alloc, ptr noundef %add.ptr.i.i)
  br label %cleanup

cleanup:                                          ; preds = %h_remove.exit, %get_entry.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %h_remove.exit ], [ -61, %get_entry.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smq_get_hint(ptr nocapture noundef readonly %p, i32 noundef %cblock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_alloc = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %cache_alloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_alloc, align 4
  %begin.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %begin.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %begin.i, align 4
  %add.i = add i32 %3, %cblock
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr %struct.entry, ptr %5, i32 %add.i
  %end.i.i = getelementptr inbounds %struct.entry_space, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %cmp.not.i.i = icmp ult ptr %add.ptr.i.i, %7
  br i1 %cmp.not.i.i, label %get_entry.exit, label %do.body2.i.i, !prof !89

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

get_entry.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %allocated = getelementptr %struct.entry, ptr %5, i32 %add.i, i32 3
  %8 = ptrtoint ptr %allocated to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %allocated, align 4
  %9 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %bf.cast.not = icmp eq i16 %9, 0
  %bf.lshr4 = lshr i16 %bf.load, 10
  %narrow = select i1 %bf.cast.not, i16 0, i16 %bf.lshr4
  %retval.0 = zext i16 %narrow to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smq_residency(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %nr_allocated = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_allocated, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smq_tick(ptr noundef %p, i1 noundef zeroext %can_block) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %tick = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 20
  %0 = ptrtoint ptr %tick to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tick, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tick, align 4
  %next_writeback_period.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 24
  %2 = ptrtoint ptr %next_writeback_period.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_writeback_period.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %5, 1000
  %6 = ptrtoint ptr %next_writeback_period.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %next_writeback_period.i, align 4
  %current_writeback_sentinels.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 23
  %7 = ptrtoint ptr %current_writeback_sentinels.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %current_writeback_sentinels.i, align 8, !range !92
  %9 = xor i8 %8, 1
  store i8 %9, ptr %current_writeback_sentinels.i, align 8
  %dirty.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17
  %nr_levels.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17, i32 2
  %10 = ptrtoint ptr %nr_levels.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_levels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp7.not.i.i, label %if.then.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %writeback_sentinel_alloc.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 9
  %begin.i.i.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 9, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %writeback_sentinel.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %level.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %writeback_sentinel.exit.i.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %current_writeback_sentinels.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %current_writeback_sentinels.i, align 8, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i.i = icmp eq i8 %13, 0
  %add.i.i.i.i = add i32 %level.08.i.i, 64
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i, i32 %add.i.i.i.i, i32 %level.08.i.i
  %14 = ptrtoint ptr %writeback_sentinel_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %writeback_sentinel_alloc.i.i.i, align 4
  %16 = ptrtoint ptr %begin.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %begin.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %17, %cond.i.i.i.i
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr %struct.entry, ptr %19, i32 %add.i.i.i.i.i
  %end.i.i.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i, label %writeback_sentinel.exit.i.i, label %do.body2.i.i.i.i.i.i, !prof !89

do.body2.i.i.i.i.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

writeback_sentinel.exit.i.i:                      ; preds = %for.body.i.i
  tail call fastcc void @q_del(ptr noundef %dirty.i.i, ptr noundef %add.ptr.i.i.i.i.i.i) #10
  tail call fastcc void @q_push(ptr noundef %dirty.i.i, ptr noundef %add.ptr.i.i.i.i.i.i) #10
  %inc.i.i = add nuw i32 %level.08.i.i, 1
  %22 = ptrtoint ptr %nr_levels.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_levels.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %23
  br i1 %cmp.i.i, label %writeback_sentinel.exit.i.i.for.body.i.i_crit_edge, label %writeback_sentinel.exit.i.i.if.end.i_crit_edge

writeback_sentinel.exit.i.i.if.end.i_crit_edge:   ; preds = %writeback_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

writeback_sentinel.exit.i.i.for.body.i.i_crit_edge: ; preds = %writeback_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end.i:                                         ; preds = %writeback_sentinel.exit.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %next_demote_period.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 26
  %24 = ptrtoint ptr %next_demote_period.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %next_demote_period.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub3.i = sub i32 %25, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %cmp4.i = icmp slt i32 %sub3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.update_sentinels.exit_crit_edge

if.end.i.update_sentinels.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_sentinels.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add6.i = add i32 %27, 6000
  %28 = ptrtoint ptr %next_demote_period.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add6.i, ptr %next_demote_period.i, align 4
  %current_demote_sentinels.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 25
  %29 = ptrtoint ptr %current_demote_sentinels.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %current_demote_sentinels.i, align 8, !range !92
  %31 = xor i8 %30, 1
  store i8 %31, ptr %current_demote_sentinels.i, align 8
  %clean.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 16
  %nr_levels.i22.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 16, i32 2
  %32 = ptrtoint ptr %nr_levels.i22.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_levels.i22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp7.not.i23.i = icmp eq i32 %33, 0
  br i1 %cmp7.not.i23.i, label %if.then5.i.update_sentinels.exit_crit_edge, label %for.body.lr.ph.i25.i

if.then5.i.update_sentinels.exit_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_sentinels.exit

for.body.lr.ph.i25.i:                             ; preds = %if.then5.i
  %demote_sentinel_alloc.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 10
  %begin.i.i.i.i24.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 10, i32 1
  br label %for.body.i34.i

for.body.i34.i:                                   ; preds = %demote_sentinel.exit.i.i.for.body.i34.i_crit_edge, %for.body.lr.ph.i25.i
  %level.08.i26.i = phi i32 [ 0, %for.body.lr.ph.i25.i ], [ %inc.i36.i, %demote_sentinel.exit.i.i.for.body.i34.i_crit_edge ]
  %34 = ptrtoint ptr %current_demote_sentinels.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %current_demote_sentinels.i, align 8, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i27.i = icmp eq i8 %35, 0
  %add.i.i.i28.i = add i32 %level.08.i26.i, 64
  %cond.i.i.i29.i = select i1 %tobool.not.i.i27.i, i32 %add.i.i.i28.i, i32 %level.08.i26.i
  %36 = ptrtoint ptr %demote_sentinel_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %demote_sentinel_alloc.i.i.i, align 4
  %38 = ptrtoint ptr %begin.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %begin.i.i.i.i24.i, align 4
  %add.i.i.i.i30.i = add i32 %39, %cond.i.i.i29.i
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %add.ptr.i.i.i.i.i31.i = getelementptr %struct.entry, ptr %41, i32 %add.i.i.i.i30.i
  %end.i.i.i.i.i32.i = getelementptr inbounds %struct.entry_space, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %end.i.i.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i.i.i.i32.i, align 4
  %cmp.not.i.i.i.i.i33.i = icmp ult ptr %add.ptr.i.i.i.i.i31.i, %43
  br i1 %cmp.not.i.i.i.i.i33.i, label %demote_sentinel.exit.i.i, label %do.body2.i.i.i.i.i35.i, !prof !89

do.body2.i.i.i.i.i35.i:                           ; preds = %for.body.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

demote_sentinel.exit.i.i:                         ; preds = %for.body.i34.i
  tail call fastcc void @q_del(ptr noundef %clean.i.i, ptr noundef %add.ptr.i.i.i.i.i31.i) #10
  tail call fastcc void @q_push(ptr noundef %clean.i.i, ptr noundef %add.ptr.i.i.i.i.i31.i) #10
  %inc.i36.i = add nuw i32 %level.08.i26.i, 1
  %44 = ptrtoint ptr %nr_levels.i22.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_levels.i22.i, align 4
  %cmp.i37.i = icmp ult i32 %inc.i36.i, %45
  br i1 %cmp.i37.i, label %demote_sentinel.exit.i.i.for.body.i34.i_crit_edge, label %demote_sentinel.exit.i.i.update_sentinels.exit_crit_edge

demote_sentinel.exit.i.i.update_sentinels.exit_crit_edge: ; preds = %demote_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_sentinels.exit

demote_sentinel.exit.i.i.for.body.i34.i_crit_edge: ; preds = %demote_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i34.i

update_sentinels.exit:                            ; preds = %demote_sentinel.exit.i.i.update_sentinels.exit_crit_edge, %if.then5.i.update_sentinels.exit_crit_edge, %if.end.i.update_sentinels.exit_crit_edge
  %hotspot_hit_bits.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 13
  %46 = ptrtoint ptr %hotspot_hit_bits.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hotspot_hit_bits.i, align 4
  %nr_hotspot_blocks.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 5
  %48 = ptrtoint ptr %nr_hotspot_blocks.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_hotspot_blocks.i, align 8
  %sub.i.i.i = add i32 %49, 31
  %50 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %50, 536870908
  %51 = call ptr @memset(ptr %47, i32 0, i32 %mul.i.i.i)
  %head.i.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 12, i32 3, i32 1
  %52 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %head.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %53)
  %cmp.i.i.i.i = icmp eq i32 %53, 268435455
  br i1 %cmp.i.i.i.i, label %cond.true.i.i, label %update_sentinels.exit.cond.end.thread.i.i_crit_edge

update_sentinels.exit.cond.end.thread.i.i_crit_edge: ; preds = %update_sentinels.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.thread.i.i

cond.true.i.i:                                    ; preds = %update_sentinels.exit
  %hits1.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 19, i32 1
  %54 = ptrtoint ptr %hits1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hits1.i.i.i, align 4
  %misses3.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 19, i32 2
  %56 = ptrtoint ptr %misses3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %misses3.i.i.i, align 8
  %add.i.i.i = add i32 %57, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %add.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i.i.i

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.true.i.i.i.i:                                ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.i.i = shl i32 %55, 4
  %div.i.i.i.i = udiv i32 %shl.i.i.i, %add.i.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i.i.i12 = phi i32 [ %div.i.i.i.i, %cond.true.i.i.i.i ], [ 0, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [17 x i32], ptr @default_promote_level.table, i32 0, i32 %cond.i.i.i.i12
  %58 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i.i, align 4
  %60 = tail call i32 @llvm.umax.i32(i32 %59, i32 64) #10
  br label %cond.end.thread.i.i

cond.end.thread.i.i:                              ; preds = %cond.end.i.i, %update_sentinels.exit.cond.end.thread.i.i_crit_edge
  %61 = phi i32 [ 64, %update_sentinels.exit.cond.end.thread.i.i_crit_edge ], [ %60, %cond.end.i.i ]
  %hits.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 18, i32 1
  %62 = ptrtoint ptr %hits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hits.i.i.i, align 4
  %misses.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 18, i32 2
  %64 = ptrtoint ptr %misses.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %misses.i.i.i, align 4
  %add.i22.i.i = add i32 %65, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i22.i.i)
  %tobool.not.i.i23.i.i = icmp eq i32 %add.i22.i.i, 0
  br i1 %tobool.not.i.i23.i.i, label %cond.end.thread.i.i.update_promote_levels.exit.i_crit_edge, label %safe_div.exit.i.i.i

cond.end.thread.i.i.update_promote_levels.exit.i_crit_edge: ; preds = %cond.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_promote_levels.exit.i

safe_div.exit.i.i.i:                              ; preds = %cond.end.thread.i.i
  %shl.i24.i.i = shl i32 %63, 8
  %div.i.i25.i.i = udiv i32 %shl.i24.i.i, %add.i22.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div.i.i25.i.i)
  %cmp.i.i.i = icmp ult i32 %div.i.i25.i.i, 16
  br i1 %cmp.i.i.i, label %safe_div.exit.i.i.i.update_promote_levels.exit.i_crit_edge, label %stats_assess.exit.i.i

safe_div.exit.i.i.i.update_promote_levels.exit.i_crit_edge: ; preds = %safe_div.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_promote_levels.exit.i

stats_assess.exit.i.i:                            ; preds = %safe_div.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div.i.i25.i.i)
  %cmp2.i.i.i = icmp ult i32 %div.i.i25.i.i, 32
  %div820.i.i = zext i1 %cmp2.i.i.i to i32
  br label %update_promote_levels.exit.i

update_promote_levels.exit.i:                     ; preds = %stats_assess.exit.i.i, %safe_div.exit.i.i.i.update_promote_levels.exit.i_crit_edge, %cond.end.thread.i.i.update_promote_levels.exit.i_crit_edge
  %div820.sink.i.i = phi i32 [ %div820.i.i, %stats_assess.exit.i.i ], [ 2, %safe_div.exit.i.i.i.update_promote_levels.exit.i_crit_edge ], [ 2, %cond.end.thread.i.i.update_promote_levels.exit.i_crit_edge ]
  %spec.select28.i.i = lshr i32 %61, %div820.sink.i.i
  %sub.i.i = sub i32 64, %spec.select28.i.i
  %read_promote_level.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 28
  %66 = ptrtoint ptr %read_promote_level.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub.i.i, ptr %read_promote_level.i.i, align 4
  %write_promote_level.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 27
  %67 = ptrtoint ptr %write_promote_level.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub.i.i, ptr %write_promote_level.i.i, align 8
  %next_hotspot_period.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 29
  %68 = ptrtoint ptr %next_hotspot_period.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %next_hotspot_period.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %sub.i13 = sub i32 %69, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i13)
  %cmp.i14 = icmp slt i32 %sub.i13, 0
  br i1 %cmp.i14, label %if.then.i15, label %update_promote_levels.exit.i.end_hotspot_period.exit_crit_edge

update_promote_levels.exit.i.end_hotspot_period.exit_crit_edge: ; preds = %update_promote_levels.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_hotspot_period.exit

if.then.i15:                                      ; preds = %update_promote_levels.exit.i
  br i1 %tobool.not.i.i23.i.i, label %if.then.i15.sw.bb.i.i_crit_edge, label %safe_div.exit.i.i16.i

if.then.i15.sw.bb.i.i_crit_edge:                  ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

safe_div.exit.i.i16.i:                            ; preds = %if.then.i15
  %shl.i.i13.i = shl i32 %63, 8
  %div.i.i.i14.i = udiv i32 %shl.i.i13.i, %add.i22.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div.i.i.i14.i)
  %cmp.i.i15.i = icmp ult i32 %div.i.i.i14.i, 16
  br i1 %cmp.i.i15.i, label %safe_div.exit.i.i16.i.sw.bb.i.i_crit_edge, label %stats_assess.exit.i18.i

safe_div.exit.i.i16.i.sw.bb.i.i_crit_edge:        ; preds = %safe_div.exit.i.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

stats_assess.exit.i18.i:                          ; preds = %safe_div.exit.i.i16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div.i.i.i14.i)
  %cmp2.i.i17.i = icmp ult i32 %div.i.i.i14.i, 32
  %hotspot_level_jump2.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 7
  br i1 %cmp2.i.i17.i, label %sw.bb1.i.i, label %sw.bb3.i.i

sw.bb.i.i:                                        ; preds = %safe_div.exit.i.i16.i.sw.bb.i.i_crit_edge, %if.then.i15.sw.bb.i.i_crit_edge
  %hotspot_level_jump.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 7
  %71 = ptrtoint ptr %hotspot_level_jump.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4, ptr %hotspot_level_jump.i.i, align 8
  br label %update_level_jump.exit.i

sw.bb1.i.i:                                       ; preds = %stats_assess.exit.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %hotspot_level_jump2.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %hotspot_level_jump2.i.i, align 8
  br label %update_level_jump.exit.i

sw.bb3.i.i:                                       ; preds = %stats_assess.exit.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %hotspot_level_jump2.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %hotspot_level_jump2.i.i, align 8
  br label %update_level_jump.exit.i

update_level_jump.exit.i:                         ; preds = %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %hotspot.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 15
  tail call fastcc void @q_redistribute(ptr noundef %hotspot.i) #10
  %74 = ptrtoint ptr %misses.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %misses.i.i.i, align 4
  %75 = ptrtoint ptr %hits.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %hits.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %add.i16 = add i32 %76, 100
  %77 = ptrtoint ptr %next_hotspot_period.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add.i16, ptr %next_hotspot_period.i, align 8
  br label %end_hotspot_period.exit

end_hotspot_period.exit:                          ; preds = %update_level_jump.exit.i, %update_promote_levels.exit.i.end_hotspot_period.exit_crit_edge
  %next_cache_period.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 30
  %78 = ptrtoint ptr %next_cache_period.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %next_cache_period.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %sub.i18 = sub i32 %79, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i18)
  %cmp.i19 = icmp slt i32 %sub.i18, 0
  br i1 %cmp.i19, label %if.then.i23, label %end_hotspot_period.exit.end_cache_period.exit_crit_edge

end_hotspot_period.exit.end_cache_period.exit_crit_edge: ; preds = %end_hotspot_period.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_cache_period.exit

if.then.i23:                                      ; preds = %end_hotspot_period.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cache_hit_bits.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 14
  %81 = ptrtoint ptr %cache_hit_bits.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cache_hit_bits.i, align 8
  %cache_size.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 2
  %83 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cache_size.i, align 4
  %sub.i.i.i20 = add i32 %84, 31
  %85 = lshr i32 %sub.i.i.i20, 3
  %mul.i.i.i21 = and i32 %85, 536870908
  %86 = call ptr @memset(ptr %82, i32 0, i32 %mul.i.i.i21)
  %dirty.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 17
  tail call fastcc void @q_redistribute(ptr noundef %dirty.i) #10
  %clean.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 16
  tail call fastcc void @q_redistribute(ptr noundef %clean.i) #10
  %misses.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 19, i32 2
  %87 = ptrtoint ptr %misses.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %misses.i.i, align 4
  %hits.i.i = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 19, i32 1
  %88 = ptrtoint ptr %hits.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %hits.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %add.i22 = add i32 %89, 6000
  %90 = ptrtoint ptr %next_cache_period.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add.i22, ptr %next_cache_period.i, align 4
  br label %end_cache_period.exit

end_cache_period.exit:                            ; preds = %if.then.i23, %end_hotspot_period.exit.end_cache_period.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @smq_allow_migrations(ptr nocapture noundef writeonly %p, i1 noundef zeroext %allow) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %allow to i8
  %migrations_allowed = getelementptr inbounds %struct.smq_policy, ptr %p, i32 0, i32 32
  %0 = ptrtoint ptr %migrations_allowed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %migrations_allowed, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mq_set_config_value(ptr nocapture noundef readnone %p, ptr noundef %key, ptr noundef %value) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !97
  %call.i = call i32 @_kstrtoul(ptr noundef %value, i32 noundef 10, ptr noundef nonnull %tmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @strcasecmp(ptr noundef %key, ptr noundef nonnull @.str.10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call i32 @strcasecmp(ptr noundef %key, ptr noundef nonnull @.str.11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false5

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @strcasecmp(ptr noundef %key, ptr noundef nonnull @.str.12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false5.do.end_crit_edge, label %lor.lhs.false8

lor.lhs.false5.do.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = call i32 @strcasecmp(ptr noundef %key, ptr noundef nonnull @.str.13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false8.do.end_crit_edge, label %lor.lhs.false11

lor.lhs.false8.do.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = call i32 @strcasecmp(ptr noundef %key, ptr noundef nonnull @.str.14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %lor.lhs.false11.do.end_crit_edge, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false11.do.end_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false11.do.end_crit_edge, %lor.lhs.false8.do.end_crit_edge, %lor.lhs.false5.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %key) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mq_emit_config_values(ptr nocapture noundef readnone %p, ptr noundef %result, i32 noundef %maxlen, ptr nocapture noundef %sz_ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sz_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sz_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %maxlen)
  %cmp.not = icmp ult i32 %1, %maxlen
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %result, i32 %1
  %sub = sub i32 %maxlen, %1
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.17) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %add = add i32 %cond, %1
  %2 = ptrtoint ptr %sz_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %sz_ptr, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btracker_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__lookup(ptr noundef %mq, i64 noundef %oblock, ptr nocapture noundef writeonly %cblock, i32 noundef %data_dir, i1 noundef zeroext %fast_copy, ptr noundef %work, ptr nocapture noundef writeonly %background_work) unnamed_addr #2 align 64 {
entry:
  %work.i.i = alloca %struct.policy_work, align 8
  %work.i = alloca %struct.policy_work, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %background_work to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %background_work, align 1
  %table = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 21
  %call = tail call fastcc ptr @h_lookup(ptr noundef %table, i64 noundef %oblock)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cache_stats = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 19
  %level = getelementptr inbounds %struct.entry, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %level, align 4
  %bf.lshr = lshr i16 %bf.load, 10
  %bf.cast = zext i16 %bf.lshr to i32
  %2 = ptrtoint ptr %cache_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bf.cast)
  %cmp.not.i = icmp ugt i32 %3, %bf.cast
  %misses.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 19, i32 2
  %hits.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 19, i32 1
  %misses.sink4.i = select i1 %cmp.not.i, ptr %misses.i, ptr %hits.i
  %4 = ptrtoint ptr %misses.sink4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %misses.sink4.i, align 4
  %inc1.i = add i32 %5, 1
  store i32 %inc1.i, ptr %misses.sink4.i, align 4
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %level, align 4
  %7 = and i16 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %bf.cast.not.i = icmp eq i16 %7, 0
  br i1 %bf.cast.not.i, label %if.end.i, label %if.then.requeue.exit_crit_edge

if.then.requeue.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %requeue.exit

if.end.i:                                         ; preds = %if.then
  %cache_alloc.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12
  %8 = ptrtoint ptr %cache_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache_alloc.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp.i.i.i.i = icmp ugt ptr %11, %call
  br i1 %cmp.i.i.i.i, label %if.end.i.do.body3.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i, !prof !93

if.end.i.do.body3.i.i.i.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %if.end.i
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp1.not.i.i.i.i = icmp ugt ptr %13, %call
  br i1 %cmp1.not.i.i.i.i, label %infer_cblock.exit.i, label %lor.rhs.i.i.i.i.do.body3.i.i.i.i_crit_edge, !prof !89

lor.rhs.i.i.i.i.do.body3.i.i.i.i_crit_edge:       ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i

do.body3.i.i.i.i:                                 ; preds = %lor.rhs.i.i.i.i.do.body3.i.i.i.i_crit_edge, %if.end.i.do.body3.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

infer_cblock.exit.i:                              ; preds = %lor.rhs.i.i.i.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 24
  %begin.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %begin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %begin.i.i.i, align 4
  %sub.i.i.i = sub i32 %sub.ptr.div.i.i.i.i, %15
  %cache_hit_bits.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 14
  %16 = ptrtoint ptr %cache_hit_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cache_hit_bits.i, align 8
  %call2.i = tail call i32 @_test_and_set_bit(i32 noundef %sub.i.i.i, ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %infer_cblock.exit.i.requeue.exit_crit_edge

infer_cblock.exit.i.requeue.exit_crit_edge:       ; preds = %infer_cblock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %requeue.exit

if.then3.i:                                       ; preds = %infer_cblock.exit.i
  %18 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load4.i = load i16, ptr %level, align 4
  %19 = and i16 %bf.load4.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %bf.cast7.not.i = icmp eq i16 %19, 0
  br i1 %bf.cast7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %clean.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 16
  tail call fastcc void @q_requeue(ptr noundef %clean.i, ptr noundef nonnull %call, i32 noundef 1, ptr noundef null, ptr noundef null) #10
  br label %requeue.exit

if.end9.i:                                        ; preds = %if.then3.i
  %dirty10.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 17
  %writeback_sentinel_alloc.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 9
  %bf.lshr12.i = lshr i16 %bf.load4.i, 10
  %bf.cast13.i = zext i16 %bf.lshr12.i to i32
  %current_writeback_sentinels.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 23
  %20 = ptrtoint ptr %current_writeback_sentinels.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %current_writeback_sentinels.i, align 8, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not.i = icmp eq i8 %21, 0
  %add.i.i = or i32 %bf.cast13.i, 64
  %cond.i.i = select i1 %tobool14.not.i, i32 %bf.cast13.i, i32 %add.i.i
  %22 = ptrtoint ptr %writeback_sentinel_alloc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %writeback_sentinel_alloc.i, align 4
  %begin.i.i38.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %begin.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %begin.i.i38.i, align 4
  %add.i.i.i = add i32 %25, %cond.i.i
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %27, i32 %add.i.i.i
  %end.i.i.i39.i = getelementptr inbounds %struct.entry_space, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %end.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i.i39.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %29
  br i1 %cmp.not.i.i.i.i, label %get_sentinel.exit.i, label %do.body2.i.i.i.i, !prof !89

do.body2.i.i.i.i:                                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

get_sentinel.exit.i:                              ; preds = %if.end9.i
  %cond.i41.i = select i1 %tobool14.not.i, i32 %add.i.i, i32 %bf.cast13.i
  %add.i.i43.i = add i32 %25, %cond.i41.i
  %add.ptr.i.i.i44.i = getelementptr %struct.entry, ptr %27, i32 %add.i.i43.i
  %cmp.not.i.i.i46.i = icmp ult ptr %add.ptr.i.i.i44.i, %29
  br i1 %cmp.not.i.i.i46.i, label %get_sentinel.exit48.i, label %do.body2.i.i.i47.i, !prof !89

do.body2.i.i.i47.i:                               ; preds = %get_sentinel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

get_sentinel.exit48.i:                            ; preds = %get_sentinel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @q_requeue(ptr noundef %dirty10.i, ptr noundef nonnull %call, i32 noundef 1, ptr noundef %add.ptr.i.i.i.i, ptr noundef %add.ptr.i.i.i44.i) #10
  br label %requeue.exit

requeue.exit:                                     ; preds = %get_sentinel.exit48.i, %if.then8.i, %infer_cblock.exit.i.requeue.exit_crit_edge, %if.then.requeue.exit_crit_edge
  %cache_alloc.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12
  %30 = ptrtoint ptr %cache_alloc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cache_alloc.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %cmp.i.i.i = icmp ugt ptr %33, %call
  br i1 %cmp.i.i.i, label %requeue.exit.do.body3.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !93

requeue.exit.do.body3.i.i.i_crit_edge:            ; preds = %requeue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i

lor.rhs.i.i.i:                                    ; preds = %requeue.exit
  %end.i.i.i = getelementptr inbounds %struct.entry_space, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i.i, align 4
  %cmp1.not.i.i.i = icmp ugt ptr %35, %call
  br i1 %cmp1.not.i.i.i, label %infer_cblock.exit, label %lor.rhs.i.i.i.do.body3.i.i.i_crit_edge, !prof !89

lor.rhs.i.i.i.do.body3.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i

do.body3.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body3.i.i.i_crit_edge, %requeue.exit.do.body3.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

infer_cblock.exit:                                ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 24
  %begin.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12, i32 1
  %36 = ptrtoint ptr %begin.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %begin.i.i, align 4
  %sub.i.i = sub i32 %sub.ptr.div.i.i.i, %37
  %38 = ptrtoint ptr %cblock to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.i.i, ptr %cblock, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %misses.i22 = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 19, i32 2
  %39 = ptrtoint ptr %misses.i22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %misses.i22, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %misses.i22, align 4
  %cache_blocks_per_hotspot_block.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 6
  %41 = ptrtoint ptr %cache_blocks_per_hotspot_block.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cache_blocks_per_hotspot_block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %oblock)
  %cmp165.i.i = icmp ult i64 %oblock, 4294967296
  br i1 %cmp165.i.i, label %if.then169.i.i, label %if.else175.i.i, !prof !89

if.then169.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv170.i.i = trunc i64 %oblock to i32
  %div173.i.i = udiv i32 %conv170.i.i, %42
  %conv174.i.i = zext i32 %div173.i.i to i64
  br label %to_hblock.exit.i

if.else175.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %42, i64 %oblock) #16, !srcloc !98
  %asmresult1.i.i.i = extractvalue { i64, i64 } %43, 1
  br label %to_hblock.exit.i

to_hblock.exit.i:                                 ; preds = %if.else175.i.i, %if.then169.i.i
  %r.0.i.i = phi i64 [ %conv174.i.i, %if.then169.i.i ], [ %asmresult1.i.i.i, %if.else175.i.i ]
  %hotspot_table.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 22
  %call1.i = tail call fastcc ptr @h_lookup(ptr noundef %hotspot_table.i, i64 noundef %r.0.i.i) #10
  %tobool.not.i24 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i24, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %to_hblock.exit.i
  %hotspot_stats.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 18
  %level.i = getelementptr inbounds %struct.entry, ptr %call1.i, i32 0, i32 3
  %44 = ptrtoint ptr %level.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i25 = load i16, ptr %level.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i25, 10
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %45 = ptrtoint ptr %hotspot_stats.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hotspot_stats.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %bf.cast.i)
  %cmp.not.i.i = icmp ugt i32 %46, %bf.cast.i
  %misses.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 18, i32 2
  %hits.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 18, i32 1
  %misses.sink4.i.i = select i1 %cmp.not.i.i, ptr %misses.i.i, ptr %hits.i.i
  %47 = ptrtoint ptr %misses.sink4.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %misses.sink4.i.i, align 4
  %inc1.i.i = add i32 %48, 1
  store i32 %inc1.i.i, ptr %misses.sink4.i.i, align 4
  %hotspot_alloc.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 11
  %49 = ptrtoint ptr %hotspot_alloc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hotspot_alloc.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %cmp.i.i.i26 = icmp ugt ptr %52, %call1.i
  br i1 %cmp.i.i.i26, label %if.then.i.do.body3.i.i.i30_crit_edge, label %lor.rhs.i.i.i29, !prof !93

if.then.i.do.body3.i.i.i30_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i30

lor.rhs.i.i.i29:                                  ; preds = %if.then.i
  %end.i.i.i27 = getelementptr inbounds %struct.entry_space, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %end.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i.i.i27, align 4
  %cmp1.not.i.i.i28 = icmp ugt ptr %54, %call1.i
  br i1 %cmp1.not.i.i.i28, label %get_index.exit.i, label %lor.rhs.i.i.i29.do.body3.i.i.i30_crit_edge, !prof !89

lor.rhs.i.i.i29.do.body3.i.i.i30_crit_edge:       ; preds = %lor.rhs.i.i.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i30

do.body3.i.i.i30:                                 ; preds = %lor.rhs.i.i.i29.do.body3.i.i.i30_crit_edge, %if.then.i.do.body3.i.i.i30_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

get_index.exit.i:                                 ; preds = %lor.rhs.i.i.i29
  %sub.ptr.lhs.cast.i.i.i31 = ptrtoint ptr %call1.i to i32
  %sub.ptr.rhs.cast.i.i.i32 = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.i.i33 = sub i32 %sub.ptr.lhs.cast.i.i.i31, %sub.ptr.rhs.cast.i.i.i32
  %sub.ptr.div.i.i.i34 = sdiv exact i32 %sub.ptr.sub.i.i.i33, 24
  %begin.i.i35 = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 11, i32 1
  %55 = ptrtoint ptr %begin.i.i35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %begin.i.i35, align 4
  %sub.i.i36 = sub i32 %sub.ptr.div.i.i.i34, %56
  %hotspot.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 15
  %hotspot_hit_bits.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 13
  %57 = ptrtoint ptr %hotspot_hit_bits.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hotspot_hit_bits.i, align 4
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef %sub.i.i36, ptr noundef %58) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %cond.false.i, label %get_index.exit.i.cond.end.i_crit_edge

get_index.exit.i.cond.end.i_crit_edge:            ; preds = %get_index.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %get_index.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %hotspot_level_jump.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 7
  %59 = ptrtoint ptr %hotspot_level_jump.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hotspot_level_jump.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %get_index.exit.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %60, %cond.false.i ], [ 0, %get_index.exit.i.cond.end.i_crit_edge ]
  tail call fastcc void @q_requeue(ptr noundef %hotspot.i, ptr noundef nonnull %call1.i, i32 noundef %cond.i, ptr noundef null, ptr noundef null) #10
  br label %update_hotspot_queue.exit

if.else.i:                                        ; preds = %to_hblock.exit.i
  %misses.i53.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 18, i32 2
  %61 = ptrtoint ptr %misses.i53.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %misses.i53.i, align 4
  %inc.i.i = add i32 %62, 1
  store i32 %inc.i.i, ptr %misses.i53.i, align 4
  %hotspot_alloc6.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 11
  %call7.i = tail call fastcc ptr @alloc_entry(ptr noundef %hotspot_alloc6.i) #10
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else.i.if.then20.i_crit_edge

if.else.i.if.then20.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.then9.i:                                       ; preds = %if.else.i
  %hotspot10.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 15
  %nr_levels.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 15, i32 2
  %63 = ptrtoint ptr %nr_levels.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_levels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp134.not.i.i.i = icmp eq i32 %64, 0
  br i1 %cmp134.not.i.i.i, label %if.then9.i.update_hotspot_queue.exit_crit_edge, label %for.body.lr.ph.i.i.i

if.then9.i.update_hotspot_queue.exit_crit_edge:   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_hotspot_queue.exit

for.body.lr.ph.i.i.i:                             ; preds = %if.then9.i
  %65 = ptrtoint ptr %hotspot10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hotspot10.i, align 4
  %qs.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 15, i32 3
  %end.i.i.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %66, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc8.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %level.035.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc8.i.i.i.for.body.i.i.i_crit_edge ]
  %head.i.i.i.i = getelementptr %struct.ilist, ptr %qs.i.i.i, i32 %level.035.i.i.i, i32 1
  %67 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %head.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %68)
  %cmp.i.i.i.i.i = icmp eq i32 %68, 268435455
  br i1 %cmp.i.i.i.i.i, label %for.body.i.i.i.for.inc8.i.i.i_crit_edge, label %if.end.i.i.i.i.i

for.body.i.i.i.for.inc8.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr %struct.entry, ptr %70, i32 %68
  %71 = ptrtoint ptr %end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i.i, %72
  br i1 %cmp.not.i.i.i.i.i.i, label %l_head.exit.i.i.i, label %do.body2.i.i.i.i.i.i, !prof !89

do.body2.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_head.exit.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  %tobool.not32.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i.i, null
  br i1 %tobool.not32.i.i.i, label %l_head.exit.i.i.i.for.inc8.i.i.i_crit_edge, label %l_head.exit.i.i.i.for.body3.i.i.i_crit_edge

l_head.exit.i.i.i.for.body3.i.i.i_crit_edge:      ; preds = %l_head.exit.i.i.i
  br label %for.body3.i.i.i

l_head.exit.i.i.i.for.inc8.i.i.i_crit_edge:       ; preds = %l_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i.i.i

for.body3.i.i.i:                                  ; preds = %l_next.exit.i.i.i.for.body3.i.i.i_crit_edge, %l_head.exit.i.i.i.for.body3.i.i.i_crit_edge
  %e.033.i.i.i = phi ptr [ %add.ptr.i.i.i23.i.i.i, %l_next.exit.i.i.i.for.body3.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i.i, %l_head.exit.i.i.i.for.body3.i.i.i_crit_edge ]
  %sentinel.i.i.i = getelementptr inbounds %struct.entry, ptr %e.033.i.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %sentinel.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load.i.i.i = load i16, ptr %sentinel.i.i.i, align 4
  %74 = and i16 %bf.load.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %bf.cast.not.i.i.i = icmp eq i16 %74, 0
  br i1 %bf.cast.not.i.i.i, label %if.then13.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body3.i.i.i
  %next.i.i.i.i = getelementptr inbounds %struct.entry, ptr %e.033.i.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load.i.i.i.i = load i32, ptr %next.i.i.i.i, align 8
  %bf.lshr.i.i.i.i = lshr i32 %bf.load.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i.i.i)
  %cmp.i.i22.i.i.i = icmp eq i32 %bf.lshr.i.i.i.i, 268435455
  br i1 %cmp.i.i22.i.i.i, label %if.then.i.i.i.for.inc8.i.i.i_crit_edge, label %if.end.i.i26.i.i.i

if.then.i.i.i.for.inc8.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i.i.i

if.end.i.i26.i.i.i:                               ; preds = %if.then.i.i.i
  %add.ptr.i.i.i23.i.i.i = getelementptr %struct.entry, ptr %70, i32 %bf.lshr.i.i.i.i
  %cmp.not.i.i.i25.i.i.i = icmp ult ptr %add.ptr.i.i.i23.i.i.i, %72
  br i1 %cmp.not.i.i.i25.i.i.i, label %l_next.exit.i.i.i, label %do.body2.i.i.i27.i.i.i, !prof !89

do.body2.i.i.i27.i.i.i:                           ; preds = %if.end.i.i26.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit.i.i.i:                                ; preds = %if.end.i.i26.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i23.i.i.i, null
  br i1 %tobool.not.i.i.i, label %l_next.exit.i.i.i.for.inc8.i.i.i_crit_edge, label %l_next.exit.i.i.i.for.body3.i.i.i_crit_edge

l_next.exit.i.i.i.for.body3.i.i.i_crit_edge:      ; preds = %l_next.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.i.i.i

l_next.exit.i.i.i.for.inc8.i.i.i_crit_edge:       ; preds = %l_next.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i.i.i

for.inc8.i.i.i:                                   ; preds = %l_next.exit.i.i.i.for.inc8.i.i.i_crit_edge, %if.then.i.i.i.for.inc8.i.i.i_crit_edge, %l_head.exit.i.i.i.for.inc8.i.i.i_crit_edge, %for.body.i.i.i.for.inc8.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %level.035.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %64
  br i1 %exitcond.not.i.i.i, label %for.inc8.i.i.i.update_hotspot_queue.exit_crit_edge, label %for.inc8.i.i.i.for.body.i.i.i_crit_edge

for.inc8.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.inc8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc8.i.i.i.update_hotspot_queue.exit_crit_edge: ; preds = %for.inc8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_hotspot_queue.exit

if.then13.i:                                      ; preds = %for.body3.i.i.i
  tail call fastcc void @q_del(ptr noundef %hotspot10.i, ptr noundef nonnull %e.033.i.i.i) #10
  %oblock.i.i = getelementptr inbounds %struct.entry, ptr %e.033.i.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %oblock.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %oblock.i.i, align 8
  %hash_bits.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 22, i32 1
  %78 = ptrtoint ptr %hash_bits.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %hash_bits.i.i, align 8
  %conv.i.i = trunc i64 %79 to i32
  %conv.i.i.i = trunc i64 %77 to i32
  %shr.i.i.i = lshr i64 %77, 32
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %mul.i.i.i.i = mul i32 %conv1.i.i.i, 1640531527
  %xor.i.i.i = xor i32 %mul.i.i.i.i, %conv.i.i.i
  %mul.i.i.i.i.i = mul i32 %xor.i.i.i, 1640531527
  %sub.i.i.i.i = sub i32 32, %conv.i.i
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, %sub.i.i.i.i
  %buckets.i.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 22, i32 2
  %80 = ptrtoint ptr %buckets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buckets.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr i32, ptr %81, i32 %shr.i.i.i.i
  %82 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %83)
  %cmp.i.i.i.i54.i = icmp eq i32 %83, 268435455
  br i1 %cmp.i.i.i.i54.i, label %if.then13.i.h_remove.exit.i_crit_edge, label %if.end.i.i.i.i58.i

if.then13.i.h_remove.exit.i_crit_edge:            ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit.i

if.end.i.i.i.i58.i:                               ; preds = %if.then13.i
  %84 = ptrtoint ptr %hotspot_table.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hotspot_table.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %add.ptr.i.i.i.i.i55.i = getelementptr %struct.entry, ptr %87, i32 %83
  %end.i.i.i.i.i56.i = getelementptr inbounds %struct.entry_space, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %end.i.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i.i.i.i56.i, align 4
  %cmp.not.i.i.i.i.i57.i = icmp ult ptr %add.ptr.i.i.i.i.i55.i, %89
  br i1 %cmp.not.i.i.i.i.i57.i, label %h_head.exit.i.i.i, label %do.body2.i.i.i.i.i59.i, !prof !89

do.body2.i.i.i.i.i59.i:                           ; preds = %if.end.i.i.i.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

h_head.exit.i.i.i:                                ; preds = %if.end.i.i.i.i58.i
  %tobool.not17.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i55.i, null
  br i1 %tobool.not17.i.i.i, label %h_head.exit.i.i.i.h_remove.exit.i_crit_edge, label %for.body.i.preheader.i.i

h_head.exit.i.i.i.h_remove.exit.i_crit_edge:      ; preds = %h_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit.i

for.body.i.preheader.i.i:                         ; preds = %h_head.exit.i.i.i
  %oblock1.i19.i.i = getelementptr %struct.entry, ptr %87, i32 %83, i32 4
  %90 = ptrtoint ptr %oblock1.i19.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %oblock1.i19.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %91, i64 %77)
  %cmp.i20.i.i = icmp eq i64 %91, %77
  br i1 %cmp.i20.i.i, label %if.else.i.i66.i, label %for.body.i.preheader.i.i.if.end.i.i.i_crit_edge

for.body.i.preheader.i.i.if.end.i.i.i_crit_edge:  ; preds = %for.body.i.preheader.i.i
  br label %if.end.i.i.i

for.body.i.i61.i:                                 ; preds = %h_next.exit.i.i.i
  %oblock1.i.i.i = getelementptr %struct.entry, ptr %87, i32 %bf.lshr.i.i.i63.i, i32 4
  %92 = ptrtoint ptr %oblock1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %oblock1.i.i.i, align 8
  %cmp.i.i60.i = icmp eq i64 %93, %77
  br i1 %cmp.i.i60.i, label %if.then.i.i65.i, label %for.body.i.i61.i.if.end.i.i.i_crit_edge

for.body.i.i61.i.if.end.i.i.i_crit_edge:          ; preds = %for.body.i.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i61.i.if.end.i.i.i_crit_edge, %for.body.i.preheader.i.i.if.end.i.i.i_crit_edge
  %e.018.i21.i.i = phi ptr [ %add.ptr.i.i.i10.i.i.i, %for.body.i.i61.i.if.end.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i55.i, %for.body.i.preheader.i.i.if.end.i.i.i_crit_edge ]
  %94 = ptrtoint ptr %e.018.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load.i.i.i62.i = load i32, ptr %e.018.i21.i.i, align 8
  %bf.lshr.i.i.i63.i = lshr i32 %bf.load.i.i.i62.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i.i63.i)
  %cmp.i.i9.i.i.i = icmp eq i32 %bf.lshr.i.i.i63.i, 268435455
  br i1 %cmp.i.i9.i.i.i, label %if.end.i.i.i.h_remove.exit.i_crit_edge, label %if.end.i.i13.i.i.i

if.end.i.i.i.h_remove.exit.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit.i

if.end.i.i13.i.i.i:                               ; preds = %if.end.i.i.i
  %add.ptr.i.i.i10.i.i.i = getelementptr %struct.entry, ptr %87, i32 %bf.lshr.i.i.i63.i
  %cmp.not.i.i.i12.i.i.i = icmp ult ptr %add.ptr.i.i.i10.i.i.i, %89
  br i1 %cmp.not.i.i.i12.i.i.i, label %h_next.exit.i.i.i, label %do.body2.i.i.i14.i.i.i, !prof !89

do.body2.i.i.i14.i.i.i:                           ; preds = %if.end.i.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

h_next.exit.i.i.i:                                ; preds = %if.end.i.i13.i.i.i
  %tobool.not.i.i64.i = icmp eq ptr %add.ptr.i.i.i10.i.i.i, null
  br i1 %tobool.not.i.i64.i, label %h_next.exit.i.i.i.h_remove.exit.i_crit_edge, label %for.body.i.i61.i

h_next.exit.i.i.i.h_remove.exit.i_crit_edge:      ; preds = %h_next.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %h_remove.exit.i

if.then.i.i65.i:                                  ; preds = %for.body.i.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %add.ptr.i.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %bf.load2.i.i.i = load i32, ptr %add.ptr.i.i.i10.i.i.i, align 8
  %bf.lshr.i.i.i = and i32 %bf.load2.i.i.i, -16
  %bf.clear.i.i.i = and i32 %bf.load.i.i.i62.i, 15
  %bf.set.i.i.i = or i32 %bf.lshr.i.i.i, %bf.clear.i.i.i
  %96 = ptrtoint ptr %e.018.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %bf.set.i.i.i, ptr %e.018.i21.i.i, align 8
  br label %h_remove.exit.i

if.else.i.i66.i:                                  ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %add.ptr.i.i.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %bf.load2.i29.i.i = load i32, ptr %add.ptr.i.i.i.i.i55.i, align 8
  %bf.lshr3.i.i.i = lshr i32 %bf.load2.i29.i.i, 4
  %98 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %bf.lshr3.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  br label %h_remove.exit.i

h_remove.exit.i:                                  ; preds = %if.else.i.i66.i, %if.then.i.i65.i, %h_next.exit.i.i.i.h_remove.exit.i_crit_edge, %if.end.i.i.i.h_remove.exit.i_crit_edge, %h_head.exit.i.i.i.h_remove.exit.i_crit_edge, %if.then13.i.h_remove.exit.i_crit_edge
  %99 = ptrtoint ptr %hotspot_alloc6.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hotspot_alloc6.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %cmp.i.i67.i = icmp ugt ptr %102, %e.033.i.i.i
  br i1 %cmp.i.i67.i, label %h_remove.exit.i.do.body3.i.i71.i_crit_edge, label %lor.rhs.i.i70.i, !prof !93

h_remove.exit.i.do.body3.i.i71.i_crit_edge:       ; preds = %h_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i71.i

lor.rhs.i.i70.i:                                  ; preds = %h_remove.exit.i
  %end.i.i68.i = getelementptr inbounds %struct.entry_space, ptr %100, i32 0, i32 1
  %103 = ptrtoint ptr %end.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i.i68.i, align 4
  %cmp1.not.i.i69.i = icmp ugt ptr %104, %e.033.i.i.i
  br i1 %cmp1.not.i.i69.i, label %if.end18.i, label %lor.rhs.i.i70.i.do.body3.i.i71.i_crit_edge, !prof !89

lor.rhs.i.i70.i.do.body3.i.i71.i_crit_edge:       ; preds = %lor.rhs.i.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i71.i

do.body3.i.i71.i:                                 ; preds = %lor.rhs.i.i70.i.do.body3.i.i71.i_crit_edge, %h_remove.exit.i.do.body3.i.i71.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

if.end18.i:                                       ; preds = %lor.rhs.i.i70.i
  %sub.ptr.lhs.cast.i.i72.i = ptrtoint ptr %e.033.i.i.i to i32
  %sub.ptr.rhs.cast.i.i73.i = ptrtoint ptr %102 to i32
  %sub.ptr.sub.i.i74.i = sub i32 %sub.ptr.lhs.cast.i.i72.i, %sub.ptr.rhs.cast.i.i73.i
  %sub.ptr.div.i.i75.i = sdiv exact i32 %sub.ptr.sub.i.i74.i, 24
  %begin.i76.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 11, i32 1
  %105 = ptrtoint ptr %begin.i76.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %begin.i76.i, align 4
  %sub.i77.i = sub i32 %sub.ptr.div.i.i75.i, %106
  %hotspot_hit_bits17.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 13
  %107 = ptrtoint ptr %hotspot_hit_bits17.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hotspot_hit_bits17.i, align 4
  tail call void @_clear_bit(i32 noundef %sub.i77.i, ptr noundef %108) #10
  %tobool19.not.i = icmp eq ptr %e.033.i.i.i, null
  br i1 %tobool19.not.i, label %if.end18.i.update_hotspot_queue.exit_crit_edge, label %if.end18.i.if.then20.i_crit_edge

if.end18.i.if.then20.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.end18.i.update_hotspot_queue.exit_crit_edge:   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_hotspot_queue.exit

if.then20.i:                                      ; preds = %if.end18.i.if.then20.i_crit_edge, %if.else.i.if.then20.i_crit_edge
  %e.0100.i = phi ptr [ %e.033.i.i.i, %if.end18.i.if.then20.i_crit_edge ], [ %call7.i, %if.else.i.if.then20.i_crit_edge ]
  %oblock.i = getelementptr inbounds %struct.entry, ptr %e.0100.i, i32 0, i32 4
  %109 = ptrtoint ptr %oblock.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %r.0.i.i, ptr %oblock.i, align 8
  %hotspot21.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 15
  tail call fastcc void @q_push(ptr noundef %hotspot21.i, ptr noundef nonnull %e.0100.i) #10
  %110 = ptrtoint ptr %oblock.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %oblock.i, align 8
  %hash_bits.i80.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 22, i32 1
  %112 = ptrtoint ptr %hash_bits.i80.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %hash_bits.i80.i, align 8
  %conv.i81.i = trunc i64 %113 to i32
  %conv.i.i82.i = trunc i64 %111 to i32
  %shr.i.i83.i = lshr i64 %111, 32
  %conv1.i.i84.i = trunc i64 %shr.i.i83.i to i32
  %mul.i.i.i85.i = mul i32 %conv1.i.i84.i, 1640531527
  %xor.i.i86.i = xor i32 %mul.i.i.i85.i, %conv.i.i82.i
  %mul.i.i.i.i87.i = mul i32 %xor.i.i86.i, 1640531527
  %sub.i.i.i88.i = sub i32 32, %conv.i81.i
  %shr.i.i.i89.i = lshr i32 %mul.i.i.i.i87.i, %sub.i.i.i88.i
  %buckets.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 22, i32 2
  %114 = ptrtoint ptr %buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %buckets.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i32, ptr %115, i32 %shr.i.i.i89.i
  %116 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i.i.i, align 4
  %118 = ptrtoint ptr %e.0100.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %bf.load.i.i90.i = load i32, ptr %e.0100.i, align 8
  %bf.shl.i.i.i = shl i32 %117, 4
  %bf.clear.i.i91.i = and i32 %bf.load.i.i90.i, 15
  %bf.set.i.i92.i = or i32 %bf.clear.i.i91.i, %bf.shl.i.i.i
  store i32 %bf.set.i.i92.i, ptr %e.0100.i, align 8
  %119 = ptrtoint ptr %hotspot_table.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hotspot_table.i, align 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %cmp.i.i.i.i37 = icmp ugt ptr %122, %e.0100.i
  br i1 %cmp.i.i.i.i37, label %if.then20.i.do.body3.i.i.i.i41_crit_edge, label %lor.rhs.i.i.i.i40, !prof !93

if.then20.i.do.body3.i.i.i.i41_crit_edge:         ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i41

lor.rhs.i.i.i.i40:                                ; preds = %if.then20.i
  %end.i.i.i.i38 = getelementptr inbounds %struct.entry_space, ptr %120, i32 0, i32 1
  %123 = ptrtoint ptr %end.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %end.i.i.i.i38, align 4
  %cmp1.not.i.i.i.i39 = icmp ugt ptr %124, %e.0100.i
  br i1 %cmp1.not.i.i.i.i39, label %h_insert.exit.i, label %lor.rhs.i.i.i.i40.do.body3.i.i.i.i41_crit_edge, !prof !89

lor.rhs.i.i.i.i40.do.body3.i.i.i.i41_crit_edge:   ; preds = %lor.rhs.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i41

do.body3.i.i.i.i41:                               ; preds = %lor.rhs.i.i.i.i40.do.body3.i.i.i.i41_crit_edge, %if.then20.i.do.body3.i.i.i.i41_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

h_insert.exit.i:                                  ; preds = %lor.rhs.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i.i.i.i42 = ptrtoint ptr %e.0100.i to i32
  %sub.ptr.rhs.cast.i.i.i.i43 = ptrtoint ptr %122 to i32
  %sub.ptr.sub.i.i.i.i44 = sub i32 %sub.ptr.lhs.cast.i.i.i.i42, %sub.ptr.rhs.cast.i.i.i.i43
  %sub.ptr.div.i.i.i.i45 = sdiv exact i32 %sub.ptr.sub.i.i.i.i44, 24
  %125 = ptrtoint ptr %buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %buckets.i.i.i, align 8
  %arrayidx2.i.i.i = getelementptr i32, ptr %126, i32 %shr.i.i.i89.i
  %127 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %sub.ptr.div.i.i.i.i45, ptr %arrayidx2.i.i.i, align 4
  br label %update_hotspot_queue.exit

update_hotspot_queue.exit:                        ; preds = %h_insert.exit.i, %if.end18.i.update_hotspot_queue.exit_crit_edge, %for.inc8.i.i.i.update_hotspot_queue.exit_crit_edge, %if.then9.i.update_hotspot_queue.exit_crit_edge, %cond.end.i
  %e.1.i = phi ptr [ %call1.i, %cond.end.i ], [ %e.0100.i, %h_insert.exit.i ], [ null, %if.end18.i.update_hotspot_queue.exit_crit_edge ], [ null, %if.then9.i.update_hotspot_queue.exit_crit_edge ], [ null, %for.inc8.i.i.i.update_hotspot_queue.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_dir)
  %cmp.i = icmp eq i32 %data_dir, 1
  br i1 %cmp.i, label %if.then.i47, label %if.else.i54

if.then.i47:                                      ; preds = %update_hotspot_queue.exit
  %head.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12, i32 3, i32 1
  %128 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %head.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %129)
  %cmp.i.i.i46 = icmp ne i32 %129, 268435455
  %130 = and i1 %cmp.i.i.i46, %fast_copy
  br i1 %130, label %if.then.i47.if.then6_crit_edge, label %if.end.i53

if.then.i47.if.then6_crit_edge:                   ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end.i53:                                       ; preds = %if.then.i47
  %level.i48 = getelementptr inbounds %struct.entry, ptr %e.1.i, i32 0, i32 3
  %131 = ptrtoint ptr %level.i48 to i32
  call void @__asan_load2_noabort(i32 %131)
  %bf.load.i49 = load i16, ptr %level.i48, align 4
  %bf.lshr.i50 = lshr i16 %bf.load.i49, 10
  %bf.cast.i51 = zext i16 %bf.lshr.i50 to i32
  %write_promote_level.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 27
  %132 = ptrtoint ptr %write_promote_level.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %write_promote_level.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %bf.cast.i51)
  %cmp2.not.i = icmp ugt i32 %133, %bf.cast.i51
  br i1 %cmp2.not.i, label %if.end.i53.cleanup_crit_edge, label %if.end.i53.if.then6_crit_edge

if.end.i53.if.then6_crit_edge:                    ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end.i53.cleanup_crit_edge:                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i54:                                      ; preds = %update_hotspot_queue.exit
  %level4.i = getelementptr inbounds %struct.entry, ptr %e.1.i, i32 0, i32 3
  %134 = ptrtoint ptr %level4.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %bf.load5.i = load i16, ptr %level4.i, align 4
  %bf.lshr6.i = lshr i16 %bf.load5.i, 10
  %bf.cast7.i = zext i16 %bf.lshr6.i to i32
  %read_promote_level.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 28
  %135 = ptrtoint ptr %read_promote_level.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %read_promote_level.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %bf.cast7.i)
  %cmp8.not.i = icmp ugt i32 %136, %bf.cast7.i
  br i1 %cmp8.not.i, label %if.else.i54.cleanup_crit_edge, label %if.else.i54.if.then6_crit_edge

if.else.i54.if.then6_crit_edge:                   ; preds = %if.else.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.else.i54.cleanup_crit_edge:                    ; preds = %if.else.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.else.i54.if.then6_crit_edge, %if.end.i53.if.then6_crit_edge, %if.then.i47.if.then6_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %work.i) #10
  %137 = call ptr @memset(ptr %work.i, i32 255, i32 24)
  %migrations_allowed.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 32
  %138 = ptrtoint ptr %migrations_allowed.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %migrations_allowed.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i55 = icmp eq i8 %139, 0
  br i1 %tobool.not.i55, label %if.then6.queue_promotion.exit_crit_edge, label %if.end.i59

if.then6.queue_promotion.exit_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_promotion.exit

if.end.i59:                                       ; preds = %if.then6
  %cache_alloc.i56 = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12
  %head.i.i.i57 = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12, i32 3, i32 1
  %140 = ptrtoint ptr %head.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %head.i.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %141)
  %cmp.i.i.i58 = icmp eq i32 %141, 268435455
  br i1 %cmp.i.i.i58, label %if.then1.i, label %if.end5.i

if.then1.i:                                       ; preds = %if.end.i59
  %cache_size.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 2
  %142 = ptrtoint ptr %cache_size.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cache_size.i.i, align 4
  %nr_allocated.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12, i32 2
  %144 = ptrtoint ptr %nr_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nr_allocated.i.i, align 4
  %sub.i.i60 = sub i32 %143, %145
  %bg_work.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 31
  %146 = ptrtoint ptr %bg_work.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bg_work.i.i, align 8
  %call1.i.i = tail call i32 @btracker_nr_demotions_queued(ptr noundef %147) #10
  %add.i.i61 = add i32 %sub.i.i60, %call1.i.i
  %148 = ptrtoint ptr %cache_size.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cache_size.i.i, align 4
  %mul.i.i.i = mul i32 %149, 25
  %div.i.i.i = udiv i32 %mul.i.i.i, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i61, i32 %div.i.i.i)
  %cmp.i.not.i = icmp ult i32 %add.i.i61, %div.i.i.i
  br i1 %cmp.i.not.i, label %if.then3.i63, label %if.then1.i.queue_promotion.exit_crit_edge

if.then1.i.queue_promotion.exit_crit_edge:        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_promotion.exit

if.then3.i63:                                     ; preds = %if.then1.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %work.i.i) #10
  %150 = call ptr @memset(ptr %work.i.i, i32 255, i32 24)
  %151 = ptrtoint ptr %migrations_allowed.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %migrations_allowed.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i.i62 = icmp eq i8 %152, 0
  br i1 %tobool.not.i.i62, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then3.i63
  %.b76.i.i = load i1, ptr @queue_demotion.__already_done, align 1
  br i1 %.b76.i.i, label %land.rhs.i.i.queue_demotion.exit.i_crit_edge, label %if.then.i.i, !prof !89

land.rhs.i.i.queue_demotion.exit.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_demotion.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @queue_demotion.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1203, i32 noundef 9, ptr noundef null) #10
  br label %queue_demotion.exit.i

if.end39.i.i:                                     ; preds = %if.then3.i63
  %clean.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 16
  %nr_levels.i.i64 = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 16, i32 2
  %153 = ptrtoint ptr %nr_levels.i.i64 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nr_levels.i.i64, align 4
  %div75.i.i = lshr i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %154)
  %cmp134.not.i.i.i65 = icmp ult i32 %154, 2
  br i1 %cmp134.not.i.i.i65, label %if.end39.i.i.if.then42.i.i_crit_edge, label %for.body.lr.ph.i.i.i68

if.end39.i.i.if.then42.i.i_crit_edge:             ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i.i

for.body.lr.ph.i.i.i68:                           ; preds = %if.end39.i.i
  %155 = ptrtoint ptr %clean.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %clean.i.i, align 4
  %qs.i.i.i66 = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 16, i32 3
  %end.i.i.i.i.i.i67 = getelementptr inbounds %struct.entry_space, ptr %156, i32 0, i32 1
  br label %for.body.i.i.i72

for.body.i.i.i72:                                 ; preds = %for.inc8.i.i.i97.for.body.i.i.i72_crit_edge, %for.body.lr.ph.i.i.i68
  %level.035.i.i.i69 = phi i32 [ 0, %for.body.lr.ph.i.i.i68 ], [ %inc.i.i.i95, %for.inc8.i.i.i97.for.body.i.i.i72_crit_edge ]
  %head.i.i.i.i70 = getelementptr %struct.ilist, ptr %qs.i.i.i66, i32 %level.035.i.i.i69, i32 1
  %157 = ptrtoint ptr %head.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %head.i.i.i.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %158)
  %cmp.i.i.i.i.i71 = icmp eq i32 %158, 268435455
  br i1 %cmp.i.i.i.i.i71, label %for.body.i.i.i72.for.inc8.i.i.i97_crit_edge, label %if.end.i.i.i.i.i75

for.body.i.i.i72.for.inc8.i.i.i97_crit_edge:      ; preds = %for.body.i.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i.i.i97

if.end.i.i.i.i.i75:                               ; preds = %for.body.i.i.i72
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %156, align 4
  %add.ptr.i.i.i.i.i.i73 = getelementptr %struct.entry, ptr %160, i32 %158
  %161 = ptrtoint ptr %end.i.i.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end.i.i.i.i.i.i67, align 4
  %cmp.not.i.i.i.i.i.i74 = icmp ult ptr %add.ptr.i.i.i.i.i.i73, %162
  br i1 %cmp.not.i.i.i.i.i.i74, label %l_head.exit.i.i.i78, label %do.body2.i.i.i.i.i.i76, !prof !89

do.body2.i.i.i.i.i.i76:                           ; preds = %if.end.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_head.exit.i.i.i78:                              ; preds = %if.end.i.i.i.i.i75
  %tobool.not32.i.i.i77 = icmp eq ptr %add.ptr.i.i.i.i.i.i73, null
  br i1 %tobool.not32.i.i.i77, label %l_head.exit.i.i.i78.for.inc8.i.i.i97_crit_edge, label %l_head.exit.i.i.i78.for.body3.i.i.i83_crit_edge

l_head.exit.i.i.i78.for.body3.i.i.i83_crit_edge:  ; preds = %l_head.exit.i.i.i78
  br label %for.body3.i.i.i83

l_head.exit.i.i.i78.for.inc8.i.i.i97_crit_edge:   ; preds = %l_head.exit.i.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i.i.i97

for.body3.i.i.i83:                                ; preds = %l_next.exit.i.i.i94.for.body3.i.i.i83_crit_edge, %l_head.exit.i.i.i78.for.body3.i.i.i83_crit_edge
  %e.033.i.i.i79 = phi ptr [ %add.ptr.i.i.i23.i.i.i89, %l_next.exit.i.i.i94.for.body3.i.i.i83_crit_edge ], [ %add.ptr.i.i.i.i.i.i73, %l_head.exit.i.i.i78.for.body3.i.i.i83_crit_edge ]
  %sentinel.i.i.i80 = getelementptr inbounds %struct.entry, ptr %e.033.i.i.i79, i32 0, i32 3
  %163 = ptrtoint ptr %sentinel.i.i.i80 to i32
  call void @__asan_load2_noabort(i32 %163)
  %bf.load.i.i.i81 = load i16, ptr %sentinel.i.i.i80, align 4
  %164 = and i16 %bf.load.i.i.i81, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %bf.cast.not.i.i.i82 = icmp eq i16 %164, 0
  br i1 %bf.cast.not.i.i.i82, label %do.body6.i.i.i, label %if.then.i.i.i88

if.then.i.i.i88:                                  ; preds = %for.body3.i.i.i83
  %next.i.i.i.i84 = getelementptr inbounds %struct.entry, ptr %e.033.i.i.i79, i32 0, i32 2
  %165 = ptrtoint ptr %next.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %165)
  %bf.load.i.i.i.i85 = load i32, ptr %next.i.i.i.i84, align 8
  %bf.lshr.i.i.i.i86 = lshr i32 %bf.load.i.i.i.i85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i.i.i86)
  %cmp.i.i22.i.i.i87 = icmp eq i32 %bf.lshr.i.i.i.i86, 268435455
  br i1 %cmp.i.i22.i.i.i87, label %if.then.i.i.i88.for.inc8.i.i.i97_crit_edge, label %if.end.i.i26.i.i.i91

if.then.i.i.i88.for.inc8.i.i.i97_crit_edge:       ; preds = %if.then.i.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i.i.i97

if.end.i.i26.i.i.i91:                             ; preds = %if.then.i.i.i88
  %add.ptr.i.i.i23.i.i.i89 = getelementptr %struct.entry, ptr %160, i32 %bf.lshr.i.i.i.i86
  %cmp.not.i.i.i25.i.i.i90 = icmp ult ptr %add.ptr.i.i.i23.i.i.i89, %162
  br i1 %cmp.not.i.i.i25.i.i.i90, label %l_next.exit.i.i.i94, label %do.body2.i.i.i27.i.i.i92, !prof !89

do.body2.i.i.i27.i.i.i92:                         ; preds = %if.end.i.i26.i.i.i91
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit.i.i.i94:                              ; preds = %if.end.i.i26.i.i.i91
  %tobool.not.i.i.i93 = icmp eq ptr %add.ptr.i.i.i23.i.i.i89, null
  br i1 %tobool.not.i.i.i93, label %l_next.exit.i.i.i94.for.inc8.i.i.i97_crit_edge, label %l_next.exit.i.i.i94.for.body3.i.i.i83_crit_edge

l_next.exit.i.i.i94.for.body3.i.i.i83_crit_edge:  ; preds = %l_next.exit.i.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.i.i.i83

l_next.exit.i.i.i94.for.inc8.i.i.i97_crit_edge:   ; preds = %l_next.exit.i.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i.i.i97

for.inc8.i.i.i97:                                 ; preds = %l_next.exit.i.i.i94.for.inc8.i.i.i97_crit_edge, %if.then.i.i.i88.for.inc8.i.i.i97_crit_edge, %l_head.exit.i.i.i78.for.inc8.i.i.i97_crit_edge, %for.body.i.i.i72.for.inc8.i.i.i97_crit_edge
  %inc.i.i.i95 = add nuw nsw i32 %level.035.i.i.i69, 1
  %exitcond.not.i.i.i96 = icmp eq i32 %inc.i.i.i95, %div75.i.i
  br i1 %exitcond.not.i.i.i96, label %for.inc8.i.i.i97.if.then42.i.i_crit_edge, label %for.inc8.i.i.i97.for.body.i.i.i72_crit_edge

for.inc8.i.i.i97.for.body.i.i.i72_crit_edge:      ; preds = %for.inc8.i.i.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i72

for.inc8.i.i.i97.if.then42.i.i_crit_edge:         ; preds = %for.inc8.i.i.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i.i

if.then42.i.i:                                    ; preds = %for.inc8.i.i.i97.if.then42.i.i_crit_edge, %if.end39.i.i.if.then42.i.i_crit_edge
  %nr_elts.i.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 17, i32 1
  %166 = ptrtoint ptr %nr_elts.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %nr_elts.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp.i.i45.i = icmp eq i32 %167, 0
  br i1 %cmp.i.i45.i, label %if.then42.i.i.queue_demotion.exit.i_crit_edge, label %if.then44.i.i

if.then42.i.i.queue_demotion.exit.i_crit_edge:    ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_demotion.exit.i

if.then44.i.i:                                    ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @queue_writeback(ptr noundef %mq, i1 noundef zeroext false) #10
  br label %queue_demotion.exit.i

do.body6.i.i.i:                                   ; preds = %for.body3.i.i.i83
  %sentinel.i.i.i80.le = getelementptr inbounds %struct.entry, ptr %e.033.i.i.i79, i32 0, i32 3
  %168 = and i16 %bf.load.i.i.i81, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %bf.cast10.not.i.i.i = icmp eq i16 %168, 0
  br i1 %bf.cast10.not.i.i.i, label %do.body20.i.i.i, label %do.body26.i.i.i, !prof !93

do.body20.i.i.i:                                  ; preds = %do.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1163, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.body26.i.i.i:                                  ; preds = %do.body6.i.i.i
  %169 = and i16 %bf.load.i.i.i81, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %bf.cast30.not.i.i.i = icmp eq i16 %169, 0
  br i1 %bf.cast30.not.i.i.i, label %mark_pending.exit.i.i, label %do.body38.i.i.i, !prof !89

do.body38.i.i.i:                                  ; preds = %do.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1164, 0\0A.popsection", ""() #10, !srcloc !100
  unreachable

mark_pending.exit.i.i:                            ; preds = %do.body26.i.i.i
  %bf.set.i.i.i98 = or i16 %bf.load.i.i.i81, 64
  %170 = ptrtoint ptr %sentinel.i.i.i80.le to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %bf.set.i.i.i98, ptr %sentinel.i.i.i80.le, align 4
  tail call fastcc void @q_del(ptr noundef %clean.i.i, ptr noundef nonnull %e.033.i.i.i79) #10
  %171 = ptrtoint ptr %work.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 1, ptr %work.i.i, align 8
  %oblock.i.i99 = getelementptr inbounds %struct.entry, ptr %e.033.i.i.i79, i32 0, i32 4
  %172 = ptrtoint ptr %oblock.i.i99 to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %oblock.i.i99, align 8
  %oblock48.i.i = getelementptr inbounds %struct.policy_work, ptr %work.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %oblock48.i.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %173, ptr %oblock48.i.i, align 8
  %175 = ptrtoint ptr %cache_alloc.i56 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cache_alloc.i56, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %cmp.i.i.i83.i.i = icmp ugt ptr %178, %e.033.i.i.i79
  br i1 %cmp.i.i.i83.i.i, label %mark_pending.exit.i.i.do.body3.i.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i.i, !prof !93

mark_pending.exit.i.i.do.body3.i.i.i.i.i_crit_edge: ; preds = %mark_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i.i

lor.rhs.i.i.i.i.i:                                ; preds = %mark_pending.exit.i.i
  %end.i.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %176, i32 0, i32 1
  %179 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %end.i.i.i.i.i, align 4
  %cmp1.not.i.i.i.i.i = icmp ugt ptr %180, %e.033.i.i.i79
  br i1 %cmp1.not.i.i.i.i.i, label %infer_cblock.exit.i.i, label %lor.rhs.i.i.i.i.i.do.body3.i.i.i.i.i_crit_edge, !prof !89

lor.rhs.i.i.i.i.i.do.body3.i.i.i.i.i_crit_edge:   ; preds = %lor.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i.i

do.body3.i.i.i.i.i:                               ; preds = %lor.rhs.i.i.i.i.i.do.body3.i.i.i.i.i_crit_edge, %mark_pending.exit.i.i.do.body3.i.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

infer_cblock.exit.i.i:                            ; preds = %lor.rhs.i.i.i.i.i
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %e.033.i.i.i79 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %178 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %sub.ptr.div.i.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i.i, 24
  %begin.i.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12, i32 1
  %181 = ptrtoint ptr %begin.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %begin.i.i.i.i, align 4
  %sub.i.i.i.i100 = sub i32 %sub.ptr.div.i.i.i.i.i, %182
  %cblock.i.i = getelementptr inbounds %struct.policy_work, ptr %work.i.i, i32 0, i32 2
  %183 = ptrtoint ptr %cblock.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %sub.i.i.i.i100, ptr %cblock.i.i, align 8
  %184 = ptrtoint ptr %bg_work.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %bg_work.i.i, align 8
  %call50.i.i = call i32 @btracker_queue(ptr noundef %185, ptr noundef nonnull %work.i.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %infer_cblock.exit.i.i.queue_demotion.exit.i_crit_edge, label %if.then52.i.i

infer_cblock.exit.i.i.queue_demotion.exit.i_crit_edge: ; preds = %infer_cblock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_demotion.exit.i

if.then52.i.i:                                    ; preds = %infer_cblock.exit.i.i
  %186 = ptrtoint ptr %sentinel.i.i.i80.le to i32
  call void @__asan_load2_noabort(i32 %186)
  %bf.load.i84.i.i = load i16, ptr %sentinel.i.i.i80.le, align 4
  %187 = and i16 %bf.load.i84.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %187)
  %bf.cast.not.i85.i.i = icmp eq i16 %187, 0
  br i1 %bf.cast.not.i85.i.i, label %do.body3.i.i.i101, label %clear_pending.exit.i.i, !prof !93

do.body3.i.i.i101:                                ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1170, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

clear_pending.exit.i.i:                           ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear9.i.i.i = and i16 %bf.load.i84.i.i, -65
  %188 = ptrtoint ptr %sentinel.i.i.i80.le to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %bf.clear9.i.i.i, ptr %sentinel.i.i.i80.le, align 4
  call fastcc void @q_push_front(ptr noundef %clean.i.i, ptr noundef nonnull %e.033.i.i.i79) #10
  br label %queue_demotion.exit.i

queue_demotion.exit.i:                            ; preds = %clear_pending.exit.i.i, %infer_cblock.exit.i.i.queue_demotion.exit.i_crit_edge, %if.then44.i.i, %if.then42.i.i.queue_demotion.exit.i_crit_edge, %if.then.i.i, %land.rhs.i.i.queue_demotion.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %work.i.i) #10
  br label %queue_promotion.exit

if.end5.i:                                        ; preds = %if.end.i59
  %bg_work.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 31
  %189 = ptrtoint ptr %bg_work.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %bg_work.i, align 8
  %call6.i = tail call zeroext i1 @btracker_promotion_already_present(ptr noundef %190, i64 noundef %oblock) #10
  br i1 %call6.i, label %if.end5.i.queue_promotion.exit_crit_edge, label %if.end8.i

if.end5.i.queue_promotion.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_promotion.exit

if.end8.i:                                        ; preds = %if.end5.i
  %call10.i = tail call fastcc ptr @alloc_entry(ptr noundef %cache_alloc.i56) #10
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %do.body16.i, label %do.end22.i, !prof !93

do.body16.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1254, 0\0A.popsection", ""() #10, !srcloc !101
  unreachable

do.end22.i:                                       ; preds = %if.end8.i
  %pending_work.i102 = getelementptr inbounds %struct.entry, ptr %call10.i, i32 0, i32 3
  %191 = ptrtoint ptr %pending_work.i102 to i32
  call void @__asan_load2_noabort(i32 %191)
  %bf.load.i103 = load i16, ptr %pending_work.i102, align 4
  %bf.set.i = or i16 %bf.load.i103, 64
  store i16 %bf.set.i, ptr %pending_work.i102, align 4
  %192 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %work.i, align 8
  %oblock23.i = getelementptr inbounds %struct.policy_work, ptr %work.i, i32 0, i32 1
  %193 = ptrtoint ptr %oblock23.i to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %oblock, ptr %oblock23.i, align 8
  %194 = ptrtoint ptr %cache_alloc.i56 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cache_alloc.i56, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %cmp.i.i.i.i104 = icmp ugt ptr %197, %call10.i
  br i1 %cmp.i.i.i.i104, label %do.end22.i.do.body3.i.i.i.i108_crit_edge, label %lor.rhs.i.i.i.i107, !prof !93

do.end22.i.do.body3.i.i.i.i108_crit_edge:         ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i108

lor.rhs.i.i.i.i107:                               ; preds = %do.end22.i
  %end.i.i.i.i105 = getelementptr inbounds %struct.entry_space, ptr %195, i32 0, i32 1
  %198 = ptrtoint ptr %end.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %end.i.i.i.i105, align 4
  %cmp1.not.i.i.i.i106 = icmp ugt ptr %199, %call10.i
  br i1 %cmp1.not.i.i.i.i106, label %infer_cblock.exit.i115, label %lor.rhs.i.i.i.i107.do.body3.i.i.i.i108_crit_edge, !prof !89

lor.rhs.i.i.i.i107.do.body3.i.i.i.i108_crit_edge: ; preds = %lor.rhs.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i.i108

do.body3.i.i.i.i108:                              ; preds = %lor.rhs.i.i.i.i107.do.body3.i.i.i.i108_crit_edge, %do.end22.i.do.body3.i.i.i.i108_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

infer_cblock.exit.i115:                           ; preds = %lor.rhs.i.i.i.i107
  %sub.ptr.lhs.cast.i.i.i.i109 = ptrtoint ptr %call10.i to i32
  %sub.ptr.rhs.cast.i.i.i.i110 = ptrtoint ptr %197 to i32
  %sub.ptr.sub.i.i.i.i111 = sub i32 %sub.ptr.lhs.cast.i.i.i.i109, %sub.ptr.rhs.cast.i.i.i.i110
  %sub.ptr.div.i.i.i.i112 = sdiv exact i32 %sub.ptr.sub.i.i.i.i111, 24
  %begin.i.i.i113 = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12, i32 1
  %200 = ptrtoint ptr %begin.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %begin.i.i.i113, align 4
  %sub.i.i.i114 = sub i32 %sub.ptr.div.i.i.i.i112, %201
  %cblock.i = getelementptr inbounds %struct.policy_work, ptr %work.i, i32 0, i32 2
  %202 = ptrtoint ptr %cblock.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %sub.i.i.i114, ptr %cblock.i, align 8
  %203 = ptrtoint ptr %bg_work.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bg_work.i, align 8
  %call26.i = call i32 @btracker_queue(ptr noundef %204, ptr noundef nonnull %work.i, ptr noundef %work) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %infer_cblock.exit.i115.queue_promotion.exit_crit_edge, label %if.then28.i

infer_cblock.exit.i115.queue_promotion.exit_crit_edge: ; preds = %infer_cblock.exit.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_promotion.exit

if.then28.i:                                      ; preds = %infer_cblock.exit.i115
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @free_entry(ptr noundef %cache_alloc.i56, ptr noundef nonnull %call10.i) #10
  br label %queue_promotion.exit

queue_promotion.exit:                             ; preds = %if.then28.i, %infer_cblock.exit.i115.queue_promotion.exit_crit_edge, %if.end5.i.queue_promotion.exit_crit_edge, %queue_demotion.exit.i, %if.then1.i.queue_promotion.exit_crit_edge, %if.then6.queue_promotion.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %work.i) #10
  %205 = ptrtoint ptr %background_work to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %background_work, align 1
  br label %cleanup

cleanup:                                          ; preds = %queue_promotion.exit, %if.else.i54.cleanup_crit_edge, %if.end.i53.cleanup_crit_edge, %infer_cblock.exit
  %retval.0 = phi i32 [ 0, %infer_cblock.exit ], [ -2, %queue_promotion.exit ], [ -2, %if.end.i53.cleanup_crit_edge ], [ -2, %if.else.i54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @h_lookup(ptr nocapture noundef readonly %ht, i64 noundef %oblock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_bits = getelementptr inbounds %struct.smq_hash_table, ptr %ht, i32 0, i32 1
  %0 = ptrtoint ptr %hash_bits to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hash_bits, align 8
  %conv = trunc i64 %1 to i32
  %conv.i = trunc i64 %oblock to i32
  %shr.i = lshr i64 %oblock, 32
  %conv1.i = trunc i64 %shr.i to i32
  %mul.i.i = mul i32 %conv1.i, 1640531527
  %xor.i = xor i32 %mul.i.i, %conv.i
  %mul.i.i.i = mul i32 %xor.i, 1640531527
  %sub.i.i = sub i32 32, %conv
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %buckets.i.i = getelementptr inbounds %struct.smq_hash_table, ptr %ht, i32 0, i32 2
  %2 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buckets.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 %shr.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %5)
  %cmp.i.i.i = icmp eq i32 %5, 268435455
  br i1 %cmp.i.i.i, label %entry.if.end_crit_edge, label %if.end.i.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  %6 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ht, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %9, i32 %5
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i, label %h_head.exit.i, label %do.body2.i.i.i.i, !prof !89

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

h_head.exit.i:                                    ; preds = %if.end.i.i.i
  %tobool.not17.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not17.i, label %h_head.exit.i.if.end_crit_edge, label %for.body.i.preheader

h_head.exit.i.if.end_crit_edge:                   ; preds = %h_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i.preheader:                             ; preds = %h_head.exit.i
  %oblock1.i27 = getelementptr %struct.entry, ptr %9, i32 %5, i32 4
  %12 = ptrtoint ptr %oblock1.i27 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %oblock1.i27, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %oblock)
  %cmp.i28 = icmp eq i64 %13, %oblock
  br i1 %cmp.i28, label %for.body.i.preheader.if.end_crit_edge, label %for.body.i.preheader.if.end.i_crit_edge

for.body.i.preheader.if.end.i_crit_edge:          ; preds = %for.body.i.preheader
  br label %if.end.i

for.body.i.preheader.if.end_crit_edge:            ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %h_next.exit.i
  %oblock1.i = getelementptr %struct.entry, ptr %9, i32 %bf.lshr.i.i, i32 4
  %14 = ptrtoint ptr %oblock1.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %oblock1.i, align 8
  %cmp.i = icmp eq i64 %15, %oblock
  br i1 %cmp.i, label %__h_unlink.exit, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.i.preheader.if.end.i_crit_edge
  %e.018.i29 = phi ptr [ %add.ptr.i.i.i10.i, %for.body.i.if.end.i_crit_edge ], [ %add.ptr.i.i.i.i, %for.body.i.preheader.if.end.i_crit_edge ]
  %16 = ptrtoint ptr %e.018.i29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i.i = load i32, ptr %e.018.i29, align 8
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i)
  %cmp.i.i9.i = icmp eq i32 %bf.lshr.i.i, 268435455
  br i1 %cmp.i.i9.i, label %if.end.i.if.end_crit_edge, label %if.end.i.i13.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i13.i:                                   ; preds = %if.end.i
  %add.ptr.i.i.i10.i = getelementptr %struct.entry, ptr %9, i32 %bf.lshr.i.i
  %cmp.not.i.i.i12.i = icmp ult ptr %add.ptr.i.i.i10.i, %11
  br i1 %cmp.not.i.i.i12.i, label %h_next.exit.i, label %do.body2.i.i.i14.i, !prof !89

do.body2.i.i.i14.i:                               ; preds = %if.end.i.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

h_next.exit.i:                                    ; preds = %if.end.i.i13.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i10.i, null
  br i1 %tobool.not.i, label %h_next.exit.i.if.end_crit_edge, label %for.body.i

h_next.exit.i.if.end_crit_edge:                   ; preds = %h_next.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

__h_unlink.exit:                                  ; preds = %for.body.i
  %17 = ptrtoint ptr %add.ptr.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load2.i = load i32, ptr %add.ptr.i.i.i10.i, align 8
  %bf.lshr.i = and i32 %bf.load2.i, -16
  %18 = ptrtoint ptr %e.018.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load1.i = load i32, ptr %e.018.i29, align 8
  %bf.clear.i = and i32 %bf.load1.i, 15
  %bf.set.i = or i32 %bf.clear.i, %bf.lshr.i
  store i32 %bf.set.i, ptr %e.018.i29, align 8
  %19 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buckets.i.i, align 8
  %arrayidx.i16 = getelementptr i32, ptr %20, i32 %shr.i.i
  %21 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i16, align 4
  %bf.load.i = load i32, ptr %add.ptr.i.i.i10.i, align 8
  %bf.shl.i = shl i32 %22, 4
  %bf.clear.i17 = and i32 %bf.load.i, 15
  %bf.set.i18 = or i32 %bf.clear.i17, %bf.shl.i
  store i32 %bf.set.i18, ptr %add.ptr.i.i.i10.i, align 8
  %23 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ht, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %cmp.i.i = icmp ugt ptr %26, %add.ptr.i.i.i10.i
  br i1 %cmp.i.i, label %__h_unlink.exit.do.body3.i.i_crit_edge, label %lor.rhs.i.i, !prof !93

__h_unlink.exit.do.body3.i.i_crit_edge:           ; preds = %__h_unlink.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

lor.rhs.i.i:                                      ; preds = %__h_unlink.exit
  %end.i.i = getelementptr inbounds %struct.entry_space, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i.i, align 4
  %cmp1.not.i.i = icmp ugt ptr %28, %add.ptr.i.i.i10.i
  br i1 %cmp1.not.i.i, label %__h_insert.exit, label %lor.rhs.i.i.do.body3.i.i_crit_edge, !prof !89

lor.rhs.i.i.do.body3.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %lor.rhs.i.i.do.body3.i.i_crit_edge, %__h_unlink.exit.do.body3.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

__h_insert.exit:                                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i10.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 24
  %29 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buckets.i.i, align 8
  %arrayidx2.i = getelementptr i32, ptr %30, i32 %shr.i.i
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.ptr.div.i.i, ptr %arrayidx2.i, align 4
  br label %if.end

if.end:                                           ; preds = %__h_insert.exit, %h_next.exit.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %for.body.i.preheader.if.end_crit_edge, %h_head.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %e.0.lcssa.i22 = phi ptr [ %add.ptr.i.i.i10.i, %__h_insert.exit ], [ null, %h_head.exit.i.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ], [ %add.ptr.i.i.i.i, %for.body.i.preheader.if.end_crit_edge ], [ null, %if.end.i.if.end_crit_edge ], [ null, %h_next.exit.i.if.end_crit_edge ]
  ret ptr %e.0.lcssa.i22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q_requeue(ptr nocapture noundef %q, ptr noundef %e, i32 noundef %extra_levels, ptr noundef %s1, ptr noundef %s2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_levels = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %nr_levels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_levels, align 4
  %sub = add i32 %1, -1
  %level = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 3
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %level, align 4
  %bf.lshr = lshr i16 %bf.load, 10
  %bf.cast = zext i16 %bf.lshr to i32
  %add = add i32 %bf.cast, %extra_levels
  %3 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_levels)
  %tobool.not = icmp ne i32 %extra_levels, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bf.cast)
  %cmp7 = icmp ugt i32 %sub, %bf.cast
  %or.cond = select i1 %tobool.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 4
  %qs = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 3
  %head.i = getelementptr %struct.ilist, ptr %qs, i32 %3, i32 1
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 268435455
  br i1 %cmp.i.i, label %if.then.if.end27_crit_edge, label %if.end.i.i

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end.i.i:                                       ; preds = %if.then
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %add.ptr.i.i.i = getelementptr %struct.entry, ptr %9, i32 %7
  %end.i.i.i = getelementptr inbounds %struct.entry_space, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i, align 4
  %cmp.not.i.i.i = icmp ult ptr %add.ptr.i.i.i, %11
  br i1 %cmp.not.i.i.i, label %l_head.exit, label %do.body2.i.i.i, !prof !89

do.body2.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_head.exit:                                      ; preds = %if.end.i.i
  %tobool8.not78 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool8.not78, label %l_head.exit.if.end27_crit_edge, label %land.rhs.lr.ph

l_head.exit.if.end27_crit_edge:                   ; preds = %l_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.rhs.lr.ph:                                   ; preds = %l_head.exit
  %end.i.i.i68 = getelementptr inbounds %struct.entry_space, ptr %5, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %l_next.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %de.080 = phi ptr [ %add.ptr.i.i.i, %land.rhs.lr.ph ], [ %add.ptr.i.i.i67, %l_next.exit.land.rhs_crit_edge ]
  %sentinels_passed.079 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %l_next.exit.land.rhs_crit_edge ]
  %sentinel = getelementptr inbounds %struct.entry, ptr %de.080, i32 0, i32 3
  %12 = ptrtoint ptr %sentinel to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load9 = load i16, ptr %sentinel, align 4
  %13 = and i16 %bf.load9, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %bf.cast11.not = icmp eq i16 %13, 0
  br i1 %bf.cast11.not, label %if.then15.critedge, label %for.body

for.body:                                         ; preds = %land.rhs
  %inc = add i32 %sentinels_passed.079, 1
  %next.i = getelementptr inbounds %struct.entry, ptr %de.080, i32 0, i32 2
  %14 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %next.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i)
  %cmp.i.i66 = icmp eq i32 %bf.lshr.i, 268435455
  br i1 %cmp.i.i66, label %for.body.if.end27_crit_edge, label %if.end.i.i70

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end.i.i70:                                     ; preds = %for.body
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %add.ptr.i.i.i67 = getelementptr %struct.entry, ptr %16, i32 %bf.lshr.i
  %17 = ptrtoint ptr %end.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i.i68, align 4
  %cmp.not.i.i.i69 = icmp ult ptr %add.ptr.i.i.i67, %18
  br i1 %cmp.not.i.i.i69, label %l_next.exit, label %do.body2.i.i.i71, !prof !89

do.body2.i.i.i71:                                 ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit:                                      ; preds = %if.end.i.i70
  %tobool8.not = icmp eq ptr %add.ptr.i.i.i67, null
  br i1 %tobool8.not, label %l_next.exit.if.end27_crit_edge, label %l_next.exit.land.rhs_crit_edge

l_next.exit.land.rhs_crit_edge:                   ; preds = %l_next.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

l_next.exit.if.end27_crit_edge:                   ; preds = %l_next.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then15.critedge:                               ; preds = %land.rhs
  %sentinel.le = getelementptr inbounds %struct.entry, ptr %de.080, i32 0, i32 3
  tail call fastcc void @q_del(ptr noundef %q, ptr noundef nonnull %de.080)
  %19 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load17 = load i16, ptr %level, align 4
  %bf.lshr18 = and i16 %bf.load17, -1024
  %20 = ptrtoint ptr %sentinel.le to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load21 = load i16, ptr %sentinel.le, align 4
  %bf.clear22 = and i16 %bf.load21, 1023
  %bf.set = or i16 %bf.clear22, %bf.lshr18
  store i16 %bf.set, ptr %sentinel.le, align 4
  %tobool23.not = icmp eq ptr %s1, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then15.critedge
  %21 = zext i32 %sentinels_passed.079 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %sentinels_passed.079, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @q_push_before(ptr noundef %q, ptr noundef nonnull %s1, ptr noundef nonnull %de.080)
  br label %if.end27

sw.bb25:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @q_push_before(ptr noundef %q, ptr noundef %s2, ptr noundef nonnull %de.080)
  br label %if.end27

sw.default:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @q_push(ptr noundef %q, ptr noundef nonnull %de.080)
  br label %if.end27

if.else:                                          ; preds = %if.then15.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @q_push(ptr noundef %q, ptr noundef nonnull %de.080)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %sw.default, %sw.bb25, %sw.bb, %l_next.exit.if.end27_crit_edge, %for.body.if.end27_crit_edge, %l_head.exit.if.end27_crit_edge, %if.then.if.end27_crit_edge, %entry.if.end27_crit_edge
  tail call fastcc void @q_del(ptr noundef %q, ptr noundef %e)
  %22 = trunc i32 %3 to i16
  %23 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load29 = load i16, ptr %level, align 4
  %bf.shl31 = shl i16 %22, 10
  %bf.clear32 = and i16 %bf.load29, 1023
  %bf.set33 = or i16 %bf.clear32, %bf.shl31
  store i16 %bf.set33, ptr %level, align 4
  tail call fastcc void @q_push(ptr noundef %q, ptr noundef %e)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q_del(ptr nocapture noundef %q, ptr nocapture noundef readonly %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %qs = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 3
  %level = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 3
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %level, align 4
  %bf.lshr = lshr i16 %bf.load, 10
  %bf.cast = zext i16 %bf.lshr to i32
  %add.ptr = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast
  %prev.i.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i.i = load i32, ptr %prev.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i)
  %cmp.i.i.i = icmp eq i32 %bf.lshr.i.i, 268435455
  br i1 %cmp.i.i.i, label %entry.l_prev.exit.i_crit_edge, label %if.end.i.i.i

entry.l_prev.exit.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_prev.exit.i

if.end.i.i.i:                                     ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %5, i32 %bf.lshr.i.i
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.l_prev.exit.i_crit_edge, label %do.body2.i.i.i.i, !prof !89

if.end.i.i.i.l_prev.exit.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_prev.exit.i

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_prev.exit.i:                                    ; preds = %if.end.i.i.i.l_prev.exit.i_crit_edge, %entry.l_prev.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %entry.l_prev.exit.i_crit_edge ], [ %add.ptr.i.i.i.i, %if.end.i.i.i.l_prev.exit.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 2
  %8 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i40.i = load i32, ptr %next.i.i, align 8
  %bf.lshr.i41.i = lshr i32 %bf.load.i40.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i41.i)
  %cmp.i.i42.i = icmp eq i32 %bf.lshr.i41.i, 268435455
  br i1 %cmp.i.i42.i, label %l_prev.exit.i.l_next.exit.i_crit_edge, label %if.end.i.i46.i

l_prev.exit.i.l_next.exit.i_crit_edge:            ; preds = %l_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_next.exit.i

if.end.i.i46.i:                                   ; preds = %l_prev.exit.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i43.i = getelementptr %struct.entry, ptr %10, i32 %bf.lshr.i41.i
  %end.i.i.i44.i = getelementptr inbounds %struct.entry_space, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %end.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i.i44.i, align 4
  %cmp.not.i.i.i45.i = icmp ult ptr %add.ptr.i.i.i43.i, %12
  br i1 %cmp.not.i.i.i45.i, label %if.end.i.i46.i.l_next.exit.i_crit_edge, label %do.body2.i.i.i47.i, !prof !89

if.end.i.i46.i.l_next.exit.i_crit_edge:           ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_next.exit.i

do.body2.i.i.i47.i:                               ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit.i:                                    ; preds = %if.end.i.i46.i.l_next.exit.i_crit_edge, %l_prev.exit.i.l_next.exit.i_crit_edge
  %retval.0.i.i48.i = phi ptr [ null, %l_prev.exit.i.l_next.exit.i_crit_edge ], [ %add.ptr.i.i.i43.i, %if.end.i.i46.i.l_next.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %l_next.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr.i = and i32 %bf.load.i40.i, -16
  %next3.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %next3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load4.i = load i32, ptr %next3.i, align 8
  %bf.clear.i = and i32 %bf.load4.i, 15
  %bf.set.i = or i32 %bf.clear.i, %bf.lshr.i
  store i32 %bf.set.i, ptr %next3.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %l_next.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %head.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast, i32 1
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.lshr.i41.i, ptr %head.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %tobool8.not.i = icmp eq ptr %retval.0.i.i48.i, null
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load21.i = load i32, ptr %prev.i.i, align 4
  br i1 %tobool8.not.i, label %if.else19.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr12.i = and i32 %bf.load21.i, -16
  %prev13.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i48.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load14.i = load i32, ptr %prev13.i, align 4
  %bf.clear17.i = and i32 %bf.load14.i, 15
  %bf.set18.i = or i32 %bf.clear17.i, %bf.lshr12.i
  store i32 %bf.set18.i, ptr %prev13.i, align 4
  br label %if.end23.i

if.else19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr22.i = lshr i32 %bf.load21.i, 4
  %tail.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast, i32 2
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bf.lshr22.i, ptr %tail.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else19.i, %if.then9.i
  %18 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load24.i = load i16, ptr %level, align 4
  %19 = and i16 %bf.load24.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %bf.cast.not.i = icmp eq i16 %19, 0
  br i1 %bf.cast.not.i, label %if.then27.i, label %if.end23.i.l_del.exit_crit_edge

if.end23.i.l_del.exit_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_del.exit

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %add.ptr, align 4
  br label %l_del.exit

l_del.exit:                                       ; preds = %if.then27.i, %if.end23.i.l_del.exit_crit_edge
  %22 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load1 = load i16, ptr %level, align 4
  %23 = and i16 %bf.load1, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %bf.cast3.not = icmp eq i16 %23, 0
  br i1 %bf.cast3.not, label %if.then, label %l_del.exit.if.end_crit_edge

l_del.exit.if.end_crit_edge:                      ; preds = %l_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %l_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %nr_elts = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 1
  %24 = ptrtoint ptr %nr_elts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_elts, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %nr_elts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %l_del.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q_push_before(ptr nocapture noundef %q, ptr noundef %old, ptr noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_work = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 3
  %0 = ptrtoint ptr %pending_work to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pending_work, align 4
  %1 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.not = icmp eq i16 %1, 0
  br i1 %bf.cast.not, label %do.end5, label %do.body2, !prof !89

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 317, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end5:                                          ; preds = %entry
  %2 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %bf.cast9.not = icmp eq i16 %2, 0
  br i1 %bf.cast9.not, label %if.then10, label %do.end5.if.end11_crit_edge

do.end5.if.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %nr_elts = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 1
  %3 = ptrtoint ptr %nr_elts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_elts, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %nr_elts, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end5.if.end11_crit_edge
  %5 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q, align 4
  %qs = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 3
  %7 = ptrtoint ptr %pending_work to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load12 = load i16, ptr %pending_work, align 4
  %bf.lshr13 = lshr i16 %bf.load12, 10
  %bf.cast14 = zext i16 %bf.lshr13 to i32
  %add.ptr = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast14
  %prev.i.i = getelementptr inbounds %struct.entry, ptr %old, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i.i = load i32, ptr %prev.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i)
  %cmp.i.i.i = icmp eq i32 %bf.lshr.i.i, 268435455
  br i1 %cmp.i.i.i, label %if.end11.if.then.i_crit_edge, label %if.end.i.i.i

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end.i.i.i:                                     ; preds = %if.end11
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %10, i32 %bf.lshr.i.i
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %12
  br i1 %cmp.not.i.i.i.i, label %l_prev.exit.i, label %do.body2.i.i.i.i, !prof !89

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_prev.exit.i:                                    ; preds = %if.end.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i, label %l_prev.exit.i.if.then.i_crit_edge, label %if.else.i

l_prev.exit.i.if.then.i_crit_edge:                ; preds = %l_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %l_prev.exit.i.if.then.i_crit_edge, %if.end11.if.then.i_crit_edge
  %head.i.i.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast14, i32 1
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %14)
  %cmp.i.i.i.i = icmp eq i32 %14, 268435455
  br i1 %cmp.i.i.i.i, label %if.then.i.l_head.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.l_head.exit.i.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_head.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i.i.i = getelementptr %struct.entry, ptr %16, i32 %14
  %end.i.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.l_head.exit.i.i_crit_edge, label %do.body2.i.i.i.i.i, !prof !89

if.end.i.i.i.i.l_head.exit.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_head.exit.i.i

do.body2.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_head.exit.i.i:                                  ; preds = %if.end.i.i.i.i.l_head.exit.i.i_crit_edge, %if.then.i.l_head.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ null, %if.then.i.l_head.exit.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i, %if.end.i.i.i.i.l_head.exit.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 2
  %19 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i40.i = load i32, ptr %next.i.i, align 8
  %bf.shl.i.i = shl i32 %14, 4
  %bf.clear.i.i = and i32 %bf.load.i40.i, 15
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %next.i.i, align 8
  %prev.i41.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i41.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load2.i.i = load i32, ptr %prev.i41.i, align 4
  %bf.set4.i.i = or i32 %bf.load2.i.i, -16
  store i32 %bf.set4.i.i, ptr %prev.i41.i, align 4
  %tobool.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %6, align 4
  %cmp.i31.i.i = icmp ugt ptr %22, %e
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %l_head.exit.i.i
  br i1 %cmp.i31.i.i, label %if.then.i.i.do.body3.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !93

if.then.i.i.do.body3.i.i.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i

lor.rhs.i.i.i:                                    ; preds = %if.then.i.i
  %end.i.i.i = getelementptr inbounds %struct.entry_space, ptr %6, i32 0, i32 1
  %23 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i.i, align 4
  %cmp1.not.i.i.i = icmp ugt ptr %24, %e
  br i1 %cmp1.not.i.i.i, label %to_index.exit.i.i, label %lor.rhs.i.i.i.do.body3.i.i.i_crit_edge, !prof !89

lor.rhs.i.i.i.do.body3.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i

do.body3.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body3.i.i.i_crit_edge, %if.then.i.i.do.body3.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit.i.i:                                ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %e to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 24
  %25 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.ptr.div.i.i.i, ptr %head.i.i.i, align 4
  %prev7.i.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load8.i.i = load i32, ptr %prev7.i.i, align 4
  %bf.shl10.i.i = shl nsw i32 %sub.ptr.div.i.i.i, 4
  %bf.clear11.i.i = and i32 %bf.load8.i.i, 15
  %bf.set12.i.i = or i32 %bf.clear11.i.i, %bf.shl10.i.i
  store i32 %bf.set12.i.i, ptr %prev7.i.i, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %l_head.exit.i.i
  br i1 %cmp.i31.i.i, label %if.else.i.i.do.body3.i35.i.i_crit_edge, label %lor.rhs.i34.i.i, !prof !93

if.else.i.i.do.body3.i35.i.i_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i.i

lor.rhs.i34.i.i:                                  ; preds = %if.else.i.i
  %end.i32.i.i = getelementptr inbounds %struct.entry_space, ptr %6, i32 0, i32 1
  %27 = ptrtoint ptr %end.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i32.i.i, align 4
  %cmp1.not.i33.i.i = icmp ugt ptr %28, %e
  br i1 %cmp1.not.i33.i.i, label %to_index.exit40.i.i, label %lor.rhs.i34.i.i.do.body3.i35.i.i_crit_edge, !prof !89

lor.rhs.i34.i.i.do.body3.i35.i.i_crit_edge:       ; preds = %lor.rhs.i34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i.i

do.body3.i35.i.i:                                 ; preds = %lor.rhs.i34.i.i.do.body3.i35.i.i_crit_edge, %if.else.i.i.do.body3.i35.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit40.i.i:                              ; preds = %lor.rhs.i34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i36.i.i = ptrtoint ptr %e to i32
  %sub.ptr.rhs.cast.i37.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i38.i.i = sub i32 %sub.ptr.lhs.cast.i36.i.i, %sub.ptr.rhs.cast.i37.i.i
  %sub.ptr.div.i39.i.i = sdiv exact i32 %sub.ptr.sub.i38.i.i, 24
  %tail.i.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast14, i32 2
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.ptr.div.i39.i.i, ptr %tail.i.i, align 4
  %30 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.ptr.div.i39.i.i, ptr %head.i.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %to_index.exit40.i.i, %to_index.exit.i.i
  %31 = ptrtoint ptr %pending_work to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load15.i.i = load i16, ptr %pending_work, align 4
  %32 = and i16 %bf.load15.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %bf.cast.not.i.i = icmp eq i16 %32, 0
  br i1 %bf.cast.not.i.i, label %if.end.i.i.if.end27.sink.split.i_crit_edge, label %if.end.i.i.l_add_before.exit_crit_edge

if.end.i.i.l_add_before.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_add_before.exit

if.end.i.i.if.end27.sink.split.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.sink.split.i

if.else.i:                                        ; preds = %l_prev.exit.i
  %bf.lshr.i = and i32 %bf.load.i.i, -16
  %prev2.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 1
  %33 = ptrtoint ptr %prev2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load3.i = load i32, ptr %prev2.i, align 4
  %bf.clear.i = and i32 %bf.load3.i, 15
  %bf.set.i = or i32 %bf.clear.i, %bf.lshr.i
  store i32 %bf.set.i, ptr %prev2.i, align 4
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %6, align 4
  %cmp.i.i = icmp ugt ptr %35, %old
  br i1 %cmp.i.i, label %if.else.i.do.body3.i.i_crit_edge, label %lor.rhs.i.i, !prof !93

if.else.i.do.body3.i.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

lor.rhs.i.i:                                      ; preds = %if.else.i
  %36 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp1.not.i.i = icmp ugt ptr %37, %old
  br i1 %cmp1.not.i.i, label %to_index.exit.i, label %lor.rhs.i.i.do.body3.i.i_crit_edge, !prof !89

lor.rhs.i.i.do.body3.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %lor.rhs.i.i.do.body3.i.i_crit_edge, %if.else.i.do.body3.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit.i:                                  ; preds = %lor.rhs.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %old to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 24
  %next.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 2
  %38 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load5.i = load i32, ptr %next.i, align 8
  %bf.shl7.i = shl nsw i32 %sub.ptr.div.i.i, 4
  %bf.clear8.i = and i32 %bf.load5.i, 15
  %bf.set9.i = or i32 %bf.clear8.i, %bf.shl7.i
  store i32 %bf.set9.i, ptr %next.i, align 8
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %6, align 4
  %cmp.i42.i = icmp ugt ptr %40, %e
  br i1 %cmp.i42.i, label %to_index.exit.i.do.body3.i46.i_crit_edge, label %lor.rhs.i45.i, !prof !93

to_index.exit.i.do.body3.i46.i_crit_edge:         ; preds = %to_index.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i46.i

lor.rhs.i45.i:                                    ; preds = %to_index.exit.i
  %41 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp1.not.i44.i = icmp ugt ptr %42, %e
  br i1 %cmp1.not.i44.i, label %to_index.exit51.i, label %lor.rhs.i45.i.do.body3.i46.i_crit_edge, !prof !89

lor.rhs.i45.i.do.body3.i46.i_crit_edge:           ; preds = %lor.rhs.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i46.i

do.body3.i46.i:                                   ; preds = %lor.rhs.i45.i.do.body3.i46.i_crit_edge, %to_index.exit.i.do.body3.i46.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit51.i:                                ; preds = %lor.rhs.i45.i
  %sub.ptr.lhs.cast.i47.i = ptrtoint ptr %e to i32
  %sub.ptr.rhs.cast.i48.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i49.i = sub i32 %sub.ptr.lhs.cast.i47.i, %sub.ptr.rhs.cast.i48.i
  %sub.ptr.div.i50.i = sdiv exact i32 %sub.ptr.sub.i49.i, 24
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load12.i = load i32, ptr %prev.i.i, align 4
  %bf.shl14.i = shl nsw i32 %sub.ptr.div.i50.i, 4
  %bf.clear15.i = and i32 %bf.load12.i, 15
  %bf.set16.i = or i32 %bf.clear15.i, %bf.shl14.i
  store i32 %bf.set16.i, ptr %prev.i.i, align 4
  %next17.i = getelementptr %struct.entry, ptr %10, i32 %bf.lshr.i.i, i32 2
  %44 = ptrtoint ptr %next17.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load18.i = load i32, ptr %next17.i, align 8
  %bf.clear21.i = and i32 %bf.load18.i, 15
  %bf.set22.i = or i32 %bf.clear21.i, %bf.shl14.i
  store i32 %bf.set22.i, ptr %next17.i, align 8
  %45 = ptrtoint ptr %pending_work to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load23.i = load i16, ptr %pending_work, align 4
  %46 = and i16 %bf.load23.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %bf.cast.not.i = icmp eq i16 %46, 0
  br i1 %bf.cast.not.i, label %to_index.exit51.i.if.end27.sink.split.i_crit_edge, label %to_index.exit51.i.l_add_before.exit_crit_edge

to_index.exit51.i.l_add_before.exit_crit_edge:    ; preds = %to_index.exit51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_add_before.exit

to_index.exit51.i.if.end27.sink.split.i_crit_edge: ; preds = %to_index.exit51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.sink.split.i

if.end27.sink.split.i:                            ; preds = %to_index.exit51.i.if.end27.sink.split.i_crit_edge, %if.end.i.i.if.end27.sink.split.i_crit_edge
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr, align 4
  %inc.i.i = add i32 %48, 1
  store i32 %inc.i.i, ptr %add.ptr, align 4
  br label %l_add_before.exit

l_add_before.exit:                                ; preds = %if.end27.sink.split.i, %to_index.exit51.i.l_add_before.exit_crit_edge, %if.end.i.i.l_add_before.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q_push(ptr nocapture noundef %q, ptr noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_work = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 3
  %0 = ptrtoint ptr %pending_work to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pending_work, align 4
  %1 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.not = icmp eq i16 %1, 0
  br i1 %bf.cast.not, label %do.end5, label %do.body2, !prof !89

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 297, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

do.end5:                                          ; preds = %entry
  %2 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %bf.cast9.not = icmp eq i16 %2, 0
  br i1 %bf.cast9.not, label %if.then10, label %do.end5.if.end11_crit_edge

do.end5.if.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %nr_elts = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 1
  %3 = ptrtoint ptr %nr_elts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_elts, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %nr_elts, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end5.if.end11_crit_edge
  %5 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q, align 4
  %qs = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 3
  %7 = ptrtoint ptr %pending_work to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load12 = load i16, ptr %pending_work, align 4
  %bf.lshr13 = lshr i16 %bf.load12, 10
  %bf.cast14 = zext i16 %bf.lshr13 to i32
  %add.ptr = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast14
  %tail.i.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast14, i32 2
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %9)
  %cmp.i.i.i = icmp eq i32 %9, 268435455
  br i1 %cmp.i.i.i, label %if.end11.l_tail.exit.i_crit_edge, label %if.end.i.i.i

if.end11.l_tail.exit.i_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end11
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %11, i32 %9
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.l_tail.exit.i_crit_edge, label %do.body2.i.i.i.i, !prof !89

if.end.i.i.i.l_tail.exit.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_tail.exit.i

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_tail.exit.i:                                    ; preds = %if.end.i.i.i.l_tail.exit.i_crit_edge, %if.end11.l_tail.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %if.end11.l_tail.exit.i_crit_edge ], [ %add.ptr.i.i.i.i, %if.end.i.i.i.l_tail.exit.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 2
  %14 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %next.i, align 8
  %bf.set.i = or i32 %bf.load.i, -16
  store i32 %bf.set.i, ptr %next.i, align 8
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail.i.i, align 4
  %prev.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load2.i = load i32, ptr %prev.i, align 4
  %bf.shl.i = shl i32 %16, 4
  %bf.clear3.i = and i32 %bf.load2.i, 15
  %bf.set4.i = or i32 %bf.clear3.i, %bf.shl.i
  store i32 %bf.set4.i, ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i.i.i, null
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %cmp.i31.i = icmp ugt ptr %19, %e
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %l_tail.exit.i
  br i1 %cmp.i31.i, label %if.then.i.do.body3.i.i_crit_edge, label %lor.rhs.i.i, !prof !93

if.then.i.do.body3.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

lor.rhs.i.i:                                      ; preds = %if.then.i
  %end.i.i = getelementptr inbounds %struct.entry_space, ptr %6, i32 0, i32 1
  %20 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i, align 4
  %cmp1.not.i.i = icmp ugt ptr %21, %e
  br i1 %cmp1.not.i.i, label %to_index.exit.i, label %lor.rhs.i.i.do.body3.i.i_crit_edge, !prof !89

lor.rhs.i.i.do.body3.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %lor.rhs.i.i.do.body3.i.i_crit_edge, %if.then.i.do.body3.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit.i:                                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %e to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 24
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.ptr.div.i.i, ptr %tail.i.i, align 4
  %next7.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %next7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load8.i = load i32, ptr %next7.i, align 8
  %bf.shl10.i = shl nsw i32 %sub.ptr.div.i.i, 4
  %bf.clear11.i = and i32 %bf.load8.i, 15
  %bf.set12.i = or i32 %bf.clear11.i, %bf.shl10.i
  store i32 %bf.set12.i, ptr %next7.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %l_tail.exit.i
  br i1 %cmp.i31.i, label %if.else.i.do.body3.i35.i_crit_edge, label %lor.rhs.i34.i, !prof !93

if.else.i.do.body3.i35.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i

lor.rhs.i34.i:                                    ; preds = %if.else.i
  %end.i32.i = getelementptr inbounds %struct.entry_space, ptr %6, i32 0, i32 1
  %24 = ptrtoint ptr %end.i32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i32.i, align 4
  %cmp1.not.i33.i = icmp ugt ptr %25, %e
  br i1 %cmp1.not.i33.i, label %to_index.exit40.i, label %lor.rhs.i34.i.do.body3.i35.i_crit_edge, !prof !89

lor.rhs.i34.i.do.body3.i35.i_crit_edge:           ; preds = %lor.rhs.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i

do.body3.i35.i:                                   ; preds = %lor.rhs.i34.i.do.body3.i35.i_crit_edge, %if.else.i.do.body3.i35.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit40.i:                                ; preds = %lor.rhs.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i36.i = ptrtoint ptr %e to i32
  %sub.ptr.rhs.cast.i37.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i38.i = sub i32 %sub.ptr.lhs.cast.i36.i, %sub.ptr.rhs.cast.i37.i
  %sub.ptr.div.i39.i = sdiv exact i32 %sub.ptr.sub.i38.i, 24
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.ptr.div.i39.i, ptr %tail.i.i, align 4
  %head.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast14, i32 1
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.ptr.div.i39.i, ptr %head.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %to_index.exit40.i, %to_index.exit.i
  %28 = ptrtoint ptr %pending_work to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load15.i = load i16, ptr %pending_work, align 4
  %29 = and i16 %bf.load15.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %bf.cast.not.i = icmp eq i16 %29, 0
  br i1 %bf.cast.not.i, label %if.then17.i, label %if.end.i.l_add_tail.exit_crit_edge

if.end.i.l_add_tail.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_add_tail.exit

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %add.ptr, align 4
  br label %l_add_tail.exit

l_add_tail.exit:                                  ; preds = %if.then17.i, %if.end.i.l_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_entry(ptr nocapture noundef %ea) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %free = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 3
  %head.i = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %1)
  %cmp.i = icmp eq i32 %1, 268435455
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %entry
  %2 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ea, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %5, i32 %1
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i, label %l_head.exit.i, label %do.body2.i.i.i.i, !prof !89

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_head.exit.i:                                    ; preds = %if.end.i.i.i
  %tobool.not23.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not23.i, label %l_head.exit.i.l_pop_head.exit_crit_edge, label %l_head.exit.i.for.body.i_crit_edge

l_head.exit.i.for.body.i_crit_edge:               ; preds = %l_head.exit.i
  br label %for.body.i

l_head.exit.i.l_pop_head.exit_crit_edge:          ; preds = %l_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_pop_head.exit

for.body.i:                                       ; preds = %l_next.exit.i.for.body.i_crit_edge, %l_head.exit.i.for.body.i_crit_edge
  %e.024.i = phi ptr [ %add.ptr.i.i.i12.i, %l_next.exit.i.for.body.i_crit_edge ], [ %add.ptr.i.i.i.i, %l_head.exit.i.for.body.i_crit_edge ]
  %sentinel.i = getelementptr inbounds %struct.entry, ptr %e.024.i, i32 0, i32 3
  %8 = ptrtoint ptr %sentinel.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %sentinel.i, align 4
  %9 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %bf.cast.not.i = icmp eq i16 %9, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %sentinel.i.le = getelementptr inbounds %struct.entry, ptr %e.024.i, i32 0, i32 3
  %prev.i.i.i = getelementptr inbounds %struct.entry, ptr %e.024.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i.i.i = load i32, ptr %prev.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %bf.lshr.i.i.i, 268435455
  br i1 %cmp.i.i.i.i, label %if.then.i.l_prev.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.l_prev.exit.i.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_prev.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  %add.ptr.i.i.i.i.i = getelementptr %struct.entry, ptr %5, i32 %bf.lshr.i.i.i
  %cmp.not.i.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.l_prev.exit.i.i_crit_edge, label %do.body2.i.i.i.i.i, !prof !89

if.end.i.i.i.i.l_prev.exit.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_prev.exit.i.i

do.body2.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_prev.exit.i.i:                                  ; preds = %if.end.i.i.i.i.l_prev.exit.i.i_crit_edge, %if.then.i.l_prev.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ null, %if.then.i.l_prev.exit.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i, %if.end.i.i.i.i.l_prev.exit.i.i_crit_edge ]
  %next.i.i.i = getelementptr inbounds %struct.entry, ptr %e.024.i, i32 0, i32 2
  %11 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i40.i.i = load i32, ptr %next.i.i.i, align 8
  %bf.lshr.i41.i.i = lshr i32 %bf.load.i40.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i41.i.i)
  %cmp.i.i42.i.i = icmp eq i32 %bf.lshr.i41.i.i, 268435455
  br i1 %cmp.i.i42.i.i, label %l_prev.exit.i.i.l_next.exit.i.i_crit_edge, label %if.end.i.i46.i.i

l_prev.exit.i.i.l_next.exit.i.i_crit_edge:        ; preds = %l_prev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_next.exit.i.i

if.end.i.i46.i.i:                                 ; preds = %l_prev.exit.i.i
  %add.ptr.i.i.i43.i.i = getelementptr %struct.entry, ptr %5, i32 %bf.lshr.i41.i.i
  %cmp.not.i.i.i45.i.i = icmp ult ptr %add.ptr.i.i.i43.i.i, %7
  br i1 %cmp.not.i.i.i45.i.i, label %if.end.i.i46.i.i.l_next.exit.i.i_crit_edge, label %do.body2.i.i.i47.i.i, !prof !89

if.end.i.i46.i.i.l_next.exit.i.i_crit_edge:       ; preds = %if.end.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_next.exit.i.i

do.body2.i.i.i47.i.i:                             ; preds = %if.end.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit.i.i:                                  ; preds = %if.end.i.i46.i.i.l_next.exit.i.i_crit_edge, %l_prev.exit.i.i.l_next.exit.i.i_crit_edge
  %retval.0.i.i48.i.i = phi ptr [ null, %l_prev.exit.i.i.l_next.exit.i.i_crit_edge ], [ %add.ptr.i.i.i43.i.i, %if.end.i.i46.i.i.l_next.exit.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %l_next.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr.i.i = and i32 %bf.load.i40.i.i, -16
  %next3.i.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %next3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load4.i.i = load i32, ptr %next3.i.i, align 8
  %bf.clear.i.i = and i32 %bf.load4.i.i, 15
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.lshr.i.i
  store i32 %bf.set.i.i, ptr %next3.i.i, align 8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %l_next.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.lshr.i41.i.i, ptr %head.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %tobool8.not.i.i = icmp eq ptr %retval.0.i.i48.i.i, null
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load21.i.i = load i32, ptr %prev.i.i.i, align 4
  br i1 %tobool8.not.i.i, label %if.else19.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr12.i.i = and i32 %bf.load21.i.i, -16
  %prev13.i.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i48.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev13.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load14.i.i = load i32, ptr %prev13.i.i, align 4
  %bf.clear17.i.i = and i32 %bf.load14.i.i, 15
  %bf.set18.i.i = or i32 %bf.clear17.i.i, %bf.lshr12.i.i
  store i32 %bf.set18.i.i, ptr %prev13.i.i, align 4
  br label %if.end23.i.i

if.else19.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr22.i.i = lshr i32 %bf.load21.i.i, 4
  %tail.i.i = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bf.lshr22.i.i, ptr %tail.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.else19.i.i, %if.then9.i.i
  %17 = ptrtoint ptr %sentinel.i.le to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load24.i.i = load i16, ptr %sentinel.i.le, align 4
  %18 = and i16 %bf.load24.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %bf.cast.not.i.i = icmp eq i16 %18, 0
  br i1 %bf.cast.not.i.i, label %if.then27.i.i, label %if.end23.i.i.l_pop_head.exit_crit_edge

if.end23.i.i.l_pop_head.exit_crit_edge:           ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_pop_head.exit

if.then27.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %free, align 4
  %dec.i.i = add i32 %20, -1
  store i32 %dec.i.i, ptr %free, align 4
  br label %l_pop_head.exit

for.inc.i:                                        ; preds = %for.body.i
  %next.i.i = getelementptr inbounds %struct.entry, ptr %e.024.i, i32 0, i32 2
  %21 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i.i = load i32, ptr %next.i.i, align 8
  %bf.lshr.i10.i = lshr i32 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i10.i)
  %cmp.i.i11.i = icmp eq i32 %bf.lshr.i10.i, 268435455
  br i1 %cmp.i.i11.i, label %for.inc.i.l_pop_head.exit_crit_edge, label %if.end.i.i15.i

for.inc.i.l_pop_head.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_pop_head.exit

if.end.i.i15.i:                                   ; preds = %for.inc.i
  %add.ptr.i.i.i12.i = getelementptr %struct.entry, ptr %5, i32 %bf.lshr.i10.i
  %cmp.not.i.i.i14.i = icmp ult ptr %add.ptr.i.i.i12.i, %7
  br i1 %cmp.not.i.i.i14.i, label %l_next.exit.i, label %do.body2.i.i.i16.i, !prof !89

do.body2.i.i.i16.i:                               ; preds = %if.end.i.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit.i:                                    ; preds = %if.end.i.i15.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i12.i, null
  br i1 %tobool.not.i, label %l_next.exit.i.l_pop_head.exit_crit_edge, label %l_next.exit.i.for.body.i_crit_edge

l_next.exit.i.for.body.i_crit_edge:               ; preds = %l_next.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

l_next.exit.i.l_pop_head.exit_crit_edge:          ; preds = %l_next.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_pop_head.exit

l_pop_head.exit:                                  ; preds = %l_next.exit.i.l_pop_head.exit_crit_edge, %for.inc.i.l_pop_head.exit_crit_edge, %if.then27.i.i, %if.end23.i.i.l_pop_head.exit_crit_edge, %l_head.exit.i.l_pop_head.exit_crit_edge
  %e.020.i = phi ptr [ %e.024.i, %if.then27.i.i ], [ %e.024.i, %if.end23.i.i.l_pop_head.exit_crit_edge ], [ null, %l_head.exit.i.l_pop_head.exit_crit_edge ], [ null, %l_next.exit.i.l_pop_head.exit_crit_edge ], [ null, %for.inc.i.l_pop_head.exit_crit_edge ]
  %22 = ptrtoint ptr %e.020.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i7 = load i32, ptr %e.020.i, align 8
  %bf.set.i = or i32 %bf.load.i7, -16
  store i32 %bf.set.i, ptr %e.020.i, align 8
  %next.i = getelementptr inbounds %struct.entry, ptr %e.020.i, i32 0, i32 2
  %23 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load1.i = load i32, ptr %next.i, align 8
  %bf.set3.i = or i32 %bf.load1.i, -16
  store i32 %bf.set3.i, ptr %next.i, align 8
  %prev.i = getelementptr inbounds %struct.entry, ptr %e.020.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load4.i = load i32, ptr %prev.i, align 4
  %bf.set6.i = or i32 %bf.load4.i, -16
  store i32 %bf.set6.i, ptr %prev.i, align 4
  %level.i = getelementptr inbounds %struct.entry, ptr %e.020.i, i32 0, i32 3
  %25 = ptrtoint ptr %level.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load7.i = load i16, ptr %level.i, align 4
  %bf.clear11.i = and i16 %bf.load7.i, 63
  %bf.set15.i = or i16 %bf.clear11.i, 768
  store i16 %bf.set15.i, ptr %level.i, align 4
  %nr_allocated = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 2
  %26 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_allocated, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %nr_allocated, align 4
  br label %cleanup

cleanup:                                          ; preds = %l_pop_head.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %e.020.i, %l_pop_head.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btracker_promotion_already_present(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btracker_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_entry(ptr nocapture noundef %ea, ptr noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_allocated = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 2
  %0 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.body8, !prof !93

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 760, 0\0A.popsection", ""() #10, !srcloc !104
  unreachable

do.body8:                                         ; preds = %entry
  %allocated = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 3
  %2 = ptrtoint ptr %allocated to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %allocated, align 4
  %3 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %bf.cast.not = icmp eq i16 %3, 0
  br i1 %bf.cast.not, label %do.body18, label %do.end23, !prof !93

do.body18:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 761, 0\0A.popsection", ""() #10, !srcloc !105
  unreachable

do.end23:                                         ; preds = %do.body8
  %dec = add i32 %1, -1
  %4 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %nr_allocated, align 4
  %5 = ptrtoint ptr %allocated to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load26 = load i16, ptr %allocated, align 4
  %bf.clear27 = and i16 %bf.load26, -257
  store i16 %bf.clear27, ptr %allocated, align 4
  %6 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ea, align 4
  %free = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 3
  %tail.i.i = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %9)
  %cmp.i.i.i = icmp eq i32 %9, 268435455
  br i1 %cmp.i.i.i, label %do.end23.l_tail.exit.i_crit_edge, label %if.end.i.i.i

do.end23.l_tail.exit.i_crit_edge:                 ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end23
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %11, i32 %9
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.l_tail.exit.i_crit_edge, label %do.body2.i.i.i.i, !prof !89

if.end.i.i.i.l_tail.exit.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_tail.exit.i

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_tail.exit.i:                                    ; preds = %if.end.i.i.i.l_tail.exit.i_crit_edge, %do.end23.l_tail.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %do.end23.l_tail.exit.i_crit_edge ], [ %add.ptr.i.i.i.i, %if.end.i.i.i.l_tail.exit.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 2
  %14 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %next.i, align 8
  %bf.set.i = or i32 %bf.load.i, -16
  store i32 %bf.set.i, ptr %next.i, align 8
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tail.i.i, align 4
  %prev.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load2.i = load i32, ptr %prev.i, align 4
  %bf.shl.i = shl i32 %16, 4
  %bf.clear3.i = and i32 %bf.load2.i, 15
  %bf.set4.i = or i32 %bf.clear3.i, %bf.shl.i
  store i32 %bf.set4.i, ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i.i.i, null
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %cmp.i31.i = icmp ugt ptr %19, %e
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %l_tail.exit.i
  br i1 %cmp.i31.i, label %if.then.i.do.body3.i.i_crit_edge, label %lor.rhs.i.i, !prof !93

if.then.i.do.body3.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

lor.rhs.i.i:                                      ; preds = %if.then.i
  %end.i.i = getelementptr inbounds %struct.entry_space, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i, align 4
  %cmp1.not.i.i = icmp ugt ptr %21, %e
  br i1 %cmp1.not.i.i, label %to_index.exit.i, label %lor.rhs.i.i.do.body3.i.i_crit_edge, !prof !89

lor.rhs.i.i.do.body3.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %lor.rhs.i.i.do.body3.i.i_crit_edge, %if.then.i.do.body3.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit.i:                                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %e to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 24
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.ptr.div.i.i, ptr %tail.i.i, align 4
  %next7.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %next7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load8.i = load i32, ptr %next7.i, align 8
  %bf.shl10.i = shl nsw i32 %sub.ptr.div.i.i, 4
  %bf.clear11.i = and i32 %bf.load8.i, 15
  %bf.set12.i = or i32 %bf.clear11.i, %bf.shl10.i
  store i32 %bf.set12.i, ptr %next7.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %l_tail.exit.i
  br i1 %cmp.i31.i, label %if.else.i.do.body3.i35.i_crit_edge, label %lor.rhs.i34.i, !prof !93

if.else.i.do.body3.i35.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i

lor.rhs.i34.i:                                    ; preds = %if.else.i
  %end.i32.i = getelementptr inbounds %struct.entry_space, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %end.i32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i32.i, align 4
  %cmp1.not.i33.i = icmp ugt ptr %25, %e
  br i1 %cmp1.not.i33.i, label %to_index.exit40.i, label %lor.rhs.i34.i.do.body3.i35.i_crit_edge, !prof !89

lor.rhs.i34.i.do.body3.i35.i_crit_edge:           ; preds = %lor.rhs.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i

do.body3.i35.i:                                   ; preds = %lor.rhs.i34.i.do.body3.i35.i_crit_edge, %if.else.i.do.body3.i35.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit40.i:                                ; preds = %lor.rhs.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i36.i = ptrtoint ptr %e to i32
  %sub.ptr.rhs.cast.i37.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i38.i = sub i32 %sub.ptr.lhs.cast.i36.i, %sub.ptr.rhs.cast.i37.i
  %sub.ptr.div.i39.i = sdiv exact i32 %sub.ptr.sub.i38.i, 24
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.ptr.div.i39.i, ptr %tail.i.i, align 4
  %head.i = getelementptr inbounds %struct.entry_alloc, ptr %ea, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.ptr.div.i39.i, ptr %head.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %to_index.exit40.i, %to_index.exit.i
  %28 = ptrtoint ptr %allocated to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load15.i = load i16, ptr %allocated, align 4
  %29 = and i16 %bf.load15.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %bf.cast.not.i = icmp eq i16 %29, 0
  br i1 %bf.cast.not.i, label %if.then17.i, label %if.end.i.l_add_tail.exit_crit_edge

if.end.i.l_add_tail.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_add_tail.exit

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %free, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %free, align 4
  br label %l_add_tail.exit

l_add_tail.exit:                                  ; preds = %if.then17.i, %if.end.i.l_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btracker_nr_demotions_queued(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @queue_writeback(ptr nocapture noundef %mq, i1 noundef zeroext %idle) unnamed_addr #2 align 64 {
entry:
  %work = alloca %struct.policy_work, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %work) #10
  %0 = call ptr @memset(ptr %work, i32 255, i32 24)
  %dirty = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 17
  %nr_levels = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 17, i32 2
  %1 = ptrtoint ptr %nr_levels to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp134.not.i = icmp eq i32 %2, 0
  br i1 %cmp134.not.i, label %entry.if.end10_crit_edge, label %for.body.lr.ph.i

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %entry
  %3 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dirty, align 4
  %qs.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 17, i32 3
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %4, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc8.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %level.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc8.i.for.body.i_crit_edge ]
  %head.i.i = getelementptr %struct.ilist, ptr %qs.i, i32 %level.035.i, i32 1
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 268435455
  br i1 %cmp.i.i.i, label %for.body.i.for.inc8.i_crit_edge, label %if.end.i.i.i

for.body.i.for.inc8.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i

if.end.i.i.i:                                     ; preds = %for.body.i
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %8, i32 %6
  %9 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i, label %l_head.exit.i, label %do.body2.i.i.i.i, !prof !89

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_head.exit.i:                                    ; preds = %if.end.i.i.i
  %tobool.not32.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not32.i, label %l_head.exit.i.for.inc8.i_crit_edge, label %l_head.exit.i.for.body3.i_crit_edge

l_head.exit.i.for.body3.i_crit_edge:              ; preds = %l_head.exit.i
  br label %for.body3.i

l_head.exit.i.for.inc8.i_crit_edge:               ; preds = %l_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i

for.body3.i:                                      ; preds = %l_next.exit.i.for.body3.i_crit_edge, %l_head.exit.i.for.body3.i_crit_edge
  %e.033.i = phi ptr [ %add.ptr.i.i.i23.i, %l_next.exit.i.for.body3.i_crit_edge ], [ %add.ptr.i.i.i.i, %l_head.exit.i.for.body3.i_crit_edge ]
  %sentinel.i = getelementptr inbounds %struct.entry, ptr %e.033.i, i32 0, i32 3
  %11 = ptrtoint ptr %sentinel.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %sentinel.i, align 4
  %12 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %bf.cast.not.i = icmp eq i16 %12, 0
  br i1 %bf.cast.not.i, label %if.then, label %if.then.i

if.then.i:                                        ; preds = %for.body3.i
  br i1 %idle, label %for.inc.i, label %if.then.i.for.inc8.i_crit_edge

if.then.i.for.inc8.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i

for.inc.i:                                        ; preds = %if.then.i
  %next.i.i = getelementptr inbounds %struct.entry, ptr %e.033.i, i32 0, i32 2
  %13 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i.i = load i32, ptr %next.i.i, align 8
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i)
  %cmp.i.i22.i = icmp eq i32 %bf.lshr.i.i, 268435455
  br i1 %cmp.i.i22.i, label %for.inc.i.for.inc8.i_crit_edge, label %if.end.i.i26.i

for.inc.i.for.inc8.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i

if.end.i.i26.i:                                   ; preds = %for.inc.i
  %add.ptr.i.i.i23.i = getelementptr %struct.entry, ptr %8, i32 %bf.lshr.i.i
  %cmp.not.i.i.i25.i = icmp ult ptr %add.ptr.i.i.i23.i, %10
  br i1 %cmp.not.i.i.i25.i, label %l_next.exit.i, label %do.body2.i.i.i27.i, !prof !89

do.body2.i.i.i27.i:                               ; preds = %if.end.i.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit.i:                                    ; preds = %if.end.i.i26.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i23.i, null
  br i1 %tobool.not.i, label %l_next.exit.i.for.inc8.i_crit_edge, label %l_next.exit.i.for.body3.i_crit_edge

l_next.exit.i.for.body3.i_crit_edge:              ; preds = %l_next.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.i

l_next.exit.i.for.inc8.i_crit_edge:               ; preds = %l_next.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc8.i

for.inc8.i:                                       ; preds = %l_next.exit.i.for.inc8.i_crit_edge, %for.inc.i.for.inc8.i_crit_edge, %if.then.i.for.inc8.i_crit_edge, %l_head.exit.i.for.inc8.i_crit_edge, %for.body.i.for.inc8.i_crit_edge
  %inc.i = add nuw i32 %level.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc8.i.if.end10_crit_edge, label %for.inc8.i.for.body.i_crit_edge

for.inc8.i.for.body.i_crit_edge:                  ; preds = %for.inc8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc8.i.if.end10_crit_edge:                    ; preds = %for.inc8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %for.body3.i
  %sentinel.i.le = getelementptr inbounds %struct.entry, ptr %e.033.i, i32 0, i32 3
  %14 = ptrtoint ptr %sentinel.i.le to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i25 = load i16, ptr %sentinel.i.le, align 4
  %15 = and i16 %bf.load.i25, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %bf.cast.not.i26 = icmp eq i16 %15, 0
  br i1 %bf.cast.not.i26, label %do.body6.i, label %do.body2.i, !prof !89

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1162, 0\0A.popsection", ""() #10, !srcloc !106
  unreachable

do.body6.i:                                       ; preds = %if.then
  %16 = and i16 %bf.load.i25, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %bf.cast10.not.i = icmp eq i16 %16, 0
  br i1 %bf.cast10.not.i, label %do.body20.i, label %do.body26.i, !prof !93

do.body20.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1163, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.body26.i:                                      ; preds = %do.body6.i
  %17 = and i16 %bf.load.i25, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %bf.cast30.not.i = icmp eq i16 %17, 0
  br i1 %bf.cast30.not.i, label %mark_pending.exit, label %do.body38.i, !prof !89

do.body38.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1164, 0\0A.popsection", ""() #10, !srcloc !100
  unreachable

mark_pending.exit:                                ; preds = %do.body26.i
  %bf.set.i = or i16 %bf.load.i25, 64
  %18 = ptrtoint ptr %sentinel.i.le to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %bf.set.i, ptr %sentinel.i.le, align 4
  tail call fastcc void @q_del(ptr noundef %dirty, ptr noundef nonnull %e.033.i)
  %19 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %work, align 8
  %oblock = getelementptr inbounds %struct.entry, ptr %e.033.i, i32 0, i32 4
  %20 = ptrtoint ptr %oblock to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %oblock, align 8
  %oblock4 = getelementptr inbounds %struct.policy_work, ptr %work, i32 0, i32 1
  %22 = ptrtoint ptr %oblock4 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %oblock4, align 8
  %cache_alloc.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12
  %23 = ptrtoint ptr %cache_alloc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cache_alloc.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %cmp.i.i.i27 = icmp ugt ptr %26, %e.033.i
  br i1 %cmp.i.i.i27, label %mark_pending.exit.do.body3.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !93

mark_pending.exit.do.body3.i.i.i_crit_edge:       ; preds = %mark_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i

lor.rhs.i.i.i:                                    ; preds = %mark_pending.exit
  %end.i.i.i = getelementptr inbounds %struct.entry_space, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i.i.i, align 4
  %cmp1.not.i.i.i = icmp ugt ptr %28, %e.033.i
  br i1 %cmp1.not.i.i.i, label %infer_cblock.exit, label %lor.rhs.i.i.i.do.body3.i.i.i_crit_edge, !prof !89

lor.rhs.i.i.i.do.body3.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i.i

do.body3.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body3.i.i.i_crit_edge, %mark_pending.exit.do.body3.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

infer_cblock.exit:                                ; preds = %lor.rhs.i.i.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %e.033.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 24
  %begin.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 12, i32 1
  %29 = ptrtoint ptr %begin.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %begin.i.i, align 4
  %sub.i.i = sub i32 %sub.ptr.div.i.i.i, %30
  %cblock = getelementptr inbounds %struct.policy_work, ptr %work, i32 0, i32 2
  %31 = ptrtoint ptr %cblock to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i.i, ptr %cblock, align 8
  %bg_work = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 31
  %32 = ptrtoint ptr %bg_work to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bg_work, align 8
  %call6 = call i32 @btracker_queue(ptr noundef %33, ptr noundef nonnull %work, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %infer_cblock.exit.if.end10_crit_edge, label %if.then8

infer_cblock.exit.if.end10_crit_edge:             ; preds = %infer_cblock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %infer_cblock.exit
  %34 = ptrtoint ptr %sentinel.i.le to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i28 = load i16, ptr %sentinel.i.le, align 4
  %35 = and i16 %bf.load.i28, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %bf.cast.not.i29 = icmp eq i16 %35, 0
  br i1 %bf.cast.not.i29, label %do.body3.i, label %clear_pending.exit, !prof !93

do.body3.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1170, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

clear_pending.exit:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear9.i = and i16 %bf.load.i28, -65
  %36 = ptrtoint ptr %sentinel.i.le to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %bf.clear9.i, ptr %sentinel.i.le, align 4
  call fastcc void @q_push_front(ptr noundef %dirty, ptr noundef nonnull %e.033.i)
  br label %if.end10

if.end10:                                         ; preds = %clear_pending.exit, %infer_cblock.exit.if.end10_crit_edge, %for.inc8.i.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %work) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q_push_front(ptr nocapture noundef %q, ptr noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_work = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 3
  %0 = ptrtoint ptr %pending_work to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pending_work, align 4
  %1 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.not = icmp eq i16 %1, 0
  br i1 %bf.cast.not, label %do.end5, label %do.body2, !prof !89

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.end5:                                          ; preds = %entry
  %2 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %bf.cast9.not = icmp eq i16 %2, 0
  br i1 %bf.cast9.not, label %if.then10, label %do.end5.if.end11_crit_edge

do.end5.if.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %nr_elts = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 1
  %3 = ptrtoint ptr %nr_elts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_elts, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %nr_elts, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end5.if.end11_crit_edge
  %5 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q, align 4
  %qs = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 3
  %7 = ptrtoint ptr %pending_work to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load12 = load i16, ptr %pending_work, align 4
  %bf.lshr13 = lshr i16 %bf.load12, 10
  %bf.cast14 = zext i16 %bf.lshr13 to i32
  %add.ptr = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast14
  %head.i.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast14, i32 1
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %9)
  %cmp.i.i.i = icmp eq i32 %9, 268435455
  br i1 %cmp.i.i.i, label %if.end11.l_head.exit.i_crit_edge, label %if.end.i.i.i

if.end11.l_head.exit.i_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_head.exit.i

if.end.i.i.i:                                     ; preds = %if.end11
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %11, i32 %9
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.l_head.exit.i_crit_edge, label %do.body2.i.i.i.i, !prof !89

if.end.i.i.i.l_head.exit.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_head.exit.i

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_head.exit.i:                                    ; preds = %if.end.i.i.i.l_head.exit.i_crit_edge, %if.end11.l_head.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %if.end11.l_head.exit.i_crit_edge ], [ %add.ptr.i.i.i.i, %if.end.i.i.i.l_head.exit.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 2
  %14 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %next.i, align 8
  %bf.shl.i = shl i32 %9, 4
  %bf.clear.i = and i32 %bf.load.i, 15
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %next.i, align 8
  %prev.i = getelementptr inbounds %struct.entry, ptr %e, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load2.i = load i32, ptr %prev.i, align 4
  %bf.set4.i = or i32 %bf.load2.i, -16
  store i32 %bf.set4.i, ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i.i.i, null
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %6, align 4
  %cmp.i31.i = icmp ugt ptr %17, %e
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %l_head.exit.i
  br i1 %cmp.i31.i, label %if.then.i.do.body3.i.i_crit_edge, label %lor.rhs.i.i, !prof !93

if.then.i.do.body3.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

lor.rhs.i.i:                                      ; preds = %if.then.i
  %end.i.i = getelementptr inbounds %struct.entry_space, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i, align 4
  %cmp1.not.i.i = icmp ugt ptr %19, %e
  br i1 %cmp1.not.i.i, label %to_index.exit.i, label %lor.rhs.i.i.do.body3.i.i_crit_edge, !prof !89

lor.rhs.i.i.do.body3.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %lor.rhs.i.i.do.body3.i.i_crit_edge, %if.then.i.do.body3.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit.i:                                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %e to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 24
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.ptr.div.i.i, ptr %head.i.i, align 4
  %prev7.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load8.i = load i32, ptr %prev7.i, align 4
  %bf.shl10.i = shl nsw i32 %sub.ptr.div.i.i, 4
  %bf.clear11.i = and i32 %bf.load8.i, 15
  %bf.set12.i = or i32 %bf.clear11.i, %bf.shl10.i
  store i32 %bf.set12.i, ptr %prev7.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %l_head.exit.i
  br i1 %cmp.i31.i, label %if.else.i.do.body3.i35.i_crit_edge, label %lor.rhs.i34.i, !prof !93

if.else.i.do.body3.i35.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i

lor.rhs.i34.i:                                    ; preds = %if.else.i
  %end.i32.i = getelementptr inbounds %struct.entry_space, ptr %6, i32 0, i32 1
  %22 = ptrtoint ptr %end.i32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i32.i, align 4
  %cmp1.not.i33.i = icmp ugt ptr %23, %e
  br i1 %cmp1.not.i33.i, label %to_index.exit40.i, label %lor.rhs.i34.i.do.body3.i35.i_crit_edge, !prof !89

lor.rhs.i34.i.do.body3.i35.i_crit_edge:           ; preds = %lor.rhs.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i

do.body3.i35.i:                                   ; preds = %lor.rhs.i34.i.do.body3.i35.i_crit_edge, %if.else.i.do.body3.i35.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit40.i:                                ; preds = %lor.rhs.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i36.i = ptrtoint ptr %e to i32
  %sub.ptr.rhs.cast.i37.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i38.i = sub i32 %sub.ptr.lhs.cast.i36.i, %sub.ptr.rhs.cast.i37.i
  %sub.ptr.div.i39.i = sdiv exact i32 %sub.ptr.sub.i38.i, 24
  %tail.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast14, i32 2
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.ptr.div.i39.i, ptr %tail.i, align 4
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.ptr.div.i39.i, ptr %head.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %to_index.exit40.i, %to_index.exit.i
  %26 = ptrtoint ptr %pending_work to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load15.i = load i16, ptr %pending_work, align 4
  %27 = and i16 %bf.load15.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %bf.cast.not.i = icmp eq i16 %27, 0
  br i1 %bf.cast.not.i, label %if.then17.i, label %if.end.i.l_add_head.exit_crit_edge

if.end.i.l_add_head.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_add_head.exit

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %add.ptr, align 4
  br label %l_add_head.exit

l_add_head.exit:                                  ; preds = %if.then17.i, %if.end.i.l_add_head.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btracker_issue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btracker_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @q_redistribute(ptr nocapture noundef %q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %last_target_nr_elts.i = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %last_target_nr_elts.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_target_nr_elts.i, align 4
  %nr_elts.i = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %nr_elts.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_elts.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp eq i32 %1, %3
  br i1 %cmp.i, label %entry.q_set_targets.exit_crit_edge, label %if.end.i

entry.q_set_targets.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %q_set_targets.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %last_target_nr_elts.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %last_target_nr_elts.i, align 4
  %nr_top_levels.i = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 5
  %5 = ptrtoint ptr %nr_top_levels.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_top_levels.i, align 4
  %nr_levels.i = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 2
  %7 = ptrtoint ptr %nr_levels.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_levels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp3.i = icmp ult i32 %8, %6
  br i1 %cmp3.i, label %do.end26.i.i, label %if.else.i

do.end26.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.end26.i.i.q_set_targets.exit_crit_edge, label %for.body.lr.ph.i.i

do.end26.i.i.q_set_targets.exit_crit_edge:        ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q_set_targets.exit

for.body.lr.ph.i.i:                               ; preds = %do.end26.i.i
  %.frozen = freeze i32 %3
  %.frozen287 = freeze i32 %8
  %div.i.i.i = udiv i32 %.frozen, %.frozen287
  %9 = mul i32 %div.i.i.i, %.frozen287
  %rem.i.i.i.decomposed = sub i32 %.frozen, %9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %level.050.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %level.050.i.i, i32 %rem.i.i.i.decomposed)
  %cmp29.i.i = icmp ult i32 %level.050.i.i, %rem.i.i.i.decomposed
  %add30.i.i = zext i1 %cmp29.i.i to i32
  %cond.i.i = add i32 %div.i.i.i, %add30.i.i
  %arrayidx.i.i = getelementptr %struct.queue, ptr %q, i32 0, i32 7, i32 %level.050.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %level.050.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %for.body.i.i.q_set_targets.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.q_set_targets.exit_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q_set_targets.exit

if.else.i:                                        ; preds = %if.end.i
  %nr_in_top_levels.i = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 6
  %sub.i = sub i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i56.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i56.i, label %if.else.i.safe_mod.exit.i64.i_crit_edge, label %cond.true.i45.i60.i

if.else.i.safe_mod.exit.i64.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %safe_mod.exit.i64.i

cond.true.i45.i60.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %nr_in_top_levels.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_in_top_levels.i, align 4
  %.frozen288 = freeze i32 %12
  %.frozen289 = freeze i32 %6
  %div.i.i58.i = udiv i32 %.frozen288, %.frozen289
  %13 = mul i32 %div.i.i58.i, %.frozen289
  %rem.i.i59.i.decomposed = sub i32 %.frozen288, %13
  br label %safe_mod.exit.i64.i

safe_mod.exit.i64.i:                              ; preds = %cond.true.i45.i60.i, %if.else.i.safe_mod.exit.i64.i_crit_edge
  %cond.i48.i61.i = phi i32 [ %div.i.i58.i, %cond.true.i45.i60.i ], [ 0, %if.else.i.safe_mod.exit.i64.i_crit_edge ]
  %cond.i46.i62.i = phi i32 [ %rem.i.i59.i.decomposed, %cond.true.i45.i60.i ], [ 0, %if.else.i.safe_mod.exit.i64.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub.i)
  %cmp2849.i63.i = icmp ugt i32 %8, %sub.i
  br i1 %cmp2849.i63.i, label %for.body.lr.ph.i65.i, label %safe_mod.exit.i64.i.q_set_targets_subrange_.exit74.i_crit_edge

safe_mod.exit.i64.i.q_set_targets_subrange_.exit74.i_crit_edge: ; preds = %safe_mod.exit.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q_set_targets_subrange_.exit74.i

for.body.lr.ph.i65.i:                             ; preds = %safe_mod.exit.i64.i
  %add.i.i = add i32 %cond.i46.i62.i, %sub.i
  br label %for.body.i73.i

for.body.i73.i:                                   ; preds = %for.body.i73.i.for.body.i73.i_crit_edge, %for.body.lr.ph.i65.i
  %level.050.i66.i = phi i32 [ %sub.i, %for.body.lr.ph.i65.i ], [ %inc.i71.i, %for.body.i73.i.for.body.i73.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %level.050.i66.i, i32 %add.i.i)
  %cmp29.i67.i = icmp ult i32 %level.050.i66.i, %add.i.i
  %add30.i68.i = zext i1 %cmp29.i67.i to i32
  %cond.i69.i = add i32 %cond.i48.i61.i, %add30.i68.i
  %arrayidx.i70.i = getelementptr %struct.queue, ptr %q, i32 0, i32 7, i32 %level.050.i66.i
  %14 = ptrtoint ptr %arrayidx.i70.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i69.i, ptr %arrayidx.i70.i, align 4
  %inc.i71.i = add nuw i32 %level.050.i66.i, 1
  %exitcond.not.i72.i = icmp eq i32 %inc.i71.i, %8
  br i1 %exitcond.not.i72.i, label %for.body.i73.i.q_set_targets_subrange_.exit74.i_crit_edge, label %for.body.i73.i.for.body.i73.i_crit_edge

for.body.i73.i.for.body.i73.i_crit_edge:          ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i73.i

for.body.i73.i.q_set_targets_subrange_.exit74.i_crit_edge: ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q_set_targets_subrange_.exit74.i

q_set_targets_subrange_.exit74.i:                 ; preds = %for.body.i73.i.q_set_targets_subrange_.exit74.i_crit_edge, %safe_mod.exit.i64.i.q_set_targets_subrange_.exit74.i_crit_edge
  %15 = ptrtoint ptr %nr_in_top_levels.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_in_top_levels.i, align 4
  %17 = ptrtoint ptr %nr_elts.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_elts.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp12.i = icmp ugt i32 %18, %16
  br i1 %cmp12.i, label %if.then13.i, label %if.else20.i

if.then13.i:                                      ; preds = %q_set_targets_subrange_.exit74.i
  %sub16.i = sub i32 %18, %16
  %19 = ptrtoint ptr %nr_levels.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_levels.i, align 4
  %21 = ptrtoint ptr %nr_top_levels.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_top_levels.i, align 4
  %sub19.i = sub i32 %20, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp10.i76.i = icmp ult i32 %20, %22
  br i1 %cmp10.i76.i, label %do.body18.i78.i, label %do.end26.i80.i, !prof !93

do.body18.i78.i:                                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 391, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.end26.i80.i:                                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %tobool.not.i.i79.i = icmp eq i32 %20, %22
  br i1 %tobool.not.i.i79.i, label %do.end26.i80.i.q_set_targets.exit_crit_edge, label %for.body.lr.ph.i88.i

do.end26.i80.i.q_set_targets.exit_crit_edge:      ; preds = %do.end26.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q_set_targets.exit

for.body.lr.ph.i88.i:                             ; preds = %do.end26.i80.i
  %sub16.i.frozen = freeze i32 %sub16.i
  %sub19.i.frozen = freeze i32 %sub19.i
  %div.i.i81.i = udiv i32 %sub16.i.frozen, %sub19.i.frozen
  %23 = mul i32 %div.i.i81.i, %sub19.i.frozen
  %rem.i.i82.i.decomposed = sub i32 %sub16.i.frozen, %23
  br label %for.body.i96.i

for.body.i96.i:                                   ; preds = %for.body.i96.i.for.body.i96.i_crit_edge, %for.body.lr.ph.i88.i
  %level.050.i89.i = phi i32 [ 0, %for.body.lr.ph.i88.i ], [ %inc.i94.i, %for.body.i96.i.for.body.i96.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %level.050.i89.i, i32 %rem.i.i82.i.decomposed)
  %cmp29.i90.i = icmp ult i32 %level.050.i89.i, %rem.i.i82.i.decomposed
  %add30.i91.i = zext i1 %cmp29.i90.i to i32
  %cond.i92.i = add i32 %div.i.i81.i, %add30.i91.i
  %arrayidx.i93.i = getelementptr %struct.queue, ptr %q, i32 0, i32 7, i32 %level.050.i89.i
  %24 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i92.i, ptr %arrayidx.i93.i, align 4
  %inc.i94.i = add nuw i32 %level.050.i89.i, 1
  %exitcond.not.i95.i = icmp eq i32 %inc.i94.i, %sub19.i
  br i1 %exitcond.not.i95.i, label %for.body.i96.i.q_set_targets.exit_crit_edge, label %for.body.i96.i.for.body.i96.i_crit_edge

for.body.i96.i.for.body.i96.i_crit_edge:          ; preds = %for.body.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i96.i

for.body.i96.i.q_set_targets.exit_crit_edge:      ; preds = %for.body.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q_set_targets.exit

if.else20.i:                                      ; preds = %q_set_targets_subrange_.exit74.i
  %25 = ptrtoint ptr %nr_levels.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_levels.i, align 4
  %27 = ptrtoint ptr %nr_top_levels.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_top_levels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp10.i99.i = icmp ult i32 %26, %28
  br i1 %cmp10.i99.i, label %do.body18.i101.i, label %safe_mod.exit.i108.i, !prof !93

do.body18.i101.i:                                 ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 391, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

safe_mod.exit.i108.i:                             ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp2849.i107.not.i = icmp eq i32 %26, %28
  br i1 %cmp2849.i107.not.i, label %safe_mod.exit.i108.i.q_set_targets.exit_crit_edge, label %for.body.i117.preheader.i

safe_mod.exit.i108.i.q_set_targets.exit_crit_edge: ; preds = %safe_mod.exit.i108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %q_set_targets.exit

for.body.i117.preheader.i:                        ; preds = %safe_mod.exit.i108.i
  call void @__sanitizer_cov_trace_pc() #12
  %uglygep.i = getelementptr i8, ptr %q, i32 792
  %29 = sub i32 %26, %28
  %30 = shl i32 %29, 2
  %31 = call ptr @memset(ptr %uglygep.i, i32 0, i32 %30)
  br label %q_set_targets.exit

q_set_targets.exit:                               ; preds = %for.body.i117.preheader.i, %safe_mod.exit.i108.i.q_set_targets.exit_crit_edge, %for.body.i96.i.q_set_targets.exit_crit_edge, %do.end26.i80.i.q_set_targets.exit_crit_edge, %for.body.i.i.q_set_targets.exit_crit_edge, %do.end26.i.i.q_set_targets.exit_crit_edge, %entry.q_set_targets.exit_crit_edge
  %nr_levels = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 2
  %32 = ptrtoint ptr %nr_levels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp208.not = icmp eq i32 %33, 1
  br i1 %cmp208.not, label %q_set_targets.exit.for.end_crit_edge, label %for.body.lr.ph

q_set_targets.exit.for.end_crit_edge:             ; preds = %q_set_targets.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %q_set_targets.exit
  %qs = getelementptr inbounds %struct.queue, ptr %q, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %level.0209 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.ilist, ptr %qs, i32 %level.0209
  %arrayidx = getelementptr %struct.queue, ptr %q, i32 0, i32 7, i32 %level.0209
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp1204 = icmp ult i32 %37, %35
  br i1 %cmp1204, label %while.body.lr.ph, label %for.body.while.end_crit_edge

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.body
  %add = add nuw i32 %level.0209, 1
  %38 = trunc i32 %level.0209 to i16
  %bf.shl = shl i16 %38, 10
  %tail.i.i51 = getelementptr %struct.ilist, ptr %qs, i32 %level.0209, i32 2
  %head.i = getelementptr %struct.ilist, ptr %qs, i32 %level.0209, i32 1
  br label %while.body

while.body:                                       ; preds = %l_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %39 = ptrtoint ptr %nr_levels to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_levels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add)
  %cmp47.i = icmp ugt i32 %40, %add
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

for.body.lr.ph.i:                                 ; preds = %while.body
  %41 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %q, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %42, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc13.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %level.addr.048.i = phi i32 [ %add, %for.body.lr.ph.i ], [ %inc.i, %for.inc13.i.for.body.i_crit_edge ]
  %head.i.i = getelementptr %struct.ilist, ptr %qs, i32 %level.addr.048.i, i32 1
  %43 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %44)
  %cmp.i.i.i = icmp eq i32 %44, 268435455
  br i1 %cmp.i.i.i, label %for.body.i.for.inc13.i_crit_edge, label %if.end.i.i.i

for.body.i.for.inc13.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i

if.end.i.i.i:                                     ; preds = %for.body.i
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %46, i32 %44
  %47 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %48
  br i1 %cmp.not.i.i.i.i, label %l_head.exit.i, label %do.body2.i.i.i.i, !prof !89

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_head.exit.i:                                    ; preds = %if.end.i.i.i
  %tobool.not45.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not45.i, label %l_head.exit.i.for.inc13.i_crit_edge, label %l_head.exit.i.for.body2.i_crit_edge

l_head.exit.i.for.body2.i_crit_edge:              ; preds = %l_head.exit.i
  br label %for.body2.i

l_head.exit.i.for.inc13.i_crit_edge:              ; preds = %l_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i

for.body2.i:                                      ; preds = %l_next.exit.i.for.body2.i_crit_edge, %l_head.exit.i.for.body2.i_crit_edge
  %e.046.i = phi ptr [ %add.ptr.i.i.i30.i, %l_next.exit.i.for.body2.i_crit_edge ], [ %add.ptr.i.i.i.i, %l_head.exit.i.for.body2.i_crit_edge ]
  %sentinel.i = getelementptr inbounds %struct.entry, ptr %e.046.i, i32 0, i32 3
  %49 = ptrtoint ptr %sentinel.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i = load i16, ptr %sentinel.i, align 4
  %50 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %bf.cast.not.i = icmp eq i16 %50, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body2.i
  %sentinel.i.le = getelementptr inbounds %struct.entry, ptr %e.046.i, i32 0, i32 3
  %bf.lshr8.i = lshr i16 %bf.load.i, 10
  %bf.cast9.i = zext i16 %bf.lshr8.i to i32
  %add.ptr10.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast9.i
  %prev.i.i.i = getelementptr inbounds %struct.entry, ptr %e.046.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i.i.i = load i32, ptr %prev.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %bf.lshr.i.i.i, 268435455
  br i1 %cmp.i.i.i.i, label %if.then.i.l_prev.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.l_prev.exit.i.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_prev.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  %add.ptr.i.i.i.i.i = getelementptr %struct.entry, ptr %46, i32 %bf.lshr.i.i.i
  %cmp.not.i.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i, %48
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.l_prev.exit.i.i_crit_edge, label %do.body2.i.i.i.i.i, !prof !89

if.end.i.i.i.i.l_prev.exit.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_prev.exit.i.i

do.body2.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_prev.exit.i.i:                                  ; preds = %if.end.i.i.i.i.l_prev.exit.i.i_crit_edge, %if.then.i.l_prev.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ null, %if.then.i.l_prev.exit.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i, %if.end.i.i.i.i.l_prev.exit.i.i_crit_edge ]
  %next.i.i.i = getelementptr inbounds %struct.entry, ptr %e.046.i, i32 0, i32 2
  %52 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load.i40.i.i = load i32, ptr %next.i.i.i, align 8
  %bf.lshr.i41.i.i = lshr i32 %bf.load.i40.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i41.i.i)
  %cmp.i.i42.i.i = icmp eq i32 %bf.lshr.i41.i.i, 268435455
  br i1 %cmp.i.i42.i.i, label %l_prev.exit.i.i.l_next.exit.i.i_crit_edge, label %if.end.i.i46.i.i

l_prev.exit.i.i.l_next.exit.i.i_crit_edge:        ; preds = %l_prev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_next.exit.i.i

if.end.i.i46.i.i:                                 ; preds = %l_prev.exit.i.i
  %add.ptr.i.i.i43.i.i = getelementptr %struct.entry, ptr %46, i32 %bf.lshr.i41.i.i
  %cmp.not.i.i.i45.i.i = icmp ult ptr %add.ptr.i.i.i43.i.i, %48
  br i1 %cmp.not.i.i.i45.i.i, label %if.end.i.i46.i.i.l_next.exit.i.i_crit_edge, label %do.body2.i.i.i47.i.i, !prof !89

if.end.i.i46.i.i.l_next.exit.i.i_crit_edge:       ; preds = %if.end.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_next.exit.i.i

do.body2.i.i.i47.i.i:                             ; preds = %if.end.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit.i.i:                                  ; preds = %if.end.i.i46.i.i.l_next.exit.i.i_crit_edge, %l_prev.exit.i.i.l_next.exit.i.i_crit_edge
  %retval.0.i.i48.i.i = phi ptr [ null, %l_prev.exit.i.i.l_next.exit.i.i_crit_edge ], [ %add.ptr.i.i.i43.i.i, %if.end.i.i46.i.i.l_next.exit.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %l_next.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr.i.i = and i32 %bf.load.i40.i.i, -16
  %next3.i.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %next3.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load4.i.i = load i32, ptr %next3.i.i, align 8
  %bf.clear.i.i = and i32 %bf.load4.i.i, 15
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.lshr.i.i
  store i32 %bf.set.i.i, ptr %next3.i.i, align 8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %l_next.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %head.i27.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast9.i, i32 1
  %54 = ptrtoint ptr %head.i27.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %bf.lshr.i41.i.i, ptr %head.i27.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %tobool8.not.i.i = icmp eq ptr %retval.0.i.i48.i.i, null
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load21.i.i = load i32, ptr %prev.i.i.i, align 4
  br i1 %tobool8.not.i.i, label %if.else19.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr12.i.i = and i32 %bf.load21.i.i, -16
  %prev13.i.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i48.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev13.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load14.i.i = load i32, ptr %prev13.i.i, align 4
  %bf.clear17.i.i = and i32 %bf.load14.i.i, 15
  %bf.set18.i.i = or i32 %bf.clear17.i.i, %bf.lshr12.i.i
  store i32 %bf.set18.i.i, ptr %prev13.i.i, align 4
  br label %if.end23.i.i

if.else19.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr22.i.i = lshr i32 %bf.load21.i.i, 4
  %tail.i.i = getelementptr %struct.ilist, ptr %qs, i32 %bf.cast9.i, i32 2
  %57 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %bf.lshr22.i.i, ptr %tail.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.else19.i.i, %if.then9.i.i
  %58 = ptrtoint ptr %sentinel.i.le to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load24.i.i = load i16, ptr %sentinel.i.le, align 4
  %59 = and i16 %bf.load24.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %bf.cast.not.i.i = icmp eq i16 %59, 0
  br i1 %bf.cast.not.i.i, label %if.then27.i.i, label %if.end23.i.i.if.end_crit_edge

if.end23.i.i.if.end_crit_edge:                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then27.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr10.i, align 4
  %dec.i.i = add i32 %61, -1
  store i32 %dec.i.i, ptr %add.ptr10.i, align 4
  br label %if.end

for.inc.i:                                        ; preds = %for.body2.i
  %next.i.i = getelementptr inbounds %struct.entry, ptr %e.046.i, i32 0, i32 2
  %62 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load.i.i = load i32, ptr %next.i.i, align 8
  %bf.lshr.i28.i = lshr i32 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i28.i)
  %cmp.i.i29.i = icmp eq i32 %bf.lshr.i28.i, 268435455
  br i1 %cmp.i.i29.i, label %for.inc.i.for.inc13.i_crit_edge, label %if.end.i.i33.i

for.inc.i.for.inc13.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i

if.end.i.i33.i:                                   ; preds = %for.inc.i
  %add.ptr.i.i.i30.i = getelementptr %struct.entry, ptr %46, i32 %bf.lshr.i28.i
  %cmp.not.i.i.i32.i = icmp ult ptr %add.ptr.i.i.i30.i, %48
  br i1 %cmp.not.i.i.i32.i, label %l_next.exit.i, label %do.body2.i.i.i34.i, !prof !89

do.body2.i.i.i34.i:                               ; preds = %if.end.i.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit.i:                                    ; preds = %if.end.i.i33.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i30.i, null
  br i1 %tobool.not.i, label %l_next.exit.i.for.inc13.i_crit_edge, label %l_next.exit.i.for.body2.i_crit_edge

l_next.exit.i.for.body2.i_crit_edge:              ; preds = %l_next.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body2.i

l_next.exit.i.for.inc13.i_crit_edge:              ; preds = %l_next.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %l_next.exit.i.for.inc13.i_crit_edge, %for.inc.i.for.inc13.i_crit_edge, %l_head.exit.i.for.inc13.i_crit_edge, %for.body.i.for.inc13.i_crit_edge
  %inc.i = add nuw i32 %level.addr.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %40
  br i1 %exitcond.not.i, label %for.inc13.i.while.end_crit_edge, label %for.inc13.i.for.body.i_crit_edge

for.inc13.i.for.body.i_crit_edge:                 ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc13.i.while.end_crit_edge:                  ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %if.then27.i.i, %if.end23.i.i.if.end_crit_edge
  %63 = ptrtoint ptr %sentinel.i.le to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load = load i16, ptr %sentinel.i.le, align 4
  %bf.clear = and i16 %bf.load, 1023
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %sentinel.i.le, align 4
  %64 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %q, align 4
  %66 = ptrtoint ptr %tail.i.i51 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tail.i.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %67)
  %cmp.i.i.i52 = icmp eq i32 %67, 268435455
  br i1 %cmp.i.i.i52, label %if.end.l_tail.exit.i_crit_edge, label %if.end.i.i.i56

if.end.l_tail.exit.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_tail.exit.i

if.end.i.i.i56:                                   ; preds = %if.end
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %65, align 4
  %add.ptr.i.i.i.i53 = getelementptr %struct.entry, ptr %69, i32 %67
  %end.i.i.i.i54 = getelementptr inbounds %struct.entry_space, ptr %65, i32 0, i32 1
  %70 = ptrtoint ptr %end.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i.i.i.i54, align 4
  %cmp.not.i.i.i.i55 = icmp ult ptr %add.ptr.i.i.i.i53, %71
  br i1 %cmp.not.i.i.i.i55, label %if.end.i.i.i56.l_tail.exit.i_crit_edge, label %do.body2.i.i.i.i57, !prof !89

if.end.i.i.i56.l_tail.exit.i_crit_edge:           ; preds = %if.end.i.i.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_tail.exit.i

do.body2.i.i.i.i57:                               ; preds = %if.end.i.i.i56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_tail.exit.i:                                    ; preds = %if.end.i.i.i56.l_tail.exit.i_crit_edge, %if.end.l_tail.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %if.end.l_tail.exit.i_crit_edge ], [ %add.ptr.i.i.i.i53, %if.end.i.i.i56.l_tail.exit.i_crit_edge ]
  %72 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load.i58 = load i32, ptr %next.i.i.i, align 8
  %bf.set.i = or i32 %bf.load.i58, -16
  store i32 %bf.set.i, ptr %next.i.i.i, align 8
  %73 = ptrtoint ptr %tail.i.i51 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tail.i.i51, align 4
  %75 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load2.i = load i32, ptr %prev.i.i.i, align 4
  %bf.shl.i = shl i32 %74, 4
  %bf.clear3.i = and i32 %bf.load2.i, 15
  %bf.set4.i = or i32 %bf.clear3.i, %bf.shl.i
  store i32 %bf.set4.i, ptr %prev.i.i.i, align 4
  %tobool.not.i59 = icmp eq ptr %retval.0.i.i.i, null
  %76 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %65, align 4
  %cmp.i31.i = icmp ugt ptr %77, %e.046.i
  br i1 %tobool.not.i59, label %if.else.i61, label %if.then.i60

if.then.i60:                                      ; preds = %l_tail.exit.i
  br i1 %cmp.i31.i, label %if.then.i60.do.body3.i.i_crit_edge, label %lor.rhs.i.i, !prof !93

if.then.i60.do.body3.i.i_crit_edge:               ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

lor.rhs.i.i:                                      ; preds = %if.then.i60
  %end.i.i = getelementptr inbounds %struct.entry_space, ptr %65, i32 0, i32 1
  %78 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i, align 4
  %cmp1.not.i.i = icmp ugt ptr %79, %e.046.i
  br i1 %cmp1.not.i.i, label %to_index.exit.i, label %lor.rhs.i.i.do.body3.i.i_crit_edge, !prof !89

lor.rhs.i.i.do.body3.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %lor.rhs.i.i.do.body3.i.i_crit_edge, %if.then.i60.do.body3.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit.i:                                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %e.046.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 24
  %80 = ptrtoint ptr %tail.i.i51 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub.ptr.div.i.i, ptr %tail.i.i51, align 4
  %next7.i = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %next7.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load8.i = load i32, ptr %next7.i, align 8
  %bf.shl10.i = shl nsw i32 %sub.ptr.div.i.i, 4
  %bf.clear11.i = and i32 %bf.load8.i, 15
  %bf.set12.i = or i32 %bf.clear11.i, %bf.shl10.i
  store i32 %bf.set12.i, ptr %next7.i, align 8
  br label %if.end.i64

if.else.i61:                                      ; preds = %l_tail.exit.i
  br i1 %cmp.i31.i, label %if.else.i61.do.body3.i35.i_crit_edge, label %lor.rhs.i34.i, !prof !93

if.else.i61.do.body3.i35.i_crit_edge:             ; preds = %if.else.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i

lor.rhs.i34.i:                                    ; preds = %if.else.i61
  %end.i32.i = getelementptr inbounds %struct.entry_space, ptr %65, i32 0, i32 1
  %82 = ptrtoint ptr %end.i32.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end.i32.i, align 4
  %cmp1.not.i33.i = icmp ugt ptr %83, %e.046.i
  br i1 %cmp1.not.i33.i, label %to_index.exit40.i, label %lor.rhs.i34.i.do.body3.i35.i_crit_edge, !prof !89

lor.rhs.i34.i.do.body3.i35.i_crit_edge:           ; preds = %lor.rhs.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i

do.body3.i35.i:                                   ; preds = %lor.rhs.i34.i.do.body3.i35.i_crit_edge, %if.else.i61.do.body3.i35.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit40.i:                                ; preds = %lor.rhs.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i36.i = ptrtoint ptr %e.046.i to i32
  %sub.ptr.rhs.cast.i37.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i38.i = sub i32 %sub.ptr.lhs.cast.i36.i, %sub.ptr.rhs.cast.i37.i
  %sub.ptr.div.i39.i = sdiv exact i32 %sub.ptr.sub.i38.i, 24
  %84 = ptrtoint ptr %tail.i.i51 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub.ptr.div.i39.i, ptr %tail.i.i51, align 4
  %85 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub.ptr.div.i39.i, ptr %head.i, align 4
  br label %if.end.i64

if.end.i64:                                       ; preds = %to_index.exit40.i, %to_index.exit.i
  %86 = ptrtoint ptr %sentinel.i.le to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load15.i = load i16, ptr %sentinel.i.le, align 4
  %87 = and i16 %bf.load15.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %bf.cast.not.i63 = icmp eq i16 %87, 0
  br i1 %bf.cast.not.i63, label %if.then17.i, label %if.end.i64.l_add_tail.exit_crit_edge

if.end.i64.l_add_tail.exit_crit_edge:             ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_add_tail.exit

if.then17.i:                                      ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr, align 4
  %inc.i65 = add i32 %89, 1
  store i32 %inc.i65, ptr %add.ptr, align 4
  br label %l_add_tail.exit

l_add_tail.exit:                                  ; preds = %if.then17.i, %if.end.i64.l_add_tail.exit_crit_edge
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr, align 4
  %cmp1 = icmp ult i32 %91, %35
  br i1 %cmp1, label %l_add_tail.exit.while.body_crit_edge, label %l_add_tail.exit.while.end_crit_edge

l_add_tail.exit.while.end_crit_edge:              ; preds = %l_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

l_add_tail.exit.while.body_crit_edge:             ; preds = %l_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %l_add_tail.exit.while.end_crit_edge, %for.inc13.i.while.end_crit_edge, %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %add.ptr6 = getelementptr %struct.ilist, ptr %add.ptr, i32 1
  %92 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %35)
  %cmp9206 = icmp ugt i32 %93, %35
  br i1 %cmp9206, label %while.body10.lr.ph, label %while.end.for.inc_crit_edge

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body10.lr.ph:                               ; preds = %while.end
  %tail.i.i66 = getelementptr %struct.ilist, ptr %qs, i32 %level.0209, i32 2
  %head.i.i108 = getelementptr %struct.ilist, ptr %qs, i32 %level.0209, i32 1
  %94 = trunc i32 %level.0209 to i16
  %95 = shl i16 %94, 10
  %bf.shl20 = add i16 %95, 1024
  %tail.i.i129 = getelementptr inbounds %struct.ilist, ptr %add.ptr6, i32 0, i32 2
  %head.i172 = getelementptr inbounds %struct.ilist, ptr %add.ptr6, i32 0, i32 1
  br label %while.body10

while.body10:                                     ; preds = %l_add_tail.exit180.while.body10_crit_edge, %while.body10.lr.ph
  %96 = ptrtoint ptr %tail.i.i66 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tail.i.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %97)
  %cmp.i.i.i67 = icmp eq i32 %97, 268435455
  br i1 %cmp.i.i.i67, label %while.body10.for.inc_crit_edge, label %if.end.i.i.i71

while.body10.for.inc_crit_edge:                   ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i71:                                   ; preds = %while.body10
  %98 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %q, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %add.ptr.i.i.i.i68 = getelementptr %struct.entry, ptr %101, i32 %97
  %end.i.i.i.i69 = getelementptr inbounds %struct.entry_space, ptr %99, i32 0, i32 1
  %102 = ptrtoint ptr %end.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i.i.i.i69, align 4
  %cmp.not.i.i.i.i70 = icmp ult ptr %add.ptr.i.i.i.i68, %103
  br i1 %cmp.not.i.i.i.i70, label %l_tail.exit.i73, label %do.body2.i.i.i.i72, !prof !89

do.body2.i.i.i.i72:                               ; preds = %if.end.i.i.i71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_tail.exit.i73:                                  ; preds = %if.end.i.i.i71
  %tobool.not23.i = icmp eq ptr %add.ptr.i.i.i.i68, null
  br i1 %tobool.not23.i, label %l_tail.exit.i73.for.inc_crit_edge, label %l_tail.exit.i73.for.body.i78_crit_edge

l_tail.exit.i73.for.body.i78_crit_edge:           ; preds = %l_tail.exit.i73
  br label %for.body.i78

l_tail.exit.i73.for.inc_crit_edge:                ; preds = %l_tail.exit.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i78:                                     ; preds = %l_prev.exit.i.for.body.i78_crit_edge, %l_tail.exit.i73.for.body.i78_crit_edge
  %e.024.i = phi ptr [ %add.ptr.i.i.i12.i, %l_prev.exit.i.for.body.i78_crit_edge ], [ %add.ptr.i.i.i.i68, %l_tail.exit.i73.for.body.i78_crit_edge ]
  %sentinel.i75 = getelementptr inbounds %struct.entry, ptr %e.024.i, i32 0, i32 3
  %104 = ptrtoint ptr %sentinel.i75 to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load.i76 = load i16, ptr %sentinel.i75, align 4
  %105 = and i16 %bf.load.i76, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %bf.cast.not.i77 = icmp eq i16 %105, 0
  br i1 %bf.cast.not.i77, label %if.then.i84, label %for.inc.i127

if.then.i84:                                      ; preds = %for.body.i78
  %sentinel.i75.le = getelementptr inbounds %struct.entry, ptr %e.024.i, i32 0, i32 3
  %prev.i.i.i80 = getelementptr inbounds %struct.entry, ptr %e.024.i, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %106)
  %bf.load.i.i.i81 = load i32, ptr %prev.i.i.i80, align 4
  %bf.lshr.i.i.i82 = lshr i32 %bf.load.i.i.i81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i.i.i82)
  %cmp.i.i.i.i83 = icmp eq i32 %bf.lshr.i.i.i82, 268435455
  br i1 %cmp.i.i.i.i83, label %if.then.i84.l_prev.exit.i.i94_crit_edge, label %if.end.i.i.i.i87

if.then.i84.l_prev.exit.i.i94_crit_edge:          ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_prev.exit.i.i94

if.end.i.i.i.i87:                                 ; preds = %if.then.i84
  %add.ptr.i.i.i.i.i85 = getelementptr %struct.entry, ptr %101, i32 %bf.lshr.i.i.i82
  %cmp.not.i.i.i.i.i86 = icmp ult ptr %add.ptr.i.i.i.i.i85, %103
  br i1 %cmp.not.i.i.i.i.i86, label %if.end.i.i.i.i87.l_prev.exit.i.i94_crit_edge, label %do.body2.i.i.i.i.i88, !prof !89

if.end.i.i.i.i87.l_prev.exit.i.i94_crit_edge:     ; preds = %if.end.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_prev.exit.i.i94

do.body2.i.i.i.i.i88:                             ; preds = %if.end.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_prev.exit.i.i94:                                ; preds = %if.end.i.i.i.i87.l_prev.exit.i.i94_crit_edge, %if.then.i84.l_prev.exit.i.i94_crit_edge
  %retval.0.i.i.i.i89 = phi ptr [ null, %if.then.i84.l_prev.exit.i.i94_crit_edge ], [ %add.ptr.i.i.i.i.i85, %if.end.i.i.i.i87.l_prev.exit.i.i94_crit_edge ]
  %next.i.i.i90 = getelementptr inbounds %struct.entry, ptr %e.024.i, i32 0, i32 2
  %107 = ptrtoint ptr %next.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %107)
  %bf.load.i40.i.i91 = load i32, ptr %next.i.i.i90, align 8
  %bf.lshr.i41.i.i92 = lshr i32 %bf.load.i40.i.i91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i41.i.i92)
  %cmp.i.i42.i.i93 = icmp eq i32 %bf.lshr.i41.i.i92, 268435455
  br i1 %cmp.i.i42.i.i93, label %l_prev.exit.i.i94.l_next.exit.i.i101_crit_edge, label %if.end.i.i46.i.i97

l_prev.exit.i.i94.l_next.exit.i.i101_crit_edge:   ; preds = %l_prev.exit.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_next.exit.i.i101

if.end.i.i46.i.i97:                               ; preds = %l_prev.exit.i.i94
  %add.ptr.i.i.i43.i.i95 = getelementptr %struct.entry, ptr %101, i32 %bf.lshr.i41.i.i92
  %cmp.not.i.i.i45.i.i96 = icmp ult ptr %add.ptr.i.i.i43.i.i95, %103
  br i1 %cmp.not.i.i.i45.i.i96, label %if.end.i.i46.i.i97.l_next.exit.i.i101_crit_edge, label %do.body2.i.i.i47.i.i98, !prof !89

if.end.i.i46.i.i97.l_next.exit.i.i101_crit_edge:  ; preds = %if.end.i.i46.i.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_next.exit.i.i101

do.body2.i.i.i47.i.i98:                           ; preds = %if.end.i.i46.i.i97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_next.exit.i.i101:                               ; preds = %if.end.i.i46.i.i97.l_next.exit.i.i101_crit_edge, %l_prev.exit.i.i94.l_next.exit.i.i101_crit_edge
  %retval.0.i.i48.i.i99 = phi ptr [ null, %l_prev.exit.i.i94.l_next.exit.i.i101_crit_edge ], [ %add.ptr.i.i.i43.i.i95, %if.end.i.i46.i.i97.l_next.exit.i.i101_crit_edge ]
  %tobool.not.i.i100 = icmp eq ptr %retval.0.i.i.i.i89, null
  br i1 %tobool.not.i.i100, label %if.else.i.i109, label %if.then.i.i107

if.then.i.i107:                                   ; preds = %l_next.exit.i.i101
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr.i.i102 = and i32 %bf.load.i40.i.i91, -16
  %next3.i.i103 = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i.i89, i32 0, i32 2
  %108 = ptrtoint ptr %next3.i.i103 to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load4.i.i104 = load i32, ptr %next3.i.i103, align 8
  %bf.clear.i.i105 = and i32 %bf.load4.i.i104, 15
  %bf.set.i.i106 = or i32 %bf.clear.i.i105, %bf.lshr.i.i102
  store i32 %bf.set.i.i106, ptr %next3.i.i103, align 8
  br label %if.end.i.i112

if.else.i.i109:                                   ; preds = %l_next.exit.i.i101
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %head.i.i108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %bf.lshr.i41.i.i92, ptr %head.i.i108, align 4
  br label %if.end.i.i112

if.end.i.i112:                                    ; preds = %if.else.i.i109, %if.then.i.i107
  %tobool8.not.i.i110 = icmp eq ptr %retval.0.i.i48.i.i99, null
  %110 = ptrtoint ptr %prev.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load21.i.i111 = load i32, ptr %prev.i.i.i80, align 4
  br i1 %tobool8.not.i.i110, label %if.else19.i.i120, label %if.then9.i.i118

if.then9.i.i118:                                  ; preds = %if.end.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr12.i.i113 = and i32 %bf.load21.i.i111, -16
  %prev13.i.i114 = getelementptr inbounds %struct.entry, ptr %retval.0.i.i48.i.i99, i32 0, i32 1
  %111 = ptrtoint ptr %prev13.i.i114 to i32
  call void @__asan_load4_noabort(i32 %111)
  %bf.load14.i.i115 = load i32, ptr %prev13.i.i114, align 4
  %bf.clear17.i.i116 = and i32 %bf.load14.i.i115, 15
  %bf.set18.i.i117 = or i32 %bf.clear17.i.i116, %bf.lshr12.i.i113
  store i32 %bf.set18.i.i117, ptr %prev13.i.i114, align 4
  br label %if.end23.i.i123

if.else19.i.i120:                                 ; preds = %if.end.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  %bf.lshr22.i.i119 = lshr i32 %bf.load21.i.i111, 4
  %112 = ptrtoint ptr %tail.i.i66 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %bf.lshr22.i.i119, ptr %tail.i.i66, align 4
  br label %if.end23.i.i123

if.end23.i.i123:                                  ; preds = %if.else19.i.i120, %if.then9.i.i118
  %113 = ptrtoint ptr %sentinel.i75.le to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load24.i.i121 = load i16, ptr %sentinel.i75.le, align 4
  %114 = and i16 %bf.load24.i.i121, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %bf.cast.not.i.i122 = icmp eq i16 %114, 0
  br i1 %bf.cast.not.i.i122, label %if.then27.i.i125, label %if.end23.i.i123.if.end15_crit_edge

if.end23.i.i123.if.end15_crit_edge:               ; preds = %if.end23.i.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then27.i.i125:                                 ; preds = %if.end23.i.i123
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr, align 4
  %dec.i.i124 = add i32 %116, -1
  store i32 %dec.i.i124, ptr %add.ptr, align 4
  br label %if.end15

for.inc.i127:                                     ; preds = %for.body.i78
  %prev.i.i = getelementptr inbounds %struct.entry, ptr %e.024.i, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load.i.i126 = load i32, ptr %prev.i.i, align 4
  %bf.lshr.i10.i = lshr i32 %bf.load.i.i126, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %bf.lshr.i10.i)
  %cmp.i.i11.i = icmp eq i32 %bf.lshr.i10.i, 268435455
  br i1 %cmp.i.i11.i, label %for.inc.i127.for.inc_crit_edge, label %if.end.i.i15.i

for.inc.i127.for.inc_crit_edge:                   ; preds = %for.inc.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i15.i:                                   ; preds = %for.inc.i127
  %add.ptr.i.i.i12.i = getelementptr %struct.entry, ptr %101, i32 %bf.lshr.i10.i
  %cmp.not.i.i.i14.i = icmp ult ptr %add.ptr.i.i.i12.i, %103
  br i1 %cmp.not.i.i.i14.i, label %l_prev.exit.i, label %do.body2.i.i.i16.i, !prof !89

do.body2.i.i.i16.i:                               ; preds = %if.end.i.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_prev.exit.i:                                    ; preds = %if.end.i.i15.i
  %tobool.not.i128 = icmp eq ptr %add.ptr.i.i.i12.i, null
  br i1 %tobool.not.i128, label %l_prev.exit.i.for.inc_crit_edge, label %l_prev.exit.i.for.body.i78_crit_edge

l_prev.exit.i.for.body.i78_crit_edge:             ; preds = %l_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i78

l_prev.exit.i.for.inc_crit_edge:                  ; preds = %l_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end15:                                         ; preds = %if.then27.i.i125, %if.end23.i.i123.if.end15_crit_edge
  %118 = ptrtoint ptr %sentinel.i75.le to i32
  call void @__asan_load2_noabort(i32 %118)
  %bf.load18 = load i16, ptr %sentinel.i75.le, align 4
  %bf.clear21 = and i16 %bf.load18, 1023
  %bf.set22 = or i16 %bf.clear21, %bf.shl20
  store i16 %bf.set22, ptr %sentinel.i75.le, align 4
  %119 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %q, align 4
  %121 = ptrtoint ptr %tail.i.i129 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tail.i.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %122)
  %cmp.i.i.i130 = icmp eq i32 %122, 268435455
  br i1 %cmp.i.i.i130, label %if.end15.l_tail.exit.i147_crit_edge, label %if.end.i.i.i134

if.end15.l_tail.exit.i147_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_tail.exit.i147

if.end.i.i.i134:                                  ; preds = %if.end15
  %123 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %120, align 4
  %add.ptr.i.i.i.i131 = getelementptr %struct.entry, ptr %124, i32 %122
  %end.i.i.i.i132 = getelementptr inbounds %struct.entry_space, ptr %120, i32 0, i32 1
  %125 = ptrtoint ptr %end.i.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i.i.i.i132, align 4
  %cmp.not.i.i.i.i133 = icmp ult ptr %add.ptr.i.i.i.i131, %126
  br i1 %cmp.not.i.i.i.i133, label %if.end.i.i.i134.l_tail.exit.i147_crit_edge, label %do.body2.i.i.i.i135, !prof !89

if.end.i.i.i134.l_tail.exit.i147_crit_edge:       ; preds = %if.end.i.i.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_tail.exit.i147

do.body2.i.i.i.i135:                              ; preds = %if.end.i.i.i134
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

l_tail.exit.i147:                                 ; preds = %if.end.i.i.i134.l_tail.exit.i147_crit_edge, %if.end15.l_tail.exit.i147_crit_edge
  %retval.0.i.i.i136 = phi ptr [ null, %if.end15.l_tail.exit.i147_crit_edge ], [ %add.ptr.i.i.i.i131, %if.end.i.i.i134.l_tail.exit.i147_crit_edge ]
  %127 = ptrtoint ptr %next.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %127)
  %bf.load.i138 = load i32, ptr %next.i.i.i90, align 8
  %bf.set.i139 = or i32 %bf.load.i138, -16
  store i32 %bf.set.i139, ptr %next.i.i.i90, align 8
  %128 = ptrtoint ptr %tail.i.i129 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tail.i.i129, align 4
  %130 = ptrtoint ptr %prev.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %130)
  %bf.load2.i141 = load i32, ptr %prev.i.i.i80, align 4
  %bf.shl.i142 = shl i32 %129, 4
  %bf.clear3.i143 = and i32 %bf.load2.i141, 15
  %bf.set4.i144 = or i32 %bf.clear3.i143, %bf.shl.i142
  store i32 %bf.set4.i144, ptr %prev.i.i.i80, align 4
  %tobool.not.i145 = icmp eq ptr %retval.0.i.i.i136, null
  %131 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %120, align 4
  %cmp.i31.i146 = icmp ugt ptr %132, %e.024.i
  br i1 %tobool.not.i145, label %if.else.i163, label %if.then.i148

if.then.i148:                                     ; preds = %l_tail.exit.i147
  br i1 %cmp.i31.i146, label %if.then.i148.do.body3.i.i152_crit_edge, label %lor.rhs.i.i151, !prof !93

if.then.i148.do.body3.i.i152_crit_edge:           ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i152

lor.rhs.i.i151:                                   ; preds = %if.then.i148
  %end.i.i149 = getelementptr inbounds %struct.entry_space, ptr %120, i32 0, i32 1
  %133 = ptrtoint ptr %end.i.i149 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %end.i.i149, align 4
  %cmp1.not.i.i150 = icmp ugt ptr %134, %e.024.i
  br i1 %cmp1.not.i.i150, label %to_index.exit.i162, label %lor.rhs.i.i151.do.body3.i.i152_crit_edge, !prof !89

lor.rhs.i.i151.do.body3.i.i152_crit_edge:         ; preds = %lor.rhs.i.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i152

do.body3.i.i152:                                  ; preds = %lor.rhs.i.i151.do.body3.i.i152_crit_edge, %if.then.i148.do.body3.i.i152_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit.i162:                               ; preds = %lor.rhs.i.i151
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i.i153 = ptrtoint ptr %e.024.i to i32
  %sub.ptr.rhs.cast.i.i154 = ptrtoint ptr %132 to i32
  %sub.ptr.sub.i.i155 = sub i32 %sub.ptr.lhs.cast.i.i153, %sub.ptr.rhs.cast.i.i154
  %sub.ptr.div.i.i156 = sdiv exact i32 %sub.ptr.sub.i.i155, 24
  %135 = ptrtoint ptr %tail.i.i129 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %sub.ptr.div.i.i156, ptr %tail.i.i129, align 4
  %next7.i157 = getelementptr inbounds %struct.entry, ptr %retval.0.i.i.i136, i32 0, i32 2
  %136 = ptrtoint ptr %next7.i157 to i32
  call void @__asan_load4_noabort(i32 %136)
  %bf.load8.i158 = load i32, ptr %next7.i157, align 8
  %bf.shl10.i159 = shl nsw i32 %sub.ptr.div.i.i156, 4
  %bf.clear11.i160 = and i32 %bf.load8.i158, 15
  %bf.set12.i161 = or i32 %bf.clear11.i160, %bf.shl10.i159
  store i32 %bf.set12.i161, ptr %next7.i157, align 8
  br label %if.end.i177

if.else.i163:                                     ; preds = %l_tail.exit.i147
  br i1 %cmp.i31.i146, label %if.else.i163.do.body3.i35.i167_crit_edge, label %lor.rhs.i34.i166, !prof !93

if.else.i163.do.body3.i35.i167_crit_edge:         ; preds = %if.else.i163
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i167

lor.rhs.i34.i166:                                 ; preds = %if.else.i163
  %end.i32.i164 = getelementptr inbounds %struct.entry_space, ptr %120, i32 0, i32 1
  %137 = ptrtoint ptr %end.i32.i164 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %end.i32.i164, align 4
  %cmp1.not.i33.i165 = icmp ugt ptr %138, %e.024.i
  br i1 %cmp1.not.i33.i165, label %to_index.exit40.i173, label %lor.rhs.i34.i166.do.body3.i35.i167_crit_edge, !prof !89

lor.rhs.i34.i166.do.body3.i35.i167_crit_edge:     ; preds = %lor.rhs.i34.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i35.i167

do.body3.i35.i167:                                ; preds = %lor.rhs.i34.i166.do.body3.i35.i167_crit_edge, %if.else.i163.do.body3.i35.i167_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

to_index.exit40.i173:                             ; preds = %lor.rhs.i34.i166
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i36.i168 = ptrtoint ptr %e.024.i to i32
  %sub.ptr.rhs.cast.i37.i169 = ptrtoint ptr %132 to i32
  %sub.ptr.sub.i38.i170 = sub i32 %sub.ptr.lhs.cast.i36.i168, %sub.ptr.rhs.cast.i37.i169
  %sub.ptr.div.i39.i171 = sdiv exact i32 %sub.ptr.sub.i38.i170, 24
  %139 = ptrtoint ptr %tail.i.i129 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %sub.ptr.div.i39.i171, ptr %tail.i.i129, align 4
  %140 = ptrtoint ptr %head.i172 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %sub.ptr.div.i39.i171, ptr %head.i172, align 4
  br label %if.end.i177

if.end.i177:                                      ; preds = %to_index.exit40.i173, %to_index.exit.i162
  %141 = ptrtoint ptr %sentinel.i75.le to i32
  call void @__asan_load2_noabort(i32 %141)
  %bf.load15.i175 = load i16, ptr %sentinel.i75.le, align 4
  %142 = and i16 %bf.load15.i175, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %bf.cast.not.i176 = icmp eq i16 %142, 0
  br i1 %bf.cast.not.i176, label %if.then17.i179, label %if.end.i177.l_add_tail.exit180_crit_edge

if.end.i177.l_add_tail.exit180_crit_edge:         ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %l_add_tail.exit180

if.then17.i179:                                   ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %add.ptr6, align 4
  %inc.i178 = add i32 %144, 1
  store i32 %inc.i178, ptr %add.ptr6, align 4
  br label %l_add_tail.exit180

l_add_tail.exit180:                               ; preds = %if.then17.i179, %if.end.i177.l_add_tail.exit180_crit_edge
  %145 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr, align 4
  %cmp9 = icmp ugt i32 %146, %35
  br i1 %cmp9, label %l_add_tail.exit180.while.body10_crit_edge, label %l_add_tail.exit180.for.inc_crit_edge

l_add_tail.exit180.for.inc_crit_edge:             ; preds = %l_add_tail.exit180
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

l_add_tail.exit180.while.body10_crit_edge:        ; preds = %l_add_tail.exit180
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body10

for.inc:                                          ; preds = %l_add_tail.exit180.for.inc_crit_edge, %l_prev.exit.i.for.inc_crit_edge, %for.inc.i127.for.inc_crit_edge, %l_tail.exit.i73.for.inc_crit_edge, %while.body10.for.inc_crit_edge, %while.end.for.inc_crit_edge
  %inc = add nuw i32 %level.0209, 1
  %147 = ptrtoint ptr %nr_levels to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %nr_levels, align 4
  %sub = add i32 %148, -1
  %cmp = icmp ult i32 %inc, %sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %q_set_targets.exit.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sentinels_init(ptr nocapture noundef %mq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %writeback_sentinel_alloc.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 9
  %current_writeback_sentinels.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 23
  %begin.i.i.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 9, i32 1
  %dirty = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 17
  %demote_sentinel_alloc.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 10
  %current_demote_sentinels.i = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 25
  %begin.i.i.i24 = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 10, i32 1
  %clean = getelementptr inbounds %struct.smq_policy, ptr %mq, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %demote_sentinel.exit.for.body_crit_edge, %entry
  %level.030 = phi i32 [ 0, %entry ], [ %inc, %demote_sentinel.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %current_writeback_sentinels.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_writeback_sentinels.i, align 8, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %add.i.i = add nuw nsw i32 %level.030, 64
  %cond.i.i = select i1 %tobool.not.i, i32 %add.i.i, i32 %level.030
  %2 = ptrtoint ptr %writeback_sentinel_alloc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %writeback_sentinel_alloc.i, align 4
  %4 = ptrtoint ptr %begin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %begin.i.i.i, align 4
  %add.i.i.i = add i32 %5, %cond.i.i
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.entry, ptr %7, i32 %add.i.i.i
  %end.i.i.i.i = getelementptr inbounds %struct.entry_space, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i, label %writeback_sentinel.exit, label %do.body2.i.i.i.i, !prof !89

do.body2.i.i.i.i:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

writeback_sentinel.exit:                          ; preds = %for.body
  %level1 = getelementptr %struct.entry, ptr %7, i32 %add.i.i.i, i32 3
  %10 = trunc i32 %level.030 to i16
  %11 = ptrtoint ptr %level1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %level1, align 4
  %bf.shl = shl nuw i16 %10, 10
  %bf.clear = and i16 %bf.load, 1023
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %level1, align 4
  tail call fastcc void @q_push(ptr noundef %dirty, ptr noundef %add.ptr.i.i.i.i)
  %12 = ptrtoint ptr %current_demote_sentinels.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %current_demote_sentinels.i, align 8, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i21 = icmp eq i8 %13, 0
  %cond.i.i23 = select i1 %tobool.not.i21, i32 %add.i.i, i32 %level.030
  %14 = ptrtoint ptr %demote_sentinel_alloc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %demote_sentinel_alloc.i, align 4
  %16 = ptrtoint ptr %begin.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %begin.i.i.i24, align 4
  %add.i.i.i25 = add i32 %17, %cond.i.i23
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %add.ptr.i.i.i.i26 = getelementptr %struct.entry, ptr %19, i32 %add.i.i.i25
  %end.i.i.i.i27 = getelementptr inbounds %struct.entry_space, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %end.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i.i.i27, align 4
  %cmp.not.i.i.i.i28 = icmp ult ptr %add.ptr.i.i.i.i26, %21
  br i1 %cmp.not.i.i.i.i28, label %demote_sentinel.exit, label %do.body2.i.i.i.i29, !prof !89

do.body2.i.i.i.i29:                               ; preds = %writeback_sentinel.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-cache-policy-smq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

demote_sentinel.exit:                             ; preds = %writeback_sentinel.exit
  %level3 = getelementptr %struct.entry, ptr %19, i32 %add.i.i.i25, i32 3
  %22 = ptrtoint ptr %level3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load4 = load i16, ptr %level3, align 4
  %bf.clear7 = and i16 %bf.load4, 1023
  %bf.set8 = or i16 %bf.clear7, %bf.shl
  store i16 %bf.set8, ptr %level3, align 4
  tail call fastcc void @q_push(ptr noundef %clean, ptr noundef %add.ptr.i.i.i.i26)
  %inc = add nuw nsw i32 %level.030, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %demote_sentinel.exit.for.body_crit_edge

demote_sentinel.exit.for.body_crit_edge:          ; preds = %demote_sentinel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %demote_sentinel.exit
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @smq_create(i32 noundef %cache_size, i64 noundef %origin_size, i64 noundef %cache_block_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__smq_create(i32 noundef %cache_size, i64 noundef %origin_size, i64 noundef %cache_block_size, i1 noundef zeroext false, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mq_create(i32 noundef %cache_size, i64 noundef %origin_size, i64 noundef %cache_block_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__smq_create(i32 noundef %cache_size, i64 noundef %origin_size, i64 noundef %cache_block_size, i1 noundef zeroext true, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_policy_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_dm_cache_smq__297_1933_smq_init6, !1, !"__initcall__kmod_dm_cache_smq__297_1933_smq_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1933, i32 1}
!2 = !{ptr @__exitcall_smq_exit, !3, !"__exitcall_smq_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1934, i32 1}
!4 = !{ptr @__UNIQUE_ID_author298, !5, !"__UNIQUE_ID_author298", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1936, i32 1}
!6 = !{ptr @__UNIQUE_ID_file299, !7, !"__UNIQUE_ID_file299", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1937, i32 1}
!8 = !{ptr @__UNIQUE_ID_license300, !7, !"__UNIQUE_ID_license300", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description301, !10, !"__UNIQUE_ID_description301", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1938, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias302, !12, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1940, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias303, !14, !"__UNIQUE_ID_alias303", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1941, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias304, !16, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1942, i32 1}
!17 = !{ptr @cleaner_policy_type, !18, !"cleaner_policy_type", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1868, i32 36}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1743, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__smq_create._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @__smq_create._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1764, i32 3}
!27 = !{ptr @__smq_create._entry.3, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @__smq_create._entry_ptr.5, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1772, i32 4}
!31 = !{ptr @__smq_create._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__smq_create._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__smq_create.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1780, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1203, i32 6}
!38 = !{ptr @default_promote_level.table, !39, !"table", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1029, i32 18}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1648, i32 23}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1649, i32 23}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1650, i32 23}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1651, i32 23}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1652, i32 23}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1653, i32 3}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mq_set_config_value._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @mq_set_config_value._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1665, i32 2}
!57 = !{ptr @smq_policy_type, !58, !"smq_policy_type", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1852, i32 36}
!59 = !{ptr @mq_policy_type, !60, !"mq_policy_type", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1860, i32 36}
!61 = !{ptr @default_policy_type, !62, !"default_policy_type", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1876, i32 36}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1891, i32 3}
!65 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @smq_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @smq_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1897, i32 3}
!70 = !{ptr @smq_init._entry.20, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @smq_init._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1903, i32 3}
!74 = !{ptr @smq_init._entry.23, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @smq_init._entry_ptr.25, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/dm-cache-policy-smq.c", i32 1909, i32 3}
!78 = !{ptr @smq_init._entry.26, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @smq_init._entry_ptr.28, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2154793915, i64 2154794411, i64 2154793952, i64 2154794008, i64 2154794042, i64 2154794066, i64 2154794107, i64 2154794128, i64 2154794156, i64 2154794190}
!91 = !{i32 0, i32 33}
!92 = !{i8 0, i8 2}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2154795565, i64 2154796061, i64 2154795602, i64 2154795658, i64 2154795692, i64 2154795716, i64 2154795757, i64 2154795778, i64 2154795806, i64 2154795840}
!95 = !{i64 2154833408, i64 2154833906, i64 2154833445, i64 2154833501, i64 2154833535, i64 2154833559, i64 2154833600, i64 2154833621, i64 2154833649, i64 2154833683}
!96 = !{i64 2154820284, i64 2154820781, i64 2154820321, i64 2154820377, i64 2154820411, i64 2154820435, i64 2154820476, i64 2154820497, i64 2154820525, i64 2154820559}
!97 = !{!"auto-init"}
!98 = !{i64 2148380466, i64 2148380746, i64 2148381080, i64 2148381414}
!99 = !{i64 2154830150, i64 2154830648, i64 2154830187, i64 2154830243, i64 2154830277, i64 2154830301, i64 2154830342, i64 2154830363, i64 2154830391, i64 2154830425}
!100 = !{i64 2154831778, i64 2154832276, i64 2154831815, i64 2154831871, i64 2154831905, i64 2154831929, i64 2154831970, i64 2154831991, i64 2154832019, i64 2154832053}
!101 = !{i64 2154836062, i64 2154836560, i64 2154836099, i64 2154836155, i64 2154836189, i64 2154836213, i64 2154836254, i64 2154836275, i64 2154836303, i64 2154836337}
!102 = !{i64 2154800578, i64 2154801075, i64 2154800615, i64 2154800671, i64 2154800705, i64 2154800729, i64 2154800770, i64 2154800791, i64 2154800819, i64 2154800853}
!103 = !{i64 2154797328, i64 2154797825, i64 2154797365, i64 2154797421, i64 2154797455, i64 2154797479, i64 2154797520, i64 2154797541, i64 2154797569, i64 2154797603}
!104 = !{i64 2154821913, i64 2154822410, i64 2154821950, i64 2154822006, i64 2154822040, i64 2154822064, i64 2154822105, i64 2154822126, i64 2154822154, i64 2154822188}
!105 = !{i64 2154823534, i64 2154824031, i64 2154823571, i64 2154823627, i64 2154823661, i64 2154823685, i64 2154823726, i64 2154823747, i64 2154823775, i64 2154823809}
!106 = !{i64 2154828526, i64 2154829024, i64 2154828563, i64 2154828619, i64 2154828653, i64 2154828677, i64 2154828718, i64 2154828739, i64 2154828767, i64 2154828801}
!107 = !{i64 2154798953, i64 2154799450, i64 2154798990, i64 2154799046, i64 2154799080, i64 2154799104, i64 2154799145, i64 2154799166, i64 2154799194, i64 2154799228}
!108 = !{i64 2154805305, i64 2154805802, i64 2154805342, i64 2154805398, i64 2154805432, i64 2154805456, i64 2154805497, i64 2154805518, i64 2154805546, i64 2154805580}
