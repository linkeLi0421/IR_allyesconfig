; ModuleID = '/llk/IR_all_yes/fs/befs/debug.c_pt.bc'
source_filename = "../fs/befs/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.befs_sb_info = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.befs_block_run, i64, i64, %struct.befs_block_run, %struct.befs_block_run, i32, %struct.befs_mount_options, ptr }
%struct.befs_block_run = type { i32, i16, i16 }
%struct.befs_mount_options = type { %struct.kgid_t, %struct.kuid_t, i32, i32, i32, ptr }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.befs_inode = type <{ i32, %struct.befs_disk_block_run, i32, i32, i32, i32, i64, i64, %struct.befs_disk_block_run, %struct.befs_disk_block_run, i32, i32, i32, %union.anon.67, [4 x i32], [1 x %struct.befs_small_data] }>
%struct.befs_disk_block_run = type { i32, i16, i16 }
%union.anon.67 = type { %struct.befs_disk_data_stream }
%struct.befs_disk_data_stream = type { [12 x %struct.befs_disk_block_run], i64, %struct.befs_disk_block_run, i64, %struct.befs_disk_block_run, i64, i64 }
%struct.befs_small_data = type <{ i32, i16, i16, [1 x i8] }>
%struct.befs_super_block = type <{ [32 x i8], i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.befs_disk_block_run, i64, i64, i32, %struct.befs_disk_block_run, %struct.befs_disk_block_run }>
%struct.befs_disk_btree_super = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.befs_btree_nodehead = type <{ i64, i64, i64, i16, i16 }>

@befs_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013befs: (%s): %pV\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"befs_error\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/befs/debug.c\00", [16 x i8] zeroinitializer }, align 32
@befs_error._entry_ptr = internal global ptr @befs_error._entry, section ".printk_index", align 4
@befs_warning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\014befs: (%s): %pV\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"befs_warning\00", [19 x i8] zeroinitializer }, align 32
@befs_warning._entry_ptr = internal global ptr @befs_warning._entry, section ".printk_index", align 4
@befs_debug.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 16, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"befs\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"befs_debug\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(%s): %pV\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"befs: (%s): %pV\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"befs_inode information\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  magic1 %08x\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  inode_num %u, %hu, %hu\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  uid %u\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  gid %u\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  mode %08x\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  flags %08x\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  create_time %llu\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  last_modified_time %llu\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  parent [%u, %hu, %hu]\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  attributes [%u, %hu, %hu]\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  type %08x\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  inode_size %u\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  Symbolic link [%s]\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  direct %d [%u, %hu, %hu]\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  max_direct_range %llu\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  indirect [%u, %hu, %hu]\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  max_indirect_range %llu\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  double indirect [%u, %hu, %hu]\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  max_double_indirect_range %llu\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  size %llu\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"befs_super_block information\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  name %s\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  fs_byte_order %08x\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  block_size %u\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  block_shift %u\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  num_blocks %llu\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  used_blocks %llu\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  magic2 %08x\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  blocks_per_ag %u\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  ag_shift %u\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  num_ags %u\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  log_blocks %u, %hu, %hu\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  log_start %lld\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  log_end %lld\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  magic3 %08x\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  root_dir %u, %hu, %hu\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  indices %u, %hu, %hu\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Btree super structure\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  magic %08x\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  node_size %u\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  max_depth %08x\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  data_type %08x\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  root_node_pointer %016LX\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  free_node_pointer %016LX\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  maximum size %016LX\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Btree node structure\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  left %016LX\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  right %016LX\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  overflow %016LX\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  all_key_count %hu\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  all_key_length %hu\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 37, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 50, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 65, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 78, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 80, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 83, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 86, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 87, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 88, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 89, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 90, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 92, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 96, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 100, i32 17 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 103, i32 17 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 104, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 107, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 114, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 118, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 124, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 128, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 135, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 139, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 144, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 162, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 164, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 166, i32 17 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 169, i32 17 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 170, i32 17 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 172, i32 17 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 173, i32 17 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 176, i32 17 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 177, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 179, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 180, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 185, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 188, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 189, i32 17 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 191, i32 17 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 194, i32 17 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 198, i32 17 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 231, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 232, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 233, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 234, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 236, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 237, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 239, i32 17 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 241, i32 17 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 252, i32 17 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 253, i32 17 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 254, i32 17 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 255, i32 17 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 256, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [19 x i8] c"../fs/befs/debug.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 258, i32 17 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @befs_error._entry, ptr @befs_error._entry_ptr, ptr @befs_warning._entry, ptr @befs_warning._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @befs_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @befs_warning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @befs_error(ptr noundef %sb, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #6
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #6
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !130
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id, ptr noundef nonnull %vaf) #9
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @befs_warning(ptr noundef %sb, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #6
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #6
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !130
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %s_id, ptr noundef nonnull %vaf) #9
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @befs_debug(ptr noundef %sb, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #6
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #6
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !130
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @befs_debug.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@befs_debug, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @befs_debug.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.8, ptr noundef %s_id, ptr noundef nonnull %vaf) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @befs_dump_inode(ptr noundef %sb, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.9)
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %inode, align 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %retval.0.i = select i1 %cmp.i, i32 %6, i32 %1
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i)
  %inode_num = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 1
  %7 = ptrtoint ptr %inode_num to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %.unpack = load i32, ptr %inode_num, align 1
  %.elt149 = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %.elt149 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %.unpack150 = load i32, ptr %.elt149, align 1
  %n.sroa.3.4.extract.shift.i = lshr i32 %.unpack150, 16
  %n.sroa.3.4.extract.trunc.i = trunc i32 %n.sroa.3.4.extract.shift.i to i16
  %n.sroa.6.4.extract.trunc.i = trunc i32 %.unpack150 to i16
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16, !noalias !132
  %byte_order.i167 = getelementptr inbounds %struct.befs_sb_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %byte_order.i167 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %byte_order.i167, align 4, !noalias !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i168 = icmp eq i32 %12, 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %.unpack) #6
  %14 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i) #6
  %15 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i) #6
  %tmp.sroa.6.0 = select i1 %cmp.i168, i16 %14, i16 %n.sroa.3.4.extract.trunc.i
  %tmp.sroa.0.0 = select i1 %cmp.i168, i32 %13, i32 %.unpack
  %storemerge.i = select i1 %cmp.i168, i16 %15, i16 %n.sroa.6.4.extract.trunc.i
  %conv = zext i16 %tmp.sroa.6.0 to i32
  %conv1 = zext i16 %storemerge.i to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.11, i32 noundef %tmp.sroa.0.0, i32 noundef %conv, i32 noundef %conv1)
  %uid = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 2
  %16 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %uid, align 1
  %18 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i170 = getelementptr inbounds %struct.befs_sb_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %byte_order.i170 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %byte_order.i170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i171 = icmp eq i32 %21, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %retval.0.i172 = select i1 %cmp.i171, i32 %22, i32 %17
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i172)
  %gid = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 3
  %23 = ptrtoint ptr %gid to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %gid, align 1
  %25 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i174 = getelementptr inbounds %struct.befs_sb_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %byte_order.i174 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %byte_order.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i175 = icmp eq i32 %28, 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %retval.0.i176 = select i1 %cmp.i175, i32 %29, i32 %24
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i176)
  %mode = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 4
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %mode, align 1
  %32 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i178 = getelementptr inbounds %struct.befs_sb_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %byte_order.i178 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %byte_order.i178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i179 = icmp eq i32 %35, 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %retval.0.i180 = select i1 %cmp.i179, i32 %36, i32 %31
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i180)
  %flags = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 5
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %flags, align 1
  %39 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i182 = getelementptr inbounds %struct.befs_sb_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %byte_order.i182 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %byte_order.i182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i183 = icmp eq i32 %42, 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  %retval.0.i184 = select i1 %cmp.i183, i32 %43, i32 %38
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i184)
  %create_time = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 6
  %44 = ptrtoint ptr %create_time to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %create_time, align 1
  %46 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i186 = getelementptr inbounds %struct.befs_sb_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %byte_order.i186 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %byte_order.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i187 = icmp eq i32 %49, 1
  %50 = tail call i64 @llvm.bswap.i64(i64 %45) #6
  %retval.0.i188 = select i1 %cmp.i187, i64 %50, i64 %45
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.16, i64 noundef %retval.0.i188)
  %last_modified_time = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 7
  %51 = ptrtoint ptr %last_modified_time to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %last_modified_time, align 1
  %53 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i190 = getelementptr inbounds %struct.befs_sb_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %byte_order.i190 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %byte_order.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i191 = icmp eq i32 %56, 1
  %57 = tail call i64 @llvm.bswap.i64(i64 %52) #6
  %retval.0.i192 = select i1 %cmp.i191, i64 %57, i64 %52
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.17, i64 noundef %retval.0.i192)
  %parent = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 8
  %58 = ptrtoint ptr %parent to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %.unpack151 = load i32, ptr %parent, align 1
  %.elt152 = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %.elt152 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %.unpack153 = load i32, ptr %.elt152, align 1
  %n.sroa.3.4.extract.shift.i193 = lshr i32 %.unpack153, 16
  %n.sroa.3.4.extract.trunc.i194 = trunc i32 %n.sroa.3.4.extract.shift.i193 to i16
  %n.sroa.6.4.extract.trunc.i195 = trunc i32 %.unpack153 to i16
  %60 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i.i, align 16, !noalias !135
  %byte_order.i197 = getelementptr inbounds %struct.befs_sb_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %byte_order.i197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %byte_order.i197, align 4, !noalias !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i198 = icmp eq i32 %63, 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %.unpack151) #6
  %65 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i194) #6
  %66 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i195) #6
  %tmp8.sroa.6.0 = select i1 %cmp.i198, i16 %65, i16 %n.sroa.3.4.extract.trunc.i194
  %tmp8.sroa.0.0 = select i1 %cmp.i198, i32 %64, i32 %.unpack151
  %storemerge.i201 = select i1 %cmp.i198, i16 %66, i16 %n.sroa.6.4.extract.trunc.i195
  %conv11 = zext i16 %tmp8.sroa.6.0 to i32
  %conv13 = zext i16 %storemerge.i201 to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.18, i32 noundef %tmp8.sroa.0.0, i32 noundef %conv11, i32 noundef %conv13)
  %attributes = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 9
  %67 = ptrtoint ptr %attributes to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %.unpack154 = load i32, ptr %attributes, align 1
  %.elt155 = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 9, i32 1
  %68 = ptrtoint ptr %.elt155 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %.unpack156 = load i32, ptr %.elt155, align 1
  %n.sroa.3.4.extract.shift.i203 = lshr i32 %.unpack156, 16
  %n.sroa.3.4.extract.trunc.i204 = trunc i32 %n.sroa.3.4.extract.shift.i203 to i16
  %n.sroa.6.4.extract.trunc.i205 = trunc i32 %.unpack156 to i16
  %69 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i.i, align 16, !noalias !138
  %byte_order.i207 = getelementptr inbounds %struct.befs_sb_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %byte_order.i207 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %byte_order.i207, align 4, !noalias !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp.i208 = icmp eq i32 %72, 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %.unpack154) #6
  %74 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i204) #6
  %75 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i205) #6
  %tmp14.sroa.0.0 = select i1 %cmp.i208, i32 %73, i32 %.unpack154
  %tmp14.sroa.6.0 = select i1 %cmp.i208, i16 %74, i16 %n.sroa.3.4.extract.trunc.i204
  %storemerge.i211 = select i1 %cmp.i208, i16 %75, i16 %n.sroa.6.4.extract.trunc.i205
  %conv17 = zext i16 %tmp14.sroa.6.0 to i32
  %conv19 = zext i16 %storemerge.i211 to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.19, i32 noundef %tmp14.sroa.0.0, i32 noundef %conv17, i32 noundef %conv19)
  %type = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 10
  %76 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %type, align 1
  %78 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i214 = getelementptr inbounds %struct.befs_sb_info, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %byte_order.i214 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %byte_order.i214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i215 = icmp eq i32 %81, 1
  %82 = tail call i32 @llvm.bswap.i32(i32 %77) #6
  %retval.0.i216 = select i1 %cmp.i215, i32 %82, i32 %77
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i216)
  %inode_size = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 11
  %83 = ptrtoint ptr %inode_size to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %inode_size, align 1
  %85 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i218 = getelementptr inbounds %struct.befs_sb_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %byte_order.i218 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %byte_order.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp.i219 = icmp eq i32 %88, 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  %retval.0.i220 = select i1 %cmp.i219, i32 %89, i32 %84
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i220)
  %90 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %mode, align 1
  %92 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i222 = getelementptr inbounds %struct.befs_sb_info, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %byte_order.i222 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %byte_order.i222, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp.i223 = icmp eq i32 %95, 1
  %96 = lshr i32 %91, 8
  %retval.0.i224 = select i1 %cmp.i223, i32 %96, i32 %91
  %and = and i32 %retval.0.i224, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %and)
  %cmp = icmp eq i32 %and, 40960
  %data = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 13
  br i1 %cmp, label %if.then, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.22, ptr noundef %data)
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0271 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.befs_disk_block_run], ptr %data, i32 0, i32 %i.0271
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %.unpack163 = load i32, ptr %arrayidx, align 1
  %.elt164 = getelementptr inbounds [2 x i32], ptr %arrayidx, i32 0, i32 1
  %98 = ptrtoint ptr %.elt164 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %.unpack165 = load i32, ptr %.elt164, align 1
  %n.sroa.3.4.extract.shift.i225 = lshr i32 %.unpack165, 16
  %n.sroa.3.4.extract.trunc.i226 = trunc i32 %n.sroa.3.4.extract.shift.i225 to i16
  %n.sroa.6.4.extract.trunc.i227 = trunc i32 %.unpack165 to i16
  %99 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info.i.i, align 16, !noalias !141
  %byte_order.i229 = getelementptr inbounds %struct.befs_sb_info, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %byte_order.i229 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %byte_order.i229, align 4, !noalias !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp.i230 = icmp eq i32 %102, 1
  %103 = tail call i32 @llvm.bswap.i32(i32 %.unpack163) #6
  %104 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i226) #6
  %105 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i227) #6
  %tmp27.sroa.0.1 = select i1 %cmp.i230, i32 %103, i32 %.unpack163
  %tmp27.sroa.6.1 = select i1 %cmp.i230, i16 %104, i16 %n.sroa.3.4.extract.trunc.i226
  %storemerge.i233 = select i1 %cmp.i230, i16 %105, i16 %n.sroa.6.4.extract.trunc.i227
  %conv31 = zext i16 %tmp27.sroa.6.1 to i32
  %conv33 = zext i16 %storemerge.i233 to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.23, i32 noundef %i.0271, i32 noundef %tmp27.sroa.0.1, i32 noundef %conv31, i32 noundef %conv33)
  %inc = add nuw nsw i32 %i.0271, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %max_direct_range = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 13, i32 0, i32 1
  %106 = ptrtoint ptr %max_direct_range to i32
  call void @__asan_loadN_noabort(i32 %106, i32 8)
  %107 = load i64, ptr %max_direct_range, align 1
  %108 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i236 = getelementptr inbounds %struct.befs_sb_info, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %byte_order.i236 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %byte_order.i236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp.i237 = icmp eq i32 %111, 1
  %112 = tail call i64 @llvm.bswap.i64(i64 %107) #6
  %retval.0.i238 = select i1 %cmp.i237, i64 %112, i64 %107
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.24, i64 noundef %retval.0.i238)
  %indirect = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 13, i32 0, i32 2
  %113 = ptrtoint ptr %indirect to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %.unpack157 = load i32, ptr %indirect, align 1
  %.elt158 = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 13, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %.elt158 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %.unpack159 = load i32, ptr %.elt158, align 1
  %n.sroa.3.4.extract.shift.i239 = lshr i32 %.unpack159, 16
  %n.sroa.3.4.extract.trunc.i240 = trunc i32 %n.sroa.3.4.extract.shift.i239 to i16
  %n.sroa.6.4.extract.trunc.i241 = trunc i32 %.unpack159 to i16
  %115 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i.i, align 16, !noalias !144
  %byte_order.i243 = getelementptr inbounds %struct.befs_sb_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %byte_order.i243 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %byte_order.i243, align 4, !noalias !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp.i244 = icmp eq i32 %118, 1
  %119 = tail call i32 @llvm.bswap.i32(i32 %.unpack157) #6
  %120 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i240) #6
  %121 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i241) #6
  %tmp36.sroa.0.0 = select i1 %cmp.i244, i32 %119, i32 %.unpack157
  %tmp36.sroa.6.0 = select i1 %cmp.i244, i16 %120, i16 %n.sroa.3.4.extract.trunc.i240
  %storemerge.i247 = select i1 %cmp.i244, i16 %121, i16 %n.sroa.6.4.extract.trunc.i241
  %conv40 = zext i16 %tmp36.sroa.6.0 to i32
  %conv42 = zext i16 %storemerge.i247 to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.25, i32 noundef %tmp36.sroa.0.0, i32 noundef %conv40, i32 noundef %conv42)
  %max_indirect_range = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 13, i32 0, i32 3
  %122 = ptrtoint ptr %max_indirect_range to i32
  call void @__asan_loadN_noabort(i32 %122, i32 8)
  %123 = load i64, ptr %max_indirect_range, align 1
  %124 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i250 = getelementptr inbounds %struct.befs_sb_info, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %byte_order.i250 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %byte_order.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp.i251 = icmp eq i32 %127, 1
  %128 = tail call i64 @llvm.bswap.i64(i64 %123) #6
  %retval.0.i252 = select i1 %cmp.i251, i64 %128, i64 %123
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.26, i64 noundef %retval.0.i252)
  %double_indirect = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 13, i32 0, i32 4
  %129 = ptrtoint ptr %double_indirect to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %.unpack160 = load i32, ptr %double_indirect, align 1
  %.elt161 = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 13, i32 0, i32 4, i32 1
  %130 = ptrtoint ptr %.elt161 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %.unpack162 = load i32, ptr %.elt161, align 1
  %n.sroa.3.4.extract.shift.i253 = lshr i32 %.unpack162, 16
  %n.sroa.3.4.extract.trunc.i254 = trunc i32 %n.sroa.3.4.extract.shift.i253 to i16
  %n.sroa.6.4.extract.trunc.i255 = trunc i32 %.unpack162 to i16
  %131 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s_fs_info.i.i, align 16, !noalias !147
  %byte_order.i257 = getelementptr inbounds %struct.befs_sb_info, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %byte_order.i257 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %byte_order.i257, align 4, !noalias !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp.i258 = icmp eq i32 %134, 1
  %135 = tail call i32 @llvm.bswap.i32(i32 %.unpack160) #6
  %136 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i254) #6
  %137 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i255) #6
  %tmp45.sroa.0.0 = select i1 %cmp.i258, i32 %135, i32 %.unpack160
  %tmp45.sroa.6.0 = select i1 %cmp.i258, i16 %136, i16 %n.sroa.3.4.extract.trunc.i254
  %storemerge.i261 = select i1 %cmp.i258, i16 %137, i16 %n.sroa.6.4.extract.trunc.i255
  %conv49 = zext i16 %tmp45.sroa.6.0 to i32
  %conv51 = zext i16 %storemerge.i261 to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.27, i32 noundef %tmp45.sroa.0.0, i32 noundef %conv49, i32 noundef %conv51)
  %max_double_indirect_range = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 13, i32 0, i32 5
  %138 = ptrtoint ptr %max_double_indirect_range to i32
  call void @__asan_loadN_noabort(i32 %138, i32 8)
  %139 = load i64, ptr %max_double_indirect_range, align 1
  %140 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i264 = getelementptr inbounds %struct.befs_sb_info, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %byte_order.i264 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %byte_order.i264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp.i265 = icmp eq i32 %143, 1
  %144 = tail call i64 @llvm.bswap.i64(i64 %139) #6
  %retval.0.i266 = select i1 %cmp.i265, i64 %144, i64 %139
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.28, i64 noundef %retval.0.i266)
  %size = getelementptr inbounds %struct.befs_inode, ptr %inode, i32 0, i32 13, i32 0, i32 6
  %145 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %145, i32 8)
  %146 = load i64, ptr %size, align 1
  %147 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i268 = getelementptr inbounds %struct.befs_sb_info, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %byte_order.i268 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %byte_order.i268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %cmp.i269 = icmp eq i32 %150, 1
  %151 = tail call i64 @llvm.bswap.i64(i64 %146) #6
  %retval.0.i270 = select i1 %cmp.i269, i64 %151, i64 %146
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.29, i64 noundef %retval.0.i270)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @befs_dump_super_block(ptr noundef %sb, ptr noundef %sup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.30)
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.31, ptr noundef %sup)
  %magic1 = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 1
  %0 = ptrtoint ptr %magic1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %magic1, align 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %retval.0.i = select i1 %cmp.i, i32 %6, i32 %1
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i)
  %fs_byte_order = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 2
  %7 = ptrtoint ptr %fs_byte_order to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %fs_byte_order, align 1
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i104 = getelementptr inbounds %struct.befs_sb_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %byte_order.i104 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %byte_order.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i105 = icmp eq i32 %12, 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %retval.0.i106 = select i1 %cmp.i105, i32 %13, i32 %8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i106)
  %block_size = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 3
  %14 = ptrtoint ptr %block_size to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %block_size, align 1
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i108 = getelementptr inbounds %struct.befs_sb_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %byte_order.i108 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte_order.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i109 = icmp eq i32 %19, 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %retval.0.i110 = select i1 %cmp.i109, i32 %20, i32 %15
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i110)
  %block_shift = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 4
  %21 = ptrtoint ptr %block_shift to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %block_shift, align 1
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i112 = getelementptr inbounds %struct.befs_sb_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %byte_order.i112 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %byte_order.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i113 = icmp eq i32 %26, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %retval.0.i114 = select i1 %cmp.i113, i32 %27, i32 %22
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i114)
  %num_blocks = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 5
  %28 = ptrtoint ptr %num_blocks to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %num_blocks, align 1
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i116 = getelementptr inbounds %struct.befs_sb_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %byte_order.i116 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %byte_order.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i117 = icmp eq i32 %33, 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %29) #6
  %retval.0.i118 = select i1 %cmp.i117, i64 %34, i64 %29
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.35, i64 noundef %retval.0.i118)
  %used_blocks = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 6
  %35 = ptrtoint ptr %used_blocks to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %used_blocks, align 1
  %37 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i120 = getelementptr inbounds %struct.befs_sb_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %byte_order.i120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %byte_order.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i121 = icmp eq i32 %40, 1
  %41 = tail call i64 @llvm.bswap.i64(i64 %36) #6
  %retval.0.i122 = select i1 %cmp.i121, i64 %41, i64 %36
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.36, i64 noundef %retval.0.i122)
  %inode_size = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 7
  %42 = ptrtoint ptr %inode_size to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %inode_size, align 1
  %44 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i124 = getelementptr inbounds %struct.befs_sb_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %byte_order.i124 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %byte_order.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i125 = icmp eq i32 %47, 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  %retval.0.i126 = select i1 %cmp.i125, i32 %48, i32 %43
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i126)
  %magic2 = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 8
  %49 = ptrtoint ptr %magic2 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %magic2, align 1
  %51 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i128 = getelementptr inbounds %struct.befs_sb_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %byte_order.i128 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %byte_order.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i129 = icmp eq i32 %54, 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  %retval.0.i130 = select i1 %cmp.i129, i32 %55, i32 %50
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i130)
  %blocks_per_ag = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 9
  %56 = ptrtoint ptr %blocks_per_ag to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %blocks_per_ag, align 1
  %58 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i132 = getelementptr inbounds %struct.befs_sb_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %byte_order.i132 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %byte_order.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i133 = icmp eq i32 %61, 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  %retval.0.i134 = select i1 %cmp.i133, i32 %62, i32 %57
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i134)
  %ag_shift = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 10
  %63 = ptrtoint ptr %ag_shift to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %ag_shift, align 1
  %65 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i136 = getelementptr inbounds %struct.befs_sb_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %byte_order.i136 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %byte_order.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i137 = icmp eq i32 %68, 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  %retval.0.i138 = select i1 %cmp.i137, i32 %69, i32 %64
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i138)
  %num_ags = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 11
  %70 = ptrtoint ptr %num_ags to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %num_ags, align 1
  %72 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i140 = getelementptr inbounds %struct.befs_sb_info, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %byte_order.i140 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %byte_order.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i141 = icmp eq i32 %75, 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %71) #6
  %retval.0.i142 = select i1 %cmp.i141, i32 %76, i32 %71
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i142)
  %flags = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 12
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %flags, align 1
  %79 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i144 = getelementptr inbounds %struct.befs_sb_info, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %byte_order.i144 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %byte_order.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i145 = icmp eq i32 %82, 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %78) #6
  %retval.0.i146 = select i1 %cmp.i145, i32 %83, i32 %78
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i146)
  %log_blocks = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 13
  %84 = ptrtoint ptr %log_blocks to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %.unpack = load i32, ptr %log_blocks, align 1
  %.elt95 = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 13, i32 1
  %85 = ptrtoint ptr %.elt95 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %.unpack96 = load i32, ptr %.elt95, align 1
  %n.sroa.3.4.extract.shift.i = lshr i32 %.unpack96, 16
  %n.sroa.3.4.extract.trunc.i = trunc i32 %n.sroa.3.4.extract.shift.i to i16
  %n.sroa.6.4.extract.trunc.i = trunc i32 %.unpack96 to i16
  %86 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i.i, align 16, !noalias !150
  %byte_order.i148 = getelementptr inbounds %struct.befs_sb_info, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %byte_order.i148 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %byte_order.i148, align 4, !noalias !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp.i149 = icmp eq i32 %89, 1
  %90 = tail call i32 @llvm.bswap.i32(i32 %.unpack) #6
  %91 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i) #6
  %92 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i) #6
  %tmp.sroa.6.0 = select i1 %cmp.i149, i16 %91, i16 %n.sroa.3.4.extract.trunc.i
  %tmp.sroa.0.0 = select i1 %cmp.i149, i32 %90, i32 %.unpack
  %storemerge.i = select i1 %cmp.i149, i16 %92, i16 %n.sroa.6.4.extract.trunc.i
  %conv = zext i16 %tmp.sroa.6.0 to i32
  %conv12 = zext i16 %storemerge.i to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.41, i32 noundef %tmp.sroa.0.0, i32 noundef %conv, i32 noundef %conv12)
  %log_start = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 14
  %93 = ptrtoint ptr %log_start to i32
  call void @__asan_loadN_noabort(i32 %93, i32 8)
  %94 = load i64, ptr %log_start, align 1
  %95 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i151 = getelementptr inbounds %struct.befs_sb_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %byte_order.i151 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %byte_order.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp.i152 = icmp eq i32 %98, 1
  %99 = tail call i64 @llvm.bswap.i64(i64 %94) #6
  %retval.0.i153 = select i1 %cmp.i152, i64 %99, i64 %94
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.42, i64 noundef %retval.0.i153)
  %log_end = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 15
  %100 = ptrtoint ptr %log_end to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %101 = load i64, ptr %log_end, align 1
  %102 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i155 = getelementptr inbounds %struct.befs_sb_info, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %byte_order.i155 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %byte_order.i155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp.i156 = icmp eq i32 %105, 1
  %106 = tail call i64 @llvm.bswap.i64(i64 %101) #6
  %retval.0.i157 = select i1 %cmp.i156, i64 %106, i64 %101
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.43, i64 noundef %retval.0.i157)
  %magic3 = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 16
  %107 = ptrtoint ptr %magic3 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %magic3, align 1
  %109 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i159 = getelementptr inbounds %struct.befs_sb_info, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %byte_order.i159 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %byte_order.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp.i160 = icmp eq i32 %112, 1
  %113 = tail call i32 @llvm.bswap.i32(i32 %108) #6
  %retval.0.i161 = select i1 %cmp.i160, i32 %113, i32 %108
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.44, i32 noundef %retval.0.i161)
  %root_dir = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 17
  %114 = ptrtoint ptr %root_dir to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %.unpack97 = load i32, ptr %root_dir, align 1
  %.elt98 = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 17, i32 1
  %115 = ptrtoint ptr %.elt98 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %.unpack99 = load i32, ptr %.elt98, align 1
  %n.sroa.3.4.extract.shift.i162 = lshr i32 %.unpack99, 16
  %n.sroa.3.4.extract.trunc.i163 = trunc i32 %n.sroa.3.4.extract.shift.i162 to i16
  %n.sroa.6.4.extract.trunc.i164 = trunc i32 %.unpack99 to i16
  %116 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_fs_info.i.i, align 16, !noalias !153
  %byte_order.i166 = getelementptr inbounds %struct.befs_sb_info, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %byte_order.i166 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %byte_order.i166, align 4, !noalias !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp.i167 = icmp eq i32 %119, 1
  %120 = tail call i32 @llvm.bswap.i32(i32 %.unpack97) #6
  %121 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i163) #6
  %122 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i164) #6
  %tmp16.sroa.0.0 = select i1 %cmp.i167, i32 %120, i32 %.unpack97
  %tmp16.sroa.6.0 = select i1 %cmp.i167, i16 %121, i16 %n.sroa.3.4.extract.trunc.i163
  %storemerge.i170 = select i1 %cmp.i167, i16 %122, i16 %n.sroa.6.4.extract.trunc.i164
  %conv19 = zext i16 %tmp16.sroa.6.0 to i32
  %conv21 = zext i16 %storemerge.i170 to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.45, i32 noundef %tmp16.sroa.0.0, i32 noundef %conv19, i32 noundef %conv21)
  %indices = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 18
  %123 = ptrtoint ptr %indices to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %.unpack100 = load i32, ptr %indices, align 1
  %.elt101 = getelementptr inbounds %struct.befs_super_block, ptr %sup, i32 0, i32 18, i32 1
  %124 = ptrtoint ptr %.elt101 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %.unpack102 = load i32, ptr %.elt101, align 1
  %n.sroa.3.4.extract.shift.i172 = lshr i32 %.unpack102, 16
  %n.sroa.3.4.extract.trunc.i173 = trunc i32 %n.sroa.3.4.extract.shift.i172 to i16
  %n.sroa.6.4.extract.trunc.i174 = trunc i32 %.unpack102 to i16
  %125 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %s_fs_info.i.i, align 16, !noalias !156
  %byte_order.i176 = getelementptr inbounds %struct.befs_sb_info, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %byte_order.i176 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %byte_order.i176, align 4, !noalias !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp.i177 = icmp eq i32 %128, 1
  %129 = tail call i32 @llvm.bswap.i32(i32 %.unpack100) #6
  %130 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i173) #6
  %131 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i174) #6
  %tmp22.sroa.0.0 = select i1 %cmp.i177, i32 %129, i32 %.unpack100
  %tmp22.sroa.6.0 = select i1 %cmp.i177, i16 %130, i16 %n.sroa.3.4.extract.trunc.i173
  %storemerge.i180 = select i1 %cmp.i177, i16 %131, i16 %n.sroa.6.4.extract.trunc.i174
  %conv25 = zext i16 %tmp22.sroa.6.0 to i32
  %conv27 = zext i16 %storemerge.i180 to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.46, i32 noundef %tmp22.sroa.0.0, i32 noundef %conv25, i32 noundef %conv27)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @befs_dump_index_entry(ptr noundef %sb, ptr nocapture noundef readonly %super) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.47)
  %0 = ptrtoint ptr %super to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %super, align 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %retval.0.i = select i1 %cmp.i, i32 %6, i32 %1
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i)
  %node_size = getelementptr inbounds %struct.befs_disk_btree_super, ptr %super, i32 0, i32 1
  %7 = ptrtoint ptr %node_size to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %node_size, align 1
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i28 = getelementptr inbounds %struct.befs_sb_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %byte_order.i28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %byte_order.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i29 = icmp eq i32 %12, 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %retval.0.i30 = select i1 %cmp.i29, i32 %13, i32 %8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.49, i32 noundef %retval.0.i30)
  %max_depth = getelementptr inbounds %struct.befs_disk_btree_super, ptr %super, i32 0, i32 2
  %14 = ptrtoint ptr %max_depth to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %max_depth, align 1
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i32 = getelementptr inbounds %struct.befs_sb_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %byte_order.i32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte_order.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i33 = icmp eq i32 %19, 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %retval.0.i34 = select i1 %cmp.i33, i32 %20, i32 %15
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i34)
  %data_type = getelementptr inbounds %struct.befs_disk_btree_super, ptr %super, i32 0, i32 3
  %21 = ptrtoint ptr %data_type to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %data_type, align 1
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i36 = getelementptr inbounds %struct.befs_sb_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %byte_order.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %byte_order.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i37 = icmp eq i32 %26, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %retval.0.i38 = select i1 %cmp.i37, i32 %27, i32 %22
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.51, i32 noundef %retval.0.i38)
  %root_node_ptr = getelementptr inbounds %struct.befs_disk_btree_super, ptr %super, i32 0, i32 4
  %28 = ptrtoint ptr %root_node_ptr to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %root_node_ptr, align 1
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i40 = getelementptr inbounds %struct.befs_sb_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %byte_order.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %byte_order.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i41 = icmp eq i32 %33, 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %29) #6
  %retval.0.i42 = select i1 %cmp.i41, i64 %34, i64 %29
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.52, i64 noundef %retval.0.i42)
  %free_node_ptr = getelementptr inbounds %struct.befs_disk_btree_super, ptr %super, i32 0, i32 5
  %35 = ptrtoint ptr %free_node_ptr to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %free_node_ptr, align 1
  %37 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i44 = getelementptr inbounds %struct.befs_sb_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %byte_order.i44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %byte_order.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i45 = icmp eq i32 %40, 1
  %41 = tail call i64 @llvm.bswap.i64(i64 %36) #6
  %retval.0.i46 = select i1 %cmp.i45, i64 %41, i64 %36
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.53, i64 noundef %retval.0.i46)
  %max_size = getelementptr inbounds %struct.befs_disk_btree_super, ptr %super, i32 0, i32 6
  %42 = ptrtoint ptr %max_size to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %max_size, align 1
  %44 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i48 = getelementptr inbounds %struct.befs_sb_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %byte_order.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %byte_order.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i49 = icmp eq i32 %47, 1
  %48 = tail call i64 @llvm.bswap.i64(i64 %43) #6
  %retval.0.i50 = select i1 %cmp.i49, i64 %48, i64 %43
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.54, i64 noundef %retval.0.i50)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @befs_dump_index_node(ptr noundef %sb, ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.55)
  %0 = ptrtoint ptr %node to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %node, align 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %6 = tail call i64 @llvm.bswap.i64(i64 %1) #6
  %retval.0.i = select i1 %cmp.i, i64 %6, i64 %1
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.56, i64 noundef %retval.0.i)
  %right = getelementptr inbounds %struct.befs_btree_nodehead, ptr %node, i32 0, i32 1
  %7 = ptrtoint ptr %right to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %right, align 1
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i21 = getelementptr inbounds %struct.befs_sb_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %byte_order.i21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %byte_order.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i22 = icmp eq i32 %12, 1
  %13 = tail call i64 @llvm.bswap.i64(i64 %8) #6
  %retval.0.i23 = select i1 %cmp.i22, i64 %13, i64 %8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.57, i64 noundef %retval.0.i23)
  %overflow = getelementptr inbounds %struct.befs_btree_nodehead, ptr %node, i32 0, i32 2
  %14 = ptrtoint ptr %overflow to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %overflow, align 1
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i25 = getelementptr inbounds %struct.befs_sb_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %byte_order.i25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte_order.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i26 = icmp eq i32 %19, 1
  %20 = tail call i64 @llvm.bswap.i64(i64 %15) #6
  %retval.0.i27 = select i1 %cmp.i26, i64 %20, i64 %15
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.58, i64 noundef %retval.0.i27)
  %all_key_count = getelementptr inbounds %struct.befs_btree_nodehead, ptr %node, i32 0, i32 3
  %21 = ptrtoint ptr %all_key_count to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %all_key_count, align 1
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i29 = getelementptr inbounds %struct.befs_sb_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %byte_order.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %byte_order.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i30 = icmp eq i32 %26, 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %22) #6
  %retval.0.i31 = select i1 %cmp.i30, i16 %27, i16 %22
  %conv = zext i16 %retval.0.i31 to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.59, i32 noundef %conv)
  %all_key_length = getelementptr inbounds %struct.befs_btree_nodehead, ptr %node, i32 0, i32 4
  %28 = ptrtoint ptr %all_key_length to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %all_key_length, align 1
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i33 = getelementptr inbounds %struct.befs_sb_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %byte_order.i33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %byte_order.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i34 = icmp eq i32 %33, 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %29) #6
  %retval.0.i35 = select i1 %cmp.i34, i16 %34, i16 %29
  %conv5 = zext i16 %retval.0.i35 to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.60, i32 noundef %conv5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/befs/debug.c", i32 37, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @befs_error._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @befs_error._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/befs/debug.c", i32 50, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @befs_warning._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @befs_warning._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/befs/debug.c", i32 65, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @befs_debug.__UNIQUE_ID_ddebug204, !12, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!16 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/befs/debug.c", i32 78, i32 17}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/befs/debug.c", i32 80, i32 17}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/befs/debug.c", i32 83, i32 17}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/befs/debug.c", i32 86, i32 17}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/befs/debug.c", i32 87, i32 17}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/befs/debug.c", i32 88, i32 17}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/befs/debug.c", i32 89, i32 17}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/befs/debug.c", i32 90, i32 17}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/befs/debug.c", i32 92, i32 17}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/befs/debug.c", i32 96, i32 17}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/befs/debug.c", i32 100, i32 17}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/befs/debug.c", i32 103, i32 17}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/befs/debug.c", i32 104, i32 17}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/befs/debug.c", i32 107, i32 18}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/befs/debug.c", i32 114, i32 19}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/befs/debug.c", i32 118, i32 18}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/befs/debug.c", i32 124, i32 18}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/befs/debug.c", i32 128, i32 18}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/befs/debug.c", i32 135, i32 18}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/befs/debug.c", i32 139, i32 18}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/befs/debug.c", i32 144, i32 18}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/befs/debug.c", i32 162, i32 17}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/befs/debug.c", i32 164, i32 17}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/befs/debug.c", i32 166, i32 17}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/befs/debug.c", i32 169, i32 17}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/befs/debug.c", i32 170, i32 17}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/befs/debug.c", i32 172, i32 17}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/befs/debug.c", i32 173, i32 17}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/befs/debug.c", i32 176, i32 17}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/befs/debug.c", i32 177, i32 17}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/befs/debug.c", i32 179, i32 17}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/befs/debug.c", i32 180, i32 17}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/befs/debug.c", i32 185, i32 17}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/befs/debug.c", i32 188, i32 17}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/befs/debug.c", i32 189, i32 17}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/befs/debug.c", i32 191, i32 17}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/befs/debug.c", i32 194, i32 17}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/befs/debug.c", i32 198, i32 17}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/befs/debug.c", i32 231, i32 17}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/befs/debug.c", i32 232, i32 17}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/befs/debug.c", i32 233, i32 17}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/befs/debug.c", i32 234, i32 17}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/befs/debug.c", i32 236, i32 17}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/befs/debug.c", i32 237, i32 17}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/befs/debug.c", i32 239, i32 17}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/befs/debug.c", i32 241, i32 17}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/befs/debug.c", i32 252, i32 17}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/befs/debug.c", i32 253, i32 17}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/befs/debug.c", i32 254, i32 17}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/befs/debug.c", i32 255, i32 17}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/befs/debug.c", i32 256, i32 17}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/befs/debug.c", i32 258, i32 17}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{!"auto-init"}
!131 = !{i64 2148322640, i64 2148322645, i64 2148322658, i64 2148322702, i64 2148322736, i64 2148322757}
!132 = !{!133}
!133 = distinct !{!133, !134, !"fsrun_to_cpu: %agg.result"}
!134 = distinct !{!134, !"fsrun_to_cpu"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"fsrun_to_cpu: %agg.result"}
!137 = distinct !{!137, !"fsrun_to_cpu"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"fsrun_to_cpu: %agg.result"}
!140 = distinct !{!140, !"fsrun_to_cpu"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"fsrun_to_cpu: %agg.result"}
!143 = distinct !{!143, !"fsrun_to_cpu"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"fsrun_to_cpu: %agg.result"}
!146 = distinct !{!146, !"fsrun_to_cpu"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"fsrun_to_cpu: %agg.result"}
!149 = distinct !{!149, !"fsrun_to_cpu"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"fsrun_to_cpu: %agg.result"}
!152 = distinct !{!152, !"fsrun_to_cpu"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"fsrun_to_cpu: %agg.result"}
!155 = distinct !{!155, !"fsrun_to_cpu"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"fsrun_to_cpu: %agg.result"}
!158 = distinct !{!158, !"fsrun_to_cpu"}
