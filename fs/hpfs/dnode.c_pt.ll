; ModuleID = '/llk/IR_all_yes/fs/hpfs/dnode.c_pt.bc'
source_filename = "../fs/hpfs/dnode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dnode = type { i32, i32, i8, [3 x i8], i32, i32, [2028 x i8] }
%struct.hpfs_dirent = type { i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, [0 x i8] }
%struct.quad_buffer_head = type { [4 x ptr], ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hpfs_sb_info = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, ptr, ptr, i32, i32, i32, %struct.callback_head, i32, [256 x i32], [256 x i32] }
%struct.fnode = type { i32, [2 x i32], i8, [15 x i8], i32, i32, i32, i16, i8, i8, i32, i32, i16, i16, %struct.bplus_header, %union.anon.82, i32, i32, [16 x i8], i16, i8, i8, i32, i32, [316 x i8] }
%struct.bplus_header = type { i8, [3 x i8], i8, i8, i16, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.anon.79, [0 x %struct.bplus_internal_node] }
%struct.anon.79 = type {}
%struct.bplus_internal_node = type { i32, i32 }
%union.anon.82 = type { [8 x %struct.bplus_leaf_node] }
%struct.bplus_leaf_node = type { i32, i32, i32 }

@hpfs_add_pos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hpfs: out of memory for position list\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hpfs_add_pos\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/hpfs/dnode.c\00", [16 x i8] zeroinitializer }, align 32
@hpfs_add_pos._entry_ptr = internal global ptr @hpfs_add_pos._entry, section ".printk_index", align 4
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"name (%c,%d) already exists in dnode %08x\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hpfs_add_dirent\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"hpfs_remove_dirent: attempt to delete first or last dirent in dnode %08x\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hpfs_count_dnodes #1\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"hpfs_count_dnodes: bad up pointer; dnode %08x, down %08x points to %08x\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"hpfs_count_dnodes: pointer to dnode %08x not found in dnode %08x, got here from %08x\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hpfs_count_dnodes #2\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hpfs_de_as_down_as_possible\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"hpfs_de_as_down_as_possible: bad up pointer; dnode %08x, down %08x points to %08x\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"map_pos_dirent: pos crossed dnode boundary; pos = %08llx\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"map_pos_dirent: pos crossed dnode boundary; dnode = %08x\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"map_pos_dirent: pointer to dnode %08x not found in parent dnode %08x\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"map_dirent: not a directory\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"map_dirent\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"directory %08x is corrupted or not empty\00", [55 x i8] zeroinitializer }, align 32
@map_fnode_dirent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hpfs: out of memory, can't map dirent\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"map_fnode_dirent\00", [47 x i8] zeroinitializer }, align 32
@map_fnode_dirent._entry_ptr = internal global ptr @map_fnode_dirent._entry, section ".printk_index", align 4
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"fnode %08x has non-directory parent %08x\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"pointer to dnode %08x not found in dnode %08x\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"map_fnode_dirent #1\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"map_fnode_dirent #2\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dirent for fnode %08x not found\00", [32 x i8] zeroinitializer }, align 32
@dnode_end_de._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.27, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HPFS: dnode_end_de: dnode->first_free = %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dnode_end_de\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/hpfs/hpfs_fn.h\00", [46 x i8] zeroinitializer }, align 32
@dnode_end_de._entry_ptr = internal global ptr @dnode_end_de._entry, section ".printk_index", align 4
@de_next_de._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.27, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HPFS: de_next_de: de->length = %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"de_next_de\00", [21 x i8] zeroinitializer }, align 32
@de_next_de._entry_ptr = internal global ptr @de_next_de._entry, section ".printk_index", align 4
@de_down_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.27, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HPFS: de_down_pointer: !de->down\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"de_down_pointer\00", [16 x i8] zeroinitializer }, align 32
@de_down_pointer._entry_ptr = internal global ptr @de_down_pointer._entry, section ".printk_index", align 4
@hpfs_add_to_dnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hpfs: out of memory, can't add to dnode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hpfs_add_to_dnode\00", [46 x i8] zeroinitializer }, align 32
@hpfs_add_to_dnode._entry_ptr = internal global ptr @hpfs_add_to_dnode._entry, section ".printk_index", align 4
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(): namelen == %d\00", [44 x i8] zeroinitializer }, align 32
@hpfs_add_to_dnode._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hpfs: out of memory for dnode splitting\0A\00", [53 x i8] zeroinitializer }, align 32
@hpfs_add_to_dnode._entry_ptr.37 = internal global ptr @hpfs_add_to_dnode._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unable to alloc dnode - dnode tree will be corrupted\00", [43 x i8] zeroinitializer }, align 32
@hpfs_pos_ins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013hpfs: %s(): %08x + %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hpfs_pos_ins\00", [19 x i8] zeroinitializer }, align 32
@hpfs_pos_ins._entry_ptr = internal global ptr @hpfs_pos_ins._entry, section ".printk_index", align 4
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set_last_pointer: empty dnode %08x\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"set_last_pointer: dnode %08x has already last pointer %08x\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"set_last_pointer: bad last dirent in dnode %08x\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"set_last_pointer: too long dnode %08x\00", [58 x i8] zeroinitializer }, align 32
@hpfs_pos_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013hpfs: %s(): %08x - %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hpfs_pos_del\00", [19 x i8] zeroinitializer }, align 32
@hpfs_pos_del._entry_ptr = internal global ptr @hpfs_pos_del._entry, section ".printk_index", align 4
@get_pos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016hpfs: %s(): not_found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"get_pos\00", [24 x i8] zeroinitializer }, align 32
@get_pos._entry_ptr = internal global ptr @get_pos._entry, section ".printk_index", align 4
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"attempt to delete last dirent in dnode %08x\00", [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"move_to_top\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"move_to_top: up pointer from %08x should be %08x, is %08x\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"move_to_top: dnode %08x has no last de\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"move_to_top: got to root_dnode while moving from %08x to %08x\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"move_to_top: dnode %08x doesn't point down to %08x\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"out of memory for dirent - directory will be corrupted\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delete_empty_dnode\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"delete_empty_dnode: root dnode %08x is empty\00", [51 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"bad pointer to fnode, dnode %08x, pointing to %08x, should be %08lx\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"delete_empty_dnode: pointer to dnode %08x not found in dnode %08x\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"delete_empty_dnode: dnode %08x, first_free == %03x\00", [45 x i8] zeroinitializer }, align 32
@delete_empty_dnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hpfs: out of memory for dtree balancing\0A\00", [53 x i8] zeroinitializer }, align 32
@delete_empty_dnode._entry_ptr = internal global ptr @delete_empty_dnode._entry, section ".printk_index", align 4
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"delete_empty_dnode: empty dnode %08x\00", [59 x i8] zeroinitializer }, align 32
@delete_empty_dnode._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013hpfs: unbalanced dnode tree, see hpfs.txt 4 more info\0A\00", [39 x i8] zeroinitializer }, align 32
@delete_empty_dnode._entry_ptr.65 = internal global ptr @delete_empty_dnode._entry.63, section ".printk_index", align 4
@delete_empty_dnode._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hpfs: terminating balancing operation\0A\00", [55 x i8] zeroinitializer }, align 32
@delete_empty_dnode._entry_ptr.68 = internal global ptr @delete_empty_dnode._entry.66, section ".printk_index", align 4
@delete_empty_dnode._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@delete_empty_dnode._entry_ptr.70 = internal global ptr @delete_empty_dnode._entry.69, section ".printk_index", align 4
@delete_empty_dnode._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.56, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013hpfs: goin'on\0A\00", [47 x i8] zeroinitializer }, align 32
@delete_empty_dnode._entry_ptr.73 = internal global ptr @delete_empty_dnode._entry.71, section ".printk_index", align 4
@delete_empty_dnode._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@delete_empty_dnode._entry_ptr.75 = internal global ptr @delete_empty_dnode._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"map_nth_dirent: n too high; dnode = %08x, requested %08x\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 872415232, i64 939524096]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 38, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 183, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 401, i32 48 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 718, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 755, i32 42 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 760, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 766, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 791, i32 42 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 828, i32 40 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 833, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 867, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 890, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 898, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 918, i32 55 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 921, i32 52 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 990, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1014, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1031, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1051, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1066, i32 43 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1085, i32 44 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1092, i32 16 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 123, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 131, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [21 x i8] c"../fs/hpfs/hpfs_fn.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 108, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 253, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 258, i32 23 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 295, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 305, i32 23 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 101, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 144, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 149, i32 18 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 154, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 161, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 113, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 21, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 208, i32 17 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 446, i32 49 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 451, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 459, i32 24 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 477, i32 24 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 483, i32 24 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 497, i32 23 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 528, i32 47 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 538, i32 24 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 553, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 578, i32 23 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 599, i32 23 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 611, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 638, i32 24 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 652, i32 7 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 653, i32 7 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 659, i32 6 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 660, i32 6 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 674, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.318 = private constant [19 x i8] c"../fs/hpfs/dnode.c\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 814, i32 16 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @de_down_pointer._entry, ptr @de_down_pointer._entry_ptr, ptr @de_next_de._entry, ptr @de_next_de._entry_ptr, ptr @delete_empty_dnode._entry, ptr @delete_empty_dnode._entry.63, ptr @delete_empty_dnode._entry.66, ptr @delete_empty_dnode._entry.69, ptr @delete_empty_dnode._entry.71, ptr @delete_empty_dnode._entry.74, ptr @delete_empty_dnode._entry_ptr, ptr @delete_empty_dnode._entry_ptr.65, ptr @delete_empty_dnode._entry_ptr.68, ptr @delete_empty_dnode._entry_ptr.70, ptr @delete_empty_dnode._entry_ptr.73, ptr @delete_empty_dnode._entry_ptr.75, ptr @dnode_end_de._entry, ptr @dnode_end_de._entry_ptr, ptr @get_pos._entry, ptr @get_pos._entry_ptr, ptr @hpfs_add_pos._entry, ptr @hpfs_add_pos._entry_ptr, ptr @hpfs_add_to_dnode._entry, ptr @hpfs_add_to_dnode._entry.35, ptr @hpfs_add_to_dnode._entry_ptr, ptr @hpfs_add_to_dnode._entry_ptr.37, ptr @hpfs_pos_del._entry, ptr @hpfs_pos_del._entry_ptr, ptr @hpfs_pos_ins._entry, ptr @hpfs_pos_ins._entry_ptr, ptr @map_fnode_dirent._entry, ptr @map_fnode_dirent._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.72, ptr @.str.76], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_add_pos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_fnode_dirent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnode_end_de._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_next_de._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_down_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_add_to_dnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_add_to_dnode._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_pos_ins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_pos_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_empty_dnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_empty_dnode._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_empty_dnode._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_empty_dnode._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_empty_dnode._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_empty_dnode._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_add_pos(ptr nocapture noundef %inode, ptr noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rddir_off = getelementptr i8, ptr %inode, i32 -4
  %0 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_rddir_off, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then8_crit_edge, label %for.cond.preheader

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not60 = icmp eq ptr %3, null
  br i1 %tobool2.not60, label %for.cond.preheader.if.then8_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.then8_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %4 = phi ptr [ %6, %for.inc.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %cmp = icmp eq ptr %4, %pos
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.061, 1
  %arrayidx = getelementptr ptr, ptr %1, i32 %inc
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end6, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end6:                                          ; preds = %for.inc
  %and = and i32 %inc, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.then8_crit_edge, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %for.cond.preheader.if.then8_crit_edge, %entry.if.then8_crit_edge
  %i.152 = phi i32 [ %inc, %if.end6.if.then8_crit_edge ], [ 0, %entry.if.then8_crit_edge ], [ 0, %for.cond.preheader.if.then8_crit_edge ]
  %add = add i32 %i.152, 17
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.then8.do.end_crit_edge, label %if.end7.i, !prof !162

if.then8.do.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.i:                                        ; preds = %if.then8
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3136) #11
  %tobool10.not = icmp eq ptr %call8.i, null
  br i1 %tobool10.not, label %if.end7.i.do.end_crit_edge, label %if.end13

if.end7.i.do.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end7.i.do.end_crit_edge, %if.then8.do.end_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7.i
  %10 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_rddir_off, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %i.152, 3
  %12 = call ptr @memcpy(ptr %call8.i, ptr %11, i32 %mul)
  %13 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_rddir_off, align 4
  tail call void @kfree(ptr noundef %14) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %15 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i, ptr %i_rddir_off, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end6.if.end21_crit_edge
  %i.151 = phi i32 [ %i.152, %if.end19 ], [ %inc, %if.end6.if.end21_crit_edge ]
  %16 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_rddir_off, align 4
  %arrayidx23 = getelementptr ptr, ptr %17, i32 %i.151
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pos, ptr %arrayidx23, align 4
  %19 = load ptr, ptr %i_rddir_off, align 4
  %add25 = add i32 %i.151, 1
  %arrayidx26 = getelementptr ptr, ptr %19, i32 %add25
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %do.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_del_pos(ptr nocapture noundef %inode, ptr noundef readnone %pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rddir_off = getelementptr i8, ptr %inode, i32 -4
  %0 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_rddir_off, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not37 = icmp eq ptr %3, null
  br i1 %tobool2.not37, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %4 = phi ptr [ %6, %for.inc.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.038 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %for.cond.preheader.for.body_crit_edge ]
  %cmp = icmp eq ptr %4, %pos
  br i1 %cmp, label %for.body.for.cond5_crit_edge, label %for.inc

for.body.for.cond5_crit_edge:                     ; preds = %for.body
  br label %for.cond5

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr ptr, ptr %i.038, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond5:                                        ; preds = %for.cond5.for.cond5_crit_edge, %for.body.for.cond5_crit_edge
  %i.0.pn = phi ptr [ %j.0, %for.cond5.for.cond5_crit_edge ], [ %i.038, %for.body.for.cond5_crit_edge ]
  %j.0 = getelementptr ptr, ptr %i.0.pn, i32 1
  %7 = ptrtoint ptr %j.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %j.0, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %for.end10, label %for.cond5.for.cond5_crit_edge

for.cond5.for.cond5_crit_edge:                    ; preds = %for.cond5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond5

for.end10:                                        ; preds = %for.cond5
  %9 = ptrtoint ptr %i.0.pn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i.0.pn, align 4
  %11 = ptrtoint ptr %i.038 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %i.038, align 4
  store ptr null, ptr %i.0.pn, align 4
  %12 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_rddir_off, align 4
  %cmp15 = icmp eq ptr %i.0.pn, %13
  br i1 %cmp15, label %if.then16, label %for.end10.cleanup_crit_edge

for.end10.cleanup_crit_edge:                      ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %i.0.pn) #8
  %14 = ptrtoint ptr %i_rddir_off to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %i_rddir_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %for.end10.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_add_de(ptr noundef %s, ptr noundef %d, ptr noundef %name, i32 noundef %namelen, i32 noundef %down_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %first_free.i = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_free.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %3 = add i32 %2, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %3)
  %4 = icmp ult i32 %3, 2541
  br i1 %4, label %entry.dnode_end_de.exit_crit_edge, label %do.end.i

entry.dnode_end_de.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %2) #12
  br label %dnode_end_de.exit

dnode_end_de.exit:                                ; preds = %do.end.i, %entry.dnode_end_de.exit_crit_edge
  %5 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %first_free.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %add.ptr.i = getelementptr i8, ptr %d, i32 %7
  %add1.i = add i32 %namelen, 34
  %and.i = and i32 %add1.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %down_ptr)
  %tobool.not.i = icmp eq i32 %down_ptr, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 4
  %add2.i = add i32 %cond.i, %and.i
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 6
  %cmp75 = icmp ult ptr %dirent.i, %add.ptr.i
  br i1 %cmp75, label %dnode_end_de.exit.for.body_crit_edge, label %dnode_end_de.exit.for.end_crit_edge

dnode_end_de.exit.for.end_crit_edge:              ; preds = %dnode_end_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

dnode_end_de.exit.for.body_crit_edge:             ; preds = %dnode_end_de.exit
  br label %for.body

for.body:                                         ; preds = %de_next_de.exit.for.body_crit_edge, %dnode_end_de.exit.for.body_crit_edge
  %de.076 = phi ptr [ %add.ptr.i70, %de_next_de.exit.for.body_crit_edge ], [ %dirent.i, %dnode_end_de.exit.for.body_crit_edge ]
  %name3 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.076, i32 0, i32 11
  %namelen4 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.076, i32 0, i32 10
  %8 = ptrtoint ptr %namelen4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %namelen4, align 2
  %conv = zext i8 %9 to i32
  %last = getelementptr inbounds %struct.hpfs_dirent, ptr %de.076, i32 0, i32 1
  %10 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %last, align 2
  %bf.lshr = lshr i16 %bf.load, 11
  %11 = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %11 to i32
  %call6 = tail call i32 @hpfs_compare_names(ptr noundef %s, ptr noundef %name, i32 noundef %namelen, ptr noundef %name3, i32 noundef %conv, i32 noundef %bf.cast) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %name, align 1
  %conv7 = zext i8 %13 to i32
  %self = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 5
  %14 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %self, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv7, i32 noundef %namelen, i32 noundef %16) #8
  br label %cleanup30

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp slt i32 %call6, 0
  br i1 %cmp8, label %if.end.for.end_crit_edge, label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end
  %17 = ptrtoint ptr %de.076 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %de.076, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  %20 = add i16 %19, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %20)
  %21 = icmp ult i16 %20, 2016
  br i1 %21, label %for.inc.de_next_de.exit_crit_edge, label %do.end.i69

for.inc.de_next_de.exit_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i69:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %19 to i32
  %call.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i69, %for.inc.de_next_de.exit_crit_edge
  %22 = ptrtoint ptr %de.076 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %de.076, align 4
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #8
  %conv9.i = zext i16 %24 to i32
  %add.ptr.i70 = getelementptr i8, ptr %de.076, i32 %conv9.i
  %cmp = icmp ult ptr %add.ptr.i70, %add.ptr.i
  br i1 %cmp, label %de_next_de.exit.for.body_crit_edge, label %de_next_de.exit.for.end_crit_edge

de_next_de.exit.for.end_crit_edge:                ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

de_next_de.exit.for.body_crit_edge:               ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %de_next_de.exit.for.end_crit_edge, %if.end.for.end_crit_edge, %dnode_end_de.exit.for.end_crit_edge
  %de.0.lcssa = phi ptr [ %dirent.i, %dnode_end_de.exit.for.end_crit_edge ], [ %de.076, %if.end.for.end_crit_edge ], [ %add.ptr.i70, %de_next_de.exit.for.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %de.0.lcssa, i32 %add2.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %de.0.lcssa to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %25 = call ptr @memmove(ptr %add.ptr, ptr %de.0.lcssa, i32 %sub.ptr.sub)
  %26 = call ptr @memset(ptr %de.0.lcssa, i32 0, i32 %add2.i)
  br i1 %tobool.not.i, label %for.end.if.end19_crit_edge, label %if.then14

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %down_ptr)
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 -4
  %28 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr16, align 4
  %down = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0.lcssa, i32 0, i32 1
  %29 = ptrtoint ptr %down to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load17 = load i16, ptr %down, align 2
  %bf.set = or i16 %bf.load17, 1024
  store i16 %bf.set, ptr %down, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %for.end.if.end19_crit_edge
  %conv20 = trunc i32 %add2.i to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %31 = ptrtoint ptr %de.0.lcssa to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %de.0.lcssa, align 4
  %call21 = tail call i32 @hpfs_is_name_long(ptr noundef %name, i32 noundef %namelen) #8
  %not_8x3 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0.lcssa, i32 0, i32 1
  %32 = trunc i32 %call21 to i16
  %33 = ptrtoint ptr %not_8x3 to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load23 = load i16, ptr %not_8x3, align 2
  %bf.value = shl i16 %32, 6
  %bf.shl = and i16 %bf.value, 64
  %bf.clear24 = and i16 %bf.load23, -65
  %bf.set25 = or i16 %bf.shl, %bf.clear24
  store i16 %bf.set25, ptr %not_8x3, align 2
  %conv26 = trunc i32 %namelen to i8
  %namelen27 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0.lcssa, i32 0, i32 10
  %34 = ptrtoint ptr %namelen27 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv26, ptr %namelen27, align 2
  %name28 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0.lcssa, i32 0, i32 11
  %35 = call ptr @memcpy(ptr %name28, ptr %name, i32 %namelen)
  %36 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %first_free.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %add.i = add i32 %38, %add2.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %add.i) #8
  %40 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %first_free.i, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %if.end19, %cleanup.thread
  %retval.2 = phi ptr [ %de.0.lcssa, %if.end19 ], [ null, %cleanup.thread ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_compare_names(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_is_name_long(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_add_dirent(ptr nocapture noundef %i, ptr noundef %name, i32 noundef %namelen, ptr noundef %new_de) local_unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #8
  %0 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #8
  %1 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c1, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #8
  %2 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %c2, align 4
  %i_dno = getelementptr i8, ptr %i, i32 -36
  %3 = ptrtoint ptr %i_dno to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_dno, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  br label %down

down:                                             ; preds = %de_down_pointer.exit, %entry
  %dno.0 = phi i32 [ %4, %entry ], [ %34, %de_down_pointer.exit ]
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %sb_chk, align 2
  %10 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %down.if.end6_crit_edge, label %if.then

down.if.end6_crit_edge:                           ; preds = %down
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %down
  %call3 = call i32 @hpfs_stop_cycles(ptr noundef %6, i32 noundef %dno.0, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %down.if.end6_crit_edge
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %call8 = call ptr @hpfs_map_dnode(ptr noundef %12, i32 noundef %dno.0, ptr noundef nonnull %qbh) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %first_free.i = getelementptr inbounds %struct.dnode, ptr %call8, i32 0, i32 1
  %13 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %first_free.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = add i32 %15, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %16)
  %17 = icmp ult i32 %16, 2541
  br i1 %17, label %if.end11.dnode_end_de.exit_crit_edge, label %do.end.i

if.end11.dnode_end_de.exit_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %15) #12
  br label %dnode_end_de.exit

dnode_end_de.exit:                                ; preds = %do.end.i, %if.end11.dnode_end_de.exit_crit_edge
  %18 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %first_free.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #8
  %add.ptr.i73 = getelementptr i8, ptr %call8, i32 %20
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %call8, i32 0, i32 6
  %cmp92 = icmp ult ptr %dirent.i, %add.ptr.i73
  br i1 %cmp92, label %dnode_end_de.exit.for.body_crit_edge, label %dnode_end_de.exit.for.end_crit_edge

dnode_end_de.exit.for.end_crit_edge:              ; preds = %dnode_end_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

dnode_end_de.exit.for.body_crit_edge:             ; preds = %dnode_end_de.exit
  br label %for.body

for.body:                                         ; preds = %de_next_de.exit.for.body_crit_edge, %dnode_end_de.exit.for.body_crit_edge
  %de.093 = phi ptr [ %add.ptr.i79, %de_next_de.exit.for.body_crit_edge ], [ %dirent.i, %dnode_end_de.exit.for.body_crit_edge ]
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %name15 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.093, i32 0, i32 11
  %namelen16 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.093, i32 0, i32 10
  %23 = ptrtoint ptr %namelen16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %namelen16, align 2
  %conv = zext i8 %24 to i32
  %last = getelementptr inbounds %struct.hpfs_dirent, ptr %de.093, i32 0, i32 1
  %25 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load17 = load i16, ptr %last, align 2
  %bf.lshr18 = lshr i16 %bf.load17, 11
  %26 = and i16 %bf.lshr18, 1
  %bf.cast20 = zext i16 %26 to i32
  %call22 = call i32 @hpfs_compare_names(ptr noundef %22, ptr noundef %name, i32 noundef %namelen, ptr noundef %name15, i32 noundef %conv, i32 noundef %bf.cast20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  br label %cleanup

if.end25:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp26 = icmp slt i32 %call22, 0
  br i1 %cmp26, label %if.then28, label %for.inc

if.then28:                                        ; preds = %if.end25
  %last.le = getelementptr inbounds %struct.hpfs_dirent, ptr %de.093, i32 0, i32 1
  %27 = ptrtoint ptr %last.le to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load30 = load i16, ptr %last.le, align 2
  %28 = and i16 %bf.load30, 1024
  %tobool34.not = icmp eq i16 %28, 0
  br i1 %tobool34.not, label %if.then28.for.end_crit_edge, label %de_down_pointer.exit

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

de_down_pointer.exit:                             ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %de.093 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %de.093, align 4
  %31 = call i16 @llvm.bswap.i16(i16 %30) #8
  %conv.i = zext i16 %31 to i32
  %add.ptr.i76 = getelementptr i8, ptr %de.093, i32 -4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i76, i32 %conv.i
  %32 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr1.i, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  br label %down

for.inc:                                          ; preds = %if.end25
  %35 = ptrtoint ptr %de.093 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %de.093, align 4
  %37 = call i16 @llvm.bswap.i16(i16 %36) #8
  %38 = add i16 %37, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %38)
  %39 = icmp ult i16 %38, 2016
  br i1 %39, label %for.inc.de_next_de.exit_crit_edge, label %do.end.i78

for.inc.de_next_de.exit_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i78:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %37 to i32
  %call.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i78, %for.inc.de_next_de.exit_crit_edge
  %40 = ptrtoint ptr %de.093 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %de.093, align 4
  %42 = call i16 @llvm.bswap.i16(i16 %41) #8
  %conv9.i = zext i16 %42 to i32
  %add.ptr.i79 = getelementptr i8, ptr %de.093, i32 %conv9.i
  %cmp = icmp ult ptr %add.ptr.i79, %add.ptr.i73
  br i1 %cmp, label %de_next_de.exit.for.body_crit_edge, label %de_next_de.exit.for.end_crit_edge

de_next_de.exit.for.end_crit_edge:                ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

de_next_de.exit.for.body_crit_edge:               ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %de_next_de.exit.for.end_crit_edge, %if.then28.for.end_crit_edge, %dnode_end_de.exit.for.end_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %call41 = call i32 @hpfs_check_free_dnodes(ptr noundef %44, i32 noundef 58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = call fastcc i32 @hpfs_add_to_dnode(ptr noundef %i, i32 noundef %dno.0, ptr noundef %name, i32 noundef %namelen, ptr noundef %new_de, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %for.end.cleanup_crit_edge, %if.then24, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then24 ], [ %call45, %if.end44 ], [ 1, %for.end.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_stop_cycles(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_dnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_brelse4(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @de_down_pointer(ptr nocapture noundef readonly %de) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %down = getelementptr inbounds %struct.hpfs_dirent, ptr %de, i32 0, i32 1
  %0 = ptrtoint ptr %down to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %down, align 2
  %1 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %de to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %de, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %de, i32 %conv
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -4
  %5 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr1, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_check_free_dnodes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hpfs_add_to_dnode(ptr nocapture noundef %i, i32 noundef %dno, ptr noundef %name, i32 noundef %namelen, ptr noundef readonly %new_de, i32 noundef %down_ptr) unnamed_addr #0 align 64 {
entry:
  %qbh.i = alloca %struct.quad_buffer_head, align 4
  %qbh = alloca %struct.quad_buffer_head, align 4
  %qbh1 = alloca %struct.quad_buffer_head, align 4
  %qbh2 = alloca %struct.quad_buffer_head, align 4
  %adno = alloca i32, align 4
  %rdno = alloca i32, align 4
  %nde = alloca %struct.hpfs_dirent, align 4
  %bh = alloca ptr, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #8
  %0 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh1) #8
  %1 = call ptr @memset(ptr %qbh1, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh2) #8
  %2 = call ptr @memset(ptr %qbh2, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adno) #8
  %3 = ptrtoint ptr %adno to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %adno, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdno) #8
  %4 = ptrtoint ptr %rdno to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rdno, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nde) #8
  %5 = call ptr @memset(ptr %nde, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #8
  %7 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %c1, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #8
  %8 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %c2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3136, i32 noundef 256) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %go_up.preheader

go_up.preheader:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %namelen)
  %cmp590 = icmp ugt i32 %namelen, 255
  %i_sb = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  br i1 %cmp590, label %if.then2, label %if.end3.lr.ph

if.end3.lr.ph:                                    ; preds = %go_up.preheader
  %i_rddir_off.i325 = getelementptr i8, ptr %i, i32 -4
  %i_size = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 14
  %i_blocks = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 22
  %down.i372 = getelementptr inbounds %struct.hpfs_dirent, ptr %nde, i32 0, i32 1
  %i_dno = getelementptr i8, ptr %i, i32 -36
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call5767 = call ptr @hpfs_map_dnode(ptr noundef %11, i32 noundef %dno, ptr noundef nonnull %qbh) #8
  %tobool6.not768 = icmp eq ptr %call5767, null
  br i1 %tobool6.not768, label %if.end3.lr.ph.if.then7_crit_edge, label %if.end3.lr.ph.go_up_a_crit_edge

if.end3.lr.ph.go_up_a_crit_edge:                  ; preds = %if.end3.lr.ph
  br label %go_up_a

if.end3.lr.ph.if.then7_crit_edge:                 ; preds = %if.end3.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.then2:                                         ; preds = %go_up.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %13, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %namelen) #8
  call void @kfree(ptr noundef null) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.then7:                                         ; preds = %if.then119.if.then7_crit_edge, %if.end3.lr.ph.if.then7_crit_edge
  %nd.0594.lcssa = phi ptr [ null, %if.end3.lr.ph.if.then7_crit_edge ], [ %nd.2, %if.then119.if.then7_crit_edge ]
  call void @kfree(ptr noundef %nd.0594.lcssa) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

go_up_a:                                          ; preds = %go_up_a.backedge, %if.end3.lr.ph.go_up_a_crit_edge
  %namelen.addr.1 = phi i32 [ %namelen.addr.1.be, %go_up_a.backedge ], [ %namelen, %if.end3.lr.ph.go_up_a_crit_edge ]
  %new_de.addr.1 = phi ptr [ %nde, %go_up_a.backedge ], [ %new_de, %if.end3.lr.ph.go_up_a_crit_edge ]
  %down_ptr.addr.1 = phi i32 [ %160, %go_up_a.backedge ], [ %down_ptr, %if.end3.lr.ph.go_up_a_crit_edge ]
  %d.0 = phi ptr [ %d.0.be, %go_up_a.backedge ], [ %call5767, %if.end3.lr.ph.go_up_a_crit_edge ]
  %nd.1 = phi ptr [ %nd.2, %go_up_a.backedge ], [ null, %if.end3.lr.ph.go_up_a_crit_edge ]
  %name.addr.1 = phi ptr [ %call7.i, %go_up_a.backedge ], [ %name, %if.end3.lr.ph.go_up_a_crit_edge ]
  %dno.addr.1 = phi i32 [ %dno.addr.1.be, %go_up_a.backedge ], [ %dno, %if.end3.lr.ph.go_up_a_crit_edge ]
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %sb_chk, align 2
  %19 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool11.not = icmp eq i16 %19, 0
  br i1 %tobool11.not, label %go_up_a.if.end18_crit_edge, label %if.then12

go_up_a.if.end18_crit_edge:                       ; preds = %go_up_a
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %go_up_a
  %call14 = call i32 @hpfs_stop_cycles(ptr noundef %15, i32 noundef %dno.addr.1, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.if.end18_crit_edge, label %if.then16

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @kfree(ptr noundef %nd.1) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %go_up_a.if.end18_crit_edge
  %first_free = getelementptr inbounds %struct.dnode, ptr %d.0, i32 0, i32 1
  %20 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %first_free, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %add1.i = add i32 %namelen.addr.1, 34
  %and.i = and i32 %add1.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %down_ptr.addr.1)
  %tobool.not.i = icmp eq i32 %down_ptr.addr.1, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 4
  %add2.i = add i32 %cond.i, %and.i
  %add = add i32 %add2.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %add)
  %cmp20 = icmp ult i32 %add, 2049
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end18
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %call23 = call ptr @hpfs_add_de(ptr noundef %24, ptr noundef nonnull %d.0, ptr noundef %name.addr.1, i32 noundef %namelen.addr.1, i32 noundef %down_ptr.addr.1)
  %tobool.not.i293 = icmp eq ptr %call23, null
  %tobool1.not.i = icmp eq ptr %new_de.addr.1, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i293
  br i1 %or.cond.i, label %if.then21.copy_de.exit_crit_edge, label %if.end.i

if.then21.copy_de.exit_crit_edge:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_de.exit

if.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %down.i = getelementptr %struct.hpfs_dirent, ptr %call23, i32 0, i32 1
  %25 = ptrtoint ptr %down.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %down.i, align 2
  %add.ptr7.i = getelementptr i8, ptr %new_de.addr.1, i32 2
  %26 = call ptr @memcpy(ptr %down.i, ptr %add.ptr7.i, i32 28)
  %bf.load10.i = load i16, ptr %down.i, align 2
  %bf.clear11.i = and i16 %bf.load10.i, -1089
  %bf.set.i = and i16 %bf.load.i, 1088
  %bf.set18.i = or i16 %bf.clear11.i, %bf.set.i
  store i16 %bf.set18.i, ptr %down.i, align 2
  br label %copy_de.exit

copy_de.exit:                                     ; preds = %if.end.i, %if.then21.copy_de.exit_crit_edge
  %call24 = call fastcc i64 @get_pos(ptr noundef nonnull %d.0, ptr noundef %call23)
  %27 = ptrtoint ptr %i_rddir_off.i325 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_rddir_off.i325, align 4
  %tobool.not.i294 = icmp eq ptr %28, null
  br i1 %tobool.not.i294, label %copy_de.exit.for_all_poss.exit312_crit_edge, label %for.cond.preheader.i

copy_de.exit.for_all_poss.exit312_crit_edge:      ; preds = %copy_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit312

for.cond.preheader.i:                             ; preds = %copy_de.exit
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool2.not8.i = icmp eq ptr %30, null
  br i1 %tobool2.not8.i, label %for.cond.preheader.i.for_all_poss.exit312_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.for_all_poss.exit312_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit312

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %and1.i = and i64 %call24, -64
  %and3.i = and i64 %call24, 63
  br label %for.body.i

for.body.i:                                       ; preds = %hpfs_pos_ins.exit.for.body.i_crit_edge, %for.body.i.preheader
  %31 = phi ptr [ %37, %hpfs_pos_ins.exit.for.body.i_crit_edge ], [ %30, %for.body.i.preheader ]
  %i.09.i = phi ptr [ %incdec.ptr.i, %hpfs_pos_ins.exit.for.body.i_crit_edge ], [ %28, %for.body.i.preheader ]
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %31, align 8
  %and.i434 = and i64 %33, -64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i434, i64 %and1.i)
  %cmp.i435 = icmp eq i64 %and.i434, %and1.i
  br i1 %cmp.i435, label %land.lhs.true.i, label %for.body.i.hpfs_pos_ins.exit_crit_edge

for.body.i.hpfs_pos_ins.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_ins.exit

land.lhs.true.i:                                  ; preds = %for.body.i
  %and2.i = and i64 %33, 63
  call void @__sanitizer_cov_trace_cmp8(i64 %and2.i, i64 %and3.i)
  %cmp4.not.i = icmp ult i64 %and2.i, %and3.i
  br i1 %cmp4.not.i, label %land.lhs.true.i.hpfs_pos_ins.exit_crit_edge, label %if.then.i438

land.lhs.true.i.hpfs_pos_ins.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_ins.exit

if.then.i438:                                     ; preds = %land.lhs.true.i
  %34 = trunc i64 %and2.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %34)
  %cmp6.i = icmp eq i32 %34, 63
  br i1 %cmp6.i, label %do.end.i441, label %if.else.i

do.end.i441:                                      ; preds = %if.then.i438
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i439 = trunc i64 %33 to i32
  %call.i440 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %conv9.i439, i32 noundef 0) #12
  br label %hpfs_pos_ins.exit

if.else.i:                                        ; preds = %if.then.i438
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i437 = add nuw nsw i32 %34, 1
  %conv12.i518 = zext i32 %conv.i437 to i64
  %or.i = or i64 %and1.i, %conv12.i518
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %or.i, ptr %31, align 8
  br label %hpfs_pos_ins.exit

hpfs_pos_ins.exit:                                ; preds = %if.else.i, %do.end.i441, %land.lhs.true.i.hpfs_pos_ins.exit_crit_edge, %for.body.i.hpfs_pos_ins.exit_crit_edge
  %incdec.ptr.i = getelementptr ptr, ptr %i.09.i, i32 1
  %36 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i, label %for_all_poss.exit, label %hpfs_pos_ins.exit.for.body.i_crit_edge

hpfs_pos_ins.exit.for.body.i_crit_edge:           ; preds = %hpfs_pos_ins.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for_all_poss.exit:                                ; preds = %hpfs_pos_ins.exit
  %38 = ptrtoint ptr %i_rddir_off.i325 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load ptr, ptr %i_rddir_off.i325, align 4
  %tobool.not.i296 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i296, label %for_all_poss.exit.for_all_poss.exit312_crit_edge, label %for.cond.preheader.i298

for_all_poss.exit.for_all_poss.exit312_crit_edge: ; preds = %for_all_poss.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit312

for.cond.preheader.i298:                          ; preds = %for_all_poss.exit
  %39 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr493 = load ptr, ptr %.pr, align 4
  %tobool2.not8.i297 = icmp eq ptr %.pr493, null
  br i1 %tobool2.not8.i297, label %for.cond.preheader.i298.for_all_poss.exit312_crit_edge, label %for.cond.preheader.i298.for.body.i302_crit_edge

for.cond.preheader.i298.for.body.i302_crit_edge:  ; preds = %for.cond.preheader.i298
  br label %for.body.i302

for.cond.preheader.i298.for_all_poss.exit312_crit_edge: ; preds = %for.cond.preheader.i298
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit312

for.body.i302:                                    ; preds = %hpfs_pos_subst.exit.for.body.i302_crit_edge, %for.cond.preheader.i298.for.body.i302_crit_edge
  %40 = phi ptr [ %45, %hpfs_pos_subst.exit.for.body.i302_crit_edge ], [ %.pr493, %for.cond.preheader.i298.for.body.i302_crit_edge ]
  %i.09.i299 = phi ptr [ %incdec.ptr.i300, %hpfs_pos_subst.exit.for.body.i302_crit_edge ], [ %.pr, %for.cond.preheader.i298.for.body.i302_crit_edge ]
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %42)
  %cmp.i442 = icmp eq i64 %42, 4
  br i1 %cmp.i442, label %if.then.i443, label %for.body.i302.hpfs_pos_subst.exit_crit_edge

for.body.i302.hpfs_pos_subst.exit_crit_edge:      ; preds = %for.body.i302
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit

if.then.i443:                                     ; preds = %for.body.i302
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %call24, ptr %40, align 8
  br label %hpfs_pos_subst.exit

hpfs_pos_subst.exit:                              ; preds = %if.then.i443, %for.body.i302.hpfs_pos_subst.exit_crit_edge
  %incdec.ptr.i300 = getelementptr ptr, ptr %i.09.i299, i32 1
  %44 = ptrtoint ptr %incdec.ptr.i300 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %incdec.ptr.i300, align 4
  %tobool2.not.i301 = icmp eq ptr %45, null
  br i1 %tobool2.not.i301, label %for_all_poss.exit303, label %hpfs_pos_subst.exit.for.body.i302_crit_edge

hpfs_pos_subst.exit.for.body.i302_crit_edge:      ; preds = %hpfs_pos_subst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i302

for_all_poss.exit303:                             ; preds = %hpfs_pos_subst.exit
  %46 = ptrtoint ptr %i_rddir_off.i325 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr495.pr = load ptr, ptr %i_rddir_off.i325, align 4
  %add25 = add i64 %call24, 1
  %tobool.not.i305 = icmp eq ptr %.pr495.pr, null
  br i1 %tobool.not.i305, label %for_all_poss.exit303.for_all_poss.exit312_crit_edge, label %for.cond.preheader.i307

for_all_poss.exit303.for_all_poss.exit312_crit_edge: ; preds = %for_all_poss.exit303
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit312

for.cond.preheader.i307:                          ; preds = %for_all_poss.exit303
  %47 = ptrtoint ptr %.pr495.pr to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr502.pr = load ptr, ptr %.pr495.pr, align 4
  %tobool2.not8.i306 = icmp eq ptr %.pr502.pr, null
  br i1 %tobool2.not8.i306, label %for.cond.preheader.i307.for_all_poss.exit312_crit_edge, label %for.cond.preheader.i307.for.body.i311_crit_edge

for.cond.preheader.i307.for.body.i311_crit_edge:  ; preds = %for.cond.preheader.i307
  br label %for.body.i311

for.cond.preheader.i307.for_all_poss.exit312_crit_edge: ; preds = %for.cond.preheader.i307
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit312

for.body.i311:                                    ; preds = %hpfs_pos_subst.exit448.for.body.i311_crit_edge, %for.cond.preheader.i307.for.body.i311_crit_edge
  %48 = phi ptr [ %53, %hpfs_pos_subst.exit448.for.body.i311_crit_edge ], [ %.pr502.pr, %for.cond.preheader.i307.for.body.i311_crit_edge ]
  %i.09.i308 = phi ptr [ %incdec.ptr.i309, %hpfs_pos_subst.exit448.for.body.i311_crit_edge ], [ %.pr495.pr, %for.cond.preheader.i307.for.body.i311_crit_edge ]
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %48, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %50)
  %cmp.i445 = icmp eq i64 %50, 5
  br i1 %cmp.i445, label %if.then.i446, label %for.body.i311.hpfs_pos_subst.exit448_crit_edge

for.body.i311.hpfs_pos_subst.exit448_crit_edge:   ; preds = %for.body.i311
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit448

if.then.i446:                                     ; preds = %for.body.i311
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add25, ptr %48, align 8
  br label %hpfs_pos_subst.exit448

hpfs_pos_subst.exit448:                           ; preds = %if.then.i446, %for.body.i311.hpfs_pos_subst.exit448_crit_edge
  %incdec.ptr.i309 = getelementptr ptr, ptr %i.09.i308, i32 1
  %52 = ptrtoint ptr %incdec.ptr.i309 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %incdec.ptr.i309, align 4
  %tobool2.not.i310 = icmp eq ptr %53, null
  br i1 %tobool2.not.i310, label %hpfs_pos_subst.exit448.for_all_poss.exit312_crit_edge, label %hpfs_pos_subst.exit448.for.body.i311_crit_edge

hpfs_pos_subst.exit448.for.body.i311_crit_edge:   ; preds = %hpfs_pos_subst.exit448
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i311

hpfs_pos_subst.exit448.for_all_poss.exit312_crit_edge: ; preds = %hpfs_pos_subst.exit448
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit312

for_all_poss.exit312:                             ; preds = %hpfs_pos_subst.exit448.for_all_poss.exit312_crit_edge, %for.cond.preheader.i307.for_all_poss.exit312_crit_edge, %for_all_poss.exit303.for_all_poss.exit312_crit_edge, %for.cond.preheader.i298.for_all_poss.exit312_crit_edge, %for_all_poss.exit.for_all_poss.exit312_crit_edge, %for.cond.preheader.i.for_all_poss.exit312_crit_edge, %copy_de.exit.for_all_poss.exit312_crit_edge
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @kfree(ptr noundef %nd.1) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %tobool27.not = icmp eq ptr %nd.1, null
  br i1 %tobool27.not, label %if.then28, label %if.end26.if.end38_crit_edge

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then28:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i292 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3136, i32 noundef 2340) #13
  %tobool30.not = icmp eq ptr %call7.i292, null
  br i1 %tobool30.not, label %do.end34, label %if.then28.if.end38_crit_edge

if.then28.if.end38_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end38:                                         ; preds = %if.then28.if.end38_crit_edge, %if.end26.if.end38_crit_edge
  %nd.2 = phi ptr [ %nd.1, %if.end26.if.end38_crit_edge ], [ %call7.i292, %if.then28.if.end38_crit_edge ]
  %55 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %first_free, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %58 = call ptr @memcpy(ptr %nd.2, ptr %d.0, i32 %57)
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  %call41 = call ptr @hpfs_add_de(ptr noundef %60, ptr noundef nonnull %nd.2, ptr noundef %name.addr.1, i32 noundef %namelen.addr.1, i32 noundef %down_ptr.addr.1)
  %tobool.not.i313 = icmp eq ptr %call41, null
  %tobool1.not.i314 = icmp eq ptr %new_de.addr.1, null
  %or.cond.i315 = or i1 %tobool1.not.i314, %tobool.not.i313
  br i1 %or.cond.i315, label %if.end38.copy_de.exit324_crit_edge, label %if.end.i323

if.end38.copy_de.exit324_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_de.exit324

if.end.i323:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %down.i316 = getelementptr %struct.hpfs_dirent, ptr %call41, i32 0, i32 1
  %61 = ptrtoint ptr %down.i316 to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i317 = load i16, ptr %down.i316, align 2
  %add.ptr7.i318 = getelementptr i8, ptr %new_de.addr.1, i32 2
  %62 = call ptr @memcpy(ptr %down.i316, ptr %add.ptr7.i318, i32 28)
  %bf.load10.i319 = load i16, ptr %down.i316, align 2
  %bf.clear11.i320 = and i16 %bf.load10.i319, -1089
  %bf.set.i321 = and i16 %bf.load.i317, 1088
  %bf.set18.i322 = or i16 %bf.clear11.i320, %bf.set.i321
  store i16 %bf.set18.i322, ptr %down.i316, align 2
  br label %copy_de.exit324

copy_de.exit324:                                  ; preds = %if.end.i323, %if.end38.copy_de.exit324_crit_edge
  %call42 = call fastcc i64 @get_pos(ptr noundef nonnull %nd.2, ptr noundef %call41)
  %63 = ptrtoint ptr %i_rddir_off.i325 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_rddir_off.i325, align 4
  %tobool.not.i326 = icmp eq ptr %64, null
  br i1 %tobool.not.i326, label %copy_de.exit324.for_all_poss.exit333_crit_edge, label %for.cond.preheader.i328

copy_de.exit324.for_all_poss.exit333_crit_edge:   ; preds = %copy_de.exit324
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit333

for.cond.preheader.i328:                          ; preds = %copy_de.exit324
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool2.not8.i327 = icmp eq ptr %66, null
  br i1 %tobool2.not8.i327, label %for.cond.preheader.i328.for_all_poss.exit333_crit_edge, label %for.body.i332.preheader

for.cond.preheader.i328.for_all_poss.exit333_crit_edge: ; preds = %for.cond.preheader.i328
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit333

for.body.i332.preheader:                          ; preds = %for.cond.preheader.i328
  %and1.i450 = and i64 %call42, -64
  %and3.i453 = and i64 %call42, 63
  br label %for.body.i332

for.body.i332:                                    ; preds = %hpfs_pos_ins.exit466.for.body.i332_crit_edge, %for.body.i332.preheader
  %67 = phi ptr [ %73, %hpfs_pos_ins.exit466.for.body.i332_crit_edge ], [ %66, %for.body.i332.preheader ]
  %i.09.i329 = phi ptr [ %incdec.ptr.i330, %hpfs_pos_ins.exit466.for.body.i332_crit_edge ], [ %64, %for.body.i332.preheader ]
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %67, align 8
  %and.i449 = and i64 %69, -64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i449, i64 %and1.i450)
  %cmp.i451 = icmp eq i64 %and.i449, %and1.i450
  br i1 %cmp.i451, label %land.lhs.true.i455, label %for.body.i332.hpfs_pos_ins.exit466_crit_edge

for.body.i332.hpfs_pos_ins.exit466_crit_edge:     ; preds = %for.body.i332
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_ins.exit466

land.lhs.true.i455:                               ; preds = %for.body.i332
  %and2.i452 = and i64 %69, 63
  call void @__sanitizer_cov_trace_cmp8(i64 %and2.i452, i64 %and3.i453)
  %cmp4.not.i454 = icmp ult i64 %and2.i452, %and3.i453
  br i1 %cmp4.not.i454, label %land.lhs.true.i455.hpfs_pos_ins.exit466_crit_edge, label %if.then.i459

land.lhs.true.i455.hpfs_pos_ins.exit466_crit_edge: ; preds = %land.lhs.true.i455
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_ins.exit466

if.then.i459:                                     ; preds = %land.lhs.true.i455
  %70 = trunc i64 %and2.i452 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %70)
  %cmp6.i458 = icmp eq i32 %70, 63
  br i1 %cmp6.i458, label %do.end.i462, label %if.else.i465

do.end.i462:                                      ; preds = %if.then.i459
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i460 = trunc i64 %69 to i32
  %call.i461 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %conv9.i460, i32 noundef 0) #12
  br label %hpfs_pos_ins.exit466

if.else.i465:                                     ; preds = %if.then.i459
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i457 = add nuw nsw i32 %70, 1
  %conv12.i463519 = zext i32 %conv.i457 to i64
  %or.i464 = or i64 %and1.i450, %conv12.i463519
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %or.i464, ptr %67, align 8
  br label %hpfs_pos_ins.exit466

hpfs_pos_ins.exit466:                             ; preds = %if.else.i465, %do.end.i462, %land.lhs.true.i455.hpfs_pos_ins.exit466_crit_edge, %for.body.i332.hpfs_pos_ins.exit466_crit_edge
  %incdec.ptr.i330 = getelementptr ptr, ptr %i.09.i329, i32 1
  %72 = ptrtoint ptr %incdec.ptr.i330 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %incdec.ptr.i330, align 4
  %tobool2.not.i331 = icmp eq ptr %73, null
  br i1 %tobool2.not.i331, label %hpfs_pos_ins.exit466.for_all_poss.exit333_crit_edge, label %hpfs_pos_ins.exit466.for.body.i332_crit_edge

hpfs_pos_ins.exit466.for.body.i332_crit_edge:     ; preds = %hpfs_pos_ins.exit466
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i332

hpfs_pos_ins.exit466.for_all_poss.exit333_crit_edge: ; preds = %hpfs_pos_ins.exit466
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit333

for_all_poss.exit333:                             ; preds = %hpfs_pos_ins.exit466.for_all_poss.exit333_crit_edge, %for.cond.preheader.i328.for_all_poss.exit333_crit_edge, %copy_de.exit324.for_all_poss.exit333_crit_edge
  %first_free.i.i = getelementptr inbounds %struct.dnode, ptr %nd.2, i32 0, i32 1
  %74 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %first_free.i.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #8
  %77 = add i32 %76, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %77)
  %78 = icmp ult i32 %77, 2541
  br i1 %78, label %for_all_poss.exit333.dnode_end_de.exit.i_crit_edge, label %do.end.i.i

for_all_poss.exit333.dnode_end_de.exit.i_crit_edge: ; preds = %for_all_poss.exit333
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit.i

do.end.i.i:                                       ; preds = %for_all_poss.exit333
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %76) #12
  br label %dnode_end_de.exit.i

dnode_end_de.exit.i:                              ; preds = %do.end.i.i, %for_all_poss.exit333.dnode_end_de.exit.i_crit_edge
  %79 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %first_free.i.i, align 4
  %81 = call i32 @llvm.bswap.i32(i32 %80) #8
  %add.ptr.i.i = getelementptr i8, ptr %nd.2, i32 %81
  %dirent.i.i = getelementptr %struct.dnode, ptr %nd.2, i32 0, i32 6
  %cmp9.i = icmp ult ptr %dirent.i.i, %add.ptr.i.i
  br i1 %cmp9.i, label %dnode_end_de.exit.i.for.body.i334_crit_edge, label %dnode_end_de.exit.i.dnode_last_de.exit_crit_edge

dnode_end_de.exit.i.dnode_last_de.exit_crit_edge: ; preds = %dnode_end_de.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_last_de.exit

dnode_end_de.exit.i.for.body.i334_crit_edge:      ; preds = %dnode_end_de.exit.i
  br label %for.body.i334

for.body.i334:                                    ; preds = %de_next_de.exit.i.for.body.i334_crit_edge, %dnode_end_de.exit.i.for.body.i334_crit_edge
  %de.010.i = phi ptr [ %add.ptr.i8.i, %de_next_de.exit.i.for.body.i334_crit_edge ], [ %dirent.i.i, %dnode_end_de.exit.i.for.body.i334_crit_edge ]
  %82 = ptrtoint ptr %de.010.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %de.010.i, align 4
  %84 = call i16 @llvm.bswap.i16(i16 %83) #8
  %85 = add i16 %84, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %85)
  %86 = icmp ult i16 %85, 2016
  br i1 %86, label %for.body.i334.de_next_de.exit.i_crit_edge, label %do.end.i7.i

for.body.i334.de_next_de.exit.i_crit_edge:        ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i

do.end.i7.i:                                      ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i = zext i16 %84 to i32
  %call.i6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i) #12
  br label %de_next_de.exit.i

de_next_de.exit.i:                                ; preds = %do.end.i7.i, %for.body.i334.de_next_de.exit.i_crit_edge
  %87 = ptrtoint ptr %de.010.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %de.010.i, align 4
  %89 = call i16 @llvm.bswap.i16(i16 %88) #8
  %conv9.i.i = zext i16 %89 to i32
  %add.ptr.i8.i = getelementptr i8, ptr %de.010.i, i32 %conv9.i.i
  %cmp.i = icmp ult ptr %add.ptr.i8.i, %add.ptr.i.i
  br i1 %cmp.i, label %de_next_de.exit.i.for.body.i334_crit_edge, label %de_next_de.exit.i.dnode_last_de.exit_crit_edge

de_next_de.exit.i.dnode_last_de.exit_crit_edge:   ; preds = %de_next_de.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_last_de.exit

de_next_de.exit.i.for.body.i334_crit_edge:        ; preds = %de_next_de.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i334

dnode_last_de.exit:                               ; preds = %de_next_de.exit.i.dnode_last_de.exit_crit_edge, %dnode_end_de.exit.i.dnode_last_de.exit_crit_edge
  %dee.0.lcssa.i = phi ptr [ null, %dnode_end_de.exit.i.dnode_last_de.exit_crit_edge ], [ %de.010.i, %de_next_de.exit.i.dnode_last_de.exit_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %dee.0.lcssa.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %nd.2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = sdiv i32 %sub.ptr.sub, 2
  %add44 = add nsw i32 %div, 10
  %90 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb, align 4
  %up = getelementptr inbounds %struct.dnode, ptr %d.0, i32 0, i32 4
  %92 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %up, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %call46 = call ptr @hpfs_alloc_dnode(ptr noundef %91, i32 noundef %94, ptr noundef nonnull %adno, ptr noundef nonnull %qbh1) #8
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.end50

if.then48:                                        ; preds = %dnode_last_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %96, ptr noundef nonnull @.str.38) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @kfree(ptr noundef %nd.2) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end50:                                         ; preds = %dnode_last_de.exit
  %97 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %i_size, align 8
  %add51 = add i64 %98, 2048
  store i64 %add51, ptr %i_size, align 8
  %99 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %i_blocks, align 8
  %add52 = add i64 %100, 4
  store i64 %add52, ptr %i_blocks, align 8
  %conv70 = zext i32 %dno.addr.1 to i64
  %shl = shl nuw nsw i64 %conv70, 4
  br label %for.cond

for.cond:                                         ; preds = %de_next_de.exit370, %if.end50
  %de.0 = phi ptr [ %dirent.i.i, %if.end50 ], [ %add.ptr.i368, %de_next_de.exit370 ]
  %pos.0 = phi i32 [ 1, %if.end50 ], [ %inc, %de_next_de.exit370 ]
  %101 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %de.0, align 4
  %103 = call i16 @llvm.bswap.i16(i16 %102) #8
  %104 = add i16 %103, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %104)
  %105 = icmp ult i16 %104, 2016
  br i1 %105, label %for.cond.de_next_de.exit_crit_edge, label %do.end.i

for.cond.de_next_de.exit_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %103 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i, %for.cond.de_next_de.exit_crit_edge
  %106 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %de.0, align 4
  %108 = call i16 @llvm.bswap.i16(i16 %107) #8
  %conv9.i = zext i16 %108 to i32
  %add.ptr.i = getelementptr i8, ptr %de.0, i32 %conv9.i
  %sub.ptr.lhs.cast55 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub57 = sub i32 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub57, i32 %add44)
  %cmp58 = icmp slt i32 %sub.ptr.sub57, %add44
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %de_next_de.exit
  %109 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i_sb, align 4
  %name60 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 11
  %namelen61 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 10
  %111 = ptrtoint ptr %namelen61 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %namelen61, align 2
  %conv = zext i8 %112 to i32
  %down = getelementptr %struct.hpfs_dirent, ptr %de.0, i32 0, i32 1
  %113 = ptrtoint ptr %down to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load62 = load i16, ptr %down, align 2
  %114 = and i16 %bf.load62, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool67.not = icmp eq i16 %114, 0
  br i1 %tobool67.not, label %for.body.cond.end_crit_edge, label %de_down_pointer.exit

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

de_down_pointer.exit:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %de.0, align 4
  %117 = call i16 @llvm.bswap.i16(i16 %116) #8
  %conv.i = zext i16 %117 to i32
  %add.ptr.i341 = getelementptr i8, ptr %de.0, i32 -4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i341, i32 %conv.i
  %118 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr1.i, align 4
  %120 = call i32 @llvm.bswap.i32(i32 %119) #8
  br label %cond.end

cond.end:                                         ; preds = %de_down_pointer.exit, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %120, %de_down_pointer.exit ], [ 0, %for.body.cond.end_crit_edge ]
  %call69 = call ptr @hpfs_add_de(ptr noundef %110, ptr noundef nonnull %call46, ptr noundef %name60, i32 noundef %conv, i32 noundef %cond)
  %tobool.not.i343 = icmp eq ptr %call69, null
  %tobool1.not.i344 = icmp eq ptr %de.0, null
  %or.cond.i345 = or i1 %tobool1.not.i344, %tobool.not.i343
  br i1 %or.cond.i345, label %cond.end.copy_de.exit354_crit_edge, label %if.end.i353

cond.end.copy_de.exit354_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_de.exit354

if.end.i353:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %down.i346 = getelementptr %struct.hpfs_dirent, ptr %call69, i32 0, i32 1
  %121 = ptrtoint ptr %down.i346 to i32
  call void @__asan_load2_noabort(i32 %121)
  %bf.load.i347 = load i16, ptr %down.i346, align 2
  %122 = call ptr @memcpy(ptr %down.i346, ptr %down, i32 28)
  %bf.load10.i349 = load i16, ptr %down.i346, align 2
  %bf.clear11.i350 = and i16 %bf.load10.i349, -1089
  %bf.set.i351 = and i16 %bf.load.i347, 1088
  %bf.set18.i352 = or i16 %bf.clear11.i350, %bf.set.i351
  store i16 %bf.set18.i352, ptr %down.i346, align 2
  br label %copy_de.exit354

copy_de.exit354:                                  ; preds = %if.end.i353, %cond.end.copy_de.exit354_crit_edge
  %conv71 = sext i32 %pos.0 to i64
  %or = or i64 %shl, %conv71
  %123 = ptrtoint ptr %adno to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %adno, align 4
  %conv72 = zext i32 %124 to i64
  %shl73 = shl nuw nsw i64 %conv72, 4
  %or75 = or i64 %shl73, %conv71
  %125 = ptrtoint ptr %i_rddir_off.i325 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i_rddir_off.i325, align 4
  %tobool.not.i356 = icmp eq ptr %126, null
  br i1 %tobool.not.i356, label %copy_de.exit354.for_all_poss.exit363_crit_edge, label %for.cond.preheader.i358

copy_de.exit354.for_all_poss.exit363_crit_edge:   ; preds = %copy_de.exit354
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit363

for.cond.preheader.i358:                          ; preds = %copy_de.exit354
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %tobool2.not8.i357 = icmp eq ptr %128, null
  br i1 %tobool2.not8.i357, label %for.cond.preheader.i358.for_all_poss.exit363_crit_edge, label %for.cond.preheader.i358.for.body.i362_crit_edge

for.cond.preheader.i358.for.body.i362_crit_edge:  ; preds = %for.cond.preheader.i358
  br label %for.body.i362

for.cond.preheader.i358.for_all_poss.exit363_crit_edge: ; preds = %for.cond.preheader.i358
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit363

for.body.i362:                                    ; preds = %hpfs_pos_subst.exit470.for.body.i362_crit_edge, %for.cond.preheader.i358.for.body.i362_crit_edge
  %129 = phi ptr [ %134, %hpfs_pos_subst.exit470.for.body.i362_crit_edge ], [ %128, %for.cond.preheader.i358.for.body.i362_crit_edge ]
  %i.09.i359 = phi ptr [ %incdec.ptr.i360, %hpfs_pos_subst.exit470.for.body.i362_crit_edge ], [ %126, %for.cond.preheader.i358.for.body.i362_crit_edge ]
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %129, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %131, i64 %or)
  %cmp.i467 = icmp eq i64 %131, %or
  br i1 %cmp.i467, label %if.then.i468, label %for.body.i362.hpfs_pos_subst.exit470_crit_edge

for.body.i362.hpfs_pos_subst.exit470_crit_edge:   ; preds = %for.body.i362
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit470

if.then.i468:                                     ; preds = %for.body.i362
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %or75, ptr %129, align 8
  br label %hpfs_pos_subst.exit470

hpfs_pos_subst.exit470:                           ; preds = %if.then.i468, %for.body.i362.hpfs_pos_subst.exit470_crit_edge
  %incdec.ptr.i360 = getelementptr ptr, ptr %i.09.i359, i32 1
  %133 = ptrtoint ptr %incdec.ptr.i360 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %incdec.ptr.i360, align 4
  %tobool2.not.i361 = icmp eq ptr %134, null
  br i1 %tobool2.not.i361, label %hpfs_pos_subst.exit470.for_all_poss.exit363_crit_edge, label %hpfs_pos_subst.exit470.for.body.i362_crit_edge

hpfs_pos_subst.exit470.for.body.i362_crit_edge:   ; preds = %hpfs_pos_subst.exit470
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i362

hpfs_pos_subst.exit470.for_all_poss.exit363_crit_edge: ; preds = %hpfs_pos_subst.exit470
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit363

for_all_poss.exit363:                             ; preds = %hpfs_pos_subst.exit470.for_all_poss.exit363_crit_edge, %for.cond.preheader.i358.for_all_poss.exit363_crit_edge, %copy_de.exit354.for_all_poss.exit363_crit_edge
  %inc = add i32 %pos.0, 1
  %135 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %de.0, align 4
  %137 = call i16 @llvm.bswap.i16(i16 %136) #8
  %138 = add i16 %137, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %138)
  %139 = icmp ult i16 %138, 2016
  br i1 %139, label %for_all_poss.exit363.de_next_de.exit370_crit_edge, label %do.end.i366

for_all_poss.exit363.de_next_de.exit370_crit_edge: ; preds = %for_all_poss.exit363
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit370

do.end.i366:                                      ; preds = %for_all_poss.exit363
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i364 = zext i16 %137 to i32
  %call.i365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i364) #12
  br label %de_next_de.exit370

de_next_de.exit370:                               ; preds = %do.end.i366, %for_all_poss.exit363.de_next_de.exit370_crit_edge
  %140 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %de.0, align 4
  %142 = call i16 @llvm.bswap.i16(i16 %141) #8
  %conv9.i367 = zext i16 %142 to i32
  %add.ptr.i368 = getelementptr i8, ptr %de.0, i32 %conv9.i367
  br label %for.cond

for.end:                                          ; preds = %de_next_de.exit
  %tobool1.not.i371 = icmp eq ptr %de.0, null
  br i1 %tobool1.not.i371, label %for.end.copy_de.exit380_crit_edge, label %if.end.i379

for.end.copy_de.exit380_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_de.exit380

if.end.i379:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %down.i372 to i32
  call void @__asan_load2_noabort(i32 %143)
  %bf.load.i373 = load i16, ptr %down.i372, align 2
  %add.ptr7.i374 = getelementptr i8, ptr %de.0, i32 2
  %144 = call ptr @memcpy(ptr %down.i372, ptr %add.ptr7.i374, i32 28)
  %bf.load10.i375 = load i16, ptr %down.i372, align 2
  %bf.clear11.i376 = and i16 %bf.load10.i375, -1089
  %bf.set.i377 = and i16 %bf.load.i373, 1088
  %bf.set18.i378 = or i16 %bf.clear11.i376, %bf.set.i377
  store i16 %bf.set18.i378, ptr %down.i372, align 2
  br label %copy_de.exit380

copy_de.exit380:                                  ; preds = %if.end.i379, %for.end.copy_de.exit380_crit_edge
  %name77 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 11
  %namelen79 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 10
  %145 = ptrtoint ptr %namelen79 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %namelen79, align 2
  %conv80 = zext i8 %146 to i32
  %147 = call ptr @memcpy(ptr %call7.i, ptr %name77, i32 %conv80)
  %148 = load i8, ptr %namelen79, align 2
  %conv85 = sext i32 %pos.0 to i64
  %or86 = or i64 %shl, %conv85
  %149 = ptrtoint ptr %i_rddir_off.i325 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i_rddir_off.i325, align 4
  %tobool.not.i382 = icmp eq ptr %150, null
  br i1 %tobool.not.i382, label %copy_de.exit380.for_all_poss.exit389_crit_edge, label %for.cond.preheader.i384

copy_de.exit380.for_all_poss.exit389_crit_edge:   ; preds = %copy_de.exit380
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit389

for.cond.preheader.i384:                          ; preds = %copy_de.exit380
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %tobool2.not8.i383 = icmp eq ptr %152, null
  br i1 %tobool2.not8.i383, label %for.cond.preheader.i384.for_all_poss.exit389_crit_edge, label %for.cond.preheader.i384.for.body.i388_crit_edge

for.cond.preheader.i384.for.body.i388_crit_edge:  ; preds = %for.cond.preheader.i384
  br label %for.body.i388

for.cond.preheader.i384.for_all_poss.exit389_crit_edge: ; preds = %for.cond.preheader.i384
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit389

for.body.i388:                                    ; preds = %hpfs_pos_subst.exit474.for.body.i388_crit_edge, %for.cond.preheader.i384.for.body.i388_crit_edge
  %153 = phi ptr [ %158, %hpfs_pos_subst.exit474.for.body.i388_crit_edge ], [ %152, %for.cond.preheader.i384.for.body.i388_crit_edge ]
  %i.09.i385 = phi ptr [ %incdec.ptr.i386, %hpfs_pos_subst.exit474.for.body.i388_crit_edge ], [ %150, %for.cond.preheader.i384.for.body.i388_crit_edge ]
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %153, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %155, i64 %or86)
  %cmp.i471 = icmp eq i64 %155, %or86
  br i1 %cmp.i471, label %if.then.i472, label %for.body.i388.hpfs_pos_subst.exit474_crit_edge

for.body.i388.hpfs_pos_subst.exit474_crit_edge:   ; preds = %for.body.i388
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit474

if.then.i472:                                     ; preds = %for.body.i388
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 4, ptr %153, align 8
  br label %hpfs_pos_subst.exit474

hpfs_pos_subst.exit474:                           ; preds = %if.then.i472, %for.body.i388.hpfs_pos_subst.exit474_crit_edge
  %incdec.ptr.i386 = getelementptr ptr, ptr %i.09.i385, i32 1
  %157 = ptrtoint ptr %incdec.ptr.i386 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %incdec.ptr.i386, align 4
  %tobool2.not.i387 = icmp eq ptr %158, null
  br i1 %tobool2.not.i387, label %hpfs_pos_subst.exit474.for_all_poss.exit389_crit_edge, label %hpfs_pos_subst.exit474.for.body.i388_crit_edge

hpfs_pos_subst.exit474.for.body.i388_crit_edge:   ; preds = %hpfs_pos_subst.exit474
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i388

hpfs_pos_subst.exit474.for_all_poss.exit389_crit_edge: ; preds = %hpfs_pos_subst.exit474
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit389

for_all_poss.exit389:                             ; preds = %hpfs_pos_subst.exit474.for_all_poss.exit389_crit_edge, %for.cond.preheader.i384.for_all_poss.exit389_crit_edge, %copy_de.exit380.for_all_poss.exit389_crit_edge
  %159 = ptrtoint ptr %adno to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %adno, align 4
  %161 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %i_sb, align 4
  %down88 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 1
  %163 = ptrtoint ptr %down88 to i32
  call void @__asan_load2_noabort(i32 %163)
  %bf.load89 = load i16, ptr %down88, align 2
  %164 = and i16 %bf.load89, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool94.not = icmp eq i16 %164, 0
  br i1 %tobool94.not, label %for_all_poss.exit389.cond.end98_crit_edge, label %de_down_pointer.exit399

for_all_poss.exit389.cond.end98_crit_edge:        ; preds = %for_all_poss.exit389
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end98

de_down_pointer.exit399:                          ; preds = %for_all_poss.exit389
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %de.0, align 4
  %167 = call i16 @llvm.bswap.i16(i16 %166) #8
  %conv.i395 = zext i16 %167 to i32
  %add.ptr.i396 = getelementptr i8, ptr %de.0, i32 -4
  %add.ptr1.i397 = getelementptr i8, ptr %add.ptr.i396, i32 %conv.i395
  %168 = ptrtoint ptr %add.ptr1.i397 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %add.ptr1.i397, align 4
  %170 = call i32 @llvm.bswap.i32(i32 %169) #8
  br label %cond.end98

cond.end98:                                       ; preds = %de_down_pointer.exit399, %for_all_poss.exit389.cond.end98_crit_edge
  %cond99 = phi i32 [ %170, %de_down_pointer.exit399 ], [ 0, %for_all_poss.exit389.cond.end98_crit_edge ]
  call fastcc void @set_last_pointer(ptr noundef %162, ptr noundef nonnull %call46, i32 noundef %cond99)
  %171 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %de.0, align 4
  %173 = call i16 @llvm.bswap.i16(i16 %172) #8
  %174 = add i16 %173, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %174)
  %175 = icmp ult i16 %174, 2016
  br i1 %175, label %cond.end98.de_next_de.exit406_crit_edge, label %do.end.i402

cond.end98.de_next_de.exit406_crit_edge:          ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit406

do.end.i402:                                      ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i400 = zext i16 %173 to i32
  %call.i401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i400) #12
  br label %de_next_de.exit406

de_next_de.exit406:                               ; preds = %do.end.i402, %cond.end98.de_next_de.exit406_crit_edge
  %176 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %de.0, align 4
  %178 = call i16 @llvm.bswap.i16(i16 %177) #8
  %conv9.i403 = zext i16 %178 to i32
  %add.ptr.i404 = getelementptr i8, ptr %de.0, i32 %conv9.i403
  %179 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %first_free.i.i, align 4
  %181 = call i32 @llvm.bswap.i32(i32 %180)
  %add.ptr102 = getelementptr i8, ptr %nd.2, i32 %181
  %sub.ptr.lhs.cast103 = ptrtoint ptr %add.ptr102 to i32
  %sub.ptr.rhs.cast104 = ptrtoint ptr %add.ptr.i404 to i32
  %sub.ptr.sub105 = sub i32 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104
  %182 = call ptr @memmove(ptr %dirent.i.i, ptr %add.ptr.i404, i32 %sub.ptr.sub105)
  %sub.ptr.sub109.neg = add i32 %sub.ptr.rhs.cast, 20
  %sub110 = add i32 %sub.ptr.sub109.neg, %181
  %add.i = sub i32 %sub110, %sub.ptr.rhs.cast104
  %183 = call i32 @llvm.bswap.i32(i32 %add.i) #8
  %184 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %first_free.i.i, align 4
  %185 = call ptr @memcpy(ptr %d.0, ptr %nd.2, i32 %add.i)
  %186 = ptrtoint ptr %i_rddir_off.i325 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %i_rddir_off.i325, align 4
  %tobool.not.i408 = icmp eq ptr %187, null
  br i1 %tobool.not.i408, label %de_next_de.exit406.for_all_poss.exit415_crit_edge, label %for.cond.preheader.i410

de_next_de.exit406.for_all_poss.exit415_crit_edge: ; preds = %de_next_de.exit406
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit415

for.cond.preheader.i410:                          ; preds = %de_next_de.exit406
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %tobool2.not8.i409 = icmp eq ptr %189, null
  br i1 %tobool2.not8.i409, label %for.cond.preheader.i410.for_all_poss.exit415_crit_edge, label %for.body.i414.preheader

for.cond.preheader.i410.for_all_poss.exit415_crit_edge: ; preds = %for.cond.preheader.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit415

for.body.i414.preheader:                          ; preds = %for.cond.preheader.i410
  %and1.i476 = and i64 %shl, 68719476672
  %and3.i479 = and i64 %shl, 48
  %shr.i = ashr i32 %pos.0, 8
  br label %for.body.i414

for.body.i414:                                    ; preds = %hpfs_pos_del.exit.for.body.i414_crit_edge, %for.body.i414.preheader
  %190 = phi ptr [ %195, %hpfs_pos_del.exit.for.body.i414_crit_edge ], [ %189, %for.body.i414.preheader ]
  %i.09.i411 = phi ptr [ %incdec.ptr.i412, %hpfs_pos_del.exit.for.body.i414_crit_edge ], [ %187, %for.body.i414.preheader ]
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %190, align 8
  %and.i475 = and i64 %192, -64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i475, i64 %and1.i476)
  %cmp.i477 = icmp eq i64 %and.i475, %and1.i476
  br i1 %cmp.i477, label %land.lhs.true.i481, label %for.body.i414.hpfs_pos_del.exit_crit_edge

for.body.i414.hpfs_pos_del.exit_crit_edge:        ; preds = %for.body.i414
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_del.exit

land.lhs.true.i481:                               ; preds = %for.body.i414
  %and2.i478 = and i64 %192, 63
  call void @__sanitizer_cov_trace_cmp8(i64 %and2.i478, i64 %and3.i479)
  %cmp4.not.i480 = icmp ult i64 %and2.i478, %and3.i479
  br i1 %cmp4.not.i480, label %land.lhs.true.i481.hpfs_pos_del.exit_crit_edge, label %if.then.i484

land.lhs.true.i481.hpfs_pos_del.exit_crit_edge:   ; preds = %land.lhs.true.i481
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_del.exit

if.then.i484:                                     ; preds = %land.lhs.true.i481
  %sub.i = sub nsw i64 %and2.i478, %conv85
  %conv.i482 = trunc i64 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i482)
  %cmp6.i483 = icmp slt i32 %conv.i482, 1
  br i1 %cmp6.i483, label %do.end.i487, label %if.else.i489

do.end.i487:                                      ; preds = %if.then.i484
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i485 = trunc i64 %192 to i32
  %call.i486 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %conv9.i485, i32 noundef %shr.i) #12
  br label %hpfs_pos_del.exit

if.else.i489:                                     ; preds = %if.then.i484
  call void @__sanitizer_cov_trace_pc() #10
  %conv1222.i = and i64 %sub.i, 4294967295
  %or.i488 = or i64 %conv1222.i, %and1.i476
  %193 = ptrtoint ptr %190 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %or.i488, ptr %190, align 8
  br label %hpfs_pos_del.exit

hpfs_pos_del.exit:                                ; preds = %if.else.i489, %do.end.i487, %land.lhs.true.i481.hpfs_pos_del.exit_crit_edge, %for.body.i414.hpfs_pos_del.exit_crit_edge
  %incdec.ptr.i412 = getelementptr ptr, ptr %i.09.i411, i32 1
  %194 = ptrtoint ptr %incdec.ptr.i412 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %incdec.ptr.i412, align 4
  %tobool2.not.i413 = icmp eq ptr %195, null
  br i1 %tobool2.not.i413, label %hpfs_pos_del.exit.for_all_poss.exit415_crit_edge, label %hpfs_pos_del.exit.for.body.i414_crit_edge

hpfs_pos_del.exit.for.body.i414_crit_edge:        ; preds = %hpfs_pos_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i414

hpfs_pos_del.exit.for_all_poss.exit415_crit_edge: ; preds = %hpfs_pos_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit415

for_all_poss.exit415:                             ; preds = %hpfs_pos_del.exit.for_all_poss.exit415_crit_edge, %for.cond.preheader.i410.for_all_poss.exit415_crit_edge, %de_next_de.exit406.for_all_poss.exit415_crit_edge
  %196 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %i_sb, align 4
  %first_free.i.i416 = getelementptr inbounds %struct.dnode, ptr %call46, i32 0, i32 1
  %198 = ptrtoint ptr %first_free.i.i416 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %first_free.i.i416, align 4
  %200 = call i32 @llvm.bswap.i32(i32 %199) #8
  %201 = add i32 %200, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %201)
  %202 = icmp ult i32 %201, 2541
  br i1 %202, label %for_all_poss.exit415.dnode_end_de.exit.i421_crit_edge, label %do.end.i.i418

for_all_poss.exit415.dnode_end_de.exit.i421_crit_edge: ; preds = %for_all_poss.exit415
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit.i421

do.end.i.i418:                                    ; preds = %for_all_poss.exit415
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i417 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %200) #12
  br label %dnode_end_de.exit.i421

dnode_end_de.exit.i421:                           ; preds = %do.end.i.i418, %for_all_poss.exit415.dnode_end_de.exit.i421_crit_edge
  %203 = ptrtoint ptr %first_free.i.i416 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %first_free.i.i416, align 4
  %205 = call i32 @llvm.bswap.i32(i32 %204) #8
  %add.ptr.i.i419 = getelementptr i8, ptr %call46, i32 %205
  %self.i = getelementptr inbounds %struct.dnode, ptr %call46, i32 0, i32 5
  %206 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %self.i, align 4
  %dirent.i.i420 = getelementptr inbounds %struct.dnode, ptr %call46, i32 0, i32 6
  %cmp34.i = icmp ult ptr %dirent.i.i420, %add.ptr.i.i419
  br i1 %cmp34.i, label %dnode_end_de.exit.i421.for.body.i425_crit_edge, label %dnode_end_de.exit.i421.fix_up_ptrs.exit_crit_edge

dnode_end_de.exit.i421.fix_up_ptrs.exit_crit_edge: ; preds = %dnode_end_de.exit.i421
  call void @__sanitizer_cov_trace_pc() #10
  br label %fix_up_ptrs.exit

dnode_end_de.exit.i421.for.body.i425_crit_edge:   ; preds = %dnode_end_de.exit.i421
  br label %for.body.i425

for.body.i425:                                    ; preds = %de_next_de.exit.i430.for.body.i425_crit_edge, %dnode_end_de.exit.i421.for.body.i425_crit_edge
  %de.035.i = phi ptr [ %add.ptr.i33.i, %de_next_de.exit.i430.for.body.i425_crit_edge ], [ %dirent.i.i420, %dnode_end_de.exit.i421.for.body.i425_crit_edge ]
  %down.i422 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.035.i, i32 0, i32 1
  %208 = ptrtoint ptr %down.i422 to i32
  call void @__asan_load2_noabort(i32 %208)
  %bf.load.i423 = load i16, ptr %down.i422, align 2
  %209 = and i16 %bf.load.i423, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %209)
  %tobool.not.i424 = icmp eq i16 %209, 0
  br i1 %tobool.not.i424, label %for.body.i425.for.inc.i_crit_edge, label %de_down_pointer.exit.i

for.body.i425.for.inc.i_crit_edge:                ; preds = %for.body.i425
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

de_down_pointer.exit.i:                           ; preds = %for.body.i425
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh.i) #8
  %210 = call ptr @memset(ptr %qbh.i, i32 255, i32 20)
  %211 = ptrtoint ptr %de.035.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %de.035.i, align 4
  %213 = call i16 @llvm.bswap.i16(i16 %212) #8
  %conv.i.i = zext i16 %213 to i32
  %add.ptr.i30.i = getelementptr i8, ptr %de.035.i, i32 -4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i30.i, i32 %conv.i.i
  %214 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %add.ptr1.i.i, align 4
  %216 = call i32 @llvm.bswap.i32(i32 %215) #8
  %call3.i = call ptr @hpfs_map_dnode(ptr noundef %197, i32 noundef %216, ptr noundef nonnull %qbh.i) #8
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %de_down_pointer.exit.i.if.end15.i_crit_edge, label %if.then5.i

de_down_pointer.exit.i.if.end15.i_crit_edge:      ; preds = %de_down_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then5.i:                                       ; preds = %de_down_pointer.exit.i
  %up.i = getelementptr inbounds %struct.dnode, ptr %call3.i, i32 0, i32 4
  %217 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %up.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %207)
  %cmp6.not.i = icmp eq i32 %218, %207
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.then5.i.if.then10.i_crit_edge

if.then5.i.if.then10.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %if.then5.i
  %root_dnode.i = getelementptr inbounds %struct.dnode, ptr %call3.i, i32 0, i32 2
  %219 = ptrtoint ptr %root_dnode.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %bf.load7.i = load i8, ptr %root_dnode.i, align 4
  %bf.clear8.i = and i8 %bf.load7.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8.i)
  %tobool9.not.i = icmp eq i8 %bf.clear8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.end.i426_crit_edge, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

lor.lhs.false.i.if.end.i426_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i426

if.then10.i:                                      ; preds = %lor.lhs.false.i.if.then10.i_crit_edge, %if.then5.i.if.then10.i_crit_edge
  %220 = ptrtoint ptr %up.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %207, ptr %up.i, align 4
  %root_dnode12.i = getelementptr inbounds %struct.dnode, ptr %call3.i, i32 0, i32 2
  %221 = ptrtoint ptr %root_dnode12.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %bf.load13.i = load i8, ptr %root_dnode12.i, align 4
  %bf.clear14.i = and i8 %bf.load13.i, -2
  store i8 %bf.clear14.i, ptr %root_dnode12.i, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh.i) #8
  br label %if.end.i426

if.end.i426:                                      ; preds = %if.then10.i, %lor.lhs.false.i.if.end.i426_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i426, %de_down_pointer.exit.i.if.end15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end15.i, %for.body.i425.for.inc.i_crit_edge
  %222 = ptrtoint ptr %de.035.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %de.035.i, align 4
  %224 = call i16 @llvm.bswap.i16(i16 %223) #8
  %225 = add i16 %224, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %225)
  %226 = icmp ult i16 %225, 2016
  br i1 %226, label %for.inc.i.de_next_de.exit.i430_crit_edge, label %do.end.i32.i

for.inc.i.de_next_de.exit.i430_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i430

do.end.i32.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i427 = zext i16 %224 to i32
  %call.i31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i427) #12
  br label %de_next_de.exit.i430

de_next_de.exit.i430:                             ; preds = %do.end.i32.i, %for.inc.i.de_next_de.exit.i430_crit_edge
  %227 = ptrtoint ptr %de.035.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %de.035.i, align 4
  %229 = call i16 @llvm.bswap.i16(i16 %228) #8
  %conv9.i.i428 = zext i16 %229 to i32
  %add.ptr.i33.i = getelementptr i8, ptr %de.035.i, i32 %conv9.i.i428
  %cmp.i429 = icmp ult ptr %add.ptr.i33.i, %add.ptr.i.i419
  br i1 %cmp.i429, label %de_next_de.exit.i430.for.body.i425_crit_edge, label %de_next_de.exit.i430.fix_up_ptrs.exit_crit_edge

de_next_de.exit.i430.fix_up_ptrs.exit_crit_edge:  ; preds = %de_next_de.exit.i430
  call void @__sanitizer_cov_trace_pc() #10
  br label %fix_up_ptrs.exit

de_next_de.exit.i430.for.body.i425_crit_edge:     ; preds = %de_next_de.exit.i430
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i425

fix_up_ptrs.exit:                                 ; preds = %de_next_de.exit.i430.fix_up_ptrs.exit_crit_edge, %dnode_end_de.exit.i421.fix_up_ptrs.exit_crit_edge
  %root_dnode = getelementptr inbounds %struct.dnode, ptr %d.0, i32 0, i32 2
  %230 = ptrtoint ptr %root_dnode to i32
  call void @__asan_load1_noabort(i32 %230)
  %bf.load116 = load i8, ptr %root_dnode, align 4
  %bf.clear117 = and i8 %bf.load116, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear117)
  %tobool118.not = icmp eq i8 %bf.clear117, 0
  br i1 %tobool118.not, label %if.then119, label %if.end123

if.then119:                                       ; preds = %fix_up_ptrs.exit
  %231 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %up, align 4
  %up121 = getelementptr inbounds %struct.dnode, ptr %call46, i32 0, i32 4
  %233 = ptrtoint ptr %up121 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %up121, align 4
  %234 = call i32 @llvm.bswap.i32(i32 %232)
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh1) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1) #8
  %235 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %i_sb, align 4
  %call5 = call ptr @hpfs_map_dnode(ptr noundef %236, i32 noundef %234, ptr noundef nonnull %qbh) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then119.if.then7_crit_edge, label %if.then119.go_up_a.backedge_crit_edge

if.then119.go_up_a.backedge_crit_edge:            ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %go_up_a.backedge

if.then119.if.then7_crit_edge:                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end123:                                        ; preds = %fix_up_ptrs.exit
  %237 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %i_sb, align 4
  %239 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %up, align 4
  %241 = call i32 @llvm.bswap.i32(i32 %240)
  %call126 = call ptr @hpfs_alloc_dnode(ptr noundef %238, i32 noundef %241, ptr noundef nonnull %rdno, ptr noundef nonnull %qbh2) #8
  %tobool127.not = icmp eq ptr %call126, null
  br i1 %tobool127.not, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %242 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %243, ptr noundef nonnull @.str.38) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1) #8
  call void @kfree(ptr noundef %nd.2) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end130:                                        ; preds = %if.end123
  %244 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %i_size, align 8
  %add132 = add i64 %245, 2048
  store i64 %add132, ptr %i_size, align 8
  %246 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %i_blocks, align 8
  %add134 = add i64 %247, 4
  store i64 %add134, ptr %i_blocks, align 8
  %root_dnode135 = getelementptr inbounds %struct.dnode, ptr %call126, i32 0, i32 2
  %248 = ptrtoint ptr %root_dnode135 to i32
  call void @__asan_load1_noabort(i32 %248)
  %bf.load136 = load i8, ptr %root_dnode135, align 4
  %bf.set = or i8 %bf.load136, 1
  store i8 %bf.set, ptr %root_dnode135, align 4
  %249 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %up, align 4
  %up139 = getelementptr inbounds %struct.dnode, ptr %call126, i32 0, i32 4
  %251 = ptrtoint ptr %up139 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %up139, align 4
  %252 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %i_sb, align 4
  %254 = load i32, ptr %up, align 4
  %255 = call i32 @llvm.bswap.i32(i32 %254)
  %call142 = call ptr @hpfs_map_fnode(ptr noundef %253, i32 noundef %255, ptr noundef nonnull %bh) #8
  %tobool143.not = icmp eq ptr %call142, null
  br i1 %tobool143.not, label %if.then144, label %if.end146

if.then144:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  %256 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %i_sb, align 4
  %258 = ptrtoint ptr %rdno to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %rdno, align 4
  call void @hpfs_free_dnode(ptr noundef %257, i32 noundef %259) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh2) #8
  call void @kfree(ptr noundef %nd.2) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end146:                                        ; preds = %if.end130
  %260 = ptrtoint ptr %rdno to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %rdno, align 4
  %262 = call i32 @llvm.bswap.i32(i32 %261)
  %disk_secno = getelementptr inbounds %struct.fnode, ptr %call142, i32 0, i32 15, i32 0, i32 0, i32 2
  %263 = ptrtoint ptr %disk_secno to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %disk_secno, align 4
  %264 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %265) #8
  %266 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %bh, align 4
  %tobool.not.i431 = icmp eq ptr %267, null
  br i1 %tobool.not.i431, label %if.end146.brelse.exit_crit_edge, label %if.then.i

if.end146.brelse.exit_crit_edge:                  ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %267) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end146.brelse.exit_crit_edge
  %268 = ptrtoint ptr %rdno to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %rdno, align 4
  %270 = ptrtoint ptr %i_dno to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %i_dno, align 4
  %271 = call i32 @llvm.bswap.i32(i32 %269)
  %up148 = getelementptr inbounds %struct.dnode, ptr %call46, i32 0, i32 4
  %272 = ptrtoint ptr %up148 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %up148, align 4
  %273 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %271, ptr %up, align 4
  %root_dnode150 = getelementptr inbounds %struct.dnode, ptr %call46, i32 0, i32 2
  %274 = ptrtoint ptr %root_dnode150 to i32
  call void @__asan_load1_noabort(i32 %274)
  %bf.load151 = load i8, ptr %root_dnode150, align 4
  %bf.clear152 = and i8 %bf.load151, -2
  store i8 %bf.clear152, ptr %root_dnode150, align 4
  %275 = ptrtoint ptr %root_dnode to i32
  call void @__asan_load1_noabort(i32 %275)
  %bf.load155 = load i8, ptr %root_dnode, align 4
  %bf.clear156 = and i8 %bf.load155, -2
  store i8 %bf.clear156, ptr %root_dnode, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh1) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1) #8
  %276 = call ptr @memcpy(ptr %qbh, ptr %qbh2, i32 20)
  %277 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %i_sb, align 4
  call fastcc void @set_last_pointer(ptr noundef %278, ptr noundef nonnull %call126, i32 noundef %dno.addr.1)
  %279 = ptrtoint ptr %rdno to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %rdno, align 4
  br label %go_up_a.backedge

go_up_a.backedge:                                 ; preds = %brelse.exit, %if.then119.go_up_a.backedge_crit_edge
  %d.0.be = phi ptr [ %call126, %brelse.exit ], [ %call5, %if.then119.go_up_a.backedge_crit_edge ]
  %dno.addr.1.be = phi i32 [ %280, %brelse.exit ], [ %234, %if.then119.go_up_a.backedge_crit_edge ]
  %namelen.addr.1.be = zext i8 %148 to i32
  br label %go_up_a

cleanup:                                          ; preds = %if.then144, %if.then128, %if.then48, %do.end34, %for_all_poss.exit312, %if.then16, %if.then7, %if.then2, %do.end
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 1, %if.then16 ], [ 0, %for_all_poss.exit312 ], [ 1, %if.then144 ], [ 1, %if.then128 ], [ 1, %if.then48 ], [ 1, %do.end34 ], [ 1, %if.then7 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nde) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdno) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adno) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh1) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_remove_dirent(ptr noundef %i, i32 noundef %dno, ptr noundef %de, ptr noundef %qbh, i32 noundef %depth) local_unnamed_addr #0 align 64 {
entry:
  %qbh.i = alloca %struct.quad_buffer_head, align 4
  %c1.i = alloca i32, align 4
  %c2.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.quad_buffer_head, ptr %qbh, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %first = getelementptr inbounds %struct.hpfs_dirent, ptr %de, i32 0, i32 1
  %2 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %first, align 2
  %3 = and i16 %bf.load, 2304
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef %dno) #8
  tail call void @hpfs_brelse4(ptr noundef %qbh) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool12.not = icmp eq i16 %7, 0
  br i1 %tobool12.not, label %if.end.if.end14_crit_edge, label %de_down_pointer.exit

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

de_down_pointer.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %de to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %de, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %de, i32 %conv.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr1.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  br label %if.end14

if.end14:                                         ; preds = %de_down_pointer.exit, %if.end.if.end14_crit_edge
  %down.0 = phi i32 [ %13, %de_down_pointer.exit ], [ 0, %if.end.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %tobool15.not = icmp eq i32 %depth, 0
  br i1 %tobool15.not, label %if.end14.if.end41_crit_edge, label %land.lhs.true

if.end14.if.end41_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end14
  %14 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load17 = load i16, ptr %first, align 2
  %15 = and i16 %bf.load17, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool22.not = icmp eq i16 %15, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %land.lhs.true.if.then35_crit_edge

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false23:                                  ; preds = %land.lhs.true
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %1, i32 0, i32 6
  %cmp = icmp eq ptr %dirent.i, %de
  br i1 %cmp, label %land.lhs.true26, label %lor.lhs.false23.if.end41_crit_edge

lor.lhs.false23.if.end41_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true26:                                  ; preds = %lor.lhs.false23
  %16 = ptrtoint ptr %de to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %de, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %19 = add i16 %18, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %19)
  %20 = icmp ult i16 %19, 2016
  br i1 %20, label %land.lhs.true26.de_next_de.exit_crit_edge, label %do.end.i82

land.lhs.true26.de_next_de.exit_crit_edge:        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i82:                                       ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %18 to i32
  %call.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i82, %land.lhs.true26.de_next_de.exit_crit_edge
  %21 = ptrtoint ptr %de to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %de, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #8
  %conv9.i = zext i16 %23 to i32
  %add.ptr.i83 = getelementptr i8, ptr %de, i32 %conv9.i
  %last28 = getelementptr inbounds %struct.hpfs_dirent, ptr %add.ptr.i83, i32 0, i32 1
  %24 = ptrtoint ptr %last28 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load29 = load i16, ptr %last28, align 2
  %25 = and i16 %bf.load29, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool34.not = icmp eq i16 %25, 0
  br i1 %tobool34.not, label %de_next_de.exit.if.end41_crit_edge, label %de_next_de.exit.if.then35_crit_edge

de_next_de.exit.if.then35_crit_edge:              ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

de_next_de.exit.if.end41_crit_edge:               ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then35:                                        ; preds = %de_next_de.exit.if.then35_crit_edge, %land.lhs.true.if.then35_crit_edge
  %i_sb36 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb36, align 4
  %call37 = tail call i32 @hpfs_check_free_dnodes(ptr noundef %27, i32 noundef 29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then35.if.end41_crit_edge, label %if.then39

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hpfs_brelse4(ptr noundef %qbh) #8
  br label %cleanup

if.end41:                                         ; preds = %if.then35.if.end41_crit_edge, %de_next_de.exit.if.end41_crit_edge, %lor.lhs.false23.if.end41_crit_edge, %if.end14.if.end41_crit_edge
  %call42 = tail call fastcc i64 @get_pos(ptr noundef %1, ptr noundef %de)
  %add = add i64 %call42, 1
  %i_rddir_off.i = getelementptr i8, ptr %i, i32 -4
  %28 = ptrtoint ptr %i_rddir_off.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_rddir_off.i, align 4
  %tobool.not.i84 = icmp eq ptr %29, null
  br i1 %tobool.not.i84, label %if.end41.for_all_poss.exit_crit_edge, label %for.cond.preheader.i

if.end41.for_all_poss.exit_crit_edge:             ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit

for.cond.preheader.i:                             ; preds = %if.end41
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool2.not8.i = icmp eq ptr %31, null
  br i1 %tobool2.not8.i, label %for.cond.preheader.i.for_all_poss.exit_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.for_all_poss.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %and1.i = and i64 %add, -64
  %and3.i = and i64 %add, 63
  br label %for.body.i

for.body.i:                                       ; preds = %hpfs_pos_del.exit.for.body.i_crit_edge, %for.body.i.preheader
  %32 = phi ptr [ %37, %hpfs_pos_del.exit.for.body.i_crit_edge ], [ %31, %for.body.i.preheader ]
  %i.09.i = phi ptr [ %incdec.ptr.i, %hpfs_pos_del.exit.for.body.i_crit_edge ], [ %29, %for.body.i.preheader ]
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  %and.i = and i64 %34, -64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %and1.i)
  %cmp.i = icmp eq i64 %and.i, %and1.i
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.hpfs_pos_del.exit_crit_edge

for.body.i.hpfs_pos_del.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_del.exit

land.lhs.true.i:                                  ; preds = %for.body.i
  %and2.i = and i64 %34, 63
  call void @__sanitizer_cov_trace_cmp8(i64 %and2.i, i64 %and3.i)
  %cmp4.not.i = icmp ult i64 %and2.i, %and3.i
  br i1 %cmp4.not.i, label %land.lhs.true.i.hpfs_pos_del.exit_crit_edge, label %if.then.i108

land.lhs.true.i.hpfs_pos_del.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_del.exit

if.then.i108:                                     ; preds = %land.lhs.true.i
  %sub.i106 = add nsw i64 %and2.i, -1
  %conv.i107 = trunc i64 %sub.i106 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i107)
  %cmp6.i = icmp slt i32 %conv.i107, 1
  br i1 %cmp6.i, label %do.end.i111, label %if.else.i

do.end.i111:                                      ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i109 = trunc i64 %34 to i32
  %call.i110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %conv9.i109, i32 noundef 0) #12
  br label %hpfs_pos_del.exit

if.else.i:                                        ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #10
  %conv1222.i = and i64 %sub.i106, 4294967295
  %or.i112 = or i64 %conv1222.i, %and1.i
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %or.i112, ptr %32, align 8
  br label %hpfs_pos_del.exit

hpfs_pos_del.exit:                                ; preds = %if.else.i, %do.end.i111, %land.lhs.true.i.hpfs_pos_del.exit_crit_edge, %for.body.i.hpfs_pos_del.exit_crit_edge
  %incdec.ptr.i = getelementptr ptr, ptr %i.09.i, i32 1
  %36 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i, label %hpfs_pos_del.exit.for_all_poss.exit_crit_edge, label %hpfs_pos_del.exit.for.body.i_crit_edge

hpfs_pos_del.exit.for.body.i_crit_edge:           ; preds = %hpfs_pos_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

hpfs_pos_del.exit.for_all_poss.exit_crit_edge:    ; preds = %hpfs_pos_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit

for_all_poss.exit:                                ; preds = %hpfs_pos_del.exit.for_all_poss.exit_crit_edge, %for.cond.preheader.i.for_all_poss.exit_crit_edge, %if.end41.for_all_poss.exit_crit_edge
  %i_sb43 = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  %38 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i85 = load i16, ptr %first, align 2
  %39 = and i16 %bf.load.i85, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i86 = icmp eq i16 %39, 0
  br i1 %tobool.not.i86, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for_all_poss.exit
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb43, align 4
  %self.i = getelementptr inbounds %struct.dnode, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %self.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %41, ptr noundef nonnull @.str.49, i32 noundef %44) #8
  br label %hpfs_delete_de.exit

if.end.i:                                         ; preds = %for_all_poss.exit
  %first_free.i = getelementptr inbounds %struct.dnode, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %first_free.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %48 = ptrtoint ptr %de to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %de, align 4
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #8
  %conv.i87 = zext i16 %50 to i32
  %sub.i = sub i32 %47, %conv.i87
  %51 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  %52 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %first_free.i, align 4
  %53 = ptrtoint ptr %de to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %de, align 4
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #8
  %56 = add i16 %55, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %56)
  %57 = icmp ult i16 %56, 2016
  br i1 %57, label %if.end.i.de_next_de.exit.i_crit_edge, label %do.end.i.i

if.end.i.de_next_de.exit.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i = zext i16 %55 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i) #12
  br label %de_next_de.exit.i

de_next_de.exit.i:                                ; preds = %do.end.i.i, %if.end.i.de_next_de.exit.i_crit_edge
  %58 = ptrtoint ptr %de to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %de, align 4
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #8
  %conv9.i.i = zext i16 %60 to i32
  %add.ptr.i.i = getelementptr i8, ptr %de, i32 %conv9.i.i
  %61 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %first_free.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  %add.ptr.i88 = getelementptr i8, ptr %1, i32 %63
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i88 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %de to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %64 = call ptr @memmove(ptr %de, ptr %add.ptr.i.i, i32 %sub.ptr.sub.i)
  br label %hpfs_delete_de.exit

hpfs_delete_de.exit:                              ; preds = %de_next_de.exit.i, %if.then.i
  tail call void @hpfs_mark_4buffers_dirty(ptr noundef %qbh) #8
  tail call void @hpfs_brelse4(ptr noundef %qbh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %down.0)
  %tobool44.not = icmp eq i32 %down.0, 0
  br i1 %tobool44.not, label %if.end51, label %if.then45

if.then45:                                        ; preds = %hpfs_delete_de.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh.i) #8
  %65 = call ptr @memset(ptr %qbh.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1.i) #8
  %66 = ptrtoint ptr %c1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %c1.i, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2.i) #8
  %67 = ptrtoint ptr %c2.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %c2.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %de_down_pointer.exit.i, %if.then45
  %dno.0.i = phi i32 [ %down.0, %if.then45 ], [ %107, %de_down_pointer.exit.i ]
  %chk_up.0.i = phi i32 [ %dno, %if.then45 ], [ %chk_up.1.i, %de_down_pointer.exit.i ]
  %68 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb43, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 33
  %70 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_chk.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %sb_chk.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load.i89 = load i16, ptr %sb_chk.i, align 2
  %73 = and i16 %bf.load.i89, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i90 = icmp eq i16 %73, 0
  br i1 %tobool.not.i90, label %while.cond.i.if.end5.i_crit_edge, label %if.then.i91

while.cond.i.if.end5.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i91:                                      ; preds = %while.cond.i
  %call2.i = call i32 @hpfs_stop_cycles(ptr noundef %69, i32 noundef %dno.0.i, ptr noundef nonnull %c1.i, ptr noundef nonnull %c2.i, ptr noundef nonnull @.str.50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i91.if.end5.i_crit_edge, label %if.then.i91.move_to_top.exit_crit_edge

if.then.i91.move_to_top.exit_crit_edge:           ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_to_top.exit

if.then.i91.if.end5.i_crit_edge:                  ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i91.if.end5.i_crit_edge, %while.cond.i.if.end5.i_crit_edge
  %74 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_sb43, align 4
  %call7.i = call ptr @hpfs_map_dnode(ptr noundef %75, i32 noundef %dno.0.i, ptr noundef nonnull %qbh.i) #8
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end5.i.move_to_top.exit_crit_edge, label %if.end10.i

if.end5.i.move_to_top.exit_crit_edge:             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_to_top.exit

if.end10.i:                                       ; preds = %if.end5.i
  %76 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb43, align 4
  %s_fs_info.i179.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 33
  %78 = ptrtoint ptr %s_fs_info.i179.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i179.i, align 16
  %sb_chk13.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %sb_chk13.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load14.i = load i16, ptr %sb_chk13.i, align 2
  %81 = and i16 %bf.load14.i, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool18.not.i = icmp eq i16 %81, 0
  br i1 %tobool18.not.i, label %if.end10.i.if.end24.i_crit_edge, label %if.then19.i

if.end10.i.if.end24.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end10.i
  %up.i = getelementptr inbounds %struct.dnode, ptr %call7.i, i32 0, i32 4
  %82 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %up.i, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %chk_up.0.i)
  %cmp.not.i = icmp eq i32 %84, %chk_up.0.i
  br i1 %cmp.not.i, label %if.then19.i.if.end24.i_crit_edge, label %if.then20.i

if.then19.i.if.end24.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %77, ptr noundef nonnull @.str.51, i32 noundef %dno.0.i, i32 noundef %chk_up.0.i, i32 noundef %84) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #8
  br label %move_to_top.exit

if.end24.i:                                       ; preds = %if.then19.i.if.end24.i_crit_edge, %if.end10.i.if.end24.i_crit_edge
  %chk_up.1.i = phi i32 [ %chk_up.0.i, %if.end10.i.if.end24.i_crit_edge ], [ %dno.0.i, %if.then19.i.if.end24.i_crit_edge ]
  %first_free.i.i.i = getelementptr inbounds %struct.dnode, ptr %call7.i, i32 0, i32 1
  %85 = ptrtoint ptr %first_free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %first_free.i.i.i, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #8
  %88 = add i32 %87, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %88)
  %89 = icmp ult i32 %88, 2541
  br i1 %89, label %if.end24.i.dnode_end_de.exit.i.i_crit_edge, label %do.end.i.i.i

if.end24.i.dnode_end_de.exit.i.i_crit_edge:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %87) #12
  br label %dnode_end_de.exit.i.i

dnode_end_de.exit.i.i:                            ; preds = %do.end.i.i.i, %if.end24.i.dnode_end_de.exit.i.i_crit_edge
  %90 = ptrtoint ptr %first_free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %first_free.i.i.i, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #8
  %add.ptr.i.i.i = getelementptr i8, ptr %call7.i, i32 %92
  %dirent.i.i.i = getelementptr inbounds %struct.dnode, ptr %call7.i, i32 0, i32 6
  %cmp9.i.i = icmp ult ptr %dirent.i.i.i, %add.ptr.i.i.i
  br i1 %cmp9.i.i, label %dnode_end_de.exit.i.i.for.body.i.i_crit_edge, label %dnode_end_de.exit.i.i.if.then27.i_crit_edge

dnode_end_de.exit.i.i.if.then27.i_crit_edge:      ; preds = %dnode_end_de.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

dnode_end_de.exit.i.i.for.body.i.i_crit_edge:     ; preds = %dnode_end_de.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %de_next_de.exit.i.i.for.body.i.i_crit_edge, %dnode_end_de.exit.i.i.for.body.i.i_crit_edge
  %de.010.i.i = phi ptr [ %add.ptr.i8.i.i, %de_next_de.exit.i.i.for.body.i.i_crit_edge ], [ %dirent.i.i.i, %dnode_end_de.exit.i.i.for.body.i.i_crit_edge ]
  %93 = ptrtoint ptr %de.010.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %de.010.i.i, align 4
  %95 = call i16 @llvm.bswap.i16(i16 %94) #8
  %96 = add i16 %95, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %96)
  %97 = icmp ult i16 %96, 2016
  br i1 %97, label %for.body.i.i.de_next_de.exit.i.i_crit_edge, label %do.end.i7.i.i

for.body.i.i.de_next_de.exit.i.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i.i

do.end.i7.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i.i = zext i16 %95 to i32
  %call.i6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i.i) #12
  br label %de_next_de.exit.i.i

de_next_de.exit.i.i:                              ; preds = %do.end.i7.i.i, %for.body.i.i.de_next_de.exit.i.i_crit_edge
  %98 = ptrtoint ptr %de.010.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %de.010.i.i, align 4
  %100 = call i16 @llvm.bswap.i16(i16 %99) #8
  %conv9.i.i.i = zext i16 %100 to i32
  %add.ptr.i8.i.i = getelementptr i8, ptr %de.010.i.i, i32 %conv9.i.i.i
  %cmp.i180.i = icmp ult ptr %add.ptr.i8.i.i, %add.ptr.i.i.i
  br i1 %cmp.i180.i, label %de_next_de.exit.i.i.for.body.i.i_crit_edge, label %dnode_last_de.exit.i

de_next_de.exit.i.i.for.body.i.i_crit_edge:       ; preds = %de_next_de.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

dnode_last_de.exit.i:                             ; preds = %de_next_de.exit.i.i
  %tobool26.not.i = icmp eq ptr %de.010.i.i, null
  br i1 %tobool26.not.i, label %dnode_last_de.exit.i.if.then27.i_crit_edge, label %if.end29.i

dnode_last_de.exit.i.if.then27.i_crit_edge:       ; preds = %dnode_last_de.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

if.then27.i:                                      ; preds = %dnode_last_de.exit.i.if.then27.i_crit_edge, %dnode_end_de.exit.i.i.if.then27.i_crit_edge
  %101 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i_sb43, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %102, ptr noundef nonnull @.str.52, i32 noundef %dno.0.i) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #8
  br label %move_to_top.exit

if.end29.i:                                       ; preds = %dnode_last_de.exit.i
  %down.i92 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.010.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %down.i92 to i32
  call void @__asan_load2_noabort(i32 %103)
  %bf.load30.i = load i16, ptr %down.i92, align 2
  %104 = and i16 %bf.load30.i, 1024
  %tobool34.not.i = icmp eq i16 %104, 0
  br i1 %tobool34.not.i, label %while.cond38.preheader.i, label %de_down_pointer.exit.i

while.cond38.preheader.i:                         ; preds = %if.end29.i
  %i_size.i = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 14
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 22
  br label %while.cond38.i

de_down_pointer.exit.i:                           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i93 = getelementptr i8, ptr %de.010.i.i, i32 -4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i93, i32 %conv9.i.i.i
  %105 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr1.i.i, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #8
  br label %while.cond.i

while.cond38.i:                                   ; preds = %cleanup.i, %while.cond38.preheader.i
  %dno.1.i = phi i32 [ %126, %cleanup.i ], [ %dno.0.i, %while.cond38.preheader.i ]
  %dnode.0.i = phi ptr [ %call51.i, %cleanup.i ], [ %call7.i, %while.cond38.preheader.i ]
  %first_free.i.i182.i = getelementptr inbounds %struct.dnode, ptr %dnode.0.i, i32 0, i32 1
  %108 = ptrtoint ptr %first_free.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %first_free.i.i182.i, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109) #8
  %111 = add i32 %110, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %111)
  %112 = icmp ult i32 %111, 2541
  br i1 %112, label %while.cond38.i.dnode_end_de.exit.i188.i_crit_edge, label %do.end.i.i184.i

while.cond38.i.dnode_end_de.exit.i188.i_crit_edge: ; preds = %while.cond38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit.i188.i

do.end.i.i184.i:                                  ; preds = %while.cond38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i183.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %110) #12
  br label %dnode_end_de.exit.i188.i

dnode_end_de.exit.i188.i:                         ; preds = %do.end.i.i184.i, %while.cond38.i.dnode_end_de.exit.i188.i_crit_edge
  %113 = ptrtoint ptr %first_free.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %first_free.i.i182.i, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114) #8
  %add.ptr.i.i185.i = getelementptr i8, ptr %dnode.0.i, i32 %115
  %dirent.i.i186.i = getelementptr inbounds %struct.dnode, ptr %dnode.0.i, i32 0, i32 6
  %cmp9.i187.i = icmp ult ptr %dirent.i.i186.i, %add.ptr.i.i185.i
  br i1 %cmp9.i187.i, label %dnode_end_de.exit.i188.i.for.body.i190.i_crit_edge, label %dnode_end_de.exit.i188.i.while.body41.i_crit_edge

dnode_end_de.exit.i188.i.while.body41.i_crit_edge: ; preds = %dnode_end_de.exit.i188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body41.i

dnode_end_de.exit.i188.i.for.body.i190.i_crit_edge: ; preds = %dnode_end_de.exit.i188.i
  br label %for.body.i190.i

for.body.i190.i:                                  ; preds = %de_next_de.exit.i197.i.for.body.i190.i_crit_edge, %dnode_end_de.exit.i188.i.for.body.i190.i_crit_edge
  %dee.011.i.i = phi ptr [ %de.010.i189.i, %de_next_de.exit.i197.i.for.body.i190.i_crit_edge ], [ null, %dnode_end_de.exit.i188.i.for.body.i190.i_crit_edge ]
  %de.010.i189.i = phi ptr [ %add.ptr.i8.i195.i, %de_next_de.exit.i197.i.for.body.i190.i_crit_edge ], [ %dirent.i.i186.i, %dnode_end_de.exit.i188.i.for.body.i190.i_crit_edge ]
  %116 = ptrtoint ptr %de.010.i189.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %de.010.i189.i, align 4
  %118 = call i16 @llvm.bswap.i16(i16 %117) #8
  %119 = add i16 %118, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %119)
  %120 = icmp ult i16 %119, 2016
  br i1 %120, label %for.body.i190.i.de_next_de.exit.i197.i_crit_edge, label %do.end.i7.i193.i

for.body.i190.i.de_next_de.exit.i197.i_crit_edge: ; preds = %for.body.i190.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i197.i

do.end.i7.i193.i:                                 ; preds = %for.body.i190.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i191.i = zext i16 %118 to i32
  %call.i6.i192.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i191.i) #12
  br label %de_next_de.exit.i197.i

de_next_de.exit.i197.i:                           ; preds = %do.end.i7.i193.i, %for.body.i190.i.de_next_de.exit.i197.i_crit_edge
  %121 = ptrtoint ptr %de.010.i189.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %de.010.i189.i, align 4
  %123 = call i16 @llvm.bswap.i16(i16 %122) #8
  %conv9.i.i194.i = zext i16 %123 to i32
  %add.ptr.i8.i195.i = getelementptr i8, ptr %de.010.i189.i, i32 %conv9.i.i194.i
  %cmp.i196.i = icmp ult ptr %add.ptr.i8.i195.i, %add.ptr.i.i185.i
  br i1 %cmp.i196.i, label %de_next_de.exit.i197.i.for.body.i190.i_crit_edge, label %dnode_pre_last_de.exit.i

de_next_de.exit.i197.i.for.body.i190.i_crit_edge: ; preds = %de_next_de.exit.i197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i190.i

dnode_pre_last_de.exit.i:                         ; preds = %de_next_de.exit.i197.i
  %tobool40.not.i = icmp eq ptr %dee.011.i.i, null
  br i1 %tobool40.not.i, label %dnode_pre_last_de.exit.i.while.body41.i_crit_edge, label %while.end75.i

dnode_pre_last_de.exit.i.while.body41.i_crit_edge: ; preds = %dnode_pre_last_de.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body41.i

while.body41.i:                                   ; preds = %dnode_pre_last_de.exit.i.while.body41.i_crit_edge, %dnode_end_de.exit.i188.i.while.body41.i_crit_edge
  %up43.i = getelementptr inbounds %struct.dnode, ptr %dnode.0.i, i32 0, i32 4
  %124 = ptrtoint ptr %up43.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %up43.i, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #8
  %127 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i_sb43, align 4
  call void @hpfs_free_dnode(ptr noundef %128, i32 noundef %dno.1.i) #8
  %129 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %i_size.i, align 8
  %sub.i94 = add i64 %130, -2048
  store i64 %sub.i94, ptr %i_size.i, align 8
  %131 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %i_blocks.i, align 8
  %sub45.i = add i64 %132, -4
  store i64 %sub45.i, ptr %i_blocks.i, align 8
  %conv.i95 = zext i32 %dno.1.i to i64
  %shl.i = shl nuw nsw i64 %conv.i95, 4
  %or.i = or i64 %shl.i, 1
  %133 = ptrtoint ptr %i_rddir_off.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i_rddir_off.i, align 4
  %tobool.not.i198.i = icmp eq ptr %134, null
  br i1 %tobool.not.i198.i, label %while.body41.i.for_all_poss.exit.i_crit_edge, label %for.cond.preheader.i.i

while.body41.i.for_all_poss.exit.i_crit_edge:     ; preds = %while.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit.i

for.cond.preheader.i.i:                           ; preds = %while.body41.i
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %tobool2.not8.i.i = icmp eq ptr %136, null
  br i1 %tobool2.not8.i.i, label %for.cond.preheader.i.i.for_all_poss.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i199.i_crit_edge

for.cond.preheader.i.i.for.body.i199.i_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i199.i

for.cond.preheader.i.i.for_all_poss.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit.i

for.body.i199.i:                                  ; preds = %hpfs_pos_subst.exit.i.for.body.i199.i_crit_edge, %for.cond.preheader.i.i.for.body.i199.i_crit_edge
  %137 = phi ptr [ %142, %hpfs_pos_subst.exit.i.for.body.i199.i_crit_edge ], [ %136, %for.cond.preheader.i.i.for.body.i199.i_crit_edge ]
  %i.09.i.i = phi ptr [ %incdec.ptr.i.i, %hpfs_pos_subst.exit.i.for.body.i199.i_crit_edge ], [ %134, %for.cond.preheader.i.i.for.body.i199.i_crit_edge ]
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %137, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %or.i)
  %cmp.i259.i = icmp eq i64 %139, %or.i
  br i1 %cmp.i259.i, label %if.then.i260.i, label %for.body.i199.i.hpfs_pos_subst.exit.i_crit_edge

for.body.i199.i.hpfs_pos_subst.exit.i_crit_edge:  ; preds = %for.body.i199.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit.i

if.then.i260.i:                                   ; preds = %for.body.i199.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 5, ptr %137, align 8
  br label %hpfs_pos_subst.exit.i

hpfs_pos_subst.exit.i:                            ; preds = %if.then.i260.i, %for.body.i199.i.hpfs_pos_subst.exit.i_crit_edge
  %incdec.ptr.i.i = getelementptr ptr, ptr %i.09.i.i, i32 1
  %141 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %142, null
  br i1 %tobool2.not.i.i, label %hpfs_pos_subst.exit.i.for_all_poss.exit.i_crit_edge, label %hpfs_pos_subst.exit.i.for.body.i199.i_crit_edge

hpfs_pos_subst.exit.i.for.body.i199.i_crit_edge:  ; preds = %hpfs_pos_subst.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i199.i

hpfs_pos_subst.exit.i.for_all_poss.exit.i_crit_edge: ; preds = %hpfs_pos_subst.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit.i

for_all_poss.exit.i:                              ; preds = %hpfs_pos_subst.exit.i.for_all_poss.exit.i_crit_edge, %for.cond.preheader.i.i.for_all_poss.exit.i_crit_edge, %while.body41.i.for_all_poss.exit.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %dno)
  %cmp46.i = icmp eq i32 %126, %dno
  br i1 %cmp46.i, label %for_all_poss.exit.i.move_to_top.exit_crit_edge, label %if.end49.i

for_all_poss.exit.i.move_to_top.exit_crit_edge:   ; preds = %for_all_poss.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_to_top.exit

if.end49.i:                                       ; preds = %for_all_poss.exit.i
  %143 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i_sb43, align 4
  %call51.i = call ptr @hpfs_map_dnode(ptr noundef %144, i32 noundef %126, ptr noundef nonnull %qbh.i) #8
  %tobool52.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i, label %if.end49.i.move_to_top.exit_crit_edge, label %if.end54.i

if.end49.i.move_to_top.exit_crit_edge:            ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_to_top.exit

if.end54.i:                                       ; preds = %if.end49.i
  %root_dnode.i = getelementptr inbounds %struct.dnode, ptr %call51.i, i32 0, i32 2
  %145 = ptrtoint ptr %root_dnode.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load55.i = load i8, ptr %root_dnode.i, align 4
  %bf.clear56.i = and i8 %bf.load55.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear56.i)
  %tobool57.not.i = icmp eq i8 %bf.clear56.i, 0
  br i1 %tobool57.not.i, label %if.end60.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i_sb43, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %147, ptr noundef nonnull @.str.53, i32 noundef %down.0, i32 noundef %dno) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #8
  br label %move_to_top.exit

if.end60.i:                                       ; preds = %if.end54.i
  %first_free.i.i200.i = getelementptr inbounds %struct.dnode, ptr %call51.i, i32 0, i32 1
  %148 = ptrtoint ptr %first_free.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %first_free.i.i200.i, align 4
  %150 = call i32 @llvm.bswap.i32(i32 %149) #8
  %151 = add i32 %150, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %151)
  %152 = icmp ult i32 %151, 2541
  br i1 %152, label %if.end60.i.dnode_end_de.exit.i206.i_crit_edge, label %do.end.i.i202.i

if.end60.i.dnode_end_de.exit.i206.i_crit_edge:    ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit.i206.i

do.end.i.i202.i:                                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i201.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %150) #12
  br label %dnode_end_de.exit.i206.i

dnode_end_de.exit.i206.i:                         ; preds = %do.end.i.i202.i, %if.end60.i.dnode_end_de.exit.i206.i_crit_edge
  %153 = ptrtoint ptr %first_free.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %first_free.i.i200.i, align 4
  %155 = call i32 @llvm.bswap.i32(i32 %154) #8
  %add.ptr.i.i203.i = getelementptr i8, ptr %call51.i, i32 %155
  %dirent.i.i204.i = getelementptr inbounds %struct.dnode, ptr %call51.i, i32 0, i32 6
  %cmp9.i205.i = icmp ult ptr %dirent.i.i204.i, %add.ptr.i.i203.i
  br i1 %cmp9.i205.i, label %dnode_end_de.exit.i206.i.for.body.i208.i_crit_edge, label %dnode_end_de.exit.i206.i.if.then69.i_crit_edge

dnode_end_de.exit.i206.i.if.then69.i_crit_edge:   ; preds = %dnode_end_de.exit.i206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69.i

dnode_end_de.exit.i206.i.for.body.i208.i_crit_edge: ; preds = %dnode_end_de.exit.i206.i
  br label %for.body.i208.i

for.body.i208.i:                                  ; preds = %de_next_de.exit.i215.i.for.body.i208.i_crit_edge, %dnode_end_de.exit.i206.i.for.body.i208.i_crit_edge
  %de.010.i207.i = phi ptr [ %add.ptr.i8.i213.i, %de_next_de.exit.i215.i.for.body.i208.i_crit_edge ], [ %dirent.i.i204.i, %dnode_end_de.exit.i206.i.for.body.i208.i_crit_edge ]
  %156 = ptrtoint ptr %de.010.i207.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %de.010.i207.i, align 4
  %158 = call i16 @llvm.bswap.i16(i16 %157) #8
  %159 = add i16 %158, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %159)
  %160 = icmp ult i16 %159, 2016
  br i1 %160, label %for.body.i208.i.de_next_de.exit.i215.i_crit_edge, label %do.end.i7.i211.i

for.body.i208.i.de_next_de.exit.i215.i_crit_edge: ; preds = %for.body.i208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i215.i

do.end.i7.i211.i:                                 ; preds = %for.body.i208.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i209.i = zext i16 %158 to i32
  %call.i6.i210.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i209.i) #12
  br label %de_next_de.exit.i215.i

de_next_de.exit.i215.i:                           ; preds = %do.end.i7.i211.i, %for.body.i208.i.de_next_de.exit.i215.i_crit_edge
  %161 = ptrtoint ptr %de.010.i207.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %de.010.i207.i, align 4
  %163 = call i16 @llvm.bswap.i16(i16 %162) #8
  %conv9.i.i212.i = zext i16 %163 to i32
  %add.ptr.i8.i213.i = getelementptr i8, ptr %de.010.i207.i, i32 %conv9.i.i212.i
  %cmp.i214.i = icmp ult ptr %add.ptr.i8.i213.i, %add.ptr.i.i203.i
  br i1 %cmp.i214.i, label %de_next_de.exit.i215.i.for.body.i208.i_crit_edge, label %dnode_last_de.exit217.i

de_next_de.exit.i215.i.for.body.i208.i_crit_edge: ; preds = %de_next_de.exit.i215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i208.i

dnode_last_de.exit217.i:                          ; preds = %de_next_de.exit.i215.i
  %tobool62.not.i = icmp eq ptr %de.010.i207.i, null
  br i1 %tobool62.not.i, label %dnode_last_de.exit217.i.if.then69.i_crit_edge, label %lor.lhs.false.i

dnode_last_de.exit217.i.if.then69.i_crit_edge:    ; preds = %dnode_last_de.exit217.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69.i

lor.lhs.false.i:                                  ; preds = %dnode_last_de.exit217.i
  %down63.i = getelementptr inbounds %struct.hpfs_dirent, ptr %de.010.i207.i, i32 0, i32 1
  %164 = ptrtoint ptr %down63.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %bf.load64.i = load i16, ptr %down63.i, align 2
  %165 = and i16 %bf.load64.i, 1024
  %tobool68.not.i = icmp eq i16 %165, 0
  br i1 %tobool68.not.i, label %lor.lhs.false.i.if.then69.i_crit_edge, label %cleanup.i

lor.lhs.false.i.if.then69.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69.i

if.then69.i:                                      ; preds = %lor.lhs.false.i.if.then69.i_crit_edge, %dnode_last_de.exit217.i.if.then69.i_crit_edge, %dnode_end_de.exit.i206.i.if.then69.i_crit_edge
  %166 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %i_sb43, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %167, ptr noundef nonnull @.str.54, i32 noundef %126, i32 noundef %dno.1.i) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #8
  br label %move_to_top.exit

cleanup.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %first_free.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %first_free.i.i200.i, align 4
  %170 = call i32 @llvm.bswap.i32(i32 %169) #8
  %add.i.i = add i32 %170, -4
  %171 = call i32 @llvm.bswap.i32(i32 %add.i.i) #8
  %172 = ptrtoint ptr %first_free.i.i200.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %first_free.i.i200.i, align 4
  %173 = ptrtoint ptr %de.010.i207.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %de.010.i207.i, align 2
  %175 = call i16 @llvm.bswap.i16(i16 %174) #8
  %add.i218.i = add i16 %175, -4
  %176 = call i16 @llvm.bswap.i16(i16 %add.i218.i) #8
  %177 = ptrtoint ptr %de.010.i207.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %de.010.i207.i, align 2
  %178 = ptrtoint ptr %down63.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %bf.load73.i = load i16, ptr %down63.i, align 2
  %bf.clear74.i = and i16 %bf.load73.i, -1025
  store i16 %bf.clear74.i, ptr %down63.i, align 2
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh.i) #8
  br label %while.cond38.i

while.end75.i:                                    ; preds = %dnode_pre_last_de.exit.i
  %call76.i = call fastcc i64 @get_pos(ptr noundef nonnull %dnode.0.i, ptr noundef nonnull %dee.011.i.i) #8
  %179 = ptrtoint ptr %i_rddir_off.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %i_rddir_off.i, align 4
  %tobool.not.i220.i = icmp eq ptr %180, null
  br i1 %tobool.not.i220.i, label %while.end75.i.if.end8.i.i_crit_edge, label %for.cond.preheader.i222.i

while.end75.i.if.end8.i.i_crit_edge:              ; preds = %while.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

for.cond.preheader.i222.i:                        ; preds = %while.end75.i
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %tobool2.not8.i221.i = icmp eq ptr %182, null
  br i1 %tobool2.not8.i221.i, label %for.cond.preheader.i222.i.if.end8.i.i_crit_edge, label %for.cond.preheader.i222.i.for.body.i226.i_crit_edge

for.cond.preheader.i222.i.for.body.i226.i_crit_edge: ; preds = %for.cond.preheader.i222.i
  br label %for.body.i226.i

for.cond.preheader.i222.i.if.end8.i.i_crit_edge:  ; preds = %for.cond.preheader.i222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

for.body.i226.i:                                  ; preds = %hpfs_pos_subst.exit265.i.for.body.i226.i_crit_edge, %for.cond.preheader.i222.i.for.body.i226.i_crit_edge
  %183 = phi ptr [ %188, %hpfs_pos_subst.exit265.i.for.body.i226.i_crit_edge ], [ %182, %for.cond.preheader.i222.i.for.body.i226.i_crit_edge ]
  %i.09.i223.i = phi ptr [ %incdec.ptr.i224.i, %hpfs_pos_subst.exit265.i.for.body.i226.i_crit_edge ], [ %180, %for.cond.preheader.i222.i.for.body.i226.i_crit_edge ]
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %183, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %185, i64 %call76.i)
  %cmp.i262.i = icmp eq i64 %185, %call76.i
  br i1 %cmp.i262.i, label %if.then.i263.i, label %for.body.i226.i.hpfs_pos_subst.exit265.i_crit_edge

for.body.i226.i.hpfs_pos_subst.exit265.i_crit_edge: ; preds = %for.body.i226.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit265.i

if.then.i263.i:                                   ; preds = %for.body.i226.i
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %183 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 4, ptr %183, align 8
  br label %hpfs_pos_subst.exit265.i

hpfs_pos_subst.exit265.i:                         ; preds = %if.then.i263.i, %for.body.i226.i.hpfs_pos_subst.exit265.i_crit_edge
  %incdec.ptr.i224.i = getelementptr ptr, ptr %i.09.i223.i, i32 1
  %187 = ptrtoint ptr %incdec.ptr.i224.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %incdec.ptr.i224.i, align 4
  %tobool2.not.i225.i = icmp eq ptr %188, null
  br i1 %tobool2.not.i225.i, label %for_all_poss.exit227.i, label %hpfs_pos_subst.exit265.i.for.body.i226.i_crit_edge

hpfs_pos_subst.exit265.i.for.body.i226.i_crit_edge: ; preds = %hpfs_pos_subst.exit265.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i226.i

for_all_poss.exit227.i:                           ; preds = %hpfs_pos_subst.exit265.i
  %189 = ptrtoint ptr %i_rddir_off.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %.pr.i = load ptr, ptr %i_rddir_off.i, align 4
  %add.i = add i64 %call76.i, 1
  %tobool.not.i229.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i229.i, label %for_all_poss.exit227.i.if.end8.i.i_crit_edge, label %for.cond.preheader.i231.i

for_all_poss.exit227.i.if.end8.i.i_crit_edge:     ; preds = %for_all_poss.exit227.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

for.cond.preheader.i231.i:                        ; preds = %for_all_poss.exit227.i
  %190 = ptrtoint ptr %.pr.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %.pr287.i = load ptr, ptr %.pr.i, align 4
  %tobool2.not8.i230.i = icmp eq ptr %.pr287.i, null
  br i1 %tobool2.not8.i230.i, label %for.cond.preheader.i231.i.if.end8.i.i_crit_edge, label %for.cond.preheader.i231.i.for.body.i235.i_crit_edge

for.cond.preheader.i231.i.for.body.i235.i_crit_edge: ; preds = %for.cond.preheader.i231.i
  br label %for.body.i235.i

for.cond.preheader.i231.i.if.end8.i.i_crit_edge:  ; preds = %for.cond.preheader.i231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

for.body.i235.i:                                  ; preds = %hpfs_pos_subst.exit269.i.for.body.i235.i_crit_edge, %for.cond.preheader.i231.i.for.body.i235.i_crit_edge
  %191 = phi ptr [ %196, %hpfs_pos_subst.exit269.i.for.body.i235.i_crit_edge ], [ %.pr287.i, %for.cond.preheader.i231.i.for.body.i235.i_crit_edge ]
  %i.09.i232.i = phi ptr [ %incdec.ptr.i233.i, %hpfs_pos_subst.exit269.i.for.body.i235.i_crit_edge ], [ %.pr.i, %for.cond.preheader.i231.i.for.body.i235.i_crit_edge ]
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %191, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %193, i64 %add.i)
  %cmp.i266.i = icmp eq i64 %193, %add.i
  br i1 %cmp.i266.i, label %if.then.i267.i, label %for.body.i235.i.hpfs_pos_subst.exit269.i_crit_edge

for.body.i235.i.hpfs_pos_subst.exit269.i_crit_edge: ; preds = %for.body.i235.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit269.i

if.then.i267.i:                                   ; preds = %for.body.i235.i
  call void @__sanitizer_cov_trace_pc() #10
  %194 = ptrtoint ptr %191 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 5, ptr %191, align 8
  br label %hpfs_pos_subst.exit269.i

hpfs_pos_subst.exit269.i:                         ; preds = %if.then.i267.i, %for.body.i235.i.hpfs_pos_subst.exit269.i_crit_edge
  %incdec.ptr.i233.i = getelementptr ptr, ptr %i.09.i232.i, i32 1
  %195 = ptrtoint ptr %incdec.ptr.i233.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %incdec.ptr.i233.i, align 4
  %tobool2.not.i234.i = icmp eq ptr %196, null
  br i1 %tobool2.not.i234.i, label %hpfs_pos_subst.exit269.i.if.end8.i.i_crit_edge, label %hpfs_pos_subst.exit269.i.for.body.i235.i_crit_edge

hpfs_pos_subst.exit269.i.for.body.i235.i_crit_edge: ; preds = %hpfs_pos_subst.exit269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i235.i

hpfs_pos_subst.exit269.i.if.end8.i.i_crit_edge:   ; preds = %hpfs_pos_subst.exit269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %hpfs_pos_subst.exit269.i.if.end8.i.i_crit_edge, %for.cond.preheader.i231.i.if.end8.i.i_crit_edge, %for_all_poss.exit227.i.if.end8.i.i_crit_edge, %for.cond.preheader.i222.i.if.end8.i.i_crit_edge, %while.end75.i.if.end8.i.i_crit_edge
  %197 = ptrtoint ptr %dee.011.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %dee.011.i.i, align 4
  %199 = call i16 @llvm.bswap.i16(i16 %198) #8
  %conv78.i = zext i16 %199 to i32
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv78.i, i32 noundef 3136) #11
  %tobool80.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool80.not.i, label %if.then81.i, label %if.end83.i

if.then81.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %200 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %i_sb43, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %201, ptr noundef nonnull @.str.55) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #8
  br label %move_to_top.exit

if.end83.i:                                       ; preds = %if.end8.i.i
  %202 = ptrtoint ptr %dee.011.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %dee.011.i.i, align 4
  %204 = call i16 @llvm.bswap.i16(i16 %203) #8
  %conv85.i = zext i16 %204 to i32
  %205 = call ptr @memcpy(ptr %call9.i.i, ptr %dee.011.i.i, i32 %conv85.i)
  %down86.i = getelementptr inbounds %struct.hpfs_dirent, ptr %dee.011.i.i, i32 0, i32 1
  %206 = ptrtoint ptr %down86.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %bf.load87.i = load i16, ptr %down86.i, align 2
  %207 = and i16 %bf.load87.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %tobool92.not.i = icmp eq i16 %207, 0
  br i1 %tobool92.not.i, label %if.end83.i.cond.end.i_crit_edge, label %de_down_pointer.exit246.i

if.end83.i.cond.end.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

de_down_pointer.exit246.i:                        ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  %208 = ptrtoint ptr %dee.011.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %dee.011.i.i, align 4
  %210 = call i16 @llvm.bswap.i16(i16 %209) #8
  %conv.i242.i = zext i16 %210 to i32
  %add.ptr.i243.i = getelementptr i8, ptr %dee.011.i.i, i32 %conv.i242.i
  %add.ptr1.i244.i = getelementptr i8, ptr %add.ptr.i243.i, i32 -4
  %211 = ptrtoint ptr %add.ptr1.i244.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %add.ptr1.i244.i, align 4
  %213 = call i32 @llvm.bswap.i32(i32 %212) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %de_down_pointer.exit246.i, %if.end83.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %213, %de_down_pointer.exit246.i ], [ 0, %if.end83.i.cond.end.i_crit_edge ]
  %214 = and i16 %bf.load87.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %tobool.not.i248.i = icmp eq i16 %214, 0
  br i1 %tobool.not.i248.i, label %if.end.i251.i, label %if.then.i249.i

if.then.i249.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %215 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %i_sb43, align 4
  %self.i.i = getelementptr inbounds %struct.dnode, ptr %dnode.0.i, i32 0, i32 5
  %217 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %self.i.i, align 4
  %219 = call i32 @llvm.bswap.i32(i32 %218) #8
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %216, ptr noundef nonnull @.str.49, i32 noundef %219) #8
  br label %hpfs_delete_de.exit.i

if.end.i251.i:                                    ; preds = %cond.end.i
  %220 = ptrtoint ptr %first_free.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %first_free.i.i182.i, align 4
  %222 = call i32 @llvm.bswap.i32(i32 %221) #8
  %223 = ptrtoint ptr %dee.011.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %dee.011.i.i, align 4
  %225 = call i16 @llvm.bswap.i16(i16 %224) #8
  %conv.i250.i = zext i16 %225 to i32
  %sub.i.i = sub i32 %222, %conv.i250.i
  %226 = call i32 @llvm.bswap.i32(i32 %sub.i.i) #8
  %227 = ptrtoint ptr %first_free.i.i182.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %first_free.i.i182.i, align 4
  %228 = ptrtoint ptr %dee.011.i.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %dee.011.i.i, align 4
  %230 = call i16 @llvm.bswap.i16(i16 %229) #8
  %231 = add i16 %230, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %231)
  %232 = icmp ult i16 %231, 2016
  br i1 %232, label %if.end.i251.i.de_next_de.exit.i258.i_crit_edge, label %do.end.i.i254.i

if.end.i251.i.de_next_de.exit.i258.i_crit_edge:   ; preds = %if.end.i251.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i258.i

do.end.i.i254.i:                                  ; preds = %if.end.i251.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i252.i = zext i16 %230 to i32
  %call.i.i253.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i252.i) #12
  br label %de_next_de.exit.i258.i

de_next_de.exit.i258.i:                           ; preds = %do.end.i.i254.i, %if.end.i251.i.de_next_de.exit.i258.i_crit_edge
  %233 = ptrtoint ptr %dee.011.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %dee.011.i.i, align 4
  %235 = call i16 @llvm.bswap.i16(i16 %234) #8
  %conv9.i.i255.i = zext i16 %235 to i32
  %add.ptr.i.i256.i = getelementptr i8, ptr %dee.011.i.i, i32 %conv9.i.i255.i
  %236 = ptrtoint ptr %first_free.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %first_free.i.i182.i, align 4
  %238 = call i32 @llvm.bswap.i32(i32 %237) #8
  %add.ptr.i257.i = getelementptr i8, ptr %dnode.0.i, i32 %238
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i257.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %dee.011.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %239 = call ptr @memmove(ptr %dee.011.i.i, ptr %add.ptr.i.i256.i, i32 %sub.ptr.sub.i.i)
  br label %hpfs_delete_de.exit.i

hpfs_delete_de.exit.i:                            ; preds = %de_next_de.exit.i258.i, %if.then.i249.i
  %240 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %i_sb43, align 4
  call fastcc void @set_last_pointer(ptr noundef %241, ptr noundef nonnull %dnode.0.i, i32 noundef %cond.i) #8
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh.i) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #8
  %name.i = getelementptr inbounds %struct.hpfs_dirent, ptr %call9.i.i, i32 0, i32 11
  %namelen.i = getelementptr inbounds %struct.hpfs_dirent, ptr %call9.i.i, i32 0, i32 10
  %242 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %namelen.i, align 2
  %conv96.i = zext i8 %243 to i32
  %call97.i = call fastcc i32 @hpfs_add_to_dnode(ptr noundef %i, i32 noundef %dno, ptr noundef %name.i, i32 noundef %conv96.i, ptr noundef nonnull %call9.i.i, i32 noundef %down.0) #8
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %tobool98.not.i = icmp eq i32 %call97.i, 0
  %dno.1..i = select i1 %tobool98.not.i, i32 %dno.1.i, i32 0
  br label %move_to_top.exit

move_to_top.exit:                                 ; preds = %hpfs_delete_de.exit.i, %if.then81.i, %if.then69.i, %if.then58.i, %if.end49.i.move_to_top.exit_crit_edge, %for_all_poss.exit.i.move_to_top.exit_crit_edge, %if.then27.i, %if.then20.i, %if.end5.i.move_to_top.exit_crit_edge, %if.then.i91.move_to_top.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %if.then20.i ], [ 0, %if.then81.i ], [ 0, %if.then27.i ], [ %dno.1..i, %hpfs_delete_de.exit.i ], [ 0, %if.then69.i ], [ 0, %if.then58.i ], [ 0, %if.end49.i.move_to_top.exit_crit_edge ], [ %dno, %for_all_poss.exit.i.move_to_top.exit_crit_edge ], [ 0, %if.end5.i.move_to_top.exit_crit_edge ], [ 0, %if.then.i91.move_to_top.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i) #8
  %244 = ptrtoint ptr %i_rddir_off.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %i_rddir_off.i, align 4
  %tobool.not.i97 = icmp eq ptr %245, null
  br i1 %tobool.not.i97, label %move_to_top.exit.for_all_poss.exit105_crit_edge, label %for.cond.preheader.i99

move_to_top.exit.for_all_poss.exit105_crit_edge:  ; preds = %move_to_top.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit105

for.cond.preheader.i99:                           ; preds = %move_to_top.exit
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 4
  %tobool2.not8.i98 = icmp eq ptr %247, null
  br i1 %tobool2.not8.i98, label %for.cond.preheader.i99.for_all_poss.exit105_crit_edge, label %for.cond.preheader.i99.for.body.i103_crit_edge

for.cond.preheader.i99.for.body.i103_crit_edge:   ; preds = %for.cond.preheader.i99
  br label %for.body.i103

for.cond.preheader.i99.for_all_poss.exit105_crit_edge: ; preds = %for.cond.preheader.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit105

for.body.i103:                                    ; preds = %hpfs_pos_subst.exit.for.body.i103_crit_edge, %for.cond.preheader.i99.for.body.i103_crit_edge
  %248 = phi ptr [ %253, %hpfs_pos_subst.exit.for.body.i103_crit_edge ], [ %247, %for.cond.preheader.i99.for.body.i103_crit_edge ]
  %i.09.i100 = phi ptr [ %incdec.ptr.i101, %hpfs_pos_subst.exit.for.body.i103_crit_edge ], [ %245, %for.cond.preheader.i99.for.body.i103_crit_edge ]
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %248, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %250)
  %cmp.i113 = icmp eq i64 %250, 5
  br i1 %cmp.i113, label %if.then.i114, label %for.body.i103.hpfs_pos_subst.exit_crit_edge

for.body.i103.hpfs_pos_subst.exit_crit_edge:      ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit

if.then.i114:                                     ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #10
  %251 = ptrtoint ptr %248 to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 %call42, ptr %248, align 8
  br label %hpfs_pos_subst.exit

hpfs_pos_subst.exit:                              ; preds = %if.then.i114, %for.body.i103.hpfs_pos_subst.exit_crit_edge
  %incdec.ptr.i101 = getelementptr ptr, ptr %i.09.i100, i32 1
  %252 = ptrtoint ptr %incdec.ptr.i101 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %incdec.ptr.i101, align 4
  %tobool2.not.i102 = icmp eq ptr %253, null
  br i1 %tobool2.not.i102, label %hpfs_pos_subst.exit.for_all_poss.exit105_crit_edge, label %hpfs_pos_subst.exit.for.body.i103_crit_edge

hpfs_pos_subst.exit.for.body.i103_crit_edge:      ; preds = %hpfs_pos_subst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i103

hpfs_pos_subst.exit.for_all_poss.exit105_crit_edge: ; preds = %hpfs_pos_subst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit105

for_all_poss.exit105:                             ; preds = %hpfs_pos_subst.exit.for_all_poss.exit105_crit_edge, %for.cond.preheader.i99.for_all_poss.exit105_crit_edge, %move_to_top.exit.for_all_poss.exit105_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool47.not = icmp eq i32 %retval.2.i, 0
  br i1 %tobool47.not, label %for_all_poss.exit105.if.end49_crit_edge, label %if.then48

for_all_poss.exit105.if.end49_crit_edge:          ; preds = %for_all_poss.exit105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then48:                                        ; preds = %for_all_poss.exit105
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @delete_empty_dnode(ptr noundef %i, i32 noundef %retval.2.i)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %for_all_poss.exit105.if.end49_crit_edge
  %lnot.ext = zext i1 %tobool47.not to i32
  br label %cleanup

if.end51:                                         ; preds = %hpfs_delete_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @delete_empty_dnode(ptr noundef %i, i32 noundef %dno)
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end49, %if.then39, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 2, %if.then39 ], [ %lnot.ext, %if.end49 ], [ 0, %if.end51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @get_pos(ptr noundef readonly %d, ptr noundef readnone %fde) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %first_free.i = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_free.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %3 = add i32 %2, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %3)
  %4 = icmp ult i32 %3, 2541
  br i1 %4, label %entry.dnode_end_de.exit_crit_edge, label %do.end.i

entry.dnode_end_de.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %2) #12
  br label %dnode_end_de.exit

dnode_end_de.exit:                                ; preds = %do.end.i, %entry.dnode_end_de.exit_crit_edge
  %5 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %first_free.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %add.ptr.i = getelementptr i8, ptr %d, i32 %7
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 6
  %cmp22 = icmp ult ptr %dirent.i, %add.ptr.i
  br i1 %cmp22, label %dnode_end_de.exit.for.body_crit_edge, label %dnode_end_de.exit.do.end_crit_edge

dnode_end_de.exit.do.end_crit_edge:               ; preds = %dnode_end_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

dnode_end_de.exit.for.body_crit_edge:             ; preds = %dnode_end_de.exit
  br label %for.body

for.body:                                         ; preds = %de_next_de.exit.for.body_crit_edge, %dnode_end_de.exit.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %de_next_de.exit.for.body_crit_edge ], [ 1, %dnode_end_de.exit.for.body_crit_edge ]
  %de.023 = phi ptr [ %add.ptr.i20, %de_next_de.exit.for.body_crit_edge ], [ %dirent.i, %dnode_end_de.exit.for.body_crit_edge ]
  %cmp2 = icmp eq ptr %de.023, %fde
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %self = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 5
  %8 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %self, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %conv = zext i32 %10 to i64
  %shl = shl nuw nsw i64 %conv, 4
  %conv3 = sext i32 %i.024 to i64
  %or = or i64 %shl, %conv3
  br label %cleanup

if.end:                                           ; preds = %for.body
  %inc = add i32 %i.024, 1
  %11 = ptrtoint ptr %de.023 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %de.023, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %14 = add i16 %13, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %14)
  %15 = icmp ult i16 %14, 2016
  br i1 %15, label %if.end.de_next_de.exit_crit_edge, label %do.end.i19

if.end.de_next_de.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i19:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %13 to i32
  %call.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i19, %if.end.de_next_de.exit_crit_edge
  %16 = ptrtoint ptr %de.023 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %de.023, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %conv9.i = zext i16 %18 to i32
  %add.ptr.i20 = getelementptr i8, ptr %de.023, i32 %conv9.i
  %cmp = icmp ult ptr %add.ptr.i20, %add.ptr.i
  br i1 %cmp, label %de_next_de.exit.for.body_crit_edge, label %de_next_de.exit.do.end_crit_edge

de_next_de.exit.do.end_crit_edge:                 ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

de_next_de.exit.for.body_crit_edge:               ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end:                                           ; preds = %de_next_de.exit.do.end_crit_edge, %dnode_end_de.exit.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #12
  %self6 = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 5
  %19 = ptrtoint ptr %self6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %self6, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %conv7 = zext i32 %21 to i64
  %shl8 = shl nuw nsw i64 %conv7, 4
  %or9 = or i64 %shl8, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i64 [ %or, %if.then ], [ %or9, %do.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_mark_4buffers_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @delete_empty_dnode(ptr noundef %i, i32 noundef %dno) unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %bh = alloca ptr, align 4
  %qbh1 = alloca %struct.quad_buffer_head, align 4
  %qbh1119 = alloca %struct.quad_buffer_head, align 4
  %qbh1145 = alloca %struct.quad_buffer_head, align 4
  %qbh1211 = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #8
  %0 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #8
  %1 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c1, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #8
  %2 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %c2, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %call1966 = call i32 @hpfs_stop_cycles(ptr noundef %4, i32 noundef %dno, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1966)
  %tobool.not967 = icmp eq i32 %call1966, 0
  br i1 %tobool.not967, label %if.end.lr.ph, label %entry.cleanup391_crit_edge

entry.cleanup391_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup391

if.end.lr.ph:                                     ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 14
  %i_blocks = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 22
  %i_rddir_off.i627 = getelementptr i8, ptr %i, i32 -4
  br label %if.end

if.end:                                           ; preds = %try_it_again.backedge.if.end_crit_edge, %if.end.lr.ph
  %dno.addr.0968 = phi i32 [ %dno, %if.end.lr.ph ], [ %14, %try_it_again.backedge.if.end_crit_edge ]
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %call3 = call ptr @hpfs_map_dnode(ptr noundef %6, i32 noundef %dno.addr.0968, ptr noundef nonnull %qbh) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup391_crit_edge, label %if.end6

if.end.cleanup391_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup391

if.end6:                                          ; preds = %if.end
  %first_free = getelementptr inbounds %struct.dnode, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %first_free, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %9)
  %cmp = icmp ugt i32 %9, 56
  br i1 %cmp, label %if.end6.end_crit_edge, label %if.end8

if.end6.end_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end8:                                          ; preds = %if.end6
  %10 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.else133 [
    i32 872415232, label %if.end8.if.then13_crit_edge
    i32 939524096, label %if.end8.if.then13_crit_edge1272
  ]

if.end8.if.then13_crit_edge1272:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %if.end8.if.then13_crit_edge, %if.end8.if.then13_crit_edge1272
  %root_dnode = getelementptr inbounds %struct.dnode, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %root_dnode to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %root_dnode, align 4
  %bf.clear = and i8 %bf.load, 1
  %up14 = getelementptr inbounds %struct.dnode, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %up14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %up14, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %down16 = getelementptr inbounds %struct.dnode, ptr %call3, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %down16 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load17 = load i16, ptr %down16, align 2
  %16 = and i16 %bf.load17, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool20.not = icmp eq i16 %16, 0
  br i1 %tobool20.not, label %if.then13.cond.end_crit_edge, label %de_down_pointer.exit

if.then13.cond.end_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

de_down_pointer.exit:                             ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %call3, i32 0, i32 6
  %17 = ptrtoint ptr %dirent.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dirent.i, align 4
  %19 = call i16 @llvm.bswap.i16(i16 %18) #8
  %conv.i = zext i16 %19 to i32
  %add.ptr.i601 = getelementptr %struct.dnode, ptr %call3, i32 0, i32 5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i601, i32 %conv.i
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr1.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #8
  br label %cond.end

cond.end:                                         ; preds = %de_down_pointer.exit, %if.then13.cond.end_crit_edge
  %cond = phi i32 [ %22, %de_down_pointer.exit ], [ 0, %if.then13.cond.end_crit_edge ]
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load24 = load i16, ptr %sb_chk, align 2
  %28 = and i16 %bf.load24, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool28.not = icmp eq i16 %28, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool30.not = icmp eq i8 %bf.clear, 0
  %or.cond = select i1 %tobool28.not, i1 true, i1 %tobool30.not
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool31.not = icmp eq i32 %cond, 0
  %or.cond568 = select i1 %or.cond.not, i1 %tobool31.not, i1 false
  br i1 %or.cond568, label %if.then32, label %if.end35

if.then32:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %24, ptr noundef nonnull @.str.57, i32 noundef %dno.addr.0968) #8
  br label %end

if.end35:                                         ; preds = %cond.end
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  call void @hpfs_free_dnode(ptr noundef %30, i32 noundef %dno.addr.0968) #8
  %31 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_size, align 8
  %sub = add i64 %32, -2048
  store i64 %sub, ptr %i_size, align 8
  %33 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_blocks, align 8
  %sub37 = add i64 %34, -4
  store i64 %sub37, ptr %i_blocks, align 8
  br i1 %tobool30.not, label %if.end74, label %if.then39

if.then39:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %35 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh1) #8
  %36 = call ptr @memset(ptr %qbh1, i32 255, i32 20)
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i603 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i603 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i603, align 16
  %sb_chk42 = getelementptr inbounds %struct.hpfs_sb_info, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %sb_chk42 to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load43 = load i16, ptr %sb_chk42, align 2
  %42 = and i16 %bf.load43, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool47.not = icmp eq i16 %42, 0
  br i1 %tobool47.not, label %if.then39.if.end55_crit_edge, label %if.then48

if.then39.if.end55_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then48:                                        ; preds = %if.then39
  %i_ino = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 11
  %43 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %44)
  %cmp49.not = icmp eq i32 %14, %44
  br i1 %cmp49.not, label %if.then48.if.end55_crit_edge, label %if.then51

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %38, ptr noundef nonnull @.str.58, i32 noundef %dno.addr.0968, i32 noundef %14, i32 noundef %44) #8
  br label %cleanup

if.end55:                                         ; preds = %if.then48.if.end55_crit_edge, %if.then39.if.end55_crit_edge
  %call57 = call ptr @hpfs_map_dnode(ptr noundef %38, i32 noundef %cond, ptr noundef nonnull %qbh1) #8
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end55.if.end64_crit_edge, label %if.then59

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %up60 = getelementptr inbounds %struct.dnode, ptr %call57, i32 0, i32 4
  %45 = ptrtoint ptr %up60 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %13, ptr %up60, align 4
  %root_dnode61 = getelementptr inbounds %struct.dnode, ptr %call57, i32 0, i32 2
  %46 = ptrtoint ptr %root_dnode61 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load62 = load i8, ptr %root_dnode61, align 4
  %bf.set = or i8 %bf.load62, 1
  store i8 %bf.set, ptr %root_dnode61, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh1) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end55.if.end64_crit_edge
  %47 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb, align 4
  %call66 = call ptr @hpfs_map_fnode(ptr noundef %48, i32 noundef %14, ptr noundef nonnull %bh) #8
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.end64.if.end69_crit_edge, label %if.then68

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then68:                                        ; preds = %if.end64
  %49 = call i32 @llvm.bswap.i32(i32 %cond)
  %disk_secno = getelementptr inbounds %struct.fnode, ptr %call66, i32 0, i32 15, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %disk_secno to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %disk_secno, align 4
  %51 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %52) #8
  %53 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bh, align 4
  %tobool.not.i604 = icmp eq ptr %54, null
  br i1 %tobool.not.i604, label %if.then68.if.end69_crit_edge, label %if.then.i605

if.then68.if.end69_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then.i605:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %54) #8
  br label %if.end69

if.end69:                                         ; preds = %if.then.i605, %if.then68.if.end69_crit_edge, %if.end64.if.end69_crit_edge
  %i_dno = getelementptr i8, ptr %i, i32 -36
  %55 = ptrtoint ptr %i_dno to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond, ptr %i_dno, align 4
  %conv70 = zext i32 %dno.addr.0968 to i64
  %shl = shl nuw nsw i64 %conv70, 4
  %or = or i64 %shl, 1
  %56 = ptrtoint ptr %i_rddir_off.i627 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_rddir_off.i627, align 4
  %tobool.not.i607 = icmp eq ptr %57, null
  br i1 %tobool.not.i607, label %if.end69.cleanup_crit_edge, label %for.cond.preheader.i

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end69
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tobool2.not8.i = icmp eq ptr %59, null
  br i1 %tobool2.not8.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %hpfs_pos_subst.exit.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %60 = phi ptr [ %65, %hpfs_pos_subst.exit.for.body.i_crit_edge ], [ %59, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.09.i = phi ptr [ %incdec.ptr.i, %hpfs_pos_subst.exit.for.body.i_crit_edge ], [ %57, %for.cond.preheader.i.for.body.i_crit_edge ]
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %60, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %or)
  %cmp.i820 = icmp eq i64 %62, %or
  br i1 %cmp.i820, label %if.then.i821, label %for.body.i.hpfs_pos_subst.exit_crit_edge

for.body.i.hpfs_pos_subst.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit

if.then.i821:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 12, ptr %60, align 8
  br label %hpfs_pos_subst.exit

hpfs_pos_subst.exit:                              ; preds = %if.then.i821, %for.body.i.hpfs_pos_subst.exit_crit_edge
  %incdec.ptr.i = getelementptr ptr, ptr %i.09.i, i32 1
  %64 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %65, null
  br i1 %tobool2.not.i, label %hpfs_pos_subst.exit.cleanup_crit_edge, label %hpfs_pos_subst.exit.for.body.i_crit_edge

hpfs_pos_subst.exit.for.body.i_crit_edge:         ; preds = %hpfs_pos_subst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

hpfs_pos_subst.exit.cleanup_crit_edge:            ; preds = %hpfs_pos_subst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %hpfs_pos_subst.exit.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.then51
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  br label %cleanup391

if.end74:                                         ; preds = %if.end35
  %66 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb, align 4
  %call76 = call ptr @hpfs_map_dnode(ptr noundef %67, i32 noundef %14, ptr noundef nonnull %qbh) #8
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.end74.cleanup391_crit_edge, label %if.end79

if.end74.cleanup391_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup391

if.end79:                                         ; preds = %if.end74
  %first_free.i = getelementptr inbounds %struct.dnode, ptr %call76, i32 0, i32 1
  %68 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %first_free.i, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #8
  %71 = add i32 %70, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %71)
  %72 = icmp ult i32 %71, 2541
  br i1 %72, label %if.end79.dnode_end_de.exit_crit_edge, label %do.end.i609

if.end79.dnode_end_de.exit_crit_edge:             ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit

do.end.i609:                                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %call.i608 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %70) #12
  br label %dnode_end_de.exit

dnode_end_de.exit:                                ; preds = %do.end.i609, %if.end79.dnode_end_de.exit_crit_edge
  %73 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %first_free.i, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74) #8
  %add.ptr.i610 = getelementptr i8, ptr %call76, i32 %75
  %dirent.i612 = getelementptr inbounds %struct.dnode, ptr %call76, i32 0, i32 6
  %cmp82956 = icmp ult ptr %dirent.i612, %add.ptr.i610
  br i1 %cmp82956, label %dnode_end_de.exit.for.body_crit_edge, label %dnode_end_de.exit.for.end_crit_edge

dnode_end_de.exit.for.end_crit_edge:              ; preds = %dnode_end_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

dnode_end_de.exit.for.body_crit_edge:             ; preds = %dnode_end_de.exit
  br label %for.body

for.body:                                         ; preds = %de_next_de.exit.for.body_crit_edge, %dnode_end_de.exit.for.body_crit_edge
  %de.0959 = phi ptr [ %add.ptr.i625, %de_next_de.exit.for.body_crit_edge ], [ %dirent.i612, %dnode_end_de.exit.for.body_crit_edge ]
  %p.1957 = phi i32 [ %inc, %de_next_de.exit.for.body_crit_edge ], [ 1, %dnode_end_de.exit.for.body_crit_edge ]
  %down84 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0959, i32 0, i32 1
  %76 = ptrtoint ptr %down84 to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load85 = load i16, ptr %down84, align 2
  %77 = and i16 %bf.load85, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool89.not = icmp eq i16 %77, 0
  br i1 %tobool89.not, label %for.body.for.inc_crit_edge, label %de_down_pointer.exit622

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

de_down_pointer.exit622:                          ; preds = %for.body
  %78 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %de.0959, align 4
  %80 = call i16 @llvm.bswap.i16(i16 %79) #8
  %conv.i618 = zext i16 %80 to i32
  %add.ptr.i619 = getelementptr i8, ptr %de.0959, i32 -4
  %add.ptr1.i620 = getelementptr i8, ptr %add.ptr.i619, i32 %conv.i618
  %81 = ptrtoint ptr %add.ptr1.i620 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr1.i620, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %dno.addr.0968)
  %cmp92 = icmp eq i32 %83, %dno.addr.0968
  br i1 %cmp92, label %fnd, label %de_down_pointer.exit622.for.inc_crit_edge

de_down_pointer.exit622.for.inc_crit_edge:        ; preds = %de_down_pointer.exit622
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %de_down_pointer.exit622.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %84 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %de.0959, align 4
  %86 = call i16 @llvm.bswap.i16(i16 %85) #8
  %87 = add i16 %86, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %87)
  %88 = icmp ult i16 %87, 2016
  br i1 %88, label %for.inc.de_next_de.exit_crit_edge, label %do.end.i624

for.inc.de_next_de.exit_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i624:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %86 to i32
  %call.i623 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i624, %for.inc.de_next_de.exit_crit_edge
  %89 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %de.0959, align 4
  %91 = call i16 @llvm.bswap.i16(i16 %90) #8
  %conv9.i = zext i16 %91 to i32
  %add.ptr.i625 = getelementptr i8, ptr %de.0959, i32 %conv9.i
  %inc = add i32 %p.1957, 1
  %cmp82 = icmp ult ptr %add.ptr.i625, %add.ptr.i610
  br i1 %cmp82, label %de_next_de.exit.for.body_crit_edge, label %de_next_de.exit.for.end_crit_edge

de_next_de.exit.for.end_crit_edge:                ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

de_next_de.exit.for.body_crit_edge:               ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %de_next_de.exit.for.end_crit_edge, %dnode_end_de.exit.for.end_crit_edge
  %92 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %93, ptr noundef nonnull @.str.59, i32 noundef %dno.addr.0968, i32 noundef %14) #8
  br label %end

fnd:                                              ; preds = %de_down_pointer.exit622
  %down84.le = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0959, i32 0, i32 1
  %conv99 = zext i32 %dno.addr.0968 to i64
  %shl100 = shl nuw nsw i64 %conv99, 4
  %or101 = or i64 %shl100, 1
  %conv102 = zext i32 %14 to i64
  %shl103 = shl nuw nsw i64 %conv102, 4
  %conv104 = sext i32 %p.1957 to i64
  %or105 = or i64 %shl103, %conv104
  %94 = ptrtoint ptr %i_rddir_off.i627 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_rddir_off.i627, align 4
  %tobool.not.i628 = icmp eq ptr %95, null
  br i1 %tobool.not.i628, label %fnd.for_all_poss.exit635_crit_edge, label %for.cond.preheader.i630

fnd.for_all_poss.exit635_crit_edge:               ; preds = %fnd
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit635

for.cond.preheader.i630:                          ; preds = %fnd
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %tobool2.not8.i629 = icmp eq ptr %97, null
  br i1 %tobool2.not8.i629, label %for.cond.preheader.i630.for_all_poss.exit635_crit_edge, label %for.cond.preheader.i630.for.body.i634_crit_edge

for.cond.preheader.i630.for.body.i634_crit_edge:  ; preds = %for.cond.preheader.i630
  br label %for.body.i634

for.cond.preheader.i630.for_all_poss.exit635_crit_edge: ; preds = %for.cond.preheader.i630
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit635

for.body.i634:                                    ; preds = %hpfs_pos_subst.exit826.for.body.i634_crit_edge, %for.cond.preheader.i630.for.body.i634_crit_edge
  %98 = phi ptr [ %103, %hpfs_pos_subst.exit826.for.body.i634_crit_edge ], [ %97, %for.cond.preheader.i630.for.body.i634_crit_edge ]
  %i.09.i631 = phi ptr [ %incdec.ptr.i632, %hpfs_pos_subst.exit826.for.body.i634_crit_edge ], [ %95, %for.cond.preheader.i630.for.body.i634_crit_edge ]
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %98, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %or101)
  %cmp.i823 = icmp eq i64 %100, %or101
  br i1 %cmp.i823, label %if.then.i824, label %for.body.i634.hpfs_pos_subst.exit826_crit_edge

for.body.i634.hpfs_pos_subst.exit826_crit_edge:   ; preds = %for.body.i634
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit826

if.then.i824:                                     ; preds = %for.body.i634
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %or105, ptr %98, align 8
  br label %hpfs_pos_subst.exit826

hpfs_pos_subst.exit826:                           ; preds = %if.then.i824, %for.body.i634.hpfs_pos_subst.exit826_crit_edge
  %incdec.ptr.i632 = getelementptr ptr, ptr %i.09.i631, i32 1
  %102 = ptrtoint ptr %incdec.ptr.i632 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %incdec.ptr.i632, align 4
  %tobool2.not.i633 = icmp eq ptr %103, null
  br i1 %tobool2.not.i633, label %hpfs_pos_subst.exit826.for_all_poss.exit635_crit_edge, label %hpfs_pos_subst.exit826.for.body.i634_crit_edge

hpfs_pos_subst.exit826.for.body.i634_crit_edge:   ; preds = %hpfs_pos_subst.exit826
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i634

hpfs_pos_subst.exit826.for_all_poss.exit635_crit_edge: ; preds = %hpfs_pos_subst.exit826
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit635

for_all_poss.exit635:                             ; preds = %hpfs_pos_subst.exit826.for_all_poss.exit635_crit_edge, %for.cond.preheader.i630.for_all_poss.exit635_crit_edge, %fnd.for_all_poss.exit635_crit_edge
  br i1 %tobool31.not, label %if.then107, label %if.else

if.then107:                                       ; preds = %for_all_poss.exit635
  %104 = ptrtoint ptr %down84.le to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load109 = load i16, ptr %down84.le, align 2
  %bf.clear110 = and i16 %bf.load109, -1025
  store i16 %bf.clear110, ptr %down84.le, align 2
  %105 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %de.0959, align 2
  %107 = call i16 @llvm.bswap.i16(i16 %106) #8
  %add.i = add i16 %107, -4
  %108 = call i16 @llvm.bswap.i16(i16 %add.i) #8
  %109 = ptrtoint ptr %de.0959 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %de.0959, align 2
  %110 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %first_free.i, align 4
  %112 = call i32 @llvm.bswap.i32(i32 %111) #8
  %add.i636 = add i32 %112, -4
  %113 = call i32 @llvm.bswap.i32(i32 %add.i636) #8
  %114 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %first_free.i, align 4
  %115 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %de.0959, align 4
  %117 = call i16 @llvm.bswap.i16(i16 %116) #8
  %118 = add i16 %117, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %118)
  %119 = icmp ult i16 %118, 2016
  br i1 %119, label %if.then107.de_next_de.exit643_crit_edge, label %do.end.i639

if.then107.de_next_de.exit643_crit_edge:          ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit643

do.end.i639:                                      ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i637 = zext i16 %117 to i32
  %call.i638 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i637) #12
  br label %de_next_de.exit643

de_next_de.exit643:                               ; preds = %do.end.i639, %if.then107.de_next_de.exit643_crit_edge
  %120 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %de.0959, align 4
  %122 = call i16 @llvm.bswap.i16(i16 %121) #8
  %conv9.i640 = zext i16 %122 to i32
  %add.ptr.i641 = getelementptr i8, ptr %de.0959, i32 %conv9.i640
  %123 = add i16 %122, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %123)
  %124 = icmp ult i16 %123, 2016
  br i1 %124, label %de_next_de.exit643.de_next_de.exit650_crit_edge, label %do.end.i646

de_next_de.exit643.de_next_de.exit650_crit_edge:  ; preds = %de_next_de.exit643
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit650

do.end.i646:                                      ; preds = %de_next_de.exit643
  call void @__sanitizer_cov_trace_pc() #10
  %call.i645 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv9.i640) #12
  br label %de_next_de.exit650

de_next_de.exit650:                               ; preds = %do.end.i646, %de_next_de.exit643.de_next_de.exit650_crit_edge
  %125 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %de.0959, align 4
  %127 = call i16 @llvm.bswap.i16(i16 %126) #8
  %conv9.i647 = zext i16 %127 to i32
  %add.ptr.i648 = getelementptr i8, ptr %de.0959, i32 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i648, i32 %conv9.i647
  %128 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %first_free.i, align 4
  %130 = call i32 @llvm.bswap.i32(i32 %129)
  %add.ptr116 = getelementptr i8, ptr %call76, i32 %130
  %131 = add i16 %127, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %131)
  %132 = icmp ult i16 %131, 2016
  br i1 %132, label %de_next_de.exit650.de_next_de.exit657_crit_edge, label %do.end.i653

de_next_de.exit650.de_next_de.exit657_crit_edge:  ; preds = %de_next_de.exit650
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit657

do.end.i653:                                      ; preds = %de_next_de.exit650
  call void @__sanitizer_cov_trace_pc() #10
  %call.i652 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv9.i647) #12
  br label %de_next_de.exit657

de_next_de.exit657:                               ; preds = %do.end.i653, %de_next_de.exit650.de_next_de.exit657_crit_edge
  %133 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %de.0959, align 4
  %135 = call i16 @llvm.bswap.i16(i16 %134) #8
  %conv9.i654 = zext i16 %135 to i32
  %add.ptr.i655 = getelementptr i8, ptr %de.0959, i32 %conv9.i654
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr116 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i655 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %136 = call ptr @memmove(ptr %add.ptr.i641, ptr %add.ptr, i32 %sub.ptr.sub)
  br label %if.end136

if.else:                                          ; preds = %for_all_poss.exit635
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh1119) #8
  %137 = call ptr @memset(ptr %qbh1119, i32 255, i32 20)
  %138 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %de.0959, align 4
  %140 = call i16 @llvm.bswap.i16(i16 %139)
  %conv121 = zext i16 %140 to i32
  %add.ptr122 = getelementptr i8, ptr %de.0959, i32 -4
  %add.ptr123 = getelementptr i8, ptr %add.ptr122, i32 %conv121
  %141 = ptrtoint ptr %add.ptr123 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %cond, ptr %add.ptr123, align 4
  %142 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i_sb, align 4
  %call125 = call ptr @hpfs_map_dnode(ptr noundef %143, i32 noundef %cond, ptr noundef nonnull %qbh1119) #8
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %if.else.if.end129_crit_edge, label %if.then127

if.else.if.end129_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then127:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %up128 = getelementptr inbounds %struct.dnode, ptr %call125, i32 0, i32 4
  %144 = ptrtoint ptr %up128 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %13, ptr %up128, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh1119) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1119) #8
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.else.if.end129_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh1119) #8
  br label %if.end136

if.else133:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %146, ptr noundef nonnull @.str.60, i32 noundef %dno.addr.0968, i32 noundef %9) #8
  br label %end

if.end136:                                        ; preds = %if.end129, %de_next_de.exit657
  %147 = ptrtoint ptr %down84.le to i32
  call void @__asan_load2_noabort(i32 %147)
  %bf.load137 = load i16, ptr %down84.le, align 2
  %148 = and i16 %bf.load137, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %tobool141.not = icmp eq i16 %148, 0
  br i1 %tobool141.not, label %if.then142, label %if.else207

if.then142:                                       ; preds = %if.end136
  %149 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %de.0959, align 4
  %151 = call i16 @llvm.bswap.i16(i16 %150) #8
  %152 = add i16 %151, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %152)
  %153 = icmp ult i16 %152, 2016
  br i1 %153, label %if.then142.de_next_de.exit664_crit_edge, label %do.end.i660

if.then142.de_next_de.exit664_crit_edge:          ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit664

do.end.i660:                                      ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i658 = zext i16 %151 to i32
  %call.i659 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i658) #12
  br label %de_next_de.exit664

de_next_de.exit664:                               ; preds = %do.end.i660, %if.then142.de_next_de.exit664_crit_edge
  %154 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %de.0959, align 4
  %156 = call i16 @llvm.bswap.i16(i16 %155) #8
  %conv9.i661 = zext i16 %156 to i32
  %add.ptr.i662 = getelementptr i8, ptr %de.0959, i32 %conv9.i661
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh1145) #8
  %down146 = getelementptr inbounds %struct.hpfs_dirent, ptr %add.ptr.i662, i32 0, i32 1
  %157 = call ptr @memset(ptr %qbh1145, i32 255, i32 20)
  %158 = ptrtoint ptr %down146 to i32
  call void @__asan_load2_noabort(i32 %158)
  %bf.load147 = load i16, ptr %down146, align 2
  %159 = and i16 %bf.load147, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %tobool151.not = icmp eq i16 %159, 0
  br i1 %tobool151.not, label %de_next_de.exit664.cleanup202.thread_crit_edge, label %de_down_pointer.exit674

de_next_de.exit664.cleanup202.thread_crit_edge:   ; preds = %de_next_de.exit664
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup202.thread

de_down_pointer.exit674:                          ; preds = %de_next_de.exit664
  %160 = ptrtoint ptr %add.ptr.i662 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %add.ptr.i662, align 4
  %162 = call i16 @llvm.bswap.i16(i16 %161) #8
  %conv.i670 = zext i16 %162 to i32
  %add.ptr.i671 = getelementptr i8, ptr %add.ptr.i662, i32 -4
  %add.ptr1.i672 = getelementptr i8, ptr %add.ptr.i671, i32 %conv.i670
  %163 = ptrtoint ptr %add.ptr1.i672 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr1.i672, align 4
  %165 = call i32 @llvm.bswap.i32(i32 %164) #8
  %166 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %de.0959, align 4
  %168 = call i16 @llvm.bswap.i16(i16 %167)
  %conv156 = zext i16 %168 to i32
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv156, i32 noundef 3136) #11
  %tobool158.not = icmp eq ptr %call9.i, null
  br i1 %tobool158.not, label %do.end, label %if.end161

do.end:                                           ; preds = %de_down_pointer.exit674
  call void @__sanitizer_cov_trace_pc() #10
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #12
  br label %cleanup202.thread

if.end161:                                        ; preds = %de_down_pointer.exit674
  %169 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %de.0959, align 4
  %171 = call i16 @llvm.bswap.i16(i16 %170)
  %conv163 = zext i16 %171 to i32
  %172 = call ptr @memcpy(ptr %call9.i, ptr %de.0959, i32 %conv163)
  %173 = ptrtoint ptr %down84.le to i32
  call void @__asan_load2_noabort(i32 %173)
  %bf.load.i675 = load i16, ptr %down84.le, align 2
  %174 = and i16 %bf.load.i675, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %174)
  %tobool.not.i676 = icmp eq i16 %174, 0
  br i1 %tobool.not.i676, label %if.end.i680, label %if.then.i677

if.then.i677:                                     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i_sb, align 4
  %self.i = getelementptr inbounds %struct.dnode, ptr %call76, i32 0, i32 5
  %177 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %self.i, align 4
  %179 = call i32 @llvm.bswap.i32(i32 %178) #8
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %176, ptr noundef nonnull @.str.49, i32 noundef %179) #8
  br label %hpfs_delete_de.exit

if.end.i680:                                      ; preds = %if.end161
  %180 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %first_free.i, align 4
  %182 = call i32 @llvm.bswap.i32(i32 %181) #8
  %183 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %de.0959, align 4
  %185 = call i16 @llvm.bswap.i16(i16 %184) #8
  %conv.i679 = zext i16 %185 to i32
  %sub.i = sub i32 %182, %conv.i679
  %186 = call i32 @llvm.bswap.i32(i32 %sub.i) #8
  %187 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %first_free.i, align 4
  %188 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %de.0959, align 4
  %190 = call i16 @llvm.bswap.i16(i16 %189) #8
  %191 = add i16 %190, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %191)
  %192 = icmp ult i16 %191, 2016
  br i1 %192, label %if.end.i680.de_next_de.exit.i_crit_edge, label %do.end.i.i

if.end.i680.de_next_de.exit.i_crit_edge:          ; preds = %if.end.i680
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i

do.end.i.i:                                       ; preds = %if.end.i680
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i = zext i16 %190 to i32
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i) #12
  br label %de_next_de.exit.i

de_next_de.exit.i:                                ; preds = %do.end.i.i, %if.end.i680.de_next_de.exit.i_crit_edge
  %193 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %de.0959, align 4
  %195 = call i16 @llvm.bswap.i16(i16 %194) #8
  %conv9.i.i = zext i16 %195 to i32
  %add.ptr.i.i = getelementptr i8, ptr %de.0959, i32 %conv9.i.i
  %196 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %first_free.i, align 4
  %198 = call i32 @llvm.bswap.i32(i32 %197) #8
  %add.ptr.i681 = getelementptr i8, ptr %call76, i32 %198
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i681 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %de.0959 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %199 = call ptr @memmove(ptr %de.0959, ptr %add.ptr.i.i, i32 %sub.ptr.sub.i)
  br label %hpfs_delete_de.exit

hpfs_delete_de.exit:                              ; preds = %de_next_de.exit.i, %if.then.i677
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  %200 = ptrtoint ptr %i_rddir_off.i627 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %i_rddir_off.i627, align 4
  %tobool.not.i683 = icmp eq ptr %201, null
  br i1 %tobool.not.i683, label %hpfs_delete_de.exit.for_all_poss.exit699_crit_edge, label %for.cond.preheader.i685

hpfs_delete_de.exit.for_all_poss.exit699_crit_edge: ; preds = %hpfs_delete_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit699

for.cond.preheader.i685:                          ; preds = %hpfs_delete_de.exit
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %tobool2.not8.i684 = icmp eq ptr %203, null
  br i1 %tobool2.not8.i684, label %for.cond.preheader.i685.for_all_poss.exit699_crit_edge, label %for.cond.preheader.i685.for.body.i689_crit_edge

for.cond.preheader.i685.for.body.i689_crit_edge:  ; preds = %for.cond.preheader.i685
  br label %for.body.i689

for.cond.preheader.i685.for_all_poss.exit699_crit_edge: ; preds = %for.cond.preheader.i685
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit699

for.body.i689:                                    ; preds = %hpfs_pos_subst.exit830.for.body.i689_crit_edge, %for.cond.preheader.i685.for.body.i689_crit_edge
  %204 = phi ptr [ %209, %hpfs_pos_subst.exit830.for.body.i689_crit_edge ], [ %203, %for.cond.preheader.i685.for.body.i689_crit_edge ]
  %i.09.i686 = phi ptr [ %incdec.ptr.i687, %hpfs_pos_subst.exit830.for.body.i689_crit_edge ], [ %201, %for.cond.preheader.i685.for.body.i689_crit_edge ]
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %204, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %206, i64 %or105)
  %cmp.i827 = icmp eq i64 %206, %or105
  br i1 %cmp.i827, label %if.then.i828, label %for.body.i689.hpfs_pos_subst.exit830_crit_edge

for.body.i689.hpfs_pos_subst.exit830_crit_edge:   ; preds = %for.body.i689
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit830

if.then.i828:                                     ; preds = %for.body.i689
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %204 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 4, ptr %204, align 8
  br label %hpfs_pos_subst.exit830

hpfs_pos_subst.exit830:                           ; preds = %if.then.i828, %for.body.i689.hpfs_pos_subst.exit830_crit_edge
  %incdec.ptr.i687 = getelementptr ptr, ptr %i.09.i686, i32 1
  %208 = ptrtoint ptr %incdec.ptr.i687 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %incdec.ptr.i687, align 4
  %tobool2.not.i688 = icmp eq ptr %209, null
  br i1 %tobool2.not.i688, label %for_all_poss.exit690, label %hpfs_pos_subst.exit830.for.body.i689_crit_edge

hpfs_pos_subst.exit830.for.body.i689_crit_edge:   ; preds = %hpfs_pos_subst.exit830
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i689

for_all_poss.exit690:                             ; preds = %hpfs_pos_subst.exit830
  %210 = ptrtoint ptr %i_rddir_off.i627 to i32
  call void @__asan_load4_noabort(i32 %210)
  %.pr = load ptr, ptr %i_rddir_off.i627, align 4
  %tobool.not.i692 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i692, label %for_all_poss.exit690.for_all_poss.exit699_crit_edge, label %for.cond.preheader.i694

for_all_poss.exit690.for_all_poss.exit699_crit_edge: ; preds = %for_all_poss.exit690
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit699

for.cond.preheader.i694:                          ; preds = %for_all_poss.exit690
  %211 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %211)
  %.pr867 = load ptr, ptr %.pr, align 4
  %tobool2.not8.i693 = icmp eq ptr %.pr867, null
  br i1 %tobool2.not8.i693, label %for.cond.preheader.i694.for_all_poss.exit699_crit_edge, label %for.body.i698.preheader

for.cond.preheader.i694.for_all_poss.exit699_crit_edge: ; preds = %for.cond.preheader.i694
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit699

for.body.i698.preheader:                          ; preds = %for.cond.preheader.i694
  %and1.i = and i64 %or105, -64
  %and3.i = and i64 %or105, 63
  br label %for.body.i698

for.body.i698:                                    ; preds = %hpfs_pos_del.exit.for.body.i698_crit_edge, %for.body.i698.preheader
  %212 = phi ptr [ %217, %hpfs_pos_del.exit.for.body.i698_crit_edge ], [ %.pr867, %for.body.i698.preheader ]
  %i.09.i695 = phi ptr [ %incdec.ptr.i696, %hpfs_pos_del.exit.for.body.i698_crit_edge ], [ %.pr, %for.body.i698.preheader ]
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %212, align 8
  %and.i = and i64 %214, -64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %and1.i)
  %cmp.i831 = icmp eq i64 %and.i, %and1.i
  br i1 %cmp.i831, label %land.lhs.true.i, label %for.body.i698.hpfs_pos_del.exit_crit_edge

for.body.i698.hpfs_pos_del.exit_crit_edge:        ; preds = %for.body.i698
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_del.exit

land.lhs.true.i:                                  ; preds = %for.body.i698
  %and2.i = and i64 %214, 63
  call void @__sanitizer_cov_trace_cmp8(i64 %and2.i, i64 %and3.i)
  %cmp4.not.i = icmp ult i64 %and2.i, %and3.i
  br i1 %cmp4.not.i, label %land.lhs.true.i.hpfs_pos_del.exit_crit_edge, label %if.then.i834

land.lhs.true.i.hpfs_pos_del.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_del.exit

if.then.i834:                                     ; preds = %land.lhs.true.i
  %sub.i832 = add nsw i64 %and2.i, -1
  %conv.i833 = trunc i64 %sub.i832 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i833)
  %cmp6.i = icmp slt i32 %conv.i833, 1
  br i1 %cmp6.i, label %do.end.i837, label %if.else.i

do.end.i837:                                      ; preds = %if.then.i834
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i835 = trunc i64 %214 to i32
  %call.i836 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %conv9.i835, i32 noundef 0) #12
  br label %hpfs_pos_del.exit

if.else.i:                                        ; preds = %if.then.i834
  call void @__sanitizer_cov_trace_pc() #10
  %conv1222.i = and i64 %sub.i832, 4294967295
  %or.i = or i64 %conv1222.i, %and1.i
  %215 = ptrtoint ptr %212 to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %or.i, ptr %212, align 8
  br label %hpfs_pos_del.exit

hpfs_pos_del.exit:                                ; preds = %if.else.i, %do.end.i837, %land.lhs.true.i.hpfs_pos_del.exit_crit_edge, %for.body.i698.hpfs_pos_del.exit_crit_edge
  %incdec.ptr.i696 = getelementptr ptr, ptr %i.09.i695, i32 1
  %216 = ptrtoint ptr %incdec.ptr.i696 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %incdec.ptr.i696, align 4
  %tobool2.not.i697 = icmp eq ptr %217, null
  br i1 %tobool2.not.i697, label %hpfs_pos_del.exit.for_all_poss.exit699_crit_edge, label %hpfs_pos_del.exit.for.body.i698_crit_edge

hpfs_pos_del.exit.for.body.i698_crit_edge:        ; preds = %hpfs_pos_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i698

hpfs_pos_del.exit.for_all_poss.exit699_crit_edge: ; preds = %hpfs_pos_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit699

for_all_poss.exit699:                             ; preds = %hpfs_pos_del.exit.for_all_poss.exit699_crit_edge, %for.cond.preheader.i694.for_all_poss.exit699_crit_edge, %for_all_poss.exit690.for_all_poss.exit699_crit_edge, %for.cond.preheader.i685.for_all_poss.exit699_crit_edge, %hpfs_delete_de.exit.for_all_poss.exit699_crit_edge
  %down173 = getelementptr inbounds %struct.hpfs_dirent, ptr %call9.i, i32 0, i32 1
  %218 = ptrtoint ptr %down173 to i32
  call void @__asan_load2_noabort(i32 %218)
  %bf.load174 = load i16, ptr %down173, align 2
  %219 = and i16 %bf.load174, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %219)
  %tobool178.not = icmp eq i16 %219, 0
  br i1 %tobool178.not, label %for_all_poss.exit699.if.end187_crit_edge, label %de_down_pointer.exit709

for_all_poss.exit699.if.end187_crit_edge:         ; preds = %for_all_poss.exit699
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

de_down_pointer.exit709:                          ; preds = %for_all_poss.exit699
  %220 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %i_sb, align 4
  %222 = ptrtoint ptr %call9.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %call9.i, align 128
  %224 = call i16 @llvm.bswap.i16(i16 %223) #8
  %conv.i705 = zext i16 %224 to i32
  %add.ptr.i706 = getelementptr i8, ptr %call9.i, i32 -4
  %add.ptr1.i707 = getelementptr i8, ptr %add.ptr.i706, i32 %conv.i705
  %225 = ptrtoint ptr %add.ptr1.i707 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %add.ptr1.i707, align 4
  %227 = call i32 @llvm.bswap.i32(i32 %226) #8
  %call182 = call ptr @hpfs_map_dnode(ptr noundef %221, i32 noundef %227, ptr noundef nonnull %qbh1145) #8
  %tobool183.not = icmp eq ptr %call182, null
  br i1 %tobool183.not, label %de_down_pointer.exit709.if.end187_crit_edge, label %if.then184

de_down_pointer.exit709.if.end187_crit_edge:      ; preds = %de_down_pointer.exit709
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then184:                                       ; preds = %de_down_pointer.exit709
  call void @__sanitizer_cov_trace_pc() #10
  %up185 = getelementptr inbounds %struct.dnode, ptr %call182, i32 0, i32 4
  %228 = ptrtoint ptr %up185 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %164, ptr %up185, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh1145) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1145) #8
  br label %if.end187

if.end187:                                        ; preds = %if.then184, %de_down_pointer.exit709.if.end187_crit_edge, %for_all_poss.exit699.if.end187_crit_edge
  %name = getelementptr inbounds %struct.hpfs_dirent, ptr %call9.i, i32 0, i32 11
  %namelen = getelementptr inbounds %struct.hpfs_dirent, ptr %call9.i, i32 0, i32 10
  %229 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %namelen, align 2
  %conv188 = zext i8 %230 to i32
  %231 = ptrtoint ptr %down173 to i32
  call void @__asan_load2_noabort(i32 %231)
  %bf.load190 = load i16, ptr %down173, align 2
  %232 = and i16 %bf.load190, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %232)
  %tobool195.not = icmp eq i16 %232, 0
  br i1 %tobool195.not, label %if.end187.cleanup202_crit_edge, label %de_down_pointer.exit719

if.end187.cleanup202_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup202

de_down_pointer.exit719:                          ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %call9.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %call9.i, align 128
  %235 = call i16 @llvm.bswap.i16(i16 %234) #8
  %conv.i715 = zext i16 %235 to i32
  %add.ptr.i716 = getelementptr i8, ptr %call9.i, i32 -4
  %add.ptr1.i717 = getelementptr i8, ptr %add.ptr.i716, i32 %conv.i715
  %236 = ptrtoint ptr %add.ptr1.i717 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %add.ptr1.i717, align 4
  %238 = call i32 @llvm.bswap.i32(i32 %237) #8
  br label %cleanup202

cleanup202.thread:                                ; preds = %do.end, %de_next_de.exit664.cleanup202.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh1145) #8
  br label %endm

cleanup202:                                       ; preds = %de_down_pointer.exit719, %if.end187.cleanup202_crit_edge
  %cond200 = phi i32 [ %238, %de_down_pointer.exit719 ], [ 0, %if.end187.cleanup202_crit_edge ]
  %call201 = call fastcc i32 @hpfs_add_to_dnode(ptr noundef %i, i32 noundef %165, ptr noundef %name, i32 noundef %conv188, ptr noundef nonnull %call9.i, i32 noundef %cond200)
  call void @kfree(ptr noundef nonnull %call9.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh1145) #8
  br label %try_it_again.backedge

try_it_again.backedge:                            ; preds = %cleanup385, %cleanup202
  %239 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %i_sb, align 4
  %call1 = call i32 @hpfs_stop_cycles(ptr noundef %240, i32 noundef %14, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.56) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %try_it_again.backedge.if.end_crit_edge, label %try_it_again.backedge.cleanup391_crit_edge

try_it_again.backedge.cleanup391_crit_edge:       ; preds = %try_it_again.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup391

try_it_again.backedge.if.end_crit_edge:           ; preds = %try_it_again.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else207:                                       ; preds = %if.end136
  %241 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %first_free.i, align 4
  %243 = call i32 @llvm.bswap.i32(i32 %242) #8
  %244 = add i32 %243, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %244)
  %245 = icmp ult i32 %244, 2541
  br i1 %245, label %if.else207.dnode_end_de.exit.i_crit_edge, label %do.end.i.i721

if.else207.dnode_end_de.exit.i_crit_edge:         ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit.i

do.end.i.i721:                                    ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i720 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %243) #12
  br label %dnode_end_de.exit.i

dnode_end_de.exit.i:                              ; preds = %do.end.i.i721, %if.else207.dnode_end_de.exit.i_crit_edge
  %246 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %first_free.i, align 4
  %248 = call i32 @llvm.bswap.i32(i32 %247) #8
  %add.ptr.i.i722 = getelementptr i8, ptr %call76, i32 %248
  %cmp9.i = icmp ult ptr %dirent.i612, %add.ptr.i.i722
  br i1 %cmp9.i, label %dnode_end_de.exit.i.for.body.i723_crit_edge, label %dnode_pre_last_de.exit.thread

dnode_end_de.exit.i.for.body.i723_crit_edge:      ; preds = %dnode_end_de.exit.i
  br label %for.body.i723

dnode_pre_last_de.exit.thread:                    ; preds = %dnode_end_de.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh1211) #8
  %249 = call ptr @memset(ptr %qbh1211, i32 255, i32 20)
  br label %if.then213

for.body.i723:                                    ; preds = %de_next_de.exit.i727.for.body.i723_crit_edge, %dnode_end_de.exit.i.for.body.i723_crit_edge
  %dee.011.i = phi ptr [ %de.010.i, %de_next_de.exit.i727.for.body.i723_crit_edge ], [ null, %dnode_end_de.exit.i.for.body.i723_crit_edge ]
  %de.010.i = phi ptr [ %add.ptr.i8.i, %de_next_de.exit.i727.for.body.i723_crit_edge ], [ %dirent.i612, %dnode_end_de.exit.i.for.body.i723_crit_edge ]
  %250 = ptrtoint ptr %de.010.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %de.010.i, align 4
  %252 = call i16 @llvm.bswap.i16(i16 %251) #8
  %253 = add i16 %252, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %253)
  %254 = icmp ult i16 %253, 2016
  br i1 %254, label %for.body.i723.de_next_de.exit.i727_crit_edge, label %do.end.i7.i

for.body.i723.de_next_de.exit.i727_crit_edge:     ; preds = %for.body.i723
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i727

do.end.i7.i:                                      ; preds = %for.body.i723
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i724 = zext i16 %252 to i32
  %call.i6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i724) #12
  br label %de_next_de.exit.i727

de_next_de.exit.i727:                             ; preds = %do.end.i7.i, %for.body.i723.de_next_de.exit.i727_crit_edge
  %255 = ptrtoint ptr %de.010.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %de.010.i, align 4
  %257 = call i16 @llvm.bswap.i16(i16 %256) #8
  %conv9.i.i725 = zext i16 %257 to i32
  %add.ptr.i8.i = getelementptr i8, ptr %de.010.i, i32 %conv9.i.i725
  %cmp.i726 = icmp ult ptr %add.ptr.i8.i, %add.ptr.i.i722
  br i1 %cmp.i726, label %de_next_de.exit.i727.for.body.i723_crit_edge, label %dnode_pre_last_de.exit

de_next_de.exit.i727.for.body.i723_crit_edge:     ; preds = %de_next_de.exit.i727
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i723

dnode_pre_last_de.exit:                           ; preds = %de_next_de.exit.i727
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh1211) #8
  %tobool212.not = icmp eq ptr %dee.011.i, null
  %258 = call ptr @memset(ptr %qbh1211, i32 255, i32 20)
  br i1 %tobool212.not, label %dnode_pre_last_de.exit.if.then213_crit_edge, label %if.end215

dnode_pre_last_de.exit.if.then213_crit_edge:      ; preds = %dnode_pre_last_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then213

if.then213:                                       ; preds = %dnode_pre_last_de.exit.if.then213_crit_edge, %dnode_pre_last_de.exit.thread
  %259 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %260, ptr noundef nonnull @.str.62, i32 noundef %14) #8
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  br label %cleanup385

if.end215:                                        ; preds = %dnode_pre_last_de.exit
  %down216 = getelementptr inbounds %struct.hpfs_dirent, ptr %dee.011.i, i32 0, i32 1
  %261 = ptrtoint ptr %down216 to i32
  call void @__asan_load2_noabort(i32 %261)
  %bf.load217 = load i16, ptr %down216, align 2
  %262 = and i16 %bf.load217, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %262)
  %tobool221.not = icmp eq i16 %262, 0
  br i1 %tobool221.not, label %if.end215.cleanup385.thread_crit_edge, label %de_down_pointer.exit737

if.end215.cleanup385.thread_crit_edge:            ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385.thread

de_down_pointer.exit737:                          ; preds = %if.end215
  %263 = ptrtoint ptr %dee.011.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %dee.011.i, align 4
  %265 = call i16 @llvm.bswap.i16(i16 %264) #8
  %conv.i733 = zext i16 %265 to i32
  %add.ptr.i734 = getelementptr i8, ptr %dee.011.i, i32 -4
  %add.ptr1.i735 = getelementptr i8, ptr %add.ptr.i734, i32 %conv.i733
  %266 = ptrtoint ptr %add.ptr1.i735 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %add.ptr1.i735, align 4
  %268 = call i32 @llvm.bswap.i32(i32 %267) #8
  %269 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %i_sb, align 4
  %call226 = call ptr @hpfs_map_dnode(ptr noundef %270, i32 noundef %268, ptr noundef nonnull %qbh1211) #8
  %tobool227.not = icmp eq ptr %call226, null
  br i1 %tobool227.not, label %de_down_pointer.exit737.cleanup385.thread_crit_edge, label %if.then228

de_down_pointer.exit737.cleanup385.thread_crit_edge: ; preds = %de_down_pointer.exit737
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385.thread

if.then228:                                       ; preds = %de_down_pointer.exit737
  %first_free.i.i738 = getelementptr inbounds %struct.dnode, ptr %call226, i32 0, i32 1
  %271 = ptrtoint ptr %first_free.i.i738 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %first_free.i.i738, align 4
  %273 = call i32 @llvm.bswap.i32(i32 %272) #8
  %274 = add i32 %273, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %274)
  %275 = icmp ult i32 %274, 2541
  br i1 %275, label %if.then228.dnode_end_de.exit.i744_crit_edge, label %do.end.i.i740

if.then228.dnode_end_de.exit.i744_crit_edge:      ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit.i744

do.end.i.i740:                                    ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i739 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %273) #12
  br label %dnode_end_de.exit.i744

dnode_end_de.exit.i744:                           ; preds = %do.end.i.i740, %if.then228.dnode_end_de.exit.i744_crit_edge
  %276 = ptrtoint ptr %first_free.i.i738 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %first_free.i.i738, align 4
  %278 = call i32 @llvm.bswap.i32(i32 %277) #8
  %add.ptr.i.i741 = getelementptr i8, ptr %call226, i32 %278
  %dirent.i.i742 = getelementptr inbounds %struct.dnode, ptr %call226, i32 0, i32 6
  %cmp9.i743 = icmp ult ptr %dirent.i.i742, %add.ptr.i.i741
  br i1 %cmp9.i743, label %dnode_end_de.exit.i744.for.body.i746_crit_edge, label %dnode_end_de.exit.i744.dnode_last_de.exit_crit_edge

dnode_end_de.exit.i744.dnode_last_de.exit_crit_edge: ; preds = %dnode_end_de.exit.i744
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_last_de.exit

dnode_end_de.exit.i744.for.body.i746_crit_edge:   ; preds = %dnode_end_de.exit.i744
  br label %for.body.i746

for.body.i746:                                    ; preds = %de_next_de.exit.i753.for.body.i746_crit_edge, %dnode_end_de.exit.i744.for.body.i746_crit_edge
  %de.010.i745 = phi ptr [ %add.ptr.i8.i751, %de_next_de.exit.i753.for.body.i746_crit_edge ], [ %dirent.i.i742, %dnode_end_de.exit.i744.for.body.i746_crit_edge ]
  %279 = ptrtoint ptr %de.010.i745 to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %de.010.i745, align 4
  %281 = call i16 @llvm.bswap.i16(i16 %280) #8
  %282 = add i16 %281, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %282)
  %283 = icmp ult i16 %282, 2016
  br i1 %283, label %for.body.i746.de_next_de.exit.i753_crit_edge, label %do.end.i7.i749

for.body.i746.de_next_de.exit.i753_crit_edge:     ; preds = %for.body.i746
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i753

do.end.i7.i749:                                   ; preds = %for.body.i746
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i747 = zext i16 %281 to i32
  %call.i6.i748 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i747) #12
  br label %de_next_de.exit.i753

de_next_de.exit.i753:                             ; preds = %do.end.i7.i749, %for.body.i746.de_next_de.exit.i753_crit_edge
  %284 = ptrtoint ptr %de.010.i745 to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %de.010.i745, align 4
  %286 = call i16 @llvm.bswap.i16(i16 %285) #8
  %conv9.i.i750 = zext i16 %286 to i32
  %add.ptr.i8.i751 = getelementptr i8, ptr %de.010.i745, i32 %conv9.i.i750
  %cmp.i752 = icmp ult ptr %add.ptr.i8.i751, %add.ptr.i.i741
  br i1 %cmp.i752, label %de_next_de.exit.i753.for.body.i746_crit_edge, label %de_next_de.exit.i753.dnode_last_de.exit_crit_edge

de_next_de.exit.i753.dnode_last_de.exit_crit_edge: ; preds = %de_next_de.exit.i753
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_last_de.exit

de_next_de.exit.i753.for.body.i746_crit_edge:     ; preds = %de_next_de.exit.i753
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i746

dnode_last_de.exit:                               ; preds = %de_next_de.exit.i753.dnode_last_de.exit_crit_edge, %dnode_end_de.exit.i744.dnode_last_de.exit_crit_edge
  %dee.0.lcssa.i = phi ptr [ null, %dnode_end_de.exit.i744.dnode_last_de.exit_crit_edge ], [ %de.010.i745, %de_next_de.exit.i753.dnode_last_de.exit_crit_edge ]
  %down230 = getelementptr inbounds %struct.hpfs_dirent, ptr %dee.0.lcssa.i, i32 0, i32 1
  %287 = ptrtoint ptr %down230 to i32
  call void @__asan_load2_noabort(i32 %287)
  %bf.load231 = load i16, ptr %down230, align 2
  %288 = and i16 %bf.load231, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %288)
  %tobool236.not = icmp eq i16 %288, 0
  br i1 %tobool236.not, label %dnode_last_de.exit.cond.end240_crit_edge, label %de_down_pointer.exit763

dnode_last_de.exit.cond.end240_crit_edge:         ; preds = %dnode_last_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end240

de_down_pointer.exit763:                          ; preds = %dnode_last_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  %289 = ptrtoint ptr %dee.0.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %dee.0.lcssa.i, align 4
  %291 = call i16 @llvm.bswap.i16(i16 %290) #8
  %conv.i759 = zext i16 %291 to i32
  %add.ptr.i760 = getelementptr i8, ptr %dee.0.lcssa.i, i32 -4
  %add.ptr1.i761 = getelementptr i8, ptr %add.ptr.i760, i32 %conv.i759
  %292 = ptrtoint ptr %add.ptr1.i761 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %add.ptr1.i761, align 4
  %294 = call i32 @llvm.bswap.i32(i32 %293) #8
  br label %cond.end240

cond.end240:                                      ; preds = %de_down_pointer.exit763, %dnode_last_de.exit.cond.end240_crit_edge
  %cond241 = phi i32 [ %294, %de_down_pointer.exit763 ], [ 0, %dnode_last_de.exit.cond.end240_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond241)
  %tobool242.not = icmp ne i32 %cond241, 0
  %or.cond569 = select i1 %tobool242.not, i1 true, i1 %tobool31.not
  br i1 %or.cond569, label %cond.end240.if.end299_crit_edge, label %if.then245

cond.end240.if.end299_crit_edge:                  ; preds = %cond.end240
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299

if.then245:                                       ; preds = %cond.end240
  %295 = ptrtoint ptr %first_free.i.i738 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %first_free.i.i738, align 4
  %297 = call i32 @llvm.bswap.i32(i32 %296)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2044, i32 %297)
  %cmp247 = icmp ugt i32 %297, 2044
  %298 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i764 = getelementptr inbounds %struct.super_block, ptr %299, i32 0, i32 33
  %300 = ptrtoint ptr %s_fs_info.i764 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %s_fs_info.i764, align 16
  %sb_chk252 = getelementptr inbounds %struct.hpfs_sb_info, ptr %301, i32 0, i32 12
  %302 = ptrtoint ptr %sb_chk252 to i32
  call void @__asan_load2_noabort(i32 %302)
  %bf.load253 = load i16, ptr %sb_chk252, align 2
  %303 = and i16 %bf.load253, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %303)
  %cmp257.not = icmp eq i16 %303, 0
  br i1 %cmp247, label %if.then249, label %if.end271

if.then249:                                       ; preds = %if.then245
  br i1 %cmp257.not, label %if.then249.cleanup385.thread.sink.split_crit_edge, label %do.end262

if.then249.cleanup385.thread.sink.split_crit_edge: ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385.thread.sink.split

do.end262:                                        ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #10
  %call264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #12
  br label %cleanup385.thread.sink.split.sink.split

if.end271:                                        ; preds = %if.then245
  br i1 %cmp257.not, label %if.end271.if.end292_crit_edge, label %do.end284

if.end271.if.end292_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end292

do.end284:                                        ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #12
  %call291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #12
  br label %if.end292

if.end292:                                        ; preds = %do.end284, %if.end271.if.end292_crit_edge
  %304 = ptrtoint ptr %dee.0.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %dee.0.lcssa.i, align 2
  %306 = call i16 @llvm.bswap.i16(i16 %305) #8
  %add.i766 = add i16 %306, 4
  %307 = call i16 @llvm.bswap.i16(i16 %add.i766) #8
  %308 = ptrtoint ptr %dee.0.lcssa.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %307, ptr %dee.0.lcssa.i, align 2
  %309 = ptrtoint ptr %down230 to i32
  call void @__asan_load2_noabort(i32 %309)
  %bf.load295 = load i16, ptr %down230, align 2
  %bf.set297 = or i16 %bf.load295, 1024
  store i16 %bf.set297, ptr %down230, align 2
  %310 = ptrtoint ptr %first_free.i.i738 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %first_free.i.i738, align 4
  %312 = call i32 @llvm.bswap.i32(i32 %311) #8
  %add.i767 = add i32 %312, 4
  %313 = call i32 @llvm.bswap.i32(i32 %add.i767) #8
  %314 = ptrtoint ptr %first_free.i.i738 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %first_free.i.i738, align 4
  br label %if.end299

if.end299:                                        ; preds = %if.end292, %cond.end240.if.end299_crit_edge
  %or.cond571 = select i1 %tobool242.not, i1 %tobool31.not, i1 false
  br i1 %or.cond571, label %if.then303, label %if.else310

if.then303:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #10
  %315 = ptrtoint ptr %dee.0.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %dee.0.lcssa.i, align 2
  %317 = call i16 @llvm.bswap.i16(i16 %316) #8
  %add.i768 = add i16 %317, -4
  %318 = call i16 @llvm.bswap.i16(i16 %add.i768) #8
  %319 = ptrtoint ptr %dee.0.lcssa.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %318, ptr %dee.0.lcssa.i, align 2
  %320 = ptrtoint ptr %down230 to i32
  call void @__asan_load2_noabort(i32 %320)
  %bf.load306 = load i16, ptr %down230, align 2
  %bf.clear307 = and i16 %bf.load306, -1025
  store i16 %bf.clear307, ptr %down230, align 2
  %321 = ptrtoint ptr %first_free.i.i738 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %first_free.i.i738, align 4
  %323 = call i32 @llvm.bswap.i32(i32 %322) #8
  %add.i769 = add i32 %323, -4
  %324 = call i32 @llvm.bswap.i32(i32 %add.i769) #8
  %325 = ptrtoint ptr %first_free.i.i738 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %first_free.i.i738, align 4
  br label %if.end8.i598

if.else310:                                       ; preds = %if.end299
  br i1 %tobool31.not, label %if.else310.if.end8.i598_crit_edge, label %if.then312

if.else310.if.end8.i598_crit_edge:                ; preds = %if.else310
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i598

if.then312:                                       ; preds = %if.else310
  call void @__sanitizer_cov_trace_pc() #10
  %326 = call i32 @llvm.bswap.i32(i32 %cond)
  %327 = ptrtoint ptr %dee.0.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %dee.0.lcssa.i, align 4
  %329 = call i16 @llvm.bswap.i16(i16 %328)
  %conv314 = zext i16 %329 to i32
  %add.ptr315 = getelementptr i8, ptr %dee.0.lcssa.i, i32 -4
  %add.ptr316 = getelementptr i8, ptr %add.ptr315, i32 %conv314
  %330 = ptrtoint ptr %add.ptr316 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %326, ptr %add.ptr316, align 4
  br label %if.end8.i598

if.end8.i598:                                     ; preds = %if.then312, %if.else310.if.end8.i598_crit_edge, %if.then303
  %331 = ptrtoint ptr %dee.011.i to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %dee.011.i, align 4
  %333 = call i16 @llvm.bswap.i16(i16 %332)
  %conv325 = zext i16 %333 to i32
  %call9.i597 = call noalias align 128 ptr @__kmalloc(i32 noundef %conv325, i32 noundef 3136) #11
  %tobool327.not = icmp eq ptr %call9.i597, null
  br i1 %tobool327.not, label %if.end8.i598.cleanup385.thread.sink.split.sink.split_crit_edge, label %if.end334

if.end8.i598.cleanup385.thread.sink.split.sink.split_crit_edge: ; preds = %if.end8.i598
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385.thread.sink.split.sink.split

if.end334:                                        ; preds = %if.end8.i598
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh1211) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1211) #8
  %334 = ptrtoint ptr %dee.011.i to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %dee.011.i, align 4
  %336 = call i16 @llvm.bswap.i16(i16 %335)
  %conv336 = zext i16 %336 to i32
  %337 = call ptr @memcpy(ptr %call9.i597, ptr %dee.011.i, i32 %conv336)
  %338 = ptrtoint ptr %down216 to i32
  call void @__asan_load2_noabort(i32 %338)
  %bf.load.i771 = load i16, ptr %down216, align 2
  %339 = and i16 %bf.load.i771, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %339)
  %tobool.not.i772 = icmp eq i16 %339, 0
  br i1 %tobool.not.i772, label %if.end.i778, label %if.then.i774

if.then.i774:                                     ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #10
  %340 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %i_sb, align 4
  %self.i773 = getelementptr inbounds %struct.dnode, ptr %call76, i32 0, i32 5
  %342 = ptrtoint ptr %self.i773 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %self.i773, align 4
  %344 = call i32 @llvm.bswap.i32(i32 %343) #8
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %341, ptr noundef nonnull @.str.49, i32 noundef %344) #8
  br label %hpfs_delete_de.exit789

if.end.i778:                                      ; preds = %if.end334
  %345 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %first_free.i, align 4
  %347 = call i32 @llvm.bswap.i32(i32 %346) #8
  %348 = ptrtoint ptr %dee.011.i to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %dee.011.i, align 4
  %350 = call i16 @llvm.bswap.i16(i16 %349) #8
  %conv.i776 = zext i16 %350 to i32
  %sub.i777 = sub i32 %347, %conv.i776
  %351 = call i32 @llvm.bswap.i32(i32 %sub.i777) #8
  %352 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %351, ptr %first_free.i, align 4
  %353 = ptrtoint ptr %dee.011.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %dee.011.i, align 4
  %355 = call i16 @llvm.bswap.i16(i16 %354) #8
  %356 = add i16 %355, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %356)
  %357 = icmp ult i16 %356, 2016
  br i1 %357, label %if.end.i778.de_next_de.exit.i788_crit_edge, label %do.end.i.i781

if.end.i778.de_next_de.exit.i788_crit_edge:       ; preds = %if.end.i778
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i788

do.end.i.i781:                                    ; preds = %if.end.i778
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i779 = zext i16 %355 to i32
  %call.i.i780 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i779) #12
  br label %de_next_de.exit.i788

de_next_de.exit.i788:                             ; preds = %do.end.i.i781, %if.end.i778.de_next_de.exit.i788_crit_edge
  %358 = ptrtoint ptr %dee.011.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %dee.011.i, align 4
  %360 = call i16 @llvm.bswap.i16(i16 %359) #8
  %conv9.i.i782 = zext i16 %360 to i32
  %add.ptr.i.i783 = getelementptr i8, ptr %dee.011.i, i32 %conv9.i.i782
  %361 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %first_free.i, align 4
  %363 = call i32 @llvm.bswap.i32(i32 %362) #8
  %add.ptr.i784 = getelementptr i8, ptr %call76, i32 %363
  %sub.ptr.lhs.cast.i785 = ptrtoint ptr %add.ptr.i784 to i32
  %sub.ptr.rhs.cast.i786 = ptrtoint ptr %dee.011.i to i32
  %sub.ptr.sub.i787 = sub i32 %sub.ptr.lhs.cast.i785, %sub.ptr.rhs.cast.i786
  %364 = call ptr @memmove(ptr %dee.011.i, ptr %add.ptr.i.i783, i32 %sub.ptr.sub.i787)
  br label %hpfs_delete_de.exit789

hpfs_delete_de.exit789:                           ; preds = %de_next_de.exit.i788, %if.then.i774
  %365 = ptrtoint ptr %down216 to i32
  call void @__asan_load2_noabort(i32 %365)
  %bf.load339 = load i16, ptr %down216, align 2
  %366 = and i16 %bf.load339, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %366)
  %tobool343.not = icmp eq i16 %366, 0
  br i1 %tobool343.not, label %if.then344, label %hpfs_delete_de.exit789.if.end351_crit_edge

hpfs_delete_de.exit789.if.end351_crit_edge:       ; preds = %hpfs_delete_de.exit789
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end351

if.then344:                                       ; preds = %hpfs_delete_de.exit789
  call void @__sanitizer_cov_trace_pc() #10
  %367 = ptrtoint ptr %dee.011.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %dee.011.i, align 2
  %369 = call i16 @llvm.bswap.i16(i16 %368) #8
  %add.i790 = add i16 %369, 4
  %370 = call i16 @llvm.bswap.i16(i16 %add.i790) #8
  %371 = ptrtoint ptr %dee.011.i to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 %370, ptr %dee.011.i, align 2
  %bf.set349 = or i16 %bf.load339, 1024
  %372 = ptrtoint ptr %down216 to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 %bf.set349, ptr %down216, align 2
  %373 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %first_free.i, align 4
  %375 = call i32 @llvm.bswap.i32(i32 %374) #8
  %add.i791 = add i32 %375, 4
  %376 = call i32 @llvm.bswap.i32(i32 %add.i791) #8
  %377 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %376, ptr %first_free.i, align 4
  br label %if.end351

if.end351:                                        ; preds = %if.then344, %hpfs_delete_de.exit789.if.end351_crit_edge
  %378 = ptrtoint ptr %dee.011.i to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %dee.011.i, align 4
  %380 = call i16 @llvm.bswap.i16(i16 %379)
  %conv353 = zext i16 %380 to i32
  %add.ptr354 = getelementptr i8, ptr %dee.011.i, i32 -4
  %add.ptr355 = getelementptr i8, ptr %add.ptr354, i32 %conv353
  %381 = ptrtoint ptr %add.ptr355 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %267, ptr %add.ptr355, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  %sub358 = add i32 %p.1957, -1
  %conv359 = sext i32 %sub358 to i64
  %or360 = or i64 %shl103, %conv359
  %382 = ptrtoint ptr %i_rddir_off.i627 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %i_rddir_off.i627, align 4
  %tobool.not.i793 = icmp eq ptr %383, null
  br i1 %tobool.not.i793, label %if.end351.for_all_poss.exit809_crit_edge, label %for.cond.preheader.i795

if.end351.for_all_poss.exit809_crit_edge:         ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit809

for.cond.preheader.i795:                          ; preds = %if.end351
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %383, align 4
  %tobool2.not8.i794 = icmp eq ptr %385, null
  br i1 %tobool2.not8.i794, label %for.cond.preheader.i795.for_all_poss.exit809_crit_edge, label %for.cond.preheader.i795.for.body.i799_crit_edge

for.cond.preheader.i795.for.body.i799_crit_edge:  ; preds = %for.cond.preheader.i795
  br label %for.body.i799

for.cond.preheader.i795.for_all_poss.exit809_crit_edge: ; preds = %for.cond.preheader.i795
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit809

for.body.i799:                                    ; preds = %hpfs_pos_subst.exit841.for.body.i799_crit_edge, %for.cond.preheader.i795.for.body.i799_crit_edge
  %386 = phi ptr [ %391, %hpfs_pos_subst.exit841.for.body.i799_crit_edge ], [ %385, %for.cond.preheader.i795.for.body.i799_crit_edge ]
  %i.09.i796 = phi ptr [ %incdec.ptr.i797, %hpfs_pos_subst.exit841.for.body.i799_crit_edge ], [ %383, %for.cond.preheader.i795.for.body.i799_crit_edge ]
  %387 = ptrtoint ptr %386 to i32
  call void @__asan_load8_noabort(i32 %387)
  %388 = load i64, ptr %386, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %388, i64 %or360)
  %cmp.i838 = icmp eq i64 %388, %or360
  br i1 %cmp.i838, label %if.then.i839, label %for.body.i799.hpfs_pos_subst.exit841_crit_edge

for.body.i799.hpfs_pos_subst.exit841_crit_edge:   ; preds = %for.body.i799
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit841

if.then.i839:                                     ; preds = %for.body.i799
  call void @__sanitizer_cov_trace_pc() #10
  %389 = ptrtoint ptr %386 to i32
  call void @__asan_store8_noabort(i32 %389)
  store i64 4, ptr %386, align 8
  br label %hpfs_pos_subst.exit841

hpfs_pos_subst.exit841:                           ; preds = %if.then.i839, %for.body.i799.hpfs_pos_subst.exit841_crit_edge
  %incdec.ptr.i797 = getelementptr ptr, ptr %i.09.i796, i32 1
  %390 = ptrtoint ptr %incdec.ptr.i797 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %incdec.ptr.i797, align 4
  %tobool2.not.i798 = icmp eq ptr %391, null
  br i1 %tobool2.not.i798, label %for_all_poss.exit800, label %hpfs_pos_subst.exit841.for.body.i799_crit_edge

hpfs_pos_subst.exit841.for.body.i799_crit_edge:   ; preds = %hpfs_pos_subst.exit841
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i799

for_all_poss.exit800:                             ; preds = %hpfs_pos_subst.exit841
  %392 = ptrtoint ptr %i_rddir_off.i627 to i32
  call void @__asan_load4_noabort(i32 %392)
  %.pr879 = load ptr, ptr %i_rddir_off.i627, align 4
  %tobool.not.i802 = icmp eq ptr %.pr879, null
  br i1 %tobool.not.i802, label %for_all_poss.exit800.for_all_poss.exit809_crit_edge, label %for.cond.preheader.i804

for_all_poss.exit800.for_all_poss.exit809_crit_edge: ; preds = %for_all_poss.exit800
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit809

for.cond.preheader.i804:                          ; preds = %for_all_poss.exit800
  %393 = ptrtoint ptr %.pr879 to i32
  call void @__asan_load4_noabort(i32 %393)
  %.pr888 = load ptr, ptr %.pr879, align 4
  %tobool2.not8.i803 = icmp eq ptr %.pr888, null
  br i1 %tobool2.not8.i803, label %for.cond.preheader.i804.for_all_poss.exit809_crit_edge, label %for.cond.preheader.i804.for.body.i808_crit_edge

for.cond.preheader.i804.for.body.i808_crit_edge:  ; preds = %for.cond.preheader.i804
  br label %for.body.i808

for.cond.preheader.i804.for_all_poss.exit809_crit_edge: ; preds = %for.cond.preheader.i804
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit809

for.body.i808:                                    ; preds = %hpfs_pos_subst.exit845.for.body.i808_crit_edge, %for.cond.preheader.i804.for.body.i808_crit_edge
  %394 = phi ptr [ %399, %hpfs_pos_subst.exit845.for.body.i808_crit_edge ], [ %.pr888, %for.cond.preheader.i804.for.body.i808_crit_edge ]
  %i.09.i805 = phi ptr [ %incdec.ptr.i806, %hpfs_pos_subst.exit845.for.body.i808_crit_edge ], [ %.pr879, %for.cond.preheader.i804.for.body.i808_crit_edge ]
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load8_noabort(i32 %395)
  %396 = load i64, ptr %394, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %396, i64 %or105)
  %cmp.i842 = icmp eq i64 %396, %or105
  br i1 %cmp.i842, label %if.then.i843, label %for.body.i808.hpfs_pos_subst.exit845_crit_edge

for.body.i808.hpfs_pos_subst.exit845_crit_edge:   ; preds = %for.body.i808
  call void @__sanitizer_cov_trace_pc() #10
  br label %hpfs_pos_subst.exit845

if.then.i843:                                     ; preds = %for.body.i808
  call void @__sanitizer_cov_trace_pc() #10
  %397 = ptrtoint ptr %394 to i32
  call void @__asan_store8_noabort(i32 %397)
  store i64 %or360, ptr %394, align 8
  br label %hpfs_pos_subst.exit845

hpfs_pos_subst.exit845:                           ; preds = %if.then.i843, %for.body.i808.hpfs_pos_subst.exit845_crit_edge
  %incdec.ptr.i806 = getelementptr ptr, ptr %i.09.i805, i32 1
  %398 = ptrtoint ptr %incdec.ptr.i806 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %incdec.ptr.i806, align 4
  %tobool2.not.i807 = icmp eq ptr %399, null
  br i1 %tobool2.not.i807, label %hpfs_pos_subst.exit845.for_all_poss.exit809_crit_edge, label %hpfs_pos_subst.exit845.for.body.i808_crit_edge

hpfs_pos_subst.exit845.for.body.i808_crit_edge:   ; preds = %hpfs_pos_subst.exit845
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i808

hpfs_pos_subst.exit845.for_all_poss.exit809_crit_edge: ; preds = %hpfs_pos_subst.exit845
  call void @__sanitizer_cov_trace_pc() #10
  br label %for_all_poss.exit809

for_all_poss.exit809:                             ; preds = %hpfs_pos_subst.exit845.for_all_poss.exit809_crit_edge, %for.cond.preheader.i804.for_all_poss.exit809_crit_edge, %for_all_poss.exit800.for_all_poss.exit809_crit_edge, %for.cond.preheader.i795.for_all_poss.exit809_crit_edge, %if.end351.for_all_poss.exit809_crit_edge
  br i1 %tobool31.not, label %for_all_poss.exit809.if.end379_crit_edge, label %if.then371

for_all_poss.exit809.if.end379_crit_edge:         ; preds = %for_all_poss.exit809
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end379

if.then371:                                       ; preds = %for_all_poss.exit809
  %400 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %i_sb, align 4
  %402 = ptrtoint ptr %down84.le to i32
  call void @__asan_load2_noabort(i32 %402)
  %bf.load.i811 = load i16, ptr %down84.le, align 2
  %403 = and i16 %bf.load.i811, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %403)
  %tobool.not.i812 = icmp eq i16 %403, 0
  br i1 %tobool.not.i812, label %do.end.i814, label %if.then371.de_down_pointer.exit819_crit_edge

if.then371.de_down_pointer.exit819_crit_edge:     ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_down_pointer.exit819

do.end.i814:                                      ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #10
  %call.i813 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #12
  br label %de_down_pointer.exit819

de_down_pointer.exit819:                          ; preds = %do.end.i814, %if.then371.de_down_pointer.exit819_crit_edge
  %404 = ptrtoint ptr %de.0959 to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %de.0959, align 4
  %406 = call i16 @llvm.bswap.i16(i16 %405) #8
  %conv.i815 = zext i16 %406 to i32
  %add.ptr.i816 = getelementptr i8, ptr %de.0959, i32 -4
  %add.ptr1.i817 = getelementptr i8, ptr %add.ptr.i816, i32 %conv.i815
  %407 = ptrtoint ptr %add.ptr1.i817 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %add.ptr1.i817, align 4
  %409 = call i32 @llvm.bswap.i32(i32 %408) #8
  %call374 = call ptr @hpfs_map_dnode(ptr noundef %401, i32 noundef %409, ptr noundef nonnull %qbh1211) #8
  %tobool375.not = icmp eq ptr %call374, null
  br i1 %tobool375.not, label %de_down_pointer.exit819.if.end379_crit_edge, label %if.then376

de_down_pointer.exit819.if.end379_crit_edge:      ; preds = %de_down_pointer.exit819
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end379

if.then376:                                       ; preds = %de_down_pointer.exit819
  call void @__sanitizer_cov_trace_pc() #10
  %up377 = getelementptr inbounds %struct.dnode, ptr %call374, i32 0, i32 4
  %410 = ptrtoint ptr %up377 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %267, ptr %up377, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh1211) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1211) #8
  br label %if.end379

if.end379:                                        ; preds = %if.then376, %de_down_pointer.exit819.if.end379_crit_edge, %for_all_poss.exit809.if.end379_crit_edge
  %name380 = getelementptr inbounds %struct.hpfs_dirent, ptr %call9.i597, i32 0, i32 11
  %namelen382 = getelementptr inbounds %struct.hpfs_dirent, ptr %call9.i597, i32 0, i32 10
  %411 = ptrtoint ptr %namelen382 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %namelen382, align 2
  %conv383 = zext i8 %412 to i32
  %call384 = call fastcc i32 @hpfs_add_to_dnode(ptr noundef %i, i32 noundef %268, ptr noundef %name380, i32 noundef %conv383, ptr noundef nonnull %call9.i597, i32 noundef %cond241)
  call void @kfree(ptr noundef nonnull %call9.i597) #8
  br label %cleanup385

cleanup385.thread.sink.split.sink.split:          ; preds = %if.end8.i598.cleanup385.thread.sink.split.sink.split_crit_edge, %do.end262
  %.str.67.sink = phi ptr [ @.str.67, %do.end262 ], [ @.str.61, %if.end8.i598.cleanup385.thread.sink.split.sink.split_crit_edge ]
  %call269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.67.sink) #12
  br label %cleanup385.thread.sink.split

cleanup385.thread.sink.split:                     ; preds = %cleanup385.thread.sink.split.sink.split, %if.then249.cleanup385.thread.sink.split_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh1211) #8
  br label %cleanup385.thread

cleanup385.thread:                                ; preds = %cleanup385.thread.sink.split, %de_down_pointer.exit737.cleanup385.thread_crit_edge, %if.end215.cleanup385.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh1211) #8
  br label %endm

cleanup385:                                       ; preds = %if.end379, %if.then213
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh1211) #8
  br label %try_it_again.backedge

endm:                                             ; preds = %cleanup385.thread, %cleanup202.thread
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #8
  br label %end

end:                                              ; preds = %endm, %if.else133, %for.end, %if.then32, %if.end6.end_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  br label %cleanup391

cleanup391:                                       ; preds = %end, %try_it_again.backedge.cleanup391_crit_edge, %if.end74.cleanup391_crit_edge, %cleanup, %if.end.cleanup391_crit_edge, %entry.cleanup391_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_count_dnodes(ptr noundef %s, i32 noundef %dno, ptr noundef %n_dnodes, ptr noundef %n_subdirs, ptr noundef %n_items) local_unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #8
  %0 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #8
  %1 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c1, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #8
  %2 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %c2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d1) #8
  %3 = ptrtoint ptr %d1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %d1, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d2) #8
  %4 = ptrtoint ptr %d2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %d2, align 4
  %tobool.not = icmp eq ptr %n_dnodes, null
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %tobool78.not = icmp eq ptr %n_subdirs, null
  %tobool96.not = icmp eq ptr %n_items, null
  br label %go_down

go_down:                                          ; preds = %de_down_pointer.exit196, %entry
  %dno.addr.0 = phi i32 [ %dno, %entry ], [ %46, %de_down_pointer.exit196 ]
  %odno.0 = phi i32 [ 0, %entry ], [ %dno.addr.1220, %de_down_pointer.exit196 ]
  br i1 %tobool.not, label %go_down.if.end_crit_edge, label %if.then

go_down.if.end_crit_edge:                         ; preds = %go_down
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %go_down
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %n_dnodes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_dnodes, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %n_dnodes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %go_down.if.end_crit_edge
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %sb_chk, align 2
  %10 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool1.not = icmp eq i16 %10, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %dno.addr.0, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call8218 = call ptr @hpfs_map_dnode(ptr noundef %s, i32 noundef %dno.addr.0, ptr noundef nonnull %qbh) #8
  %tobool9.not219 = icmp eq ptr %call8218, null
  br i1 %tobool9.not219, label %if.end7.cleanup_crit_edge, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  br label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end124.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %call8223 = phi ptr [ %call8, %if.end124.if.end11_crit_edge ], [ %call8218, %if.end7.if.end11_crit_edge ]
  %odno.1222 = phi i32 [ -1, %if.end124.if.end11_crit_edge ], [ %odno.0, %if.end7.if.end11_crit_edge ]
  %ptr.0221 = phi i32 [ %dno.addr.1220, %if.end124.if.end11_crit_edge ], [ 0, %if.end7.if.end11_crit_edge ]
  %dno.addr.1220 = phi i32 [ %75, %if.end124.if.end11_crit_edge ], [ %dno.addr.0, %if.end7.if.end11_crit_edge ]
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk13 = getelementptr inbounds %struct.hpfs_sb_info, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %sb_chk13 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load14 = load i16, ptr %sb_chk13, align 2
  %14 = and i16 %bf.load14, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool18.not = icmp eq i16 %14, 0
  %15 = add i32 %odno.1222, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %16 = icmp ult i32 %15, 2
  %17 = or i1 %16, %tobool18.not
  br i1 %17, label %if.end11.if.end26_crit_edge, label %land.lhs.true21

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true21:                                  ; preds = %if.end11
  %up = getelementptr inbounds %struct.dnode, ptr %call8223, i32 0, i32 4
  %18 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %up, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %odno.1222)
  %cmp22.not = icmp eq i32 %20, %odno.1222
  br i1 %cmp22.not, label %land.lhs.true21.if.end26_crit_edge, label %if.then23

land.lhs.true21.if.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.7, i32 noundef %odno.1222, i32 noundef %dno.addr.1220, i32 noundef %20) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true21.if.end26_crit_edge, %if.end11.if.end26_crit_edge
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %call8223, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptr.0221)
  %tobool28.not = icmp eq i32 %ptr.0221, 0
  br i1 %tobool28.not, label %if.end26.next_de_crit_edge, label %if.end26.while.cond_crit_edge

if.end26.while.cond_crit_edge:                    ; preds = %if.end26
  br label %while.cond

if.end26.next_de_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_de

while.cond:                                       ; preds = %de_next_de.exit, %if.end26.while.cond_crit_edge
  %de.0 = phi ptr [ %add.ptr.i187, %de_next_de.exit ], [ %dirent.i, %if.end26.while.cond_crit_edge ]
  %down = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0, i32 0, i32 1
  %21 = ptrtoint ptr %down to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load30 = load i16, ptr %down, align 2
  %22 = and i16 %bf.load30, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool34.not = icmp eq i16 %22, 0
  br i1 %tobool34.not, label %while.cond.if.end40_crit_edge, label %de_down_pointer.exit

while.cond.if.end40_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

de_down_pointer.exit:                             ; preds = %while.cond
  %23 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %de.0, align 4
  %25 = call i16 @llvm.bswap.i16(i16 %24) #8
  %conv.i = zext i16 %25 to i32
  %add.ptr.i = getelementptr i8, ptr %de.0, i32 -4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr1.i, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %ptr.0221)
  %cmp37 = icmp eq i32 %28, %ptr.0221
  br i1 %cmp37, label %de_down_pointer.exit.process_de_crit_edge, label %de_down_pointer.exit.if.end40_crit_edge

de_down_pointer.exit.if.end40_crit_edge:          ; preds = %de_down_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

de_down_pointer.exit.process_de_crit_edge:        ; preds = %de_down_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %process_de

if.end40:                                         ; preds = %de_down_pointer.exit.if.end40_crit_edge, %while.cond.if.end40_crit_edge
  %29 = ptrtoint ptr %down to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load41 = load i16, ptr %down, align 2
  %30 = and i16 %bf.load41, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool45.not = icmp eq i16 %30, 0
  br i1 %tobool45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.8, i32 noundef %ptr.0221, i32 noundef %dno.addr.1220, i32 noundef %odno.1222) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %31 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %de.0, align 4
  %33 = call i16 @llvm.bswap.i16(i16 %32) #8
  %34 = add i16 %33, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %34)
  %35 = icmp ult i16 %34, 2016
  br i1 %35, label %if.end47.de_next_de.exit_crit_edge, label %do.end.i186

if.end47.de_next_de.exit_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i186:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %33 to i32
  %call.i185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i186, %if.end47.de_next_de.exit_crit_edge
  %36 = ptrtoint ptr %de.0 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %de.0, align 4
  %38 = call i16 @llvm.bswap.i16(i16 %37) #8
  %conv9.i = zext i16 %38 to i32
  %add.ptr.i187 = getelementptr i8, ptr %de.0, i32 %conv9.i
  br label %while.cond

next_de:                                          ; preds = %dnode_end_de.exit.next_de_crit_edge, %if.end26.next_de_crit_edge
  %de.1 = phi ptr [ %add.ptr.i201, %dnode_end_de.exit.next_de_crit_edge ], [ %dirent.i, %if.end26.next_de_crit_edge ]
  %down50 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.1, i32 0, i32 1
  %39 = ptrtoint ptr %down50 to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load51 = load i16, ptr %down50, align 2
  %40 = and i16 %bf.load51, 1024
  %tobool55.not = icmp eq i16 %40, 0
  br i1 %tobool55.not, label %next_de.process_de_crit_edge, label %de_down_pointer.exit196

next_de.process_de_crit_edge:                     ; preds = %next_de
  call void @__sanitizer_cov_trace_pc() #10
  br label %process_de

de_down_pointer.exit196:                          ; preds = %next_de
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %de.1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %de.1, align 4
  %43 = call i16 @llvm.bswap.i16(i16 %42) #8
  %conv.i193 = zext i16 %43 to i32
  %add.ptr.i194 = getelementptr i8, ptr %de.1, i32 -4
  %add.ptr1.i195 = getelementptr i8, ptr %add.ptr.i194, i32 %conv.i193
  %44 = ptrtoint ptr %add.ptr1.i195 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr1.i195, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  br label %go_down

process_de:                                       ; preds = %next_de.process_de_crit_edge, %de_down_pointer.exit.process_de_crit_edge
  %de.2 = phi ptr [ %de.1, %next_de.process_de_crit_edge ], [ %de.0, %de_down_pointer.exit.process_de_crit_edge ]
  %first = getelementptr inbounds %struct.hpfs_dirent, ptr %de.2, i32 0, i32 1
  %47 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load59 = load i16, ptr %first, align 2
  %48 = and i16 %bf.load59, 2320
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %48)
  %49 = icmp ne i16 %48, 16
  %or.cond181 = or i1 %tobool78.not, %49
  br i1 %or.cond181, label %process_de.if.end81_crit_edge, label %if.then79

process_de.if.end81_crit_edge:                    ; preds = %process_de
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then79:                                        ; preds = %process_de
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %n_subdirs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_subdirs, align 4
  %inc80 = add i32 %51, 1
  store i32 %inc80, ptr %n_subdirs, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %process_de.if.end81_crit_edge
  %52 = ptrtoint ptr %first to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load83 = load i16, ptr %first, align 2
  %53 = and i16 %bf.load83, 2304
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %54 = icmp ne i16 %53, 0
  %or.cond183 = or i1 %tobool96.not, %54
  br i1 %or.cond183, label %if.end81.if.end99_crit_edge, label %if.then97

if.end81.if.end99_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then97:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %n_items to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_items, align 4
  %inc98 = add i32 %56, 1
  store i32 %inc98, ptr %n_items, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end81.if.end99_crit_edge
  %57 = ptrtoint ptr %de.2 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %de.2, align 4
  %59 = call i16 @llvm.bswap.i16(i16 %58) #8
  %60 = add i16 %59, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %60)
  %61 = icmp ult i16 %60, 2016
  br i1 %61, label %if.end99.de_next_de.exit202_crit_edge, label %do.end.i199

if.end99.de_next_de.exit202_crit_edge:            ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit202

do.end.i199:                                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i197 = zext i16 %59 to i32
  %call.i198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i197) #12
  br label %de_next_de.exit202

de_next_de.exit202:                               ; preds = %do.end.i199, %if.end99.de_next_de.exit202_crit_edge
  %62 = ptrtoint ptr %de.2 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %de.2, align 4
  %64 = call i16 @llvm.bswap.i16(i16 %63) #8
  %conv9.i200 = zext i16 %64 to i32
  %add.ptr.i201 = getelementptr i8, ptr %de.2, i32 %conv9.i200
  %first_free.i = getelementptr inbounds %struct.dnode, ptr %call8223, i32 0, i32 1
  %65 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %first_free.i, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #8
  %68 = add i32 %67, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %68)
  %69 = icmp ult i32 %68, 2541
  br i1 %69, label %de_next_de.exit202.dnode_end_de.exit_crit_edge, label %do.end.i204

de_next_de.exit202.dnode_end_de.exit_crit_edge:   ; preds = %de_next_de.exit202
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit

do.end.i204:                                      ; preds = %de_next_de.exit202
  call void @__sanitizer_cov_trace_pc() #10
  %call.i203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %67) #12
  br label %dnode_end_de.exit

dnode_end_de.exit:                                ; preds = %do.end.i204, %de_next_de.exit202.dnode_end_de.exit_crit_edge
  %70 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %first_free.i, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71) #8
  %add.ptr.i205 = getelementptr i8, ptr %call8223, i32 %72
  %cmp102 = icmp ult ptr %add.ptr.i201, %add.ptr.i205
  br i1 %cmp102, label %dnode_end_de.exit.next_de_crit_edge, label %if.end105

dnode_end_de.exit.next_de_crit_edge:              ; preds = %dnode_end_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_de

if.end105:                                        ; preds = %dnode_end_de.exit
  %up106 = getelementptr inbounds %struct.dnode, ptr %call8223, i32 0, i32 4
  %73 = ptrtoint ptr %up106 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %up106, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %root_dnode = getelementptr inbounds %struct.dnode, ptr %call8223, i32 0, i32 2
  %76 = ptrtoint ptr %root_dnode to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load107 = load i8, ptr %root_dnode, align 4
  %bf.clear108 = and i8 %bf.load107, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear108)
  %tobool109.not = icmp eq i8 %bf.clear108, 0
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  br i1 %tobool109.not, label %if.end111, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end111:                                        ; preds = %if.end105
  %77 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk113 = getelementptr inbounds %struct.hpfs_sb_info, ptr %78, i32 0, i32 12
  %79 = ptrtoint ptr %sb_chk113 to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load114 = load i16, ptr %sb_chk113, align 2
  %80 = and i16 %bf.load114, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool118.not = icmp eq i16 %80, 0
  br i1 %tobool118.not, label %if.end111.if.end124_crit_edge, label %if.then119

if.end111.if.end124_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then119:                                       ; preds = %if.end111
  %call120 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %dno.addr.1220, ptr noundef nonnull %d1, ptr noundef nonnull %d2, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then119.if.end124_crit_edge, label %if.then119.cleanup_crit_edge

if.then119.cleanup_crit_edge:                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then119.if.end124_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.end124:                                        ; preds = %if.then119.if.end124_crit_edge, %if.end111.if.end124_crit_edge
  %call8 = call ptr @hpfs_map_dnode(ptr noundef %s, i32 noundef %75, ptr noundef nonnull %qbh) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end124.cleanup_crit_edge, label %if.end124.if.end11_crit_edge

if.end124.if.end11_crit_edge:                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end124.cleanup_crit_edge, %if.then119.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.then46, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_de_as_down_as_possible(ptr noundef %s, i32 noundef %dno) local_unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #8
  %0 = getelementptr inbounds %struct.quad_buffer_head, ptr %qbh, i32 0, i32 1
  %1 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #8
  %2 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %c1, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #8
  %3 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %c2, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  br label %again

again:                                            ; preds = %de_down_pointer.exit, %entry
  %d.0 = phi i32 [ %dno, %entry ], [ %24, %de_down_pointer.exit ]
  %up.0 = phi i32 [ 0, %entry ], [ %d.0, %de_down_pointer.exit ]
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %sb_chk, align 2
  %7 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %again.if.end4_crit_edge, label %if.then

again.if.end4_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %again
  %call1 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %d.0, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %again.if.end4_crit_edge
  %call5 = call fastcc ptr @map_nth_dirent(ptr noundef %s, i32 noundef %d.0, i32 noundef 1, ptr noundef nonnull %qbh, ptr noundef null)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk10 = getelementptr inbounds %struct.hpfs_sb_info, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sb_chk10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load11 = load i16, ptr %sb_chk10, align 2
  %11 = and i16 %bf.load11, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool15.not = icmp eq i16 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up.0)
  %tobool17.not = icmp eq i32 %up.0, 0
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.end8.if.end23_crit_edge, label %land.lhs.true

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %up18 = getelementptr inbounds %struct.dnode, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %up18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %up18, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %up.0)
  %cmp.not = icmp eq i32 %16, %up.0
  br i1 %cmp.not, label %land.lhs.true.if.end23_crit_edge, label %if.then19

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %up.0, i32 noundef %d.0, i32 noundef %16) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  %down = getelementptr inbounds %struct.hpfs_dirent, ptr %call5, i32 0, i32 1
  %17 = ptrtoint ptr %down to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load24 = load i16, ptr %down, align 2
  %18 = and i16 %bf.load24, 1024
  %tobool28.not = icmp eq i16 %18, 0
  br i1 %tobool28.not, label %if.then29, label %de_down_pointer.exit

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  br label %cleanup

de_down_pointer.exit:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %call5, align 4
  %21 = call i16 @llvm.bswap.i16(i16 %20) #8
  %conv.i = zext i16 %21 to i32
  %add.ptr.i = getelementptr i8, ptr %call5, i32 -4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr1.i, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  br label %again

cleanup:                                          ; preds = %if.then29, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %d.0, %if.then29 ], [ %dno, %if.end4.cleanup_crit_edge ], [ %d.0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @map_nth_dirent(ptr noundef %s, i32 noundef %dno, i32 noundef %n, ptr noundef %qbh, ptr noundef writeonly %dn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hpfs_map_dnode(ptr noundef %s, i32 noundef %dno, ptr noundef %qbh) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %dn, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %dn, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %call, i32 0, i32 6
  %first_free.i = getelementptr inbounds %struct.dnode, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %first_free.i, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %4 = add i32 %3, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %4)
  %5 = icmp ult i32 %4, 2541
  br i1 %5, label %if.end3.dnode_end_de.exit_crit_edge, label %do.end.i

if.end3.dnode_end_de.exit_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %3) #12
  br label %dnode_end_de.exit

dnode_end_de.exit:                                ; preds = %do.end.i, %if.end3.dnode_end_de.exit_crit_edge
  %6 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_free.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %add.ptr.i = getelementptr i8, ptr %call, i32 %8
  %cmp33 = icmp ult ptr %dirent.i, %add.ptr.i
  br i1 %cmp33, label %dnode_end_de.exit.for.body_crit_edge, label %dnode_end_de.exit.for.end_crit_edge

dnode_end_de.exit.for.end_crit_edge:              ; preds = %dnode_end_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

dnode_end_de.exit.for.body_crit_edge:             ; preds = %dnode_end_de.exit
  br label %for.body

for.body:                                         ; preds = %de_next_de.exit.for.body_crit_edge, %dnode_end_de.exit.for.body_crit_edge
  %de.035 = phi ptr [ %add.ptr.i31, %de_next_de.exit.for.body_crit_edge ], [ %dirent.i, %dnode_end_de.exit.for.body_crit_edge ]
  %i.034 = phi i32 [ %inc, %de_next_de.exit.for.body_crit_edge ], [ 1, %dnode_end_de.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.034, i32 %n)
  %cmp6 = icmp eq i32 %i.034, %n
  br i1 %cmp6, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %last = getelementptr inbounds %struct.hpfs_dirent, ptr %de.035, i32 0, i32 1
  %9 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %last, align 2
  %10 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool9.not = icmp eq i16 %10, 0
  br i1 %tobool9.not, label %for.inc, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end8
  %inc = add i32 %i.034, 1
  %11 = ptrtoint ptr %de.035 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %de.035, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %14 = add i16 %13, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %14)
  %15 = icmp ult i16 %14, 2016
  br i1 %15, label %for.inc.de_next_de.exit_crit_edge, label %do.end.i30

for.inc.de_next_de.exit_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i30:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %13 to i32
  %call.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i30, %for.inc.de_next_de.exit_crit_edge
  %16 = ptrtoint ptr %de.035 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %de.035, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %conv9.i = zext i16 %18 to i32
  %add.ptr.i31 = getelementptr i8, ptr %de.035, i32 %conv9.i
  %cmp = icmp ult ptr %add.ptr.i31, %add.ptr.i
  br i1 %cmp, label %de_next_de.exit.for.body_crit_edge, label %de_next_de.exit.for.end_crit_edge

de_next_de.exit.for.end_crit_edge:                ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

de_next_de.exit.for.body_crit_edge:               ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %de_next_de.exit.for.end_crit_edge, %if.end8.for.end_crit_edge, %dnode_end_de.exit.for.end_crit_edge
  tail call void @hpfs_brelse4(ptr noundef %qbh) #8
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.76, i32 noundef %dno, i32 noundef %n) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end ], [ null, %entry.cleanup_crit_edge ], [ %de.035, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @map_pos_dirent(ptr nocapture noundef readonly %inode, ptr nocapture noundef %posp, ptr noundef %qbh) local_unnamed_addr #0 align 64 {
entry:
  %dnode = alloca ptr, align 4
  %qbh0 = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dnode) #8
  %0 = ptrtoint ptr %dnode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dnode, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh0) #8
  %1 = call ptr @memset(ptr %qbh0, i32 255, i32 20)
  %2 = ptrtoint ptr %posp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %posp, align 8
  %4 = lshr i64 %3, 4
  %5 = trunc i64 %4 to i32
  %conv = and i32 %5, -4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %8 = trunc i64 %3 to i32
  %conv1 = and i32 %8, 63
  %call = call fastcc ptr @map_nth_dirent(ptr noundef %7, i32 noundef %conv, i32 noundef %conv1, ptr noundef %qbh, ptr noundef nonnull %dnode)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.bail_crit_edge, label %if.end

entry.bail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %call, align 4
  %11 = call i16 @llvm.bswap.i16(i16 %10) #8
  %12 = add i16 %11, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %12)
  %13 = icmp ult i16 %12, 2016
  br i1 %13, label %if.end.de_next_de.exit_crit_edge, label %do.end.i

if.end.de_next_de.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %11 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i, %if.end.de_next_de.exit_crit_edge
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call, align 4
  %16 = call i16 @llvm.bswap.i16(i16 %15) #8
  %conv9.i = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv9.i
  %17 = ptrtoint ptr %dnode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dnode, align 4
  %first_free.i = getelementptr inbounds %struct.dnode, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %first_free.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #8
  %22 = add i32 %21, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %22)
  %23 = icmp ult i32 %22, 2541
  br i1 %23, label %de_next_de.exit.dnode_end_de.exit_crit_edge, label %do.end.i95

de_next_de.exit.dnode_end_de.exit_crit_edge:      ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit

do.end.i95:                                       ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %21) #12
  br label %dnode_end_de.exit

dnode_end_de.exit:                                ; preds = %do.end.i95, %de_next_de.exit.dnode_end_de.exit_crit_edge
  %24 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %first_free.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #8
  %add.ptr.i96 = getelementptr i8, ptr %18, i32 %26
  %cmp = icmp ult ptr %add.ptr.i, %add.ptr.i96
  br i1 %cmp, label %if.then5, label %if.end19

if.then5:                                         ; preds = %dnode_end_de.exit
  %27 = ptrtoint ptr %posp to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %posp, align 8
  %inc = add i64 %28, 1
  store i64 %inc, ptr %posp, align 8
  %and6 = and i64 %inc, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %30, ptr noundef nonnull @.str.12, i64 noundef %inc) #8
  br label %bail

if.end10:                                         ; preds = %if.then5
  %down = getelementptr inbounds %struct.hpfs_dirent, ptr %add.ptr.i, i32 0, i32 1
  %31 = ptrtoint ptr %down to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load = load i16, ptr %down, align 2
  %32 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool11.not = icmp eq i16 %32, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %de_down_pointer.exit

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

de_down_pointer.exit:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i, align 4
  %37 = call i16 @llvm.bswap.i16(i16 %36) #8
  %conv.i = zext i16 %37 to i32
  %add.ptr.i99 = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i99, i32 -4
  %38 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr1.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #8
  %call15 = call i32 @hpfs_de_as_down_as_possible(ptr noundef %34, i32 noundef %40)
  %conv16 = zext i32 %call15 to i64
  %shl17 = shl nuw nsw i64 %conv16, 4
  %add = or i64 %shl17, 1
  %41 = ptrtoint ptr %posp to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %add, ptr %posp, align 8
  br label %cleanup

if.end19:                                         ; preds = %dnode_end_de.exit
  %42 = ptrtoint ptr %dnode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dnode, align 4
  %root_dnode = getelementptr inbounds %struct.dnode, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %root_dnode to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load20 = load i8, ptr %root_dnode, align 4
  %bf.clear21 = and i8 %bf.load20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear21)
  %tobool22.not = icmp eq i8 %bf.clear21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.bail_crit_edge

if.end19.bail_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail

if.end24:                                         ; preds = %if.end19
  %45 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb, align 4
  %up = getelementptr inbounds %struct.dnode, ptr %43, i32 0, i32 4
  %47 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %up, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %call26 = call ptr @hpfs_map_dnode(ptr noundef %46, i32 noundef %49, ptr noundef nonnull %qbh0) #8
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end24.bail_crit_edge, label %if.end29

if.end24.bail_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %bail

if.end29:                                         ; preds = %if.end24
  %first_free.i100 = getelementptr inbounds %struct.dnode, ptr %call26, i32 0, i32 1
  %50 = ptrtoint ptr %first_free.i100 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %first_free.i100, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #8
  %53 = add i32 %52, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %53)
  %54 = icmp ult i32 %53, 2541
  br i1 %54, label %if.end29.dnode_end_de.exit104_crit_edge, label %do.end.i102

if.end29.dnode_end_de.exit104_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit104

do.end.i102:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call.i101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %52) #12
  br label %dnode_end_de.exit104

dnode_end_de.exit104:                             ; preds = %do.end.i102, %if.end29.dnode_end_de.exit104_crit_edge
  %55 = ptrtoint ptr %first_free.i100 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %first_free.i100, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #8
  %add.ptr.i103 = getelementptr i8, ptr %call26, i32 %57
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %call26, i32 0, i32 6
  %cmp32120 = icmp ult ptr %dirent.i, %add.ptr.i103
  br i1 %cmp32120, label %dnode_end_de.exit104.for.body_crit_edge, label %dnode_end_de.exit104.for.end_crit_edge

dnode_end_de.exit104.for.end_crit_edge:           ; preds = %dnode_end_de.exit104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

dnode_end_de.exit104.for.body_crit_edge:          ; preds = %dnode_end_de.exit104
  br label %for.body

for.body:                                         ; preds = %de_next_de.exit119.for.body_crit_edge, %dnode_end_de.exit104.for.body_crit_edge
  %up_de.0122 = phi ptr [ %add.ptr.i118, %de_next_de.exit119.for.body_crit_edge ], [ %dirent.i, %dnode_end_de.exit104.for.body_crit_edge ]
  %c.0121 = phi i32 [ %inc34, %de_next_de.exit119.for.body_crit_edge ], [ 0, %dnode_end_de.exit104.for.body_crit_edge ]
  %inc34 = add i32 %c.0121, 1
  %and35 = and i32 %inc34, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %for.body.if.end40_crit_edge

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_sb, align 4
  %60 = ptrtoint ptr %dnode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dnode, align 4
  %up39 = getelementptr inbounds %struct.dnode, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %up39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %up39, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %59, ptr noundef nonnull @.str.13, i32 noundef %64) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %for.body.if.end40_crit_edge
  %down41 = getelementptr inbounds %struct.hpfs_dirent, ptr %up_de.0122, i32 0, i32 1
  %65 = ptrtoint ptr %down41 to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load42 = load i16, ptr %down41, align 2
  %66 = and i16 %bf.load42, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool47.not = icmp eq i16 %66, 0
  br i1 %tobool47.not, label %if.end40.for.inc_crit_edge, label %de_down_pointer.exit113

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

de_down_pointer.exit113:                          ; preds = %if.end40
  %67 = ptrtoint ptr %up_de.0122 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %up_de.0122, align 4
  %69 = call i16 @llvm.bswap.i16(i16 %68) #8
  %conv.i110 = zext i16 %69 to i32
  %add.ptr.i111 = getelementptr i8, ptr %up_de.0122, i32 -4
  %add.ptr1.i112 = getelementptr i8, ptr %add.ptr.i111, i32 %conv.i110
  %70 = ptrtoint ptr %add.ptr1.i112 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr1.i112, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %conv)
  %cmp49 = icmp eq i32 %72, %conv
  br i1 %cmp49, label %if.then51, label %de_down_pointer.exit113.for.inc_crit_edge

de_down_pointer.exit113.for.inc_crit_edge:        ; preds = %de_down_pointer.exit113
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then51:                                        ; preds = %de_down_pointer.exit113
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %dnode to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dnode, align 4
  %up52 = getelementptr inbounds %struct.dnode, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %up52 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %up52, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76)
  %conv53 = zext i32 %77 to i64
  %shl54 = shl nuw nsw i64 %conv53, 4
  %conv55 = zext i32 %inc34 to i64
  %add56 = add nuw nsw i64 %shl54, %conv55
  %78 = ptrtoint ptr %posp to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %add56, ptr %posp, align 8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh0) #8
  br label %cleanup

for.inc:                                          ; preds = %de_down_pointer.exit113.for.inc_crit_edge, %if.end40.for.inc_crit_edge
  %79 = ptrtoint ptr %up_de.0122 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %up_de.0122, align 4
  %81 = call i16 @llvm.bswap.i16(i16 %80) #8
  %82 = add i16 %81, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %82)
  %83 = icmp ult i16 %82, 2016
  br i1 %83, label %for.inc.de_next_de.exit119_crit_edge, label %do.end.i116

for.inc.de_next_de.exit119_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit119

do.end.i116:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i114 = zext i16 %81 to i32
  %call.i115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i114) #12
  br label %de_next_de.exit119

de_next_de.exit119:                               ; preds = %do.end.i116, %for.inc.de_next_de.exit119_crit_edge
  %84 = ptrtoint ptr %up_de.0122 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %up_de.0122, align 4
  %86 = call i16 @llvm.bswap.i16(i16 %85) #8
  %conv9.i117 = zext i16 %86 to i32
  %add.ptr.i118 = getelementptr i8, ptr %up_de.0122, i32 %conv9.i117
  %cmp32 = icmp ult ptr %add.ptr.i118, %add.ptr.i103
  br i1 %cmp32, label %de_next_de.exit119.for.body_crit_edge, label %de_next_de.exit119.for.end_crit_edge

de_next_de.exit119.for.end_crit_edge:             ; preds = %de_next_de.exit119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

de_next_de.exit119.for.body_crit_edge:            ; preds = %de_next_de.exit119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %de_next_de.exit119.for.end_crit_edge, %dnode_end_de.exit104.for.end_crit_edge
  %87 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i_sb, align 4
  %89 = ptrtoint ptr %dnode to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dnode, align 4
  %up60 = getelementptr inbounds %struct.dnode, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %up60 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %up60, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %88, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %93) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh0) #8
  br label %bail

bail:                                             ; preds = %for.end, %if.end24.bail_crit_edge, %if.end19.bail_crit_edge, %if.then8, %entry.bail_crit_edge
  %94 = ptrtoint ptr %posp to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 12, ptr %posp, align 8
  br label %cleanup

cleanup:                                          ; preds = %bail, %if.then51, %de_down_pointer.exit, %if.end10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dnode) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @map_dirent(ptr nocapture noundef readonly %inode, i32 noundef %dno, ptr noundef %name, i32 noundef %len, ptr noundef writeonly %dd, ptr noundef %qbh) local_unnamed_addr #0 align 64 {
entry:
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #8
  %0 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %c1, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #8
  %1 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %c2, align 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %6, ptr noundef nonnull @.str.15) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i_sb2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %again

again:                                            ; preds = %cleanup, %if.end
  %dno.addr.0 = phi i32 [ %dno, %if.end ], [ %37, %cleanup ]
  %7 = ptrtoint ptr %i_sb2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb2, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %sb_chk, align 2
  %12 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %again.if.end9_crit_edge, label %if.then3

again.if.end9_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3:                                         ; preds = %again
  %call5 = call i32 @hpfs_stop_cycles(ptr noundef %8, i32 noundef %dno.addr.0, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then3.if.end9_crit_edge, label %if.then3.cleanup47_crit_edge

if.then3.cleanup47_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup47

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %again.if.end9_crit_edge
  %13 = ptrtoint ptr %i_sb2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb2, align 4
  %call11 = call ptr @hpfs_map_dnode(ptr noundef %14, i32 noundef %dno.addr.0, ptr noundef %qbh) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.cleanup47_crit_edge, label %if.end14

if.end9.cleanup47_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup47

if.end14:                                         ; preds = %if.end9
  %first_free.i = getelementptr inbounds %struct.dnode, ptr %call11, i32 0, i32 1
  %15 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %first_free.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = add i32 %17, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %18)
  %19 = icmp ult i32 %18, 2541
  br i1 %19, label %if.end14.dnode_end_de.exit_crit_edge, label %do.end.i

if.end14.dnode_end_de.exit_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %17) #12
  br label %dnode_end_de.exit

dnode_end_de.exit:                                ; preds = %do.end.i, %if.end14.dnode_end_de.exit_crit_edge
  %20 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %first_free.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #8
  %add.ptr.i = getelementptr i8, ptr %call11, i32 %22
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %call11, i32 0, i32 6
  %cmp1798 = icmp ult ptr %dirent.i, %add.ptr.i
  br i1 %cmp1798, label %dnode_end_de.exit.for.body_crit_edge, label %dnode_end_de.exit.for.end_crit_edge

dnode_end_de.exit.for.end_crit_edge:              ; preds = %dnode_end_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

dnode_end_de.exit.for.body_crit_edge:             ; preds = %dnode_end_de.exit
  br label %for.body

for.body:                                         ; preds = %de_next_de.exit.for.body_crit_edge, %dnode_end_de.exit.for.body_crit_edge
  %de.099 = phi ptr [ %add.ptr.i77, %de_next_de.exit.for.body_crit_edge ], [ %dirent.i, %dnode_end_de.exit.for.body_crit_edge ]
  %23 = ptrtoint ptr %i_sb2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb2, align 4
  %name20 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.099, i32 0, i32 11
  %namelen = getelementptr inbounds %struct.hpfs_dirent, ptr %de.099, i32 0, i32 10
  %25 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %namelen, align 2
  %conv21 = zext i8 %26 to i32
  %last = getelementptr inbounds %struct.hpfs_dirent, ptr %de.099, i32 0, i32 1
  %27 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load22 = load i16, ptr %last, align 2
  %bf.lshr23 = lshr i16 %bf.load22, 11
  %28 = and i16 %bf.lshr23, 1
  %bf.cast25 = zext i16 %28 to i32
  %call27 = call i32 @hpfs_compare_names(ptr noundef %24, ptr noundef %name, i32 noundef %len, ptr noundef %name20, i32 noundef %conv21, i32 noundef %bf.cast25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end33

if.then29:                                        ; preds = %for.body
  %tobool30.not = icmp eq ptr %dd, null
  br i1 %tobool30.not, label %if.then29.cleanup47_crit_edge, label %if.then31

if.then29.cleanup47_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup47

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dd to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dno.addr.0, ptr %dd, align 4
  br label %cleanup47

if.end33:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp34 = icmp slt i32 %call27, 0
  br i1 %cmp34, label %if.then36, label %for.inc

if.then36:                                        ; preds = %if.end33
  %last.le = getelementptr inbounds %struct.hpfs_dirent, ptr %de.099, i32 0, i32 1
  %30 = ptrtoint ptr %last.le to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load37 = load i16, ptr %last.le, align 2
  %31 = and i16 %bf.load37, 1024
  %tobool41.not = icmp eq i16 %31, 0
  br i1 %tobool41.not, label %if.then36.for.end_crit_edge, label %cleanup

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %de.099 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %de.099, align 4
  %34 = call i16 @llvm.bswap.i16(i16 %33) #8
  %conv.i = zext i16 %34 to i32
  %add.ptr.i74 = getelementptr i8, ptr %de.099, i32 -4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i74, i32 %conv.i
  %35 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr1.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #8
  call void @hpfs_brelse4(ptr noundef %qbh) #8
  br label %again

for.inc:                                          ; preds = %if.end33
  %38 = ptrtoint ptr %de.099 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %de.099, align 4
  %40 = call i16 @llvm.bswap.i16(i16 %39) #8
  %41 = add i16 %40, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %41)
  %42 = icmp ult i16 %41, 2016
  br i1 %42, label %for.inc.de_next_de.exit_crit_edge, label %do.end.i76

for.inc.de_next_de.exit_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i76:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %40 to i32
  %call.i75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i76, %for.inc.de_next_de.exit_crit_edge
  %43 = ptrtoint ptr %de.099 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %de.099, align 4
  %45 = call i16 @llvm.bswap.i16(i16 %44) #8
  %conv9.i = zext i16 %45 to i32
  %add.ptr.i77 = getelementptr i8, ptr %de.099, i32 %conv9.i
  %cmp17 = icmp ult ptr %add.ptr.i77, %add.ptr.i
  br i1 %cmp17, label %de_next_de.exit.for.body_crit_edge, label %de_next_de.exit.for.end_crit_edge

de_next_de.exit.for.end_crit_edge:                ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

de_next_de.exit.for.body_crit_edge:               ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %de_next_de.exit.for.end_crit_edge, %if.then36.for.end_crit_edge, %dnode_end_de.exit.for.end_crit_edge
  call void @hpfs_brelse4(ptr noundef %qbh) #8
  br label %cleanup47

cleanup47:                                        ; preds = %for.end, %if.then31, %if.then29.cleanup47_crit_edge, %if.end9.cleanup47_crit_edge, %if.then3.cleanup47_crit_edge
  %retval.3 = phi ptr [ null, %for.end ], [ %de.099, %if.then31 ], [ %de.099, %if.then29.cleanup47_crit_edge ], [ null, %if.then3.cleanup47_crit_edge ], [ null, %if.end9.cleanup47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #8
  ret ptr %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_remove_dtree(ptr noundef %s, i32 noundef %dno) local_unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #8
  %0 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %call156 = call ptr @hpfs_map_dnode(ptr noundef %s, i32 noundef %dno, ptr noundef nonnull %qbh) #8
  %tobool.not157 = icmp eq ptr %call156, null
  br i1 %tobool.not157, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %de_down_pointer.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call159 = phi ptr [ %call, %de_down_pointer.exit.if.end_crit_edge ], [ %call156, %entry.if.end_crit_edge ]
  %dno.addr.0158 = phi i32 [ %9, %de_down_pointer.exit.if.end_crit_edge ], [ %dno, %entry.if.end_crit_edge ]
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %call159, i32 0, i32 6
  %last = getelementptr inbounds %struct.dnode, ptr %call159, i32 0, i32 6, i32 2
  %1 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %last, align 2
  %2 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool2.not = icmp eq i16 %2, 0
  br i1 %tobool2.not, label %while.end, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool8.not = icmp eq i16 %3, 0
  br i1 %tobool8.not, label %if.then3.error_crit_edge, label %de_down_pointer.exit

if.then3.error_crit_edge:                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

de_down_pointer.exit:                             ; preds = %if.then3
  %4 = ptrtoint ptr %dirent.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dirent.i, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %5) #8
  %conv.i = zext i16 %6 to i32
  %add.ptr.i = getelementptr %struct.dnode, ptr %call159, i32 0, i32 5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr1.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #8
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @hpfs_free_dnode(ptr noundef %s, i32 noundef %dno.addr.0158) #8
  %call = call ptr @hpfs_map_dnode(ptr noundef %s, i32 noundef %9, ptr noundef nonnull %qbh) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %de_down_pointer.exit.cleanup_crit_edge, label %de_down_pointer.exit.if.end_crit_edge

de_down_pointer.exit.if.end_crit_edge:            ; preds = %de_down_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

de_down_pointer.exit.cleanup_crit_edge:           ; preds = %de_down_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end:                                        ; preds = %if.end
  %10 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool18.not = icmp eq i16 %10, 0
  br i1 %tobool18.not, label %while.end.error_crit_edge, label %if.end20

while.end.error_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end20:                                         ; preds = %while.end
  %11 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool26.not = icmp eq i16 %11, 0
  br i1 %tobool26.not, label %if.end20.cond.end_crit_edge, label %de_down_pointer.exit124

if.end20.cond.end_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

de_down_pointer.exit124:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dirent.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dirent.i, align 4
  %14 = call i16 @llvm.bswap.i16(i16 %13) #8
  %conv.i121 = zext i16 %14 to i32
  %add.ptr.i122 = getelementptr i8, ptr %dirent.i, i32 %conv.i121
  %add.ptr1.i123 = getelementptr i8, ptr %add.ptr.i122, i32 -4
  %15 = ptrtoint ptr %add.ptr1.i123 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr1.i123, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  br label %cond.end

cond.end:                                         ; preds = %de_down_pointer.exit124, %if.end20.cond.end_crit_edge
  %cond = phi i32 [ %17, %de_down_pointer.exit124 ], [ 0, %if.end20.cond.end_crit_edge ]
  %18 = ptrtoint ptr %dirent.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dirent.i, align 4
  %20 = call i16 @llvm.bswap.i16(i16 %19) #8
  %21 = add i16 %20, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %21)
  %22 = icmp ult i16 %21, 2016
  br i1 %22, label %cond.end.de_next_de.exit_crit_edge, label %do.end.i126

cond.end.de_next_de.exit_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i126:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %20 to i32
  %call.i125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i126, %cond.end.de_next_de.exit_crit_edge
  %23 = ptrtoint ptr %dirent.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dirent.i, align 4
  %25 = call i16 @llvm.bswap.i16(i16 %24) #8
  %conv9.i = zext i16 %25 to i32
  %add.ptr.i127 = getelementptr i8, ptr %dirent.i, i32 %conv9.i
  %last29 = getelementptr inbounds %struct.hpfs_dirent, ptr %add.ptr.i127, i32 0, i32 1
  %26 = ptrtoint ptr %last29 to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load30 = load i16, ptr %last29, align 2
  %27 = and i16 %bf.load30, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool34.not = icmp eq i16 %27, 0
  br i1 %tobool34.not, label %de_next_de.exit.error_crit_edge, label %if.end36

de_next_de.exit.error_crit_edge:                  ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end36:                                         ; preds = %de_next_de.exit
  %28 = and i16 %bf.load30, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool43.not = icmp eq i16 %28, 0
  br i1 %tobool43.not, label %if.end36.cond.end47_crit_edge, label %de_down_pointer.exit136

if.end36.cond.end47_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end47

de_down_pointer.exit136:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %add.ptr.i127 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i127, align 4
  %31 = call i16 @llvm.bswap.i16(i16 %30) #8
  %conv.i133 = zext i16 %31 to i32
  %add.ptr.i134 = getelementptr i8, ptr %add.ptr.i127, i32 %conv.i133
  %add.ptr1.i135 = getelementptr i8, ptr %add.ptr.i134, i32 -4
  %32 = ptrtoint ptr %add.ptr1.i135 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr1.i135, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #8
  br label %cond.end47

cond.end47:                                       ; preds = %de_down_pointer.exit136, %if.end36.cond.end47_crit_edge
  %cond48 = phi i32 [ %34, %de_down_pointer.exit136 ], [ 0, %if.end36.cond.end47_crit_edge ]
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @hpfs_free_dnode(ptr noundef %s, i32 noundef %dno.addr.0158) #8
  br label %do.body

do.body:                                          ; preds = %while.end77.do.body_crit_edge, %cond.end47
  %d1.0 = phi i32 [ %cond, %cond.end47 ], [ %d2.0, %while.end77.do.body_crit_edge ]
  %d2.0 = phi i32 [ %cond48, %cond.end47 ], [ 0, %while.end77.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d1.0)
  %tobool50.not160 = icmp eq i32 %d1.0, 0
  br i1 %tobool50.not160, label %do.body.while.end77_crit_edge, label %do.body.while.body51_crit_edge

do.body.while.body51_crit_edge:                   ; preds = %do.body
  br label %while.body51

do.body.while.end77_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end77

while.body51:                                     ; preds = %cond.end75.while.body51_crit_edge, %do.body.while.body51_crit_edge
  %d1.1161 = phi i32 [ %cond76, %cond.end75.while.body51_crit_edge ], [ %d1.0, %do.body.while.body51_crit_edge ]
  %call52 = call ptr @hpfs_map_dnode(ptr noundef %s, i32 noundef %d1.1161, ptr noundef nonnull %qbh) #8
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %while.body51.cleanup_crit_edge, label %if.end55

while.body51.cleanup_crit_edge:                   ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %while.body51
  %dirent.i137 = getelementptr inbounds %struct.dnode, ptr %call52, i32 0, i32 6
  %last57 = getelementptr inbounds %struct.dnode, ptr %call52, i32 0, i32 6, i32 2
  %35 = ptrtoint ptr %last57 to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load58 = load i16, ptr %last57, align 2
  %36 = and i16 %bf.load58, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool62.not = icmp eq i16 %36, 0
  br i1 %tobool62.not, label %if.end55.error_crit_edge, label %if.end64

if.end55.error_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end64:                                         ; preds = %if.end55
  %37 = and i16 %bf.load58, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool71.not = icmp eq i16 %37, 0
  br i1 %tobool71.not, label %if.end64.cond.end75_crit_edge, label %de_down_pointer.exit146

if.end64.cond.end75_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end75

de_down_pointer.exit146:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dirent.i137 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dirent.i137, align 4
  %40 = call i16 @llvm.bswap.i16(i16 %39) #8
  %conv.i143 = zext i16 %40 to i32
  %add.ptr.i144 = getelementptr %struct.dnode, ptr %call52, i32 0, i32 5
  %add.ptr1.i145 = getelementptr i8, ptr %add.ptr.i144, i32 %conv.i143
  %41 = ptrtoint ptr %add.ptr1.i145 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr1.i145, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #8
  br label %cond.end75

cond.end75:                                       ; preds = %de_down_pointer.exit146, %if.end64.cond.end75_crit_edge
  %cond76 = phi i32 [ %43, %de_down_pointer.exit146 ], [ 0, %if.end64.cond.end75_crit_edge ]
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @hpfs_free_dnode(ptr noundef %s, i32 noundef %d1.1161) #8
  %tobool50.not = icmp eq i32 %cond76, 0
  br i1 %tobool50.not, label %cond.end75.while.end77_crit_edge, label %cond.end75.while.body51_crit_edge

cond.end75.while.body51_crit_edge:                ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body51

cond.end75.while.end77_crit_edge:                 ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end77

while.end77:                                      ; preds = %cond.end75.while.end77_crit_edge, %do.body.while.end77_crit_edge
  %tobool78.not = icmp eq i32 %d2.0, 0
  br i1 %tobool78.not, label %while.end77.cleanup_crit_edge, label %while.end77.do.body_crit_edge

while.end77.do.body_crit_edge:                    ; preds = %while.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.end77.cleanup_crit_edge:                    ; preds = %while.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error:                                            ; preds = %if.end55.error_crit_edge, %de_next_de.exit.error_crit_edge, %while.end.error_crit_edge, %if.then3.error_crit_edge
  %dno.addr.1 = phi i32 [ %dno.addr.0158, %de_next_de.exit.error_crit_edge ], [ %dno.addr.0158, %while.end.error_crit_edge ], [ %d1.1161, %if.end55.error_crit_edge ], [ %dno.addr.0158, %if.then3.error_crit_edge ]
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #8
  call void @hpfs_free_dnode(ptr noundef %s, i32 noundef %dno.addr.1) #8
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %dno) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %while.end77.cleanup_crit_edge, %while.body51.cleanup_crit_edge, %de_down_pointer.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_free_dnode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @map_fnode_dirent(ptr noundef %s, i32 noundef %fno, ptr noundef %f, ptr noundef %qbh) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #8
  %1 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c1, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #8
  %2 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %c2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d1) #8
  %3 = ptrtoint ptr %d1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %d1, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d2) #8
  %4 = ptrtoint ptr %d2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %d2, align 4
  %name = getelementptr inbounds %struct.fnode, ptr %f, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3136, i32 noundef 256) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.fnode, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %cmp = icmp ult i8 %7, 16
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %7 to i32
  %8 = call ptr @memcpy(ptr %call7.i, ptr %name, i32 %conv)
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %call7.i, ptr %name, i32 15)
  %add.ptr = getelementptr i8, ptr %call7.i, i32 15
  %10 = call ptr @memset(ptr %add.ptr, i32 255, i32 241)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %name1len.0 = phi i32 [ %conv, %if.then3 ], [ 15, %if.else ]
  %name2len.0 = phi i32 [ %conv, %if.then3 ], [ 256, %if.else ]
  %up = getelementptr inbounds %struct.fnode, ptr %f, i32 0, i32 4
  %11 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %up, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %call7 = call ptr @hpfs_map_fnode(ptr noundef %s, i32 noundef %13, ptr noundef nonnull %bh) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %flags.i = getelementptr inbounds %struct.fnode, ptr %call7, i32 0, i32 13
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags.i, align 2
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.not = icmp eq i16 %16, 0
  br i1 %cmp.i.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %17 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then12.brelse.exit_crit_edge, label %if.then.i

if.then12.brelse.exit_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %18) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then12.brelse.exit_crit_edge
  %19 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %up, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %fno, i32 noundef %21) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %disk_secno = getelementptr inbounds %struct.fnode, ptr %call7, i32 0, i32 15, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %disk_secno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %disk_secno, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bh, align 4
  %tobool.not.i205 = icmp eq ptr %26, null
  br i1 %tobool.not.i205, label %if.end14.brelse.exit207_crit_edge, label %if.then.i206

if.end14.brelse.exit207_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit207

if.then.i206:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %26) #8
  br label %brelse.exit207

brelse.exit207:                                   ; preds = %if.then.i206, %if.end14.brelse.exit207_crit_edge
  %call15244249 = call ptr @hpfs_map_dnode(ptr noundef %s, i32 noundef %24, ptr noundef %qbh) #8
  %tobool16.not245250 = icmp eq ptr %call15244249, null
  br i1 %tobool16.not245250, label %brelse.exit207.if.then17_crit_edge, label %if.end18.lr.ph.lr.ph

brelse.exit207.if.then17_crit_edge:               ; preds = %brelse.exit207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end18.lr.ph.lr.ph:                             ; preds = %brelse.exit207
  %s_fs_info.i221 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  br label %if.end18

if.then17:                                        ; preds = %if.end123.if.then17_crit_edge, %if.end70.if.then17_crit_edge, %brelse.exit207.if.then17_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end18.backedge, %if.end18.lr.ph.lr.ph
  %call15248 = phi ptr [ %call15244249, %if.end18.lr.ph.lr.ph ], [ %call15248.be, %if.end18.backedge ]
  %downd.0247 = phi i32 [ 0, %if.end18.lr.ph.lr.ph ], [ %downd.0247.be, %if.end18.backedge ]
  %dno.1246 = phi i32 [ %24, %if.end18.lr.ph.lr.ph ], [ %dno.1246.be, %if.end18.backedge ]
  %first_free.i = getelementptr inbounds %struct.dnode, ptr %call15248, i32 0, i32 1
  %27 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %first_free.i, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28) #8
  %30 = add i32 %29, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %30)
  %31 = icmp ult i32 %30, 2541
  br i1 %31, label %if.end18.dnode_end_de.exit_crit_edge, label %do.end.i

if.end18.dnode_end_de.exit_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %29) #12
  br label %dnode_end_de.exit

dnode_end_de.exit:                                ; preds = %do.end.i, %if.end18.dnode_end_de.exit_crit_edge
  %32 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %first_free.i, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #8
  %add.ptr.i = getelementptr i8, ptr %call15248, i32 %34
  %dirent.i = getelementptr inbounds %struct.dnode, ptr %call15248, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %downd.0247)
  %tobool21.not = icmp eq i32 %downd.0247, 0
  br i1 %tobool21.not, label %dnode_end_de.exit.next_de_crit_edge, label %while.cond.preheader

dnode_end_de.exit.next_de_crit_edge:              ; preds = %dnode_end_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_de

while.cond.preheader:                             ; preds = %dnode_end_de.exit
  %cmp23238 = icmp ult ptr %dirent.i, %add.ptr.i
  br i1 %cmp23238, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %de_next_de.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %de.0239 = phi ptr [ %add.ptr.i214, %de_next_de.exit.while.body_crit_edge ], [ %dirent.i, %while.cond.preheader.while.body_crit_edge ]
  %down = getelementptr inbounds %struct.hpfs_dirent, ptr %de.0239, i32 0, i32 1
  %35 = ptrtoint ptr %down to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load = load i16, ptr %down, align 2
  %36 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool25.not = icmp eq i16 %36, 0
  br i1 %tobool25.not, label %while.body.if.end32_crit_edge, label %de_down_pointer.exit

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

de_down_pointer.exit:                             ; preds = %while.body
  %37 = ptrtoint ptr %de.0239 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %de.0239, align 4
  %39 = call i16 @llvm.bswap.i16(i16 %38) #8
  %conv.i = zext i16 %39 to i32
  %add.ptr.i211 = getelementptr i8, ptr %de.0239, i32 -4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i211, i32 %conv.i
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr1.i, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %downd.0247)
  %cmp28 = icmp eq i32 %42, %downd.0247
  br i1 %cmp28, label %de_down_pointer.exit.f72_crit_edge, label %de_down_pointer.exit.if.end32_crit_edge

de_down_pointer.exit.if.end32_crit_edge:          ; preds = %de_down_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

de_down_pointer.exit.f72_crit_edge:               ; preds = %de_down_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %f72

if.end32:                                         ; preds = %de_down_pointer.exit.if.end32_crit_edge, %while.body.if.end32_crit_edge
  %43 = ptrtoint ptr %de.0239 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %de.0239, align 4
  %45 = call i16 @llvm.bswap.i16(i16 %44) #8
  %46 = add i16 %45, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %46)
  %47 = icmp ult i16 %46, 2016
  br i1 %47, label %if.end32.de_next_de.exit_crit_edge, label %do.end.i213

if.end32.de_next_de.exit_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit

do.end.i213:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i16 %45 to i32
  %call.i212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i) #12
  br label %de_next_de.exit

de_next_de.exit:                                  ; preds = %do.end.i213, %if.end32.de_next_de.exit_crit_edge
  %48 = ptrtoint ptr %de.0239 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %de.0239, align 4
  %50 = call i16 @llvm.bswap.i16(i16 %49) #8
  %conv9.i = zext i16 %50 to i32
  %add.ptr.i214 = getelementptr i8, ptr %de.0239, i32 %conv9.i
  %cmp23 = icmp ult ptr %add.ptr.i214, %add.ptr.i
  br i1 %cmp23, label %de_next_de.exit.while.body_crit_edge, label %de_next_de.exit.while.end_crit_edge

de_next_de.exit.while.end_crit_edge:              ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

de_next_de.exit.while.body_crit_edge:             ; preds = %de_next_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %de_next_de.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.21, i32 noundef %downd.0247, i32 noundef %dno.1246) #8
  call void @hpfs_brelse4(ptr noundef %qbh) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

next_de:                                          ; preds = %de_next_de.exit220.next_de_crit_edge, %dnode_end_de.exit.next_de_crit_edge
  %de.1 = phi ptr [ %add.ptr.i219, %de_next_de.exit220.next_de_crit_edge ], [ %dirent.i, %dnode_end_de.exit.next_de_crit_edge ]
  %fnode = getelementptr inbounds %struct.hpfs_dirent, ptr %de.1, i32 0, i32 2
  %51 = ptrtoint ptr %fnode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fnode, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %fno)
  %cmp35 = icmp eq i32 %53, %fno
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %next_de
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end38:                                         ; preds = %next_de
  %name39 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.1, i32 0, i32 11
  %namelen = getelementptr inbounds %struct.hpfs_dirent, ptr %de.1, i32 0, i32 10
  %54 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %namelen, align 2
  %conv41 = zext i8 %55 to i32
  %last = getelementptr inbounds %struct.hpfs_dirent, ptr %de.1, i32 0, i32 1
  %56 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load42 = load i16, ptr %last, align 2
  %bf.lshr43 = lshr i16 %bf.load42, 11
  %57 = and i16 %bf.lshr43, 1
  %bf.cast45 = zext i16 %57 to i32
  %call47 = call i32 @hpfs_compare_names(ptr noundef %s, ptr noundef %name, i32 noundef %name1len.0, ptr noundef %name39, i32 noundef %conv41, i32 noundef %bf.cast45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end38.f72_crit_edge

if.end38.f72_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %f72

land.lhs.true:                                    ; preds = %if.end38
  %58 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load51 = load i16, ptr %last, align 2
  %59 = and i16 %bf.load51, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool56.not = icmp eq i16 %59, 0
  br i1 %tobool56.not, label %land.lhs.true.f72_crit_edge, label %if.then57

land.lhs.true.f72_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %f72

if.then57:                                        ; preds = %land.lhs.true
  %call58 = call fastcc i32 @de_down_pointer(ptr noundef %de.1)
  call void @hpfs_brelse4(ptr noundef %qbh) #8
  %60 = ptrtoint ptr %s_fs_info.i221 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i221, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load60 = load i16, ptr %sb_chk, align 2
  %63 = and i16 %bf.load60, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool64.not = icmp eq i16 %63, 0
  br i1 %tobool64.not, label %if.then57.if.end70_crit_edge, label %if.then65

if.then57.if.end70_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then65:                                        ; preds = %if.then57
  %call66 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %call58, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end70_crit_edge, label %if.then68

if.then65.if.end70_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end70:                                         ; preds = %if.then65.if.end70_crit_edge, %if.then57.if.end70_crit_edge
  %call15244 = call ptr @hpfs_map_dnode(ptr noundef %s, i32 noundef %call58, ptr noundef %qbh) #8
  %tobool16.not245 = icmp eq ptr %call15244, null
  br i1 %tobool16.not245, label %if.end70.if.then17_crit_edge, label %if.end70.if.end18.backedge_crit_edge

if.end70.if.end18.backedge_crit_edge:             ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.backedge

if.end70.if.then17_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

f72:                                              ; preds = %land.lhs.true.f72_crit_edge, %if.end38.f72_crit_edge, %de_down_pointer.exit.f72_crit_edge
  %de.2 = phi ptr [ %de.1, %land.lhs.true.f72_crit_edge ], [ %de.1, %if.end38.f72_crit_edge ], [ %de.0239, %de_down_pointer.exit.f72_crit_edge ]
  %fnode73 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.2, i32 0, i32 2
  %64 = ptrtoint ptr %fnode73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fnode73, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %fno)
  %cmp74 = icmp eq i32 %66, %fno
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %f72
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end77:                                         ; preds = %f72
  %name78 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.2, i32 0, i32 11
  %namelen80 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.2, i32 0, i32 10
  %67 = ptrtoint ptr %namelen80 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %namelen80, align 2
  %conv81 = zext i8 %68 to i32
  %last82 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.2, i32 0, i32 1
  %69 = ptrtoint ptr %last82 to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load83 = load i16, ptr %last82, align 2
  %bf.lshr84 = lshr i16 %bf.load83, 11
  %70 = and i16 %bf.lshr84, 1
  %bf.cast86 = zext i16 %70 to i32
  %call88 = call i32 @hpfs_compare_names(ptr noundef %s, ptr noundef nonnull %call7.i, i32 noundef %name2len.0, ptr noundef %name78, i32 noundef %conv81, i32 noundef %bf.cast86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %land.lhs.true91, label %if.end77.if.end99_crit_edge

if.end77.if.end99_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

land.lhs.true91:                                  ; preds = %if.end77
  %71 = ptrtoint ptr %last82 to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load93 = load i16, ptr %last82, align 2
  %72 = and i16 %bf.load93, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool97.not = icmp eq i16 %72, 0
  br i1 %tobool97.not, label %land.lhs.true91.not_found_crit_edge, label %land.lhs.true91.if.end99_crit_edge

land.lhs.true91.if.end99_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

land.lhs.true91.not_found_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  br label %not_found

if.end99:                                         ; preds = %land.lhs.true91.if.end99_crit_edge, %if.end77.if.end99_crit_edge
  %73 = ptrtoint ptr %de.2 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %de.2, align 4
  %75 = call i16 @llvm.bswap.i16(i16 %74) #8
  %76 = add i16 %75, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %76)
  %77 = icmp ult i16 %76, 2016
  br i1 %77, label %if.end99.de_next_de.exit220_crit_edge, label %do.end.i217

if.end99.de_next_de.exit220_crit_edge:            ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit220

do.end.i217:                                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i215 = zext i16 %75 to i32
  %call.i216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i215) #12
  br label %de_next_de.exit220

de_next_de.exit220:                               ; preds = %do.end.i217, %if.end99.de_next_de.exit220_crit_edge
  %78 = ptrtoint ptr %de.2 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %de.2, align 4
  %80 = call i16 @llvm.bswap.i16(i16 %79) #8
  %conv9.i218 = zext i16 %80 to i32
  %add.ptr.i219 = getelementptr i8, ptr %de.2, i32 %conv9.i218
  %cmp101 = icmp ult ptr %add.ptr.i219, %add.ptr.i
  br i1 %cmp101, label %de_next_de.exit220.next_de_crit_edge, label %if.end104

de_next_de.exit220.next_de_crit_edge:             ; preds = %de_next_de.exit220
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_de

if.end104:                                        ; preds = %de_next_de.exit220
  %root_dnode = getelementptr inbounds %struct.dnode, ptr %call15248, i32 0, i32 2
  %81 = ptrtoint ptr %root_dnode to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load105 = load i8, ptr %root_dnode, align 4
  %bf.clear106 = and i8 %bf.load105, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear106)
  %tobool107.not = icmp eq i8 %bf.clear106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end104.not_found_crit_edge

if.end104.not_found_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %not_found

if.end109:                                        ; preds = %if.end104
  %up110 = getelementptr inbounds %struct.dnode, ptr %call15248, i32 0, i32 4
  %82 = ptrtoint ptr %up110 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %up110, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83)
  call void @hpfs_brelse4(ptr noundef %qbh) #8
  %85 = ptrtoint ptr %s_fs_info.i221 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i221, align 16
  %sb_chk112 = getelementptr inbounds %struct.hpfs_sb_info, ptr %86, i32 0, i32 12
  %87 = ptrtoint ptr %sb_chk112 to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load113 = load i16, ptr %sb_chk112, align 2
  %88 = and i16 %bf.load113, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool117.not = icmp eq i16 %88, 0
  br i1 %tobool117.not, label %if.end109.if.end123_crit_edge, label %if.then118

if.end109.if.end123_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then118:                                       ; preds = %if.end109
  %call119 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %dno.1246, ptr noundef nonnull %d1, ptr noundef nonnull %d2, ptr noundef nonnull @.str.23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then118.if.end123_crit_edge, label %if.then121

if.then118.if.end123_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then121:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end123:                                        ; preds = %if.then118.if.end123_crit_edge, %if.end109.if.end123_crit_edge
  %call15 = call ptr @hpfs_map_dnode(ptr noundef %s, i32 noundef %84, ptr noundef %qbh) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end123.if.then17_crit_edge, label %if.end123.if.end18.backedge_crit_edge

if.end123.if.end18.backedge_crit_edge:            ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.backedge

if.end123.if.then17_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end18.backedge:                                ; preds = %if.end123.if.end18.backedge_crit_edge, %if.end70.if.end18.backedge_crit_edge
  %call15248.be = phi ptr [ %call15, %if.end123.if.end18.backedge_crit_edge ], [ %call15244, %if.end70.if.end18.backedge_crit_edge ]
  %downd.0247.be = phi i32 [ %dno.1246, %if.end123.if.end18.backedge_crit_edge ], [ 0, %if.end70.if.end18.backedge_crit_edge ]
  %dno.1246.be = phi i32 [ %84, %if.end123.if.end18.backedge_crit_edge ], [ %call58, %if.end70.if.end18.backedge_crit_edge ]
  br label %if.end18

not_found:                                        ; preds = %if.end104.not_found_crit_edge, %land.lhs.true91.not_found_crit_edge
  call void @hpfs_brelse4(ptr noundef %qbh) #8
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %fno) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %not_found, %if.then121, %if.then76, %if.then68, %if.then37, %while.end, %if.then17, %brelse.exit, %if.then9, %do.end
  %retval.0 = phi ptr [ %de.2, %if.then76 ], [ %de.1, %if.then37 ], [ null, %if.then68 ], [ null, %not_found ], [ null, %if.then121 ], [ null, %while.end ], [ null, %if.then17 ], [ null, %brelse.exit ], [ null, %if.then9 ], [ null, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_fnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_alloc_dnode(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_last_pointer(ptr noundef %s, ptr noundef %d, i32 noundef %ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %first_free.i.i = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_free.i.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %3 = add i32 %2, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2541, i32 %3)
  %4 = icmp ult i32 %3, 2541
  br i1 %4, label %entry.dnode_end_de.exit.i_crit_edge, label %do.end.i.i

entry.dnode_end_de.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dnode_end_de.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %2) #12
  br label %dnode_end_de.exit.i

dnode_end_de.exit.i:                              ; preds = %do.end.i.i, %entry.dnode_end_de.exit.i_crit_edge
  %5 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %first_free.i.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 %7
  %dirent.i.i = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 6
  %cmp9.i = icmp ult ptr %dirent.i.i, %add.ptr.i.i
  br i1 %cmp9.i, label %dnode_end_de.exit.i.for.body.i_crit_edge, label %dnode_end_de.exit.i.if.then_crit_edge

dnode_end_de.exit.i.if.then_crit_edge:            ; preds = %dnode_end_de.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

dnode_end_de.exit.i.for.body.i_crit_edge:         ; preds = %dnode_end_de.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %de_next_de.exit.i.for.body.i_crit_edge, %dnode_end_de.exit.i.for.body.i_crit_edge
  %de.010.i = phi ptr [ %add.ptr.i8.i, %de_next_de.exit.i.for.body.i_crit_edge ], [ %dirent.i.i, %dnode_end_de.exit.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %de.010.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %de.010.i, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %11 = add i16 %10, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2016, i16 %11)
  %12 = icmp ult i16 %11, 2016
  br i1 %12, label %for.body.i.de_next_de.exit.i_crit_edge, label %do.end.i7.i

for.body.i.de_next_de.exit.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %de_next_de.exit.i

do.end.i7.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i = zext i16 %10 to i32
  %call.i6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv7.i.i) #12
  br label %de_next_de.exit.i

de_next_de.exit.i:                                ; preds = %do.end.i7.i, %for.body.i.de_next_de.exit.i_crit_edge
  %13 = ptrtoint ptr %de.010.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %de.010.i, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  %conv9.i.i = zext i16 %15 to i32
  %add.ptr.i8.i = getelementptr i8, ptr %de.010.i, i32 %conv9.i.i
  %cmp.i = icmp ult ptr %add.ptr.i8.i, %add.ptr.i.i
  br i1 %cmp.i, label %de_next_de.exit.i.for.body.i_crit_edge, label %dnode_last_de.exit

de_next_de.exit.i.for.body.i_crit_edge:           ; preds = %de_next_de.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

dnode_last_de.exit:                               ; preds = %de_next_de.exit.i
  %tobool.not = icmp eq ptr %de.010.i, null
  br i1 %tobool.not, label %dnode_last_de.exit.if.then_crit_edge, label %if.end

dnode_last_de.exit.if.then_crit_edge:             ; preds = %dnode_last_de.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %dnode_last_de.exit.if.then_crit_edge, %dnode_end_de.exit.i.if.then_crit_edge
  %self = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 5
  %16 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %self, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.41, i32 noundef %18) #8
  br label %cleanup

if.end:                                           ; preds = %dnode_last_de.exit
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %sb_chk, align 2
  %22 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool2.not = icmp eq i16 %22, 0
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %if.then3

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then3:                                         ; preds = %if.end
  %down = getelementptr inbounds %struct.hpfs_dirent, ptr %de.010.i, i32 0, i32 1
  %23 = ptrtoint ptr %down to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load4 = load i16, ptr %down, align 2
  %24 = and i16 %bf.load4, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool8.not = icmp eq i16 %24, 0
  br i1 %tobool8.not, label %if.end12, label %de_down_pointer.exit

de_down_pointer.exit:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %self10 = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 5
  %25 = ptrtoint ptr %self10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %self10, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %de.010.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %de.010.i, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #8
  %conv.i = zext i16 %30 to i32
  %add.ptr.i = getelementptr i8, ptr %de.010.i, i32 %conv.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %31 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr1.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.42, i32 noundef %27, i32 noundef %33) #8
  br label %cleanup

if.end12:                                         ; preds = %if.then3
  %34 = ptrtoint ptr %de.010.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %de.010.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %35)
  %cmp.not = icmp eq i16 %35, 8192
  br i1 %cmp.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %self15 = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 5
  %36 = ptrtoint ptr %self15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %self15, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.43, i32 noundef %38) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12.if.end17_crit_edge, %if.end.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptr)
  %tobool18.not = icmp eq i32 %ptr, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  %39 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %first_free.i.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  %add.i = add i32 %41, 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %add.i) #8
  %43 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %first_free.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i)
  %cmp21 = icmp ugt i32 %add.i, 2048
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %self24 = getelementptr inbounds %struct.dnode, ptr %d, i32 0, i32 5
  %44 = ptrtoint ptr %self24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %self24, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef %46) #8
  %47 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %first_free.i.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %add.i50 = add i32 %49, -4
  %50 = tail call i32 @llvm.bswap.i32(i32 %add.i50) #8
  %51 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %first_free.i.i, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %de.010.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 9216, ptr %de.010.i, align 4
  %down28 = getelementptr inbounds %struct.hpfs_dirent, ptr %de.010.i, i32 0, i32 1
  %53 = ptrtoint ptr %down28 to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load29 = load i16, ptr %down28, align 2
  %bf.set = or i16 %bf.load29, 1024
  store i16 %bf.set, ptr %down28, align 2
  %54 = tail call i32 @llvm.bswap.i32(i32 %ptr)
  %add.ptr = getelementptr i8, ptr %de.010.i, i32 32
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then23, %if.end17.cleanup_crit_edge, %if.then14, %de_down_pointer.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131, !133, !135, !136, !137, !139, !140, !141, !143, !144, !146, !147, !148, !150, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hpfs/dnode.c", i32 38, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hpfs_add_pos._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hpfs_add_pos._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hpfs/dnode.c", i32 183, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/hpfs/dnode.c", i32 401, i32 48}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hpfs/dnode.c", i32 718, i32 23}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hpfs/dnode.c", i32 755, i32 42}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/hpfs/dnode.c", i32 760, i32 17}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hpfs/dnode.c", i32 766, i32 18}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/hpfs/dnode.c", i32 791, i32 42}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/hpfs/dnode.c", i32 828, i32 40}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/hpfs/dnode.c", i32 833, i32 18}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/hpfs/dnode.c", i32 867, i32 5}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/hpfs/dnode.c", i32 890, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/hpfs/dnode.c", i32 898, i32 26}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/hpfs/dnode.c", i32 918, i32 55}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/hpfs/dnode.c", i32 921, i32 52}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/hpfs/dnode.c", i32 990, i32 16}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/hpfs/dnode.c", i32 1014, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @map_fnode_dirent._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @map_fnode_dirent._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/hpfs/dnode.c", i32 1031, i32 17}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/hpfs/dnode.c", i32 1051, i32 17}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/hpfs/dnode.c", i32 1066, i32 43}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/hpfs/dnode.c", i32 1085, i32 44}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/hpfs/dnode.c", i32 1092, i32 16}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/hpfs/hpfs_fn.h", i32 123, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dnode_end_de._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @dnode_end_de._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/hpfs/hpfs_fn.h", i32 131, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @de_next_de._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @de_next_de._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/hpfs/hpfs_fn.h", i32 108, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @de_down_pointer._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @de_down_pointer._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/hpfs/dnode.c", i32 253, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @hpfs_add_to_dnode._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @hpfs_add_to_dnode._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/hpfs/dnode.c", i32 258, i32 23}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/hpfs/dnode.c", i32 295, i32 3}
!76 = !{ptr @hpfs_add_to_dnode._entry.35, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @hpfs_add_to_dnode._entry_ptr.37, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/hpfs/dnode.c", i32 305, i32 23}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/hpfs/dnode.c", i32 101, i32 4}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @hpfs_pos_ins._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @hpfs_pos_ins._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/hpfs/dnode.c", i32 144, i32 17}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/hpfs/dnode.c", i32 149, i32 18}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/hpfs/dnode.c", i32 154, i32 18}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/hpfs/dnode.c", i32 161, i32 18}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/hpfs/dnode.c", i32 113, i32 4}
!95 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @hpfs_pos_del._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @hpfs_pos_del._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/hpfs/dnode.c", i32 21, i32 2}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @get_pos._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @get_pos._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/hpfs/dnode.c", i32 208, i32 17}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/hpfs/dnode.c", i32 446, i32 49}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/hpfs/dnode.c", i32 451, i32 25}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/hpfs/dnode.c", i32 459, i32 24}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/hpfs/dnode.c", i32 477, i32 24}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/hpfs/dnode.c", i32 483, i32 24}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/hpfs/dnode.c", i32 497, i32 23}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/hpfs/dnode.c", i32 528, i32 47}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/hpfs/dnode.c", i32 538, i32 24}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/hpfs/dnode.c", i32 553, i32 10}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/hpfs/dnode.c", i32 578, i32 23}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/hpfs/dnode.c", i32 599, i32 23}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/hpfs/dnode.c", i32 611, i32 4}
!129 = !{ptr @delete_empty_dnode._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @delete_empty_dnode._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/hpfs/dnode.c", i32 638, i32 24}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/hpfs/dnode.c", i32 652, i32 7}
!135 = !{ptr @delete_empty_dnode._entry.63, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @delete_empty_dnode._entry_ptr.65, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/hpfs/dnode.c", i32 653, i32 7}
!139 = !{ptr @delete_empty_dnode._entry.66, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @delete_empty_dnode._entry_ptr.68, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @delete_empty_dnode._entry.69, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../fs/hpfs/dnode.c", i32 659, i32 6}
!143 = !{ptr @delete_empty_dnode._entry_ptr.70, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/hpfs/dnode.c", i32 660, i32 6}
!146 = !{ptr @delete_empty_dnode._entry.71, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @delete_empty_dnode._entry_ptr.73, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @delete_empty_dnode._entry.74, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../fs/hpfs/dnode.c", i32 674, i32 4}
!150 = !{ptr @delete_empty_dnode._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/hpfs/dnode.c", i32 814, i32 16}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"branch_weights", i32 1, i32 2000}
!163 = !{!"auto-init"}
