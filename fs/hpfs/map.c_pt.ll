; ModuleID = '/llk/IR_all_yes/fs/hpfs/map.c_pt.bc'
source_filename = "../fs/hpfs/map.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.hpfs_sb_info = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, ptr, ptr, i32, i32, i32, %struct.callback_head, i32, [256 x i32], [256 x i32] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.code_page_directory = type { i32, i32, [2 x i32], [31 x %struct.anon.78] }
%struct.anon.78 = type { i16, i16, i32, i32, i16, i16 }
%struct.code_page_data = type { i32, i32, [3 x i32], [3 x i16], [3 x %struct.anon.77], [78 x i8] }
%struct.anon.77 = type { i16, i16, i16, [128 x i8], i16 }
%struct.quad_buffer_head = type { [4 x ptr], ptr }
%struct.hpfs_spare_block = type { i32, i32, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [100 x i32], [1 x i32] }
%struct.fnode = type { i32, [2 x i32], i8, [15 x i8], i32, i32, i32, i16, i8, i8, i32, i32, i16, i16, %struct.bplus_header, %union.anon.84, i32, i32, [16 x i8], i16, i8, i8, i32, i32, [316 x i8] }
%struct.bplus_header = type { i8, [3 x i8], i8, i8, i16, %union.anon.79 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { %struct.anon.81, [0 x %struct.bplus_internal_node] }
%struct.anon.81 = type {}
%struct.bplus_internal_node = type { i32, i32 }
%union.anon.84 = type { [8 x %struct.bplus_leaf_node] }
%struct.bplus_leaf_node = type { i32, i32, i32 }
%struct.extended_attribute = type { i8, i8, i8, i8, [0 x i8] }
%struct.anode = type { i32, i32, i32, %struct.bplus_header, %union.anon.85, [3 x i32] }
%union.anon.85 = type { [40 x %struct.bplus_leaf_node] }
%struct.dnode = type { i32, i32, i8, [3 x i8], i32, i32, [2028 x i8] }
%struct.hpfs_dirent = type { i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, [0 x i8] }

@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"hpfs_map_bitmap called with bad parameter: %08x at %s\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid bitmap block pointer %08x -> %08x at %s\00", [48 x i8] zeroinitializer }, align 32
@hpfs_load_code_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013hpfs: Code page directory magic doesn't match (magic = %08x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hpfs_load_code_page\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/hpfs/map.c\00", [18 x i8] zeroinitializer }, align 32
@hpfs_load_code_page._entry_ptr = internal global ptr @hpfs_load_code_page._entry, section ".printk_index", align 4
@hpfs_load_code_page._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013hpfs: n_code_pages == 0\0A\00", [37 x i8] zeroinitializer }, align 32
@hpfs_load_code_page._entry_ptr.7 = internal global ptr @hpfs_load_code_page._entry.5, section ".printk_index", align 4
@hpfs_load_code_page._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hpfs: Code page index out of array\0A\00", [58 x i8] zeroinitializer }, align 32
@hpfs_load_code_page._entry_ptr.10 = internal global ptr @hpfs_load_code_page._entry.8, section ".printk_index", align 4
@hpfs_load_code_page._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013hpfs: Code page index out of sector\0A\00", [57 x i8] zeroinitializer }, align 32
@hpfs_load_code_page._entry_ptr.13 = internal global ptr @hpfs_load_code_page._entry.11, section ".printk_index", align 4
@hpfs_load_code_page._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hpfs: out of memory for code page table\0A\00", [53 x i8] zeroinitializer }, align 32
@hpfs_load_code_page._entry_ptr.16 = internal global ptr @hpfs_load_code_page._entry.14, section ".printk_index", align 4
@hpfs_load_bitmap_directory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013hpfs: can't allocate memory for bitmap directory\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hpfs_load_bitmap_directory\00", [37 x i8] zeroinitializer }, align 32
@hpfs_load_bitmap_directory._entry_ptr = internal global ptr @hpfs_load_bitmap_directory._entry, section ".printk_index", align 4
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid number of hotfixes: %u, used: %u\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't load hotfix map\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fnode\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad magic on fnode %08lx\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bad number of nodes in fnode %08lx\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad first_free pointer in fnode %08lx\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"bad EA info in fnode %08lx: ea_offs == %04x ea_size_s == %04x\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad EA in fnode %08lx\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"anode\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad magic on anode %08x\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"self pointer invalid on anode %08x\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bad number of nodes in anode %08x\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bad first_free pointer in anode %08x\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dnode\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dnode %08x not byte-aligned\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad magic on dnode %08x\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bad self pointer on dnode %08x self = %08x\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dnode %08x has first_free == %08x\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"bad dirent size in dnode %08x, dirent %03x, last %03x\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"namelen does not match dirent size in dnode %08x, dirent %03x, last %03x\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bad down pointer in dnode %08x, dirent %03x, last %03x\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"size on last dirent does not match first_free; dnode %08x\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dnode %08x does not end with \\377 entry\00", [56 x i8] zeroinitializer }, align 32
@hpfs_map_dnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013hpfs: unbalanced dnode tree, dnode %08x; see hpfs.txt 4 more info\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hpfs_map_dnode\00", [17 x i8] zeroinitializer }, align 32
@hpfs_map_dnode._entry_ptr = internal global ptr @hpfs_map_dnode._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@de_down_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.46, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HPFS: de_down_pointer: !de->down\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"de_down_pointer\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/hpfs/hpfs_fn.h\00", [46 x i8] zeroinitializer }, align 32
@de_down_pointer._entry_ptr = internal global ptr @de_down_pointer._entry, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 24, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 29, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 69, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 75, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 84, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 90, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 96, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 119, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 145, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 149, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 167, i32 58 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 175, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 183, i32 9 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 190, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 198, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 207, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 224, i32 58 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 228, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 232, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 237, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 242, i32 19 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 261, i32 37 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 263, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 273, i32 19 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 277, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 281, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 287, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 292, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 298, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 305, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 309, i32 19 }
@___asan_gen_.174 = private constant [17 x i8] c"../fs/hpfs/map.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 313, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [21 x i8] c"../fs/hpfs/hpfs_fn.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 108, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @de_down_pointer._entry, ptr @de_down_pointer._entry_ptr, ptr @hpfs_load_bitmap_directory._entry, ptr @hpfs_load_bitmap_directory._entry_ptr, ptr @hpfs_load_code_page._entry, ptr @hpfs_load_code_page._entry.11, ptr @hpfs_load_code_page._entry.14, ptr @hpfs_load_code_page._entry.5, ptr @hpfs_load_code_page._entry.8, ptr @hpfs_load_code_page._entry_ptr, ptr @hpfs_load_code_page._entry_ptr.10, ptr @hpfs_load_code_page._entry_ptr.13, ptr @hpfs_load_code_page._entry_ptr.16, ptr @hpfs_load_code_page._entry_ptr.7, ptr @hpfs_map_dnode._entry, ptr @hpfs_map_dnode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_load_code_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_load_code_page._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_load_code_page._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_load_code_page._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_load_code_page._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_load_bitmap_directory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_map_dnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_down_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_map_dnode_bitmap(ptr noundef %s, ptr noundef %qbh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_dmap = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sb_dmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_dmap, align 4
  %call1 = tail call ptr @hpfs_map_4sectors(ptr noundef %s, i32 noundef %3, ptr noundef %qbh, i32 noundef 0) #7
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_4sectors(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_map_bitmap(ptr noundef %s, i32 noundef %bmp_block, ptr noundef %qbh, ptr noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_fs_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_fs_size, align 4
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %sb_chk, align 2
  %5 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %add = add i32 %3, 16383
  %shr = lshr i32 %add, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %bmp_block)
  %cmp.not = icmp ugt i32 %shr, %bmp_block
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str, i32 noundef %bmp_block, ptr noundef %id) #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %sb_bmp_dir = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %sb_bmp_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sb_bmp_dir, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %bmp_block
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  %sub = add i32 %3, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub)
  %cmp8 = icmp ugt i32 %10, %sub
  %or.cond37 = select i1 %tobool5.not, i1 true, i1 %cmp8
  br i1 %or.cond37, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef %bmp_block, i32 noundef %10, ptr noundef %id) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %call11 = tail call ptr @hpfs_map_4sectors(ptr noundef %s, i32 noundef %10, ptr noundef %qbh, i32 noundef 4) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %add14 = add i32 %bmp_block, 1
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %sb_fs_size.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %sb_fs_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sb_fs_size.i, align 4
  %add.i = add i32 %14, 16383
  %shr.i = lshr i32 %add.i, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %add14)
  %cmp.not.i = icmp ugt i32 %shr.i, %add14
  br i1 %cmp.not.i, label %if.end.i, label %if.then13.cleanup_crit_edge, !prof !97

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then13
  %sb_bmp_dir.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %12, i32 0, i32 14
  %15 = ptrtoint ptr %sb_bmp_dir.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sb_bmp_dir.i, align 4
  %arrayidx.i = getelementptr i32, ptr %16, i32 %add14
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %add3.i = add i32 %bmp_block, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %shr.i)
  %cmp4.not.i = icmp ult i32 %add3.i, %shr.i
  br i1 %cmp4.not.i, label %if.else.i, label %if.end.i.if.end16.i_crit_edge, !prof !97

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i = getelementptr i32, ptr %16, i32 %add3.i
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.end.i.if.end16.i_crit_edge
  %next_prefetch.0.i = phi i32 [ %22, %if.else.i ], [ 0, %if.end.i.if.end16.i_crit_edge ]
  %add17.i = add i32 %19, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %next_prefetch.0.i)
  %cmp18.i = icmp eq i32 %add17.i, %next_prefetch.0.i
  %add19.i = select i1 %cmp18.i, i32 8, i32 4
  tail call void @hpfs_prefetch_sectors(ptr noundef %s, i32 noundef %19, i32 noundef %add19.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16.i, %if.then13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then9, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ null, %if.then9 ], [ null, %if.end10.cleanup_crit_edge ], [ %call11, %if.then13.cleanup_crit_edge ], [ %call11, %if.end16.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_prefetch_bitmap(ptr noundef %s, i32 noundef %bmp_block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_fs_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_fs_size, align 4
  %add = add i32 %3, 16383
  %shr = lshr i32 %add, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %bmp_block)
  %cmp.not = icmp ugt i32 %shr, %bmp_block
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !97

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sb_bmp_dir = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %sb_bmp_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb_bmp_dir, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %bmp_block
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add3 = add nuw i32 %bmp_block, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %shr)
  %cmp4.not = icmp ult i32 %add3, %shr
  br i1 %cmp4.not, label %if.else, label %if.end.if.end16_crit_edge, !prof !97

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15 = getelementptr i32, ptr %5, i32 %add3
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx15, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end.if.end16_crit_edge
  %next_prefetch.0 = phi i32 [ %11, %if.else ], [ 0, %if.end.if.end16_crit_edge ]
  %add17 = add i32 %8, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %next_prefetch.0)
  %cmp18 = icmp eq i32 %add17, %next_prefetch.0
  %add19 = select i1 %cmp18, i32 8, i32 4
  tail call void @hpfs_prefetch_sectors(ptr noundef %s, i32 noundef %8, i32 noundef %add19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_prefetch_sectors(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @hpfs_load_code_page(ptr noundef %s, i32 noundef %cps) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #7
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !98
  %call = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %cps, ptr noundef nonnull %bh, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -148814519, i32 %2)
  %cmp.not = icmp eq i32 %2, -148814519
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #10
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.then.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %5) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %n_code_pages = getelementptr inbounds %struct.code_page_directory, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %n_code_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_code_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  %tobool.not.i111 = icmp eq ptr %9, null
  br i1 %tobool.not.i111, label %do.end9.cleanup_crit_edge, label %if.then.i112

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i112:                                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %9) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %code_page_data = getelementptr inbounds %struct.code_page_directory, ptr %call, i32 0, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %code_page_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code_page_data, align 4
  %index = getelementptr inbounds %struct.code_page_directory, ptr %call, i32 0, i32 3, i32 0, i32 4
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index, align 4
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bh, align 4
  %tobool.not.i114 = icmp eq ptr %16, null
  br i1 %tobool.not.i114, label %if.end12.brelse.exit116_crit_edge, label %if.then.i115

if.end12.brelse.exit116_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit116

if.then.i115:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %16) #7
  br label %brelse.exit116

brelse.exit116:                                   ; preds = %if.then.i115, %if.end12.brelse.exit116_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %14)
  %cmp15 = icmp ugt i16 %14, 2
  br i1 %cmp15, label %do.end20, label %if.end23

do.end20:                                         ; preds = %brelse.exit116
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end23:                                         ; preds = %brelse.exit116
  %17 = call i32 @llvm.bswap.i32(i32 %11)
  %call24 = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %17, ptr noundef nonnull %bh, i32 noundef 0) #7
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %arrayidx28 = getelementptr %struct.code_page_data, ptr %call24, i32 0, i32 3, i32 %conv
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx28, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  call void @__sanitizer_cov_trace_const_cmp2(i16 376, i16 %20)
  %cmp30 = icmp ugt i16 %20, 376
  br i1 %cmp30, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end27
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  %21 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bh, align 4
  %tobool.not.i117 = icmp eq ptr %22, null
  br i1 %tobool.not.i117, label %do.end35.cleanup_crit_edge, label %if.then.i118

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i118:                                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %22) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 256) #11
  %tobool44.not = icmp eq ptr %call7.i, null
  br i1 %tobool44.not, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end38
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  %24 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bh, align 4
  %tobool.not.i120 = icmp eq ptr %25, null
  br i1 %tobool.not.i120, label %do.end48.cleanup_crit_edge, label %if.then.i121

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i121:                                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %25) #7
  br label %cleanup

if.end51:                                         ; preds = %if.end38
  %conv29 = zext i16 %20 to i32
  %add.ptr = getelementptr i8, ptr %call24, i32 %conv29
  %add.ptr42 = getelementptr i8, ptr %add.ptr, i32 6
  %26 = call ptr @memcpy(ptr %call7.i, ptr %add.ptr42, i32 128)
  %27 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bh, align 4
  %tobool.not.i123 = icmp eq ptr %28, null
  br i1 %tobool.not.i123, label %if.end51.for.body.preheader_crit_edge, label %if.then.i124

if.end51.for.body.preheader_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then.i124:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %28) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then.i124, %if.end51.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0126 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 128, %for.body.preheader ]
  %conv54 = trunc i32 %i.0126 to i8
  %arrayidx55 = getelementptr i8, ptr %call7.i, i32 %i.0126
  %29 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv54, ptr %arrayidx55, align 1
  %inc = add nuw nsw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.for.body59_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.body59_crit_edge:                    ; preds = %for.body
  br label %for.body59

for.body59:                                       ; preds = %for.inc75.for.body59_crit_edge, %for.body.for.body59_crit_edge
  %i.1127 = phi i32 [ %inc76, %for.inc75.for.body59_crit_edge ], [ 128, %for.body.for.body59_crit_edge ]
  %sub = add nsw i32 %i.1127, -128
  %arrayidx60 = getelementptr i8, ptr %call7.i, i32 %sub
  %30 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1127, i32 %conv61)
  %cmp62.not = icmp ne i32 %i.1127, %conv61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp67 = icmp slt i8 %31, 0
  %or.cond = and i1 %cmp67, %cmp62.not
  br i1 %or.cond, label %if.then69, label %for.body59.for.inc75_crit_edge

for.body59.for.inc75_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc75

if.then69:                                        ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  %conv70 = trunc i32 %i.1127 to i8
  %arrayidx73 = getelementptr i8, ptr %call7.i, i32 %conv61
  %32 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv70, ptr %arrayidx73, align 1
  br label %for.inc75

for.inc75:                                        ; preds = %if.then69, %for.body59.for.inc75_crit_edge
  %inc76 = add nuw nsw i32 %i.1127, 1
  %exitcond129.not = icmp eq i32 %inc76, 256
  br i1 %exitcond129.not, label %for.inc75.cleanup_crit_edge, label %for.inc75.for.body59_crit_edge

for.inc75.for.body59_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59

for.inc75.cleanup_crit_edge:                      ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc75.cleanup_crit_edge, %if.then.i121, %do.end48.cleanup_crit_edge, %if.then.i118, %do.end35.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end20, %if.then.i112, %do.end9.cleanup_crit_edge, %if.then.i, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end20 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end23.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.then.i ], [ null, %do.end9.cleanup_crit_edge ], [ null, %if.then.i112 ], [ null, %do.end35.cleanup_crit_edge ], [ null, %if.then.i118 ], [ null, %do.end48.cleanup_crit_edge ], [ null, %if.then.i121 ], [ %call7.i, %for.inc75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_sector(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_load_bitmap_directory(ptr noundef %s, i32 noundef %bmp) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #7
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !98
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %sb_fs_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_fs_size, align 4
  %sub = add i32 %4, 2097151
  %shr = lshr i32 %sub, 21
  %5 = shl nuw nsw i32 %shr, 9
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %sub)
  %cmp27.not = icmp ult i32 %sub, 2097152
  br i1 %cmp27.not, label %for.cond.preheader.cleanup10_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup10_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %cleanup10

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ %inc, %brelse.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add3 = add i32 %i.028, %bmp
  %6 = xor i32 %i.028, -1
  %sub5 = add nsw i32 %shr, %6
  %call6 = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %add3, ptr noundef nonnull %bh, i32 noundef %sub5) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call8.i) #7
  br label %cleanup10

if.end9:                                          ; preds = %for.body
  %mul = shl i32 %i.028, 9
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %mul
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %call6, i32 512)
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end9.brelse.exit_crit_edge, label %if.then.i

if.end9.brelse.exit_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %9) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end9.brelse.exit_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %brelse.exit.cleanup10_crit_edge, label %brelse.exit.for.body_crit_edge

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

brelse.exit.cleanup10_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

cleanup10:                                        ; preds = %brelse.exit.cleanup10_crit_edge, %if.then8, %do.end, %for.cond.preheader.cleanup10_crit_edge
  %retval.2 = phi ptr [ null, %do.end ], [ null, %if.then8 ], [ %call8.i, %for.cond.preheader.cleanup10_crit_edge ], [ %call8.i, %brelse.exit.cleanup10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #7
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_load_hotfix_map(ptr noundef %s, ptr nocapture noundef readonly %spareblock) local_unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #7
  %n_spares = getelementptr inbounds %struct.hpfs_spare_block, ptr %spareblock, i32 0, i32 7
  %0 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %1 = ptrtoint ptr %n_spares to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_spares, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %n_spares_used = getelementptr inbounds %struct.hpfs_spare_block, ptr %spareblock, i32 0, i32 6
  %4 = ptrtoint ptr %n_spares_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_spares_used, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp = icmp ugt i32 %3, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp1 = icmp ugt i32 %6, %3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef %6) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hotfix_map = getelementptr inbounds %struct.hpfs_spare_block, ptr %spareblock, i32 0, i32 5
  %7 = ptrtoint ptr %hotfix_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hotfix_map, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %call = call ptr @hpfs_map_4sectors(ptr noundef %s, i32 noundef %9, ptr noundef nonnull %qbh, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp438.not = icmp eq i32 %5, 0
  br i1 %cmp438.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %umax = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %for.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.20) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call, i32 %i.039
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx6 = getelementptr %struct.hpfs_sb_info, ptr %14, i32 0, i32 20, i32 %i.039
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %arrayidx6, align 4
  %add = add i32 %i.039, %3
  %arrayidx7 = getelementptr i32, ptr %call, i32 %add
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx9 = getelementptr %struct.hpfs_sb_info, ptr %20, i32 0, i32 21, i32 %i.039
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %arrayidx9, align 4
  %inc = add nuw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %s_fs_info.i37 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i37, align 16
  %n_hotfixes11 = getelementptr inbounds %struct.hpfs_sb_info, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %n_hotfixes11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %6, ptr %n_hotfixes11, align 4
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_brelse4(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_map_fnode(ptr noundef %s, i32 noundef %ino, ptr noundef %bhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %sb_chk, align 2
  %3 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @hpfs_chk_sectors(ptr noundef %s, i32 noundef %ino, i32 noundef 1, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup76_crit_edge

if.then.cleanup76_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %ino, ptr noundef %bhp, i32 noundef 16) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup76_crit_edge, label %if.then7

if.end4.cleanup76_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

if.then7:                                         ; preds = %if.end4
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk9 = getelementptr inbounds %struct.hpfs_sb_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sb_chk9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load10 = load i16, ptr %sb_chk9, align 2
  %7 = and i16 %bf.load10, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool14.not = icmp eq i16 %7, 0
  br i1 %tobool14.not, label %if.then7.cleanup76_crit_edge, label %if.then15

if.then7.cleanup76_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

if.then15:                                        ; preds = %if.then7
  %8 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1375017737, i32 %9)
  %cmp.not = icmp eq i32 %9, -1375017737
  br i1 %cmp.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.22, i32 noundef %ino) #7
  br label %bail

if.end17:                                         ; preds = %if.then15
  %flags.i = getelementptr inbounds %struct.fnode, ptr %call5, i32 0, i32 13
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i.not = icmp eq i16 %12, 0
  br i1 %cmp.i.not, label %if.then19, label %if.end17.if.end43_crit_edge

if.end17.if.end43_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then19:                                        ; preds = %if.end17
  %btree = getelementptr inbounds %struct.fnode, ptr %call5, i32 0, i32 14
  %n_used_nodes = getelementptr inbounds %struct.fnode, ptr %call5, i32 0, i32 14, i32 3
  %13 = ptrtoint ptr %n_used_nodes to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %n_used_nodes, align 1
  %conv = zext i8 %14 to i32
  %n_free_nodes = getelementptr inbounds %struct.fnode, ptr %call5, i32 0, i32 14, i32 2
  %15 = ptrtoint ptr %n_free_nodes to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %n_free_nodes, align 4
  %conv21 = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv21, %conv
  %17 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %btree, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i = icmp slt i8 %18, 0
  %cond = select i1 %tobool.i, i32 12, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond)
  %cmp25.not = icmp eq i32 %add, %cond
  br i1 %cmp25.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.23, i32 noundef %ino) #7
  br label %bail

if.end28:                                         ; preds = %if.then19
  %first_free = getelementptr inbounds %struct.fnode, ptr %call5, i32 0, i32 14, i32 4
  %19 = ptrtoint ptr %first_free to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %first_free, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv30 = zext i16 %21 to i32
  %cond37 = select i1 %tobool.i, i32 8, i32 12
  %mul = mul nuw nsw i32 %cond37, %conv
  %add38 = add nuw nsw i32 %mul, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %conv30)
  %cmp39.not = icmp eq i32 %add38, %conv30
  br i1 %cmp39.not, label %if.end28.if.end43_crit_edge, label %if.then41

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then41:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %ino) #7
  br label %bail

if.end43:                                         ; preds = %if.end28.if.end43_crit_edge, %if.end17.if.end43_crit_edge
  %ea_size_s = getelementptr inbounds %struct.fnode, ptr %call5, i32 0, i32 12
  %22 = ptrtoint ptr %ea_size_s to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ea_size_s, align 4
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv44 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool45.not = icmp eq i16 %23, 0
  br i1 %tobool45.not, label %if.end43.if.end63_crit_edge, label %land.lhs.true

if.end43.if.end63_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end43
  %ea_offs = getelementptr inbounds %struct.fnode, ptr %call5, i32 0, i32 19
  %25 = ptrtoint ptr %ea_offs to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ea_offs, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  call void @__sanitizer_cov_trace_const_cmp2(i16 196, i16 %27)
  %cmp47 = icmp ult i16 %27, 196
  %.pre = zext i16 %27 to i32
  br i1 %cmp47, label %land.lhs.true.if.then58_crit_edge, label %lor.lhs.false

land.lhs.true.if.then58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

lor.lhs.false:                                    ; preds = %land.lhs.true
  %acl_size_s = getelementptr inbounds %struct.fnode, ptr %call5, i32 0, i32 7
  %28 = ptrtoint ptr %acl_size_s to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %acl_size_s, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv51 = zext i16 %30 to i32
  %add52 = add nuw nsw i32 %.pre, %conv44
  %add55 = add nuw nsw i32 %add52, %conv51
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add55)
  %cmp56 = icmp ugt i32 %add55, 512
  br i1 %cmp56, label %lor.lhs.false.if.then58_crit_edge, label %lor.lhs.false.if.end63_crit_edge

lor.lhs.false.if.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %land.lhs.true.if.then58_crit_edge
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef %ino, i32 noundef %.pre, i32 noundef %conv44) #7
  br label %bail

if.end63:                                         ; preds = %lor.lhs.false.if.end63_crit_edge, %if.end43.if.end63_crit_edge
  %ea_offs.i = getelementptr inbounds %struct.fnode, ptr %call5, i32 0, i32 19
  %31 = ptrtoint ptr %ea_offs.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ea_offs.i, align 4
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #7
  %conv.i = zext i16 %33 to i32
  %add.ptr.i = getelementptr i8, ptr %call5, i32 %conv.i
  %acl_size_s.i = getelementptr inbounds %struct.fnode, ptr %call5, i32 0, i32 7
  %34 = ptrtoint ptr %acl_size_s.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %acl_size_s.i, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #7
  %conv1.i = zext i16 %36 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %conv44
  %cmp66.not126 = icmp eq ptr %add.ptr2.i, %add.ptr4.i
  br i1 %cmp66.not126, label %if.end63.cleanup76_crit_edge, label %if.end63.while.body_crit_edge

if.end63.while.body_crit_edge:                    ; preds = %if.end63
  br label %while.body

if.end63.cleanup76_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

while.body:                                       ; preds = %if.end71.while.body_crit_edge, %if.end63.while.body_crit_edge
  %ea.0127 = phi ptr [ %add.ptr2.i123, %if.end71.while.body_crit_edge ], [ %add.ptr2.i, %if.end63.while.body_crit_edge ]
  %cmp68 = icmp ugt ptr %ea.0127, %add.ptr4.i
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.26, i32 noundef %ino) #7
  br label %bail

if.end71:                                         ; preds = %while.body
  %add.ptr.i121 = getelementptr i8, ptr %ea.0127, i32 5
  %namelen.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0127, i32 0, i32 1
  %37 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %namelen.i, align 1
  %conv.i122 = zext i8 %38 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i121, i32 %conv.i122
  %valuelen_lo.i.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0127, i32 0, i32 2
  %39 = ptrtoint ptr %valuelen_lo.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %valuelen_lo.i.i, align 1
  %conv.i.i = zext i8 %40 to i32
  %valuelen_hi.i.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.0127, i32 0, i32 3
  %41 = ptrtoint ptr %valuelen_hi.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %valuelen_hi.i.i, align 1
  %conv1.i.i = zext i8 %42 to i32
  %mul.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %add.i.i = or i32 %mul.i.i, %conv.i.i
  %add.ptr2.i123 = getelementptr i8, ptr %add.ptr1.i, i32 %add.i.i
  %cmp66.not = icmp eq ptr %add.ptr2.i123, %add.ptr4.i
  br i1 %cmp66.not, label %if.end71.cleanup76_crit_edge, label %if.end71.while.body_crit_edge

if.end71.while.body_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end71.cleanup76_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

bail:                                             ; preds = %if.then70, %if.then58, %if.then41, %if.then27, %if.then16
  %43 = ptrtoint ptr %bhp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bhp, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %bail.cleanup76_crit_edge, label %if.then.i

bail.cleanup76_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

if.then.i:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %44) #7
  br label %cleanup76

cleanup76:                                        ; preds = %if.then.i, %bail.cleanup76_crit_edge, %if.end71.cleanup76_crit_edge, %if.end63.cleanup76_crit_edge, %if.then7.cleanup76_crit_edge, %if.end4.cleanup76_crit_edge, %if.then.cleanup76_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup76_crit_edge ], [ %call5, %if.then7.cleanup76_crit_edge ], [ null, %if.end4.cleanup76_crit_edge ], [ null, %bail.cleanup76_crit_edge ], [ null, %if.then.i ], [ %call5, %if.end63.cleanup76_crit_edge ], [ %call5, %if.end71.cleanup76_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_chk_sectors(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %ano, ptr noundef %bhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %sb_chk, align 2
  %3 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @hpfs_chk_sectors(ptr noundef %s, i32 noundef %ano, i32 noundef 1, ptr noundef nonnull @.str.27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %ano, ptr noundef %bhp, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk9 = getelementptr inbounds %struct.hpfs_sb_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sb_chk9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load10 = load i16, ptr %sb_chk9, align 2
  %7 = and i16 %bf.load10, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool14.not = icmp eq i16 %7, 0
  br i1 %tobool14.not, label %if.then7.cleanup_crit_edge, label %if.then15

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.then7
  %8 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1375017929, i32 %9)
  %cmp.not = icmp eq i32 %9, -1375017929
  br i1 %cmp.not, label %if.end17, label %if.then15.bail_crit_edge

if.then15.bail_crit_edge:                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %bail

if.end17:                                         ; preds = %if.then15
  %self = getelementptr inbounds %struct.anode, ptr %call5, i32 0, i32 1
  %10 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %self, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %ano)
  %cmp18.not = icmp eq i32 %12, %ano
  br i1 %cmp18.not, label %if.end20, label %if.end17.bail_crit_edge

if.end17.bail_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %bail

if.end20:                                         ; preds = %if.end17
  %btree = getelementptr inbounds %struct.anode, ptr %call5, i32 0, i32 3
  %n_used_nodes = getelementptr inbounds %struct.anode, ptr %call5, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %n_used_nodes to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %n_used_nodes, align 1
  %conv = zext i8 %14 to i32
  %n_free_nodes = getelementptr inbounds %struct.anode, ptr %call5, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %n_free_nodes to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %n_free_nodes, align 4
  %conv22 = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv22, %conv
  %17 = ptrtoint ptr %btree to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %btree, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i = icmp slt i8 %18, 0
  %cond = select i1 %tobool.i, i32 60, i32 40
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond)
  %cmp26.not = icmp eq i32 %add, %cond
  br i1 %cmp26.not, label %if.end29, label %if.end20.bail_crit_edge

if.end20.bail_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %bail

if.end29:                                         ; preds = %if.end20
  %first_free = getelementptr inbounds %struct.anode, ptr %call5, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %first_free to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %first_free, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv31 = zext i16 %21 to i32
  %cond38 = select i1 %tobool.i, i32 8, i32 12
  %mul = mul nuw nsw i32 %cond38, %conv
  %add39 = add nuw nsw i32 %mul, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %conv31)
  %cmp40.not = icmp eq i32 %add39, %conv31
  br i1 %cmp40.not, label %if.end29.cleanup_crit_edge, label %if.end29.bail_crit_edge

if.end29.bail_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %bail

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bail:                                             ; preds = %if.end29.bail_crit_edge, %if.end20.bail_crit_edge, %if.end17.bail_crit_edge, %if.then15.bail_crit_edge
  %.str.31.sink = phi ptr [ @.str.28, %if.then15.bail_crit_edge ], [ @.str.29, %if.end17.bail_crit_edge ], [ @.str.30, %if.end20.bail_crit_edge ], [ @.str.31, %if.end29.bail_crit_edge ]
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull %.str.31.sink, i32 noundef %ano) #7
  %22 = ptrtoint ptr %bhp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bhp, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %bail.cleanup_crit_edge, label %if.then.i

bail.cleanup_crit_edge:                           ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %bail.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %call5, %if.then7.cleanup_crit_edge ], [ %call5, %if.end29.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ null, %bail.cleanup_crit_edge ], [ null, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_map_dnode(ptr noundef %s, i32 noundef %secno, ptr noundef %qbh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %sb_chk, align 2
  %3 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @hpfs_chk_sectors(ptr noundef %s, i32 noundef %secno, i32 noundef 4, ptr noundef nonnull @.str.32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup153_crit_edge

if.then.cleanup153_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup153

if.end:                                           ; preds = %if.then
  %and = and i32 %secno, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef %secno) #7
  br label %cleanup153

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call ptr @hpfs_map_4sectors(ptr noundef %s, i32 noundef %secno, ptr noundef %qbh, i32 noundef 72) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup153_crit_edge, label %if.then10

if.end7.cleanup153_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup153

if.then10:                                        ; preds = %if.end7
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk12 = getelementptr inbounds %struct.hpfs_sb_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sb_chk12 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load13 = load i16, ptr %sb_chk12, align 2
  %7 = and i16 %bf.load13, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool17.not = icmp eq i16 %7, 0
  br i1 %tobool17.not, label %if.then10.cleanup153_crit_edge, label %if.then18

if.then10.cleanup153_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup153

if.then18:                                        ; preds = %if.then10
  %8 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1375017865, i32 %9)
  %cmp.not = icmp eq i32 %9, -1375017865
  br i1 %cmp.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %secno) #7
  br label %bail

if.end20:                                         ; preds = %if.then18
  %self = getelementptr inbounds %struct.dnode, ptr %call8, i32 0, i32 5
  %10 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %self, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %secno)
  %cmp21.not = icmp eq i32 %12, %secno
  br i1 %cmp21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.35, i32 noundef %secno, i32 noundef %12) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %first_free = getelementptr inbounds %struct.dnode, ptr %call8, i32 0, i32 1
  %13 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %first_free, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %15)
  %cmp25 = icmp ugt i32 %15, 2048
  br i1 %cmp25, label %if.then26, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end24
  %16 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %first_free, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %18)
  %cmp30248 = icmp ugt i32 %18, 20
  br i1 %cmp30248, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %s_flags = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  br label %for.body

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.36, i32 noundef %secno, i32 noundef %15) #7
  br label %bail

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %b.0252 = phi i32 [ 0, %for.body.lr.ph ], [ %b.1, %for.inc.for.body_crit_edge ]
  %pp.0251 = phi i32 [ 0, %for.body.lr.ph ], [ %p.0249, %for.inc.for.body_crit_edge ]
  %p.0249 = phi i32 [ 20, %for.body.lr.ph ], [ %add121, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call8, i32 %p.0249
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv = zext i16 %21 to i32
  %22 = add i16 %21, -293
  call void @__sanitizer_cov_trace_const_cmp2(i16 -261, i16 %22)
  %23 = icmp ult i16 %22, -261
  %and40 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp ne i32 %and40, 0
  %or.cond225 = select i1 %23, i1 true, i1 %tobool41.not
  %add = add i32 %p.0249, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add)
  %cmp45 = icmp ugt i32 %add, 2048
  %or.cond226 = select i1 %or.cond225, i1 true, i1 %cmp45
  br i1 %or.cond226, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.37, i32 noundef %secno, i32 noundef %p.0249, i32 noundef %pp.0251) #7
  br label %bail

if.end48:                                         ; preds = %for.body
  %namelen = getelementptr inbounds %struct.hpfs_dirent, ptr %add.ptr, i32 0, i32 10
  %24 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %namelen, align 2
  %conv49 = zext i8 %25 to i32
  %down = getelementptr inbounds %struct.hpfs_dirent, ptr %add.ptr, i32 0, i32 1
  %26 = ptrtoint ptr %down to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load51 = load i16, ptr %down, align 2
  %27 = lshr i16 %bf.load51, 8
  %28 = and i16 %27, 4
  %mul = zext i16 %28 to i32
  %add56 = add nuw nsw i32 %conv49, 34
  %add57 = add nuw nsw i32 %add56, %mul
  %and58 = and i32 %add57, 1020
  call void @__sanitizer_cov_trace_cmp4(i32 %and58, i32 %conv)
  %cmp61.not = icmp eq i32 %and58, %conv
  br i1 %cmp61.not, label %if.end48.ok_crit_edge, label %if.then63

if.end48.ok_crit_edge:                            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %ok

if.then63:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_cmp4(i32 %and58, i32 %conv)
  %cmp79 = icmp ult i32 %and58, %conv
  br i1 %cmp79, label %land.lhs.true, label %if.then63.if.end84_crit_edge

if.then63.if.end84_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

land.lhs.true:                                    ; preds = %if.then63
  %29 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_flags, align 4
  %and81 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %land.lhs.true.if.end84_crit_edge, label %land.lhs.true.ok_crit_edge

land.lhs.true.ok_crit_edge:                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %ok

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.end84:                                         ; preds = %land.lhs.true.if.end84_crit_edge, %if.then63.if.end84_crit_edge
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %secno, i32 noundef %p.0249, i32 noundef %pp.0251) #7
  br label %bail

ok:                                               ; preds = %land.lhs.true.ok_crit_edge, %if.end48.ok_crit_edge
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk87 = getelementptr inbounds %struct.hpfs_sb_info, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %sb_chk87 to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load88 = load i16, ptr %sb_chk87, align 2
  %34 = and i16 %bf.load88, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp92.not = icmp eq i16 %34, 0
  %bf.lshr97 = lshr i16 %bf.load51, 10
  %35 = and i16 %bf.lshr97, 1
  %bf.cast99 = zext i16 %35 to i32
  %shl = shl nuw nsw i32 1, %bf.cast99
  %or = select i1 %cmp92.not, i32 0, i32 %shl
  %b.1 = or i32 %or, %b.0252
  %36 = and i16 %bf.load51, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool107.not = icmp eq i16 %36, 0
  br i1 %tobool107.not, label %ok.for.inc_crit_edge, label %de_down_pointer.exit

ok.for.inc_crit_edge:                             ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

de_down_pointer.exit:                             ; preds = %ok
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #7
  %conv.i = zext i16 %39 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 -4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr1.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %42)
  %cmp110 = icmp ult i32 %42, 16
  br i1 %cmp110, label %if.then112, label %de_down_pointer.exit.for.inc_crit_edge

de_down_pointer.exit.for.inc_crit_edge:           ; preds = %de_down_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then112:                                       ; preds = %de_down_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %secno, i32 noundef %p.0249, i32 noundef %pp.0251) #7
  br label %bail

for.inc:                                          ; preds = %de_down_pointer.exit.for.inc_crit_edge, %ok.for.inc_crit_edge
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr, align 1
  %conv115 = zext i8 %44 to i32
  %add116 = add nuw i32 %p.0249, 1
  %arrayidx117 = getelementptr i8, ptr %call8, i32 %add116
  %45 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %46 to i32
  %shl119 = shl nuw nsw i32 %conv118, 8
  %add120 = or i32 %shl119, %conv115
  %add121 = add i32 %add120, %p.0249
  %cmp30 = icmp ult i32 %add121, %18
  br i1 %cmp30, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %p.0.lcssa = phi i32 [ 20, %for.cond.preheader.for.end_crit_edge ], [ %add121, %for.inc.for.end_crit_edge ]
  %pp.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %p.0249, %for.inc.for.end_crit_edge ]
  %b.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %b.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0.lcssa, i32 %18)
  %cmp123.not = icmp eq i32 %p.0.lcssa, %18
  br i1 %cmp123.not, label %if.end126, label %if.then125

if.then125:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %secno) #7
  br label %bail

if.end126:                                        ; preds = %for.end
  %add127 = add i32 %pp.0.lcssa, 30
  %arrayidx128 = getelementptr i8, ptr %call8, i32 %add127
  %47 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp130.not = icmp eq i8 %48, 1
  br i1 %cmp130.not, label %lor.lhs.false132, label %if.end126.if.then138_crit_edge

if.end126.if.then138_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then138

lor.lhs.false132:                                 ; preds = %if.end126
  %add133 = add i32 %pp.0.lcssa, 31
  %arrayidx134 = getelementptr i8, ptr %call8, i32 %add133
  %49 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp136.not = icmp eq i8 %50, -1
  br i1 %cmp136.not, label %if.end139, label %lor.lhs.false132.if.then138_crit_edge

lor.lhs.false132.if.then138_crit_edge:            ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then138

if.then138:                                       ; preds = %lor.lhs.false132.if.then138_crit_edge, %if.end126.if.then138_crit_edge
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.41, i32 noundef %secno) #7
  br label %bail

if.end139:                                        ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %b.0.lcssa)
  %cmp140 = icmp eq i32 %b.0.lcssa, 3
  br i1 %cmp140, label %do.end, label %if.end139.cleanup153_crit_edge

if.end139.cleanup153_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup153

do.end:                                           ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %secno) #10
  br label %cleanup153

bail:                                             ; preds = %if.then138, %if.then125, %if.then112, %if.end84, %if.then47, %if.then26, %if.then19
  tail call void @hpfs_brelse4(ptr noundef %qbh) #7
  br label %cleanup153

cleanup153:                                       ; preds = %bail, %do.end, %if.end139.cleanup153_crit_edge, %if.then10.cleanup153_crit_edge, %if.end7.cleanup153_crit_edge, %if.then5, %if.then.cleanup153_crit_edge
  %retval.0 = phi ptr [ null, %if.then5 ], [ null, %bail ], [ null, %if.then.cleanup153_crit_edge ], [ %call8, %if.then10.cleanup153_crit_edge ], [ null, %if.end7.cleanup153_crit_edge ], [ %call8, %if.end139.cleanup153_crit_edge ], [ %call8, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_fnode_dno(ptr noundef %s, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #7
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !98
  %call = call ptr @hpfs_map_fnode(ptr noundef %s, i32 noundef %ino, ptr noundef nonnull %bh)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %disk_secno = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 2
  %1 = ptrtoint ptr %disk_secno to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %disk_secno, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %3, %if.end.cleanup_crit_edge ], [ %3, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hpfs/map.c", i32 24, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/hpfs/map.c", i32 29, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/hpfs/map.c", i32 69, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hpfs_load_code_page._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @hpfs_load_code_page._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hpfs/map.c", i32 75, i32 3}
!12 = !{ptr @hpfs_load_code_page._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hpfs_load_code_page._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/hpfs/map.c", i32 84, i32 3}
!16 = !{ptr @hpfs_load_code_page._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hpfs_load_code_page._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/hpfs/map.c", i32 90, i32 3}
!20 = !{ptr @hpfs_load_code_page._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @hpfs_load_code_page._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/hpfs/map.c", i32 96, i32 3}
!24 = !{ptr @hpfs_load_code_page._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @hpfs_load_code_page._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/hpfs/map.c", i32 119, i32 3}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hpfs_load_bitmap_directory._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @hpfs_load_bitmap_directory._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/hpfs/map.c", i32 145, i32 17}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/hpfs/map.c", i32 149, i32 17}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/hpfs/map.c", i32 167, i32 58}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/hpfs/map.c", i32 175, i32 19}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/hpfs/map.c", i32 183, i32 9}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/hpfs/map.c", i32 190, i32 10}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/hpfs/map.c", i32 198, i32 6}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/hpfs/map.c", i32 207, i32 20}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/hpfs/map.c", i32 224, i32 58}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/hpfs/map.c", i32 228, i32 19}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/hpfs/map.c", i32 232, i32 19}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/hpfs/map.c", i32 237, i32 19}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/hpfs/map.c", i32 242, i32 19}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/hpfs/map.c", i32 261, i32 37}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/hpfs/map.c", i32 263, i32 18}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/hpfs/map.c", i32 273, i32 19}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/hpfs/map.c", i32 277, i32 19}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/hpfs/map.c", i32 281, i32 19}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/hpfs/map.c", i32 287, i32 20}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/hpfs/map.c", i32 292, i32 20}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/hpfs/map.c", i32 298, i32 20}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/hpfs/map.c", i32 305, i32 19}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/hpfs/map.c", i32 309, i32 19}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/hpfs/map.c", i32 313, i32 5}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @hpfs_map_dnode._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @hpfs_map_dnode._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/hpfs/hpfs_fn.h", i32 108, i32 3}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @de_down_pointer._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @de_down_pointer._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{!"auto-init"}
