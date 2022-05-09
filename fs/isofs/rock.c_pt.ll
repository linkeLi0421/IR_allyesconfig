; ModuleID = '/llk/IR_all_yes/fs/isofs/rock.c_pt.bc'
source_filename = "../fs/isofs/rock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rock_state = type { ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
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
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.72 = type { ptr }
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
%struct.isofs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, %struct.kgid_t, %struct.kuid_t, ptr }
%struct.iso_directory_record = type { [1 x i8], [1 x i8], [8 x i8], [8 x i8], [7 x i8], [1 x i8], [1 x i8], [1 x i8], [4 x i8], [1 x i8], [0 x i8] }
%struct.rock_ridge = type { [2 x i8], i8, i8, %union.anon.73 }
%union.anon.73 = type { %struct.RR_PX_s }
%struct.RR_PX_s = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.stamp = type { [7 x i8] }
%struct.SL_component = type { i8, i8, [0 x i8] }
%struct.page = type { i32, %union.anon.13, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }

@get_rock_ridge_filename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unsupported NM flag settings (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get_rock_ridge_filename\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/isofs/rock.c\00", [16 x i8] zeroinitializer }, align 32
@get_rock_ridge_filename._entry_ptr = internal global ptr @get_rock_ridge_filename._entry, section ".printk_index", align 4
@isofs_symlink_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @rock_ridge_symlink_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rock_check_overflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015rock: directory entry would overflow storage\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rock_check_overflow\00", [44 x i8] zeroinitializer }, align 32
@rock_check_overflow._entry_ptr = internal global ptr @rock_check_overflow._entry, section ".printk_index", align 4
@rock_check_overflow._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015rock: sig=0x%02x, size=%d, remaining=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@rock_check_overflow._entry_ptr.7 = internal global ptr @rock_check_overflow._entry.5, section ".printk_index", align 4
@rock_continue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015rock: corrupted directory entry. extent=%d, offset=%d, size=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rock_continue\00", [18 x i8] zeroinitializer }, align 32
@rock_continue._entry_ptr = internal global ptr @rock_continue._entry, section ".printk_index", align 4
@rock_continue._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to read rock-ridge attributes\0A\00", [58 x i8] zeroinitializer }, align 32
@rock_continue._entry_ptr.12 = internal global ptr @rock_continue._entry.10, section ".printk_index", align 4
@parse_rock_ridge_inode_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017ISO 9660 Extensions: \00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"parse_rock_ridge_inode_internal\00", [32 x i8] zeroinitializer }, align 32
@parse_rock_ridge_inode_internal._entry_ptr = internal global ptr @parse_rock_ridge_inode_internal._entry, section ".printk_index", align 4
@parse_rock_ridge_inode_internal._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%c\00", [27 x i8] zeroinitializer }, align 32
@parse_rock_ridge_inode_internal._entry_ptr.17 = internal global ptr @parse_rock_ridge_inode_internal._entry.15, section ".printk_index", align 4
@parse_rock_ridge_inode_internal._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@parse_rock_ridge_inode_internal._entry_ptr.20 = internal global ptr @parse_rock_ridge_inode_internal._entry.18, section ".printk_index", align 4
@parse_rock_ridge_inode_internal._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Symlink component flag not implemented\0A\00", [56 x i8] zeroinitializer }, align 32
@parse_rock_ridge_inode_internal._entry_ptr.23 = internal global ptr @parse_rock_ridge_inode_internal._entry.21, section ".printk_index", align 4
@parse_rock_ridge_inode_internal._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014Attempt to read inode for relocated directory\0A\00", [47 x i8] zeroinitializer }, align 32
@parse_rock_ridge_inode_internal._entry_ptr.26 = internal global ptr @parse_rock_ridge_inode_internal._entry.24, section ".printk_index", align 4
@parse_rock_ridge_inode_internal._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ISOFS: Recursive directory relocation is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@parse_rock_ridge_inode_internal._entry_ptr.29 = internal global ptr @parse_rock_ridge_inode_internal._entry.27, section ".printk_index", align 4
@parse_rock_ridge_inode_internal._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.14, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ISOFS: Directory relocation points to itself\0A\00", [48 x i8] zeroinitializer }, align 32
@parse_rock_ridge_inode_internal._entry_ptr.32 = internal global ptr @parse_rock_ridge_inode_internal._entry.30, section ".printk_index", align 4
@parse_rock_ridge_inode_internal._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.14, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014isofs: Can't handle ZF block size of 2^%d\0A\00", [51 x i8] zeroinitializer }, align 32
@parse_rock_ridge_inode_internal._entry_ptr.35 = internal global ptr @parse_rock_ridge_inode_internal._entry.33, section ".printk_index", align 4
@parse_rock_ridge_inode_internal._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.14, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014isofs: Unknown ZF compression algorithm: %c%c\0A\00", [47 x i8] zeroinitializer }, align 32
@parse_rock_ridge_inode_internal._entry_ptr.38 = internal global ptr @parse_rock_ridge_inode_internal._entry.36, section ".printk_index", align 4
@rock_ridge_symlink_readpage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to read i-node block\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rock_ridge_symlink_readpage\00", [36 x i8] zeroinitializer }, align 32
@rock_ridge_symlink_readpage._entry_ptr = internal global ptr @rock_ridge_symlink_readpage._entry, section ".printk_index", align 4
@rock_ridge_symlink_readpage._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"symlink spans iso9660 blocks\0A\00", [34 x i8] zeroinitializer }, align 32
@rock_ridge_symlink_readpage._entry_ptr.43 = internal global ptr @rock_ridge_symlink_readpage._entry.41, section ".printk_index", align 4
@get_symlink_chunk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Symlink component flag not implemented (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_symlink_chunk\00", [46 x i8] zeroinitializer }, align 32
@get_symlink_chunk._entry_ptr = internal global ptr @get_symlink_chunk._entry, section ".printk_index", align 4
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 17731, i64 17746, i64 19790, i64 20563, i64 21074]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [14 x i64] [i64 12, i64 32, i64 17731, i64 18004, i64 18010, i64 19523, i64 19536, i64 19539, i64 19790, i64 20048, i64 20563, i64 21061, i64 21074, i64 22608]
@__sancov_gen_cov_switch_values.52 = internal global [12 x i64] [i64 10, i64 16, i64 17731, i64 17746, i64 18004, i64 18010, i64 19523, i64 19539, i64 20048, i64 20563, i64 21061, i64 22608]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 16, i64 17731, i64 19539, i64 20563, i64 21074]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 4, i64 8]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 269, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"isofs_symlink_aops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 806, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 186, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 188, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 97, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 127, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 377, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 381, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 383, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 474, i32 7 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 505, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 510, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 518, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 552, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 577, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 794, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 797, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private constant [19 x i8] c"../fs/isofs/rock.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 638, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 260, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 416, i32 1 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @get_rock_ridge_filename._entry, ptr @get_rock_ridge_filename._entry_ptr, ptr @get_symlink_chunk._entry, ptr @get_symlink_chunk._entry_ptr, ptr @parse_rock_ridge_inode_internal._entry, ptr @parse_rock_ridge_inode_internal._entry.15, ptr @parse_rock_ridge_inode_internal._entry.18, ptr @parse_rock_ridge_inode_internal._entry.21, ptr @parse_rock_ridge_inode_internal._entry.24, ptr @parse_rock_ridge_inode_internal._entry.27, ptr @parse_rock_ridge_inode_internal._entry.30, ptr @parse_rock_ridge_inode_internal._entry.33, ptr @parse_rock_ridge_inode_internal._entry.36, ptr @parse_rock_ridge_inode_internal._entry_ptr, ptr @parse_rock_ridge_inode_internal._entry_ptr.17, ptr @parse_rock_ridge_inode_internal._entry_ptr.20, ptr @parse_rock_ridge_inode_internal._entry_ptr.23, ptr @parse_rock_ridge_inode_internal._entry_ptr.26, ptr @parse_rock_ridge_inode_internal._entry_ptr.29, ptr @parse_rock_ridge_inode_internal._entry_ptr.32, ptr @parse_rock_ridge_inode_internal._entry_ptr.35, ptr @parse_rock_ridge_inode_internal._entry_ptr.38, ptr @rock_check_overflow._entry, ptr @rock_check_overflow._entry.5, ptr @rock_check_overflow._entry_ptr, ptr @rock_check_overflow._entry_ptr.7, ptr @rock_continue._entry, ptr @rock_continue._entry.10, ptr @rock_continue._entry_ptr, ptr @rock_continue._entry_ptr.12, ptr @rock_ridge_symlink_readpage._entry, ptr @rock_ridge_symlink_readpage._entry.41, ptr @rock_ridge_symlink_readpage._entry_ptr, ptr @rock_ridge_symlink_readpage._entry_ptr.43, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @isofs_symlink_aops, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_rock_ridge_filename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_symlink_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rock_check_overflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rock_check_overflow._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rock_continue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rock_continue._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_rock_ridge_inode_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_rock_ridge_inode_internal._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_rock_ridge_inode_internal._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_rock_ridge_inode_internal._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_rock_ridge_inode_internal._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_rock_ridge_inode_internal._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_rock_ridge_inode_internal._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_rock_ridge_inode_internal._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_rock_ridge_inode_internal._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rock_ridge_symlink_readpage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rock_ridge_symlink_readpage._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_symlink_chunk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_rock_ridge_filename(ptr noundef %de, ptr nocapture noundef writeonly %retname, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %rs = alloca %struct.rock_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rs) #8
  %0 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 4
  %4 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 5
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_rock = getelementptr inbounds %struct.isofs_sb_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %s_rock, align 4
  %10 = and i16 %bf.load, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 7
  %12 = ptrtoint ptr %retname to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %retname, align 1
  %13 = call ptr @memset(ptr %rs, i32 0, i32 28)
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %inode, ptr %11, align 4
  %name_len.i = getelementptr inbounds %struct.iso_directory_record, ptr %de, i32 0, i32 9
  %15 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %name_len.i, align 1
  %conv.i = zext i8 %16 to i32
  %add.i = add nuw nsw i32 %conv.i, 33
  %and.i = and i32 %add.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %inc.i = add nuw nsw i32 %conv.i, 34
  %spec.select.i = select i1 %tobool.not.i, i32 %add.i, i32 %inc.i
  %add.ptr.i = getelementptr i8, ptr %de, i32 %spec.select.i
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %0, align 4
  %18 = ptrtoint ptr %de to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %de, align 1
  %conv4.i = zext i8 %19 to i32
  %sub.i = sub nsw i32 %conv4.i, %spec.select.i
  %20 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %1, align 4
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rock_offset.i = getelementptr inbounds %struct.isofs_sb_info, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %s_rock_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_rock_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp12.not.i = icmp eq i32 %27, -1
  br i1 %cmp12.not.i, label %if.end.repeat.preheader_crit_edge, label %if.then14.i

if.end.repeat.preheader_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat.preheader

if.then14.i:                                      ; preds = %if.end
  %sub19.i = sub i32 %20, %27
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub19.i, ptr %1, align 4
  %add.ptr24.i = getelementptr i8, ptr %add.ptr.i, i32 %27
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr24.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i)
  %cmp26.i = icmp slt i32 %sub19.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.then14.i.repeat.preheader_crit_edge

if.then14.i.repeat.preheader_crit_edge:           ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat.preheader

if.then28.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %1, align 4
  br label %repeat.preheader

repeat.preheader:                                 ; preds = %if.then28.i, %if.then14.i.repeat.preheader_crit_edge, %if.end.repeat.preheader_crit_edge
  br label %repeat

repeat:                                           ; preds = %while.end.repeat_crit_edge, %repeat.preheader
  %retnamlen.0 = phi i32 [ %retnamlen.1.lcssa, %while.end.repeat_crit_edge ], [ 0, %repeat.preheader ]
  %truncate.0 = phi i32 [ %truncate.1.lcssa, %while.end.repeat_crit_edge ], [ 0, %repeat.preheader ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp157 = icmp sgt i32 %32, 2
  br i1 %cmp157, label %repeat.while.body_crit_edge, label %repeat.while.end_crit_edge

repeat.while.end_crit_edge:                       ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

repeat.while.body_crit_edge:                      ; preds = %repeat
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %repeat.while.body_crit_edge
  %33 = phi i32 [ %77, %sw.epilog.while.body_crit_edge ], [ %32, %repeat.while.body_crit_edge ]
  %truncate.1159 = phi i32 [ %truncate.2, %sw.epilog.while.body_crit_edge ], [ %truncate.0, %repeat.while.body_crit_edge ]
  %retnamlen.1158 = phi i32 [ %retnamlen.2, %sw.epilog.while.body_crit_edge ], [ %retnamlen.0, %repeat.while.body_crit_edge ]
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %0, align 4
  %len2 = getelementptr inbounds %struct.rock_ridge, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %len2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp3 = icmp ult i8 %37, 3
  br i1 %cmp3, label %while.body.cleanup.sink.split_crit_edge, label %if.end6

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end6:                                          ; preds = %while.body
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %35, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #8
  %conv.i144 = zext i16 %40 to i32
  %call9 = call fastcc i32 @rock_check_overflow(ptr noundef nonnull %rs, i32 noundef %conv.i144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end6
  %41 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %len2, align 1
  %conv14 = zext i8 %42 to i32
  %add.ptr = getelementptr i8, ptr %35, i32 %conv14
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr, ptr %0, align 4
  %sub = sub nsw i32 %33, %conv14
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20 = icmp slt i32 %sub, 0
  br i1 %cmp20, label %if.end12.cleanup.sink.split_crit_edge, label %if.end23

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end12
  %45 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i16 %40, label %if.end23.sw.epilog_crit_edge [
    i16 21074, label %sw.bb
    i16 20563, label %sw.bb29
    i16 17731, label %sw.bb34
    i16 19790, label %sw.bb43
    i16 17746, label %if.end23.cleanup.sink.split_crit_edge
  ]

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end23
  %u = getelementptr inbounds %struct.rock_ridge, ptr %35, i32 0, i32 3
  %46 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %u, align 1
  %48 = and i8 %47, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp25 = icmp eq i8 %48, 0
  br i1 %cmp25, label %sw.bb.cleanup.sink.split_crit_edge, label %sw.bb.sw.epilogthread-pre-split_crit_edge

sw.bb.sw.epilogthread-pre-split_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %if.end23
  %u.i = getelementptr inbounds %struct.rock_ridge, ptr %35, i32 0, i32 3
  %49 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %u.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %50)
  %cmp.not.i = icmp eq i8 %50, -66
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb29.cleanup.sink.split_crit_edge

sw.bb29.cleanup.sink.split_crit_edge:             ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %sw.bb29
  %arrayidx4.i = getelementptr %struct.rock_ridge, ptr %35, i32 0, i32 3, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %52)
  %cmp6.not.i = icmp eq i8 %52, -17
  br i1 %cmp6.not.i, label %check_sp.exit, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

check_sp.exit:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %skip.i = getelementptr inbounds %struct.rock_ridge, ptr %35, i32 0, i32 3, i32 0, i32 0, i32 2
  %53 = ptrtoint ptr %skip.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %skip.i, align 1
  %conv11.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i146 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 33
  %57 = ptrtoint ptr %s_fs_info.i.i146 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i.i146, align 16
  %s_rock_offset.i147 = getelementptr inbounds %struct.isofs_sb_info, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %s_rock_offset.i147 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv11.i, ptr %s_rock_offset.i147, align 4
  br label %sw.epilogthread-pre-split

sw.bb34:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %u35 = getelementptr inbounds %struct.rock_ridge, ptr %35, i32 0, i32 3
  %60 = ptrtoint ptr %u35 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %u35, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #8
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %3, align 4
  %offset = getelementptr inbounds %struct.rock_ridge, ptr %35, i32 0, i32 3, i32 0, i32 1
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %offset, align 1
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #8
  %67 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %4, align 4
  %size = getelementptr inbounds %struct.rock_ridge, ptr %35, i32 0, i32 3, i32 0, i32 2
  %68 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %size, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %2, align 4
  br label %sw.epilogthread-pre-split

sw.bb43:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %truncate.1159)
  %tobool44.not = icmp eq i32 %truncate.1159, 0
  br i1 %tobool44.not, label %if.end46, label %sw.bb43.sw.epilog_crit_edge

sw.bb43.sw.epilog_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end46:                                         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %42)
  %cmp49 = icmp ult i8 %42, 5
  br i1 %cmp49, label %if.end46.sw.epilogthread-pre-split_crit_edge, label %if.end52

if.end46.sw.epilogthread-pre-split_crit_edge:     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.end52:                                         ; preds = %if.end46
  %u53 = getelementptr inbounds %struct.rock_ridge, ptr %35, i32 0, i32 3
  %72 = ptrtoint ptr %u53 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %u53, align 1
  %conv55 = zext i8 %73 to i32
  %and56 = and i32 %conv55, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end52.sw.epilogthread-pre-split_crit_edge

if.end52.sw.epilogthread-pre-split_crit_edge:     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.end59:                                         ; preds = %if.end52
  %and63 = and i32 %conv55, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end70, label %do.end

do.end:                                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv55) #11
  br label %sw.epilogthread-pre-split

if.end70:                                         ; preds = %if.end59
  %sub73 = add nsw i32 %conv14, -5
  %add = add i32 %sub73, %retnamlen.1158
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %add)
  %cmp74 = icmp sgt i32 %add, 253
  br i1 %cmp74, label %if.end70.sw.epilogthread-pre-split_crit_edge, label %if.end77

if.end70.sw.epilogthread-pre-split_crit_edge:     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.end77:                                         ; preds = %if.end70
  %name = getelementptr inbounds %struct.rock_ridge, ptr %35, i32 0, i32 3, i32 0, i32 0, i32 1
  %call80 = tail call ptr @memchr(ptr noundef %name, i32 noundef 0, i32 noundef %sub73) #12
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.end77.if.end88_crit_edge, label %if.then84, !prof !93

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then84:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast = ptrtoint ptr %call80 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %name to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %.pre = add i32 %sub.ptr.sub, %retnamlen.1158
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end77.if.end88_crit_edge
  %add93.pre-phi = phi i32 [ %.pre, %if.then84 ], [ %add, %if.end77.if.end88_crit_edge ]
  %len.0 = phi i32 [ %sub.ptr.sub, %if.then84 ], [ %sub73, %if.end77.if.end88_crit_edge ]
  %add.ptr89 = getelementptr i8, ptr %retname, i32 %retnamlen.1158
  %74 = call ptr @memcpy(ptr %add.ptr89, ptr %name, i32 %len.0)
  %arrayidx94 = getelementptr i8, ptr %retname, i32 %add93.pre-phi
  %75 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx94, align 1
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %if.end88, %if.end70.sw.epilogthread-pre-split_crit_edge, %do.end, %if.end52.sw.epilogthread-pre-split_crit_edge, %if.end46.sw.epilogthread-pre-split_crit_edge, %sw.bb34, %check_sp.exit, %sw.bb.sw.epilogthread-pre-split_crit_edge
  %retnamlen.2.ph = phi i32 [ %retnamlen.1158, %if.end70.sw.epilogthread-pre-split_crit_edge ], [ %retnamlen.1158, %sw.bb.sw.epilogthread-pre-split_crit_edge ], [ %retnamlen.1158, %check_sp.exit ], [ %retnamlen.1158, %sw.bb34 ], [ %add93.pre-phi, %if.end88 ], [ %retnamlen.1158, %do.end ], [ %retnamlen.1158, %if.end52.sw.epilogthread-pre-split_crit_edge ], [ %retnamlen.1158, %if.end46.sw.epilogthread-pre-split_crit_edge ]
  %truncate.2.ph = phi i32 [ 1, %if.end70.sw.epilogthread-pre-split_crit_edge ], [ %truncate.1159, %sw.bb.sw.epilogthread-pre-split_crit_edge ], [ %truncate.1159, %check_sp.exit ], [ %truncate.1159, %sw.bb34 ], [ 0, %if.end88 ], [ 0, %do.end ], [ 0, %if.end52.sw.epilogthread-pre-split_crit_edge ], [ 0, %if.end46.sw.epilogthread-pre-split_crit_edge ]
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr = load i32, ptr %1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %sw.bb43.sw.epilog_crit_edge, %if.end23.sw.epilog_crit_edge
  %77 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %sub, %if.end23.sw.epilog_crit_edge ], [ %sub, %sw.bb43.sw.epilog_crit_edge ]
  %retnamlen.2 = phi i32 [ %retnamlen.2.ph, %sw.epilogthread-pre-split ], [ %retnamlen.1158, %if.end23.sw.epilog_crit_edge ], [ %retnamlen.1158, %sw.bb43.sw.epilog_crit_edge ]
  %truncate.2 = phi i32 [ %truncate.2.ph, %sw.epilogthread-pre-split ], [ %truncate.1159, %if.end23.sw.epilog_crit_edge ], [ 1, %sw.bb43.sw.epilog_crit_edge ]
  %cmp = icmp sgt i32 %77, 2
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %repeat.while.end_crit_edge
  %retnamlen.1.lcssa = phi i32 [ %retnamlen.0, %repeat.while.end_crit_edge ], [ %retnamlen.2, %sw.epilog.while.end_crit_edge ]
  %truncate.1.lcssa = phi i32 [ %truncate.0, %repeat.while.end_crit_edge ], [ %truncate.2, %sw.epilog.while.end_crit_edge ]
  %call96 = call fastcc i32 @rock_continue(ptr noundef nonnull %rs)
  %78 = zext i32 %call96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call96, label %while.end.cleanup.sink.split_crit_edge [
    i32 0, label %while.end.repeat_crit_edge
    i32 1, label %while.end.cleanup_crit_edge
  ]

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end.repeat_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %sw.bb29.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge, %if.end23.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end.i.cleanup.sink.split_crit_edge ], [ 0, %sw.bb29.cleanup.sink.split_crit_edge ], [ -5, %if.end6.cleanup.sink.split_crit_edge ], [ 0, %sw.bb.cleanup.sink.split_crit_edge ], [ 0, %if.end12.cleanup.sink.split_crit_edge ], [ 0, %while.body.cleanup.sink.split_crit_edge ], [ -1, %if.end23.cleanup.sink.split_crit_edge ], [ %call96, %while.end.cleanup.sink.split_crit_edge ]
  %79 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %79)
  %.sink = load ptr, ptr %rs, align 4
  tail call void @kfree(ptr noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %retnamlen.1.lcssa, %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rs) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rock_check_overflow(ptr nocapture noundef readonly %rs, i32 noundef %sig) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sig to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %sig, label %sw.default [
    i32 20563, label %entry.sw.epilog_crit_edge
    i32 17731, label %sw.bb1
    i32 21061, label %sw.bb2
    i32 21074, label %sw.bb3
    i32 22608, label %sw.bb4
    i32 20048, label %sw.bb5
    i32 19539, label %entry.sw.epilog_crit_edge23
    i32 19790, label %sw.bb7
    i32 19523, label %sw.bb8
    i32 19536, label %sw.bb9
    i32 18004, label %sw.bb10
    i32 18010, label %sw.bb11
  ]

entry.sw.epilog_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge23
  %len.0 = phi i32 [ 4, %sw.default ], [ 16, %sw.bb11 ], [ 5, %sw.bb10 ], [ 12, %sw.bb9 ], [ 12, %sw.bb8 ], [ 5, %sw.bb7 ], [ 20, %sw.bb5 ], [ 36, %sw.bb4 ], [ 5, %sw.bb3 ], [ 8, %sw.bb2 ], [ 28, %sw.bb1 ], [ 7, %entry.sw.epilog_crit_edge ], [ 7, %entry.sw.epilog_crit_edge23 ]
  %len12 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2
  %1 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %2)
  %cmp = icmp sgt i32 %len.0, %2
  br i1 %cmp, label %do.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  %3 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len12, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %sig, i32 noundef %len.0, i32 noundef %4) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rock_continue(ptr nocapture noundef %rs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 7
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %4 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rs, align 4
  tail call void @kfree(ptr noundef %5) #8
  %6 = ptrtoint ptr %rs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rs, align 4
  %cont_offset = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 5
  %7 = ptrtoint ptr %cont_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cont_offset, align 4
  %sub = add i32 %shl, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub)
  %cmp = icmp ugt i32 %8, %sub
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %cont_size = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 3
  %9 = ptrtoint ptr %cont_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cont_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %shl)
  %cmp3 = icmp ugt i32 %10, %shl
  %add = add i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl)
  %cmp8 = icmp ugt i32 %add, %shl
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp8
  br i1 %or.cond, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %cont_extent = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 4
  %11 = ptrtoint ptr %cont_extent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cont_extent, align 4
  %cont_size11 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 3
  %13 = ptrtoint ptr %cont_size11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cont_size11, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %12, i32 noundef %8, i32 noundef %14) #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %cont_extent12 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 4
  %15 = ptrtoint ptr %cont_extent12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cont_extent12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end8.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #13
  %17 = ptrtoint ptr %rs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i, ptr %rs, align 4
  %tobool18.not = icmp eq ptr %call9.i, null
  br i1 %tobool18.not, label %if.end8.i.out_crit_edge, label %if.end20

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %if.end8.i
  %cont_loops = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 6
  %18 = ptrtoint ptr %cont_loops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cont_loops, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %cont_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc)
  %cmp21 = icmp sgt i32 %inc, 31
  br i1 %cmp21, label %if.end20.out_crit_edge, label %if.end24

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inode, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %24 = ptrtoint ptr %cont_extent12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cont_extent12, align 4
  %conv27 = sext i32 %25 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 26
  %26 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 3
  %28 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %27, i64 noundef %conv27, i32 noundef %29, i32 noundef 8) #8
  %tobool29.not = icmp eq ptr %call.i, null
  br i1 %tobool29.not, label %do.end42, label %cleanup

do.end42:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %out

cleanup:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rs, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data, align 4
  %34 = ptrtoint ptr %cont_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cont_offset, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 %35
  %36 = ptrtoint ptr %cont_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cont_size, align 4
  %38 = call ptr @memcpy(ptr %31, ptr %add.ptr, i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !94
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !95
  %40 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rs, align 4
  %chr = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1
  %42 = ptrtoint ptr %chr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %chr, align 4
  %43 = ptrtoint ptr %cont_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cont_size, align 4
  %len = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2
  %45 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %len, align 4
  %46 = ptrtoint ptr %cont_extent12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %cont_extent12, align 4
  store i32 0, ptr %cont_size, align 4
  %47 = ptrtoint ptr %cont_offset to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %cont_offset, align 4
  br label %cleanup48

out:                                              ; preds = %do.end42, %if.end20.out_crit_edge, %if.end8.i.out_crit_edge, %if.end.out_crit_edge, %do.end
  %ret.1 = phi i32 [ -5, %do.end ], [ 1, %if.end.out_crit_edge ], [ -5, %if.end20.out_crit_edge ], [ -12, %if.end8.i.out_crit_edge ], [ -5, %do.end42 ]
  %48 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rs, align 4
  tail call void @kfree(ptr noundef %49) #8
  %50 = ptrtoint ptr %rs to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rs, align 4
  br label %cleanup48

cleanup48:                                        ; preds = %out, %cleanup
  %retval.1 = phi i32 [ %ret.1, %out ], [ 0, %cleanup ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parse_rock_ridge_inode(ptr noundef %de, ptr noundef %inode, i32 noundef %relocated) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %relocated)
  %tobool.not = icmp eq i32 %relocated, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %call = tail call fastcc i32 @parse_rock_ridge_inode_internal(ptr noundef %de, ptr noundef %inode, i32 noundef %cond)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_rock_offset = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %s_rock_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_rock_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_rock = getelementptr inbounds %struct.isofs_sb_info, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %s_rock, align 4
  %7 = and i16 %bf.load, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %cmp4 = icmp eq i16 %7, 16384
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %cond, 1
  %call5 = tail call fastcc i32 @parse_rock_ridge_inode_internal(ptr noundef %de, ptr noundef %inode, i32 noundef %or)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %result.0 = phi i32 [ %call5, %if.then ], [ %call, %land.lhs.true.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_rock_ridge_inode_internal(ptr noundef %de, ptr noundef %inode, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %rs = alloca %struct.rock_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rs) #8
  %0 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 4
  %4 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 5
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_rock = getelementptr inbounds %struct.isofs_sb_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %s_rock, align 4
  %10 = and i16 %bf.load, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %entry.cleanup385_crit_edge, label %if.end

entry.cleanup385_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 7
  %12 = call ptr @memset(ptr %rs, i32 0, i32 28)
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %inode, ptr %11, align 4
  %name_len.i = getelementptr inbounds %struct.iso_directory_record, ptr %de, i32 0, i32 9
  %14 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %name_len.i, align 1
  %conv.i = zext i8 %15 to i32
  %add.i = add nuw nsw i32 %conv.i, 33
  %and.i = and i32 %add.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %inc.i = add nuw nsw i32 %conv.i, 34
  %spec.select.i = select i1 %tobool.not.i, i32 %add.i, i32 %inc.i
  %add.ptr.i = getelementptr i8, ptr %de, i32 %spec.select.i
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %0, align 4
  %17 = ptrtoint ptr %de to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %de, align 1
  %conv4.i = zext i8 %18 to i32
  %sub.i = sub nsw i32 %conv4.i, %spec.select.i
  %19 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %1, align 4
  %s_rock_offset.i = getelementptr inbounds %struct.isofs_sb_info, ptr %8, i32 0, i32 5
  %21 = ptrtoint ptr %s_rock_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_rock_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp12.not.i = icmp eq i32 %22, -1
  br i1 %cmp12.not.i, label %if.end.setup_rock_ridge.exit_crit_edge, label %if.then14.i

if.end.setup_rock_ridge.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_rock_ridge.exit

if.then14.i:                                      ; preds = %if.end
  %sub19.i = sub i32 %19, %22
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub19.i, ptr %1, align 4
  %add.ptr24.i = getelementptr i8, ptr %add.ptr.i, i32 %22
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr24.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i)
  %cmp26.i = icmp slt i32 %sub19.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.then14.i.setup_rock_ridge.exit_crit_edge

if.then14.i.setup_rock_ridge.exit_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_rock_ridge.exit

if.then28.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %1, align 4
  br label %setup_rock_ridge.exit

setup_rock_ridge.exit:                            ; preds = %if.then28.i, %if.then14.i.setup_rock_ridge.exit_crit_edge, %if.end.setup_rock_ridge.exit_crit_edge
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %setup_rock_ridge.exit.if.end7_crit_edge, label %if.then2

setup_rock_ridge.exit.if.end7_crit_edge:          ; preds = %setup_rock_ridge.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %setup_rock_ridge.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 14
  store ptr %add.ptr, ptr %0, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %sub = add i32 %29, -14
  %30 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %1, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %setup_rock_ridge.exit.if.end7_crit_edge
  %i_file_format = getelementptr i8, ptr %inode, i32 -20
  %i_format_parm = getelementptr i8, ptr %inode, i32 -19
  %arrayidx351 = getelementptr i8, ptr %inode, i32 -18
  %i_size356 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %and260 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  %add.ptr.i520 = getelementptr i8, ptr %inode, i32 -32
  %i_iget5_offset = getelementptr i8, ptr %inode, i32 -28
  %i_first_extent = getelementptr i8, ptr %inode, i32 -24
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %i_rdev298 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %i_blocks301 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %i_atime302 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %i_ctime304 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_mtime306 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %tv_nsec141 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %tv_nsec159 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  br label %repeat

repeat:                                           ; preds = %while.end375.repeat_crit_edge, %if.end7
  %symlink_len.0 = phi i32 [ 0, %if.end7 ], [ %symlink_len.1.lcssa, %while.end375.repeat_crit_edge ]
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp9562 = icmp sgt i32 %33, 2
  br i1 %cmp9562, label %repeat.while.body_crit_edge, label %repeat.while.end375_crit_edge

repeat.while.end375_crit_edge:                    ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end375

repeat.while.body_crit_edge:                      ; preds = %repeat
  br label %while.body

while.body:                                       ; preds = %sw.epilog374.while.body_crit_edge, %repeat.while.body_crit_edge
  %34 = phi i32 [ %230, %sw.epilog374.while.body_crit_edge ], [ %33, %repeat.while.body_crit_edge ]
  %symlink_len.1563 = phi i32 [ %symlink_len.2, %sw.epilog374.while.body_crit_edge ], [ %symlink_len.0, %repeat.while.body_crit_edge ]
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %len11 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %len11 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %len11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp12 = icmp ult i8 %38, 3
  br i1 %cmp12, label %while.body.out_crit_edge, label %if.end15

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %while.body
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %36, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #8
  %conv.i512 = zext i16 %41 to i32
  %call18 = call fastcc i32 @rock_check_overflow(ptr noundef nonnull %rs, i32 noundef %conv.i512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21:                                         ; preds = %if.end15
  %42 = ptrtoint ptr %len11 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %len11, align 1
  %conv23 = zext i8 %43 to i32
  %add.ptr25 = getelementptr i8, ptr %36, i32 %conv23
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr25, ptr %0, align 4
  %sub29 = sub nsw i32 %34, %conv23
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub29, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp31 = icmp slt i32 %sub29, 0
  br i1 %cmp31, label %if.end21.out_crit_edge, label %if.end34

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end34:                                         ; preds = %if.end21
  %46 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %41, label %if.end34.sw.epilog374_crit_edge [
    i16 20563, label %sw.bb
    i16 17731, label %sw.bb39
    i16 21061, label %sw.bb47
    i16 22608, label %sw.bb79
    i16 20048, label %sw.bb93
    i16 18004, label %sw.bb110
    i16 19539, label %sw.bb180
    i16 17746, label %do.end256
    i16 19523, label %sw.bb259
    i16 18010, label %sw.bb308
  ]

if.end34.sw.epilog374_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog374

sw.bb:                                            ; preds = %if.end34
  %u.i = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3
  %47 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %u.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %48)
  %cmp.not.i = icmp eq i8 %48, -66
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %sw.bb
  %arrayidx4.i = getelementptr %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %50)
  %cmp6.not.i = icmp eq i8 %50, -17
  br i1 %cmp6.not.i, label %check_sp.exit, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

check_sp.exit:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %skip.i = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 2
  %51 = ptrtoint ptr %skip.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %skip.i, align 1
  %conv11.i = zext i8 %52 to i32
  %53 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i514 = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 33
  %55 = ptrtoint ptr %s_fs_info.i.i514 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i.i514, align 16
  %s_rock_offset.i515 = getelementptr inbounds %struct.isofs_sb_info, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %s_rock_offset.i515 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv11.i, ptr %s_rock_offset.i515, align 4
  br label %sw.epilog374thread-pre-split

sw.bb39:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %u = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3
  %58 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %u, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %3, align 4
  %offset = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 1
  %62 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %offset, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %4, align 4
  %size = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 2
  %66 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %size, align 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  %69 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %2, align 4
  br label %sw.epilog374thread-pre-split

sw.bb47:                                          ; preds = %if.end34
  %u48 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3
  %70 = ptrtoint ptr %u48 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %u48, align 1
  %conv49 = zext i8 %71 to i32
  %add = add nuw nsw i32 %conv49, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv23)
  %cmp52 = icmp ugt i32 %add, %conv23
  br i1 %cmp52, label %sw.bb47.out_crit_edge, label %if.end55

sw.bb47.out_crit_edge:                            ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end55:                                         ; preds = %sw.bb47
  %72 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i516 = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 33
  %74 = ptrtoint ptr %s_fs_info.i516 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_fs_info.i516, align 16
  %s_rock58 = getelementptr inbounds %struct.isofs_sb_info, ptr %75, i32 0, i32 11
  %76 = ptrtoint ptr %s_rock58 to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load59 = load i16, ptr %s_rock58, align 4
  %bf.clear60 = and i16 %bf.load59, -24577
  %bf.set = or i16 %bf.clear60, 8192
  store i16 %bf.set, ptr %s_rock58, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  %77 = ptrtoint ptr %u48 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %u48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp65560.not = icmp eq i8 %78, 0
  br i1 %cmp65560.not, label %if.end55.for.end_crit_edge, label %do.end69.lr.ph

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end69.lr.ph:                                   ; preds = %if.end55
  %data = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 4
  br label %do.end69

do.end69:                                         ; preds = %do.end69.do.end69_crit_edge, %do.end69.lr.ph
  %p.0561 = phi i32 [ 0, %do.end69.lr.ph ], [ %inc, %do.end69.do.end69_crit_edge ]
  %arrayidx = getelementptr [0 x i8], ptr %data, i32 0, i32 %p.0561
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx, align 1
  %conv72 = zext i8 %80 to i32
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv72) #11
  %inc = add nuw nsw i32 %p.0561, 1
  %81 = ptrtoint ptr %u48 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %u48, align 1
  %conv64 = zext i8 %82 to i32
  %cmp65 = icmp ult i32 %inc, %conv64
  br i1 %cmp65, label %do.end69.do.end69_crit_edge, label %do.end69.for.end_crit_edge

do.end69.for.end_crit_edge:                       ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end69.do.end69_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

for.end:                                          ; preds = %do.end69.for.end_crit_edge, %if.end55.for.end_crit_edge
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  br label %sw.epilog374thread-pre-split

sw.bb79:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %u80 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3
  %83 = ptrtoint ptr %u80 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %u80, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #8
  %conv83 = trunc i32 %85 to i16
  %86 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv83, ptr %inode, align 8
  %n_links = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 1
  %87 = ptrtoint ptr %n_links to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %n_links, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %89) #8
  %uid = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 2
  %90 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %uid, align 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  %93 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 53
  %95 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %96, i32 noundef %92) #8
  %97 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call1.i, ptr %i_uid, align 4
  %gid = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 3
  %98 = ptrtoint ptr %gid to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %gid, align 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #8
  %101 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i518 = getelementptr inbounds %struct.super_block, ptr %102, i32 0, i32 53
  %103 = ptrtoint ptr %s_user_ns.i.i518 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_user_ns.i.i518, align 8
  %call1.i519 = tail call i32 @make_kgid(ptr noundef %104, i32 noundef %100) #8
  %105 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call1.i519, ptr %i_gid, align 8
  br label %sw.epilog374thread-pre-split

sw.bb93:                                          ; preds = %if.end34
  %u94 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3
  %106 = ptrtoint ptr %u94 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %u94, align 1
  %dev_low = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 1
  %108 = ptrtoint ptr %dev_low to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %dev_low, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %110)
  %tobool101.not = icmp ugt i32 %110, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp102 = icmp eq i32 %107, 0
  %or.cond = select i1 %tobool101.not, i1 %cmp102, i1 false
  br i1 %or.cond, label %if.then104, label %if.else

if.then104:                                       ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  %111 = shl i32 %110, 12
  %shl = and i32 %111, -1048576
  %and105 = and i32 %110, 255
  %or = or i32 %shl, %and105
  %112 = ptrtoint ptr %i_rdev298 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or, ptr %i_rdev298, align 8
  br label %sw.epilog374thread-pre-split

if.else:                                          ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  %113 = tail call i32 @llvm.bswap.i32(i32 %107) #8
  %shl106 = shl i32 %113, 20
  %or107 = or i32 %shl106, %110
  %114 = ptrtoint ptr %i_rdev298 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or107, ptr %i_rdev298, align 8
  br label %sw.epilog374thread-pre-split

sw.bb110:                                         ; preds = %if.end34
  %u111 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3
  %115 = ptrtoint ptr %u111 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %u111, align 1
  %117 = and i8 %116, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool115.not = icmp eq i8 %117, 0
  br i1 %tobool115.not, label %sw.bb110.if.end124_crit_edge, label %if.then116

sw.bb110.if.end124_crit_edge:                     ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then116:                                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #10
  %times = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 1
  %call121 = tail call i32 @iso_date(ptr noundef %times, i32 noundef 0) #8
  %conv122 = sext i32 %call121 to i64
  %118 = ptrtoint ptr %i_ctime304 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %conv122, ptr %i_ctime304, align 8
  %119 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %tv_nsec, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then116, %sw.bb110.if.end124_crit_edge
  %cnt.0 = phi i32 [ 1, %if.then116 ], [ 0, %sw.bb110.if.end124_crit_edge ]
  %120 = ptrtoint ptr %u111 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %u111, align 1
  %122 = and i8 %121, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool129.not = icmp eq i8 %122, 0
  br i1 %tobool129.not, label %if.end124.if.end142_crit_edge, label %if.then130

if.end124.if.end142_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

if.then130:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  %times132 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 1
  %inc133 = add nuw nsw i32 %cnt.0, 1
  %arrayidx134 = getelementptr [0 x %struct.stamp], ptr %times132, i32 0, i32 %cnt.0
  %call137 = tail call i32 @iso_date(ptr noundef %arrayidx134, i32 noundef 0) #8
  %conv138 = sext i32 %call137 to i64
  %123 = ptrtoint ptr %i_mtime306 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %conv138, ptr %i_mtime306, align 8
  %124 = ptrtoint ptr %tv_nsec141 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %tv_nsec141, align 8
  br label %if.end142

if.end142:                                        ; preds = %if.then130, %if.end124.if.end142_crit_edge
  %cnt.1 = phi i32 [ %inc133, %if.then130 ], [ %cnt.0, %if.end124.if.end142_crit_edge ]
  %125 = ptrtoint ptr %u111 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %u111, align 1
  %127 = and i8 %126, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool147.not = icmp eq i8 %127, 0
  br i1 %tobool147.not, label %if.end142.if.end160_crit_edge, label %if.then148

if.end142.if.end160_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.then148:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %times150 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 1
  %inc151 = add nuw nsw i32 %cnt.1, 1
  %arrayidx152 = getelementptr [0 x %struct.stamp], ptr %times150, i32 0, i32 %cnt.1
  %call155 = tail call i32 @iso_date(ptr noundef %arrayidx152, i32 noundef 0) #8
  %conv156 = sext i32 %call155 to i64
  %128 = ptrtoint ptr %i_atime302 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv156, ptr %i_atime302, align 8
  %129 = ptrtoint ptr %tv_nsec159 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %tv_nsec159, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.then148, %if.end142.if.end160_crit_edge
  %cnt.2 = phi i32 [ %inc151, %if.then148 ], [ %cnt.1, %if.end142.if.end160_crit_edge ]
  %130 = ptrtoint ptr %u111 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %u111, align 1
  %132 = and i8 %131, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool165.not = icmp eq i8 %132, 0
  br i1 %tobool165.not, label %if.end160.sw.epilog374thread-pre-split_crit_edge, label %if.then166

if.end160.sw.epilog374thread-pre-split_crit_edge: ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog374thread-pre-split

if.then166:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  %times168 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx170 = getelementptr [0 x %struct.stamp], ptr %times168, i32 0, i32 %cnt.2
  %call173 = tail call i32 @iso_date(ptr noundef %arrayidx170, i32 noundef 0) #8
  %conv174 = sext i32 %call173 to i64
  %133 = ptrtoint ptr %i_ctime304 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %conv174, ptr %i_ctime304, align 8
  %134 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %tv_nsec, align 8
  br label %sw.epilog374thread-pre-split

sw.bb180:                                         ; preds = %if.end34
  %u184 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3
  %conv185 = sext i32 %symlink_len.1563 to i64
  %135 = ptrtoint ptr %i_size356 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv185, ptr %i_size356, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %43)
  %cmp187555 = icmp ugt i8 %43, 6
  br i1 %cmp187555, label %while.body189.preheader, label %sw.bb180.while.end_crit_edge

sw.bb180.while.end_crit_edge:                     ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body189.preheader:                          ; preds = %sw.bb180
  %link = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 1
  %sub183 = add nsw i32 %conv23, -5
  br label %while.body189

while.body189:                                    ; preds = %if.end250, %while.body189.preheader
  %slp.0557 = phi ptr [ %add.ptr219543547, %if.end250 ], [ %link, %while.body189.preheader ]
  %slen.0556 = phi i32 [ %sub215542548, %if.end250 ], [ %sub183, %while.body189.preheader ]
  %136 = ptrtoint ptr %slp.0557 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %slp.0557, align 1
  %138 = and i8 %137, -2
  %139 = zext i8 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %138, label %do.end209 [
    i8 0, label %sw.bb193
    i8 2, label %sw.bb198
    i8 4, label %sw.bb201
    i8 8, label %sw.epilog.thread
  ]

sw.bb193:                                         ; preds = %while.body189
  call void @__sanitizer_cov_trace_pc() #10
  %len194 = getelementptr inbounds %struct.SL_component, ptr %slp.0557, i32 0, i32 1
  %140 = ptrtoint ptr %len194 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %len194, align 1
  %conv195 = zext i8 %141 to i64
  %142 = ptrtoint ptr %i_size356 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %i_size356, align 8
  %add197 = add i64 %143, %conv195
  store i64 %add197, ptr %i_size356, align 8
  br label %sw.epilog

sw.bb198:                                         ; preds = %while.body189
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %i_size356 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %i_size356, align 8
  %add200 = add i64 %145, 1
  store i64 %add200, ptr %i_size356, align 8
  br label %sw.epilog

sw.bb201:                                         ; preds = %while.body189
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %i_size356 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %i_size356, align 8
  %add203 = add i64 %147, 2
  store i64 %add203, ptr %i_size356, align 8
  br label %sw.epilog

do.end209:                                        ; preds = %while.body189
  call void @__sanitizer_cov_trace_pc() #10
  %call211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end209, %sw.bb201, %sw.bb198, %sw.bb193
  %len212 = getelementptr inbounds %struct.SL_component, ptr %slp.0557, i32 0, i32 1
  %148 = ptrtoint ptr %len212 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %len212, align 1
  %conv213 = zext i8 %149 to i32
  %add214.neg = add nsw i32 %slen.0556, -2
  %sub215 = sub nsw i32 %add214.neg, %conv213
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub215)
  %cmp220 = icmp slt i32 %sub215, 2
  br i1 %cmp220, label %sw.epilog.if.then222_crit_edge, label %land.lhs.true241

sw.epilog.if.then222_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then222

sw.epilog.thread:                                 ; preds = %while.body189
  %150 = ptrtoint ptr %i_size356 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %i_size356, align 8
  %add206 = add i64 %151, 1
  store i64 %add206, ptr %i_size356, align 8
  %len212534 = getelementptr inbounds %struct.SL_component, ptr %slp.0557, i32 0, i32 1
  %152 = ptrtoint ptr %len212534 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %len212534, align 1
  %conv213535 = zext i8 %153 to i32
  %add214536.neg = add nsw i32 %slen.0556, -2
  %sub215537 = sub nsw i32 %add214536.neg, %conv213535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub215537)
  %cmp220540 = icmp slt i32 %sub215537, 2
  br i1 %cmp220540, label %sw.epilog.thread.if.then222_crit_edge, label %sw.epilog.thread.if.end250_crit_edge

sw.epilog.thread.if.end250_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

sw.epilog.thread.if.then222_crit_edge:            ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then222

if.then222:                                       ; preds = %sw.epilog.thread.if.then222_crit_edge, %sw.epilog.if.then222_crit_edge
  %154 = ptrtoint ptr %u184 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %u184, align 1
  %156 = and i8 %155, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %cmp227.not = icmp eq i8 %156, 0
  br i1 %cmp227.not, label %if.then222.while.end_crit_edge, label %land.lhs.true229

if.then222.while.end_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.lhs.true229:                                 ; preds = %if.then222
  %157 = ptrtoint ptr %slp.0557 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %slp.0557, align 1
  %159 = and i8 %158, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %cmp233 = icmp eq i8 %159, 0
  br i1 %cmp233, label %if.then235, label %land.lhs.true229.while.end_crit_edge

land.lhs.true229.while.end_crit_edge:             ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then235:                                       ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %i_size356 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %i_size356, align 8
  %add237 = add i64 %161, 1
  store i64 %add237, ptr %i_size356, align 8
  br label %while.end

land.lhs.true241:                                 ; preds = %sw.epilog
  %162 = ptrtoint ptr %slp.0557 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %slp.0557, align 1
  %164 = and i8 %163, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %cmp245 = icmp eq i8 %164, 0
  br i1 %cmp245, label %if.then247, label %land.lhs.true241.if.end250_crit_edge

land.lhs.true241.if.end250_crit_edge:             ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

if.then247:                                       ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %i_size356 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %i_size356, align 8
  %add249 = add i64 %166, 1
  store i64 %add249, ptr %i_size356, align 8
  br label %if.end250

if.end250:                                        ; preds = %if.then247, %land.lhs.true241.if.end250_crit_edge, %sw.epilog.thread.if.end250_crit_edge
  %sub215542548 = phi i32 [ %sub215, %if.then247 ], [ %sub215, %land.lhs.true241.if.end250_crit_edge ], [ %sub215537, %sw.epilog.thread.if.end250_crit_edge ]
  %conv213.pn = phi i32 [ %conv213, %if.then247 ], [ %conv213, %land.lhs.true241.if.end250_crit_edge ], [ %conv213535, %sw.epilog.thread.if.end250_crit_edge ]
  %add.ptr218.pn = getelementptr i8, ptr %slp.0557, i32 2
  %add.ptr219543547 = getelementptr i8, ptr %add.ptr218.pn, i32 %conv213.pn
  br label %while.body189

while.end:                                        ; preds = %if.then235, %land.lhs.true229.while.end_crit_edge, %if.then222.while.end_crit_edge, %sw.bb180.while.end_crit_edge
  %167 = ptrtoint ptr %i_size356 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %i_size356, align 8
  %conv252 = trunc i64 %168 to i32
  br label %sw.epilog374thread-pre-split

do.end256:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %call258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  br label %out

sw.bb259:                                         ; preds = %if.end34
  br i1 %tobool261.not, label %if.end268, label %do.end265

do.end265:                                        ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #10
  %call267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %out

if.end268:                                        ; preds = %sw.bb259
  %u269 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3
  %169 = ptrtoint ptr %u269 to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %u269, align 1
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #8
  %172 = ptrtoint ptr %add.ptr.i520 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i520, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %173)
  %cmp273 = icmp eq i32 %171, %173
  br i1 %cmp273, label %land.lhs.true275, label %if.end268.if.end285_crit_edge

if.end268.if.end285_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end285

land.lhs.true275:                                 ; preds = %if.end268
  %174 = ptrtoint ptr %i_iget5_offset to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %i_iget5_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp277 = icmp eq i32 %175, 0
  br i1 %cmp277, label %do.end282, label %land.lhs.true275.if.end285_crit_edge

land.lhs.true275.if.end285_crit_edge:             ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end285

do.end282:                                        ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #10
  %call284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  br label %out

if.end285:                                        ; preds = %land.lhs.true275.if.end285_crit_edge, %if.end268.if.end285_crit_edge
  %176 = ptrtoint ptr %i_first_extent to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %171, ptr %i_first_extent, align 8
  %177 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i_sb, align 4
  %call.i = tail call ptr @__isofs_iget(ptr noundef %178, i32 noundef %171, i32 noundef 0, i32 noundef 1) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then290, label %if.end292

if.then290:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %call.i to i32
  br label %out

if.end292:                                        ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %call.i, align 8
  %182 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %inode, align 8
  %183 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 12
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %185) #8
  %i_uid295 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %186 = ptrtoint ptr %i_uid295 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %i_uid295, align 4
  %188 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %i_uid, align 4
  %i_gid296 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %189 = ptrtoint ptr %i_gid296 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %i_gid296, align 8
  %191 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %i_gid, align 8
  %i_rdev297 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 13
  %192 = ptrtoint ptr %i_rdev297 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %i_rdev297, align 8
  %194 = ptrtoint ptr %i_rdev298 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %i_rdev298, align 8
  %i_size299 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 14
  %195 = ptrtoint ptr %i_size299 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %i_size299, align 8
  %197 = ptrtoint ptr %i_size356 to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %i_size356, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 22
  %198 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %i_blocks, align 8
  %200 = ptrtoint ptr %i_blocks301 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %199, ptr %i_blocks301, align 8
  %i_atime303 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %201 = call ptr @memcpy(ptr %i_atime302, ptr %i_atime303, i32 16)
  %i_ctime305 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  %202 = call ptr @memcpy(ptr %i_ctime304, ptr %i_ctime305, i32 16)
  %i_mtime307 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %203 = call ptr @memcpy(ptr %i_mtime306, ptr %i_mtime307, i32 16)
  tail call void @iput(ptr noundef %call.i) #8
  br label %sw.epilog374thread-pre-split

sw.bb308:                                         ; preds = %if.end34
  %204 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i523 = getelementptr inbounds %struct.super_block, ptr %205, i32 0, i32 33
  %206 = ptrtoint ptr %s_fs_info.i523 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %s_fs_info.i523, align 16
  %s_nocompress = getelementptr inbounds %struct.isofs_sb_info, ptr %207, i32 0, i32 11
  %208 = ptrtoint ptr %s_nocompress to i32
  call void @__asan_load2_noabort(i32 %208)
  %bf.load311 = load i16, ptr %s_nocompress, align 4
  %209 = and i16 %bf.load311, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %209)
  %tobool315.not = icmp eq i16 %209, 0
  br i1 %tobool315.not, label %if.end317, label %sw.bb308.sw.epilog374thread-pre-split_crit_edge

sw.bb308.sw.epilog374thread-pre-split_crit_edge:  ; preds = %sw.bb308
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog374thread-pre-split

if.end317:                                        ; preds = %sw.bb308
  %u318 = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3
  %210 = ptrtoint ptr %u318 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 2)
  %211 = load i16, ptr %u318, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 28794, i16 %211)
  %cmp321 = icmp eq i16 %211, 28794
  br i1 %cmp321, label %if.then323, label %do.end361

if.then323:                                       ; preds = %if.end317
  %arrayidx325 = getelementptr %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 3
  %212 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx325, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %213)
  %cmp327 = icmp ugt i8 %213, 17
  br i1 %cmp327, label %do.end332, label %if.else335

do.end332:                                        ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i525 = zext i8 %213 to i32
  %call334 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv.i525) #11
  br label %sw.epilog374thread-pre-split

if.else335:                                       ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #10
  %parms = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 2
  %214 = ptrtoint ptr %i_file_format to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 2, ptr %i_file_format, align 4
  %215 = ptrtoint ptr %parms to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %parms, align 1
  %217 = ptrtoint ptr %i_format_parm to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %i_format_parm, align 1
  %218 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx325, align 1
  %220 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %arrayidx351, align 1
  %real_size = getelementptr inbounds %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 4
  %221 = ptrtoint ptr %real_size to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load i32, ptr %real_size, align 1
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #8
  %conv355 = zext i32 %223 to i64
  %224 = ptrtoint ptr %i_size356 to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %conv355, ptr %i_size356, align 8
  br label %sw.epilog374thread-pre-split

do.end361:                                        ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #10
  %225 = ptrtoint ptr %u318 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %u318, align 1
  %conv366 = zext i8 %226 to i32
  %arrayidx369 = getelementptr %struct.rock_ridge, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 1
  %227 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx369, align 1
  %conv370 = zext i8 %228 to i32
  %call371 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv366, i32 noundef %conv370) #11
  br label %sw.epilog374thread-pre-split

sw.epilog374thread-pre-split:                     ; preds = %do.end361, %if.else335, %do.end332, %sw.bb308.sw.epilog374thread-pre-split_crit_edge, %if.end292, %while.end, %if.then166, %if.end160.sw.epilog374thread-pre-split_crit_edge, %if.else, %if.then104, %sw.bb79, %for.end, %sw.bb39, %check_sp.exit
  %symlink_len.2.ph = phi i32 [ %symlink_len.1563, %sw.bb308.sw.epilog374thread-pre-split_crit_edge ], [ %symlink_len.1563, %do.end332 ], [ %symlink_len.1563, %if.else335 ], [ %symlink_len.1563, %do.end361 ], [ %symlink_len.1563, %if.then104 ], [ %symlink_len.1563, %if.else ], [ %symlink_len.1563, %check_sp.exit ], [ %symlink_len.1563, %sw.bb39 ], [ %symlink_len.1563, %for.end ], [ %symlink_len.1563, %sw.bb79 ], [ %symlink_len.1563, %if.end160.sw.epilog374thread-pre-split_crit_edge ], [ %symlink_len.1563, %if.then166 ], [ %conv252, %while.end ], [ %symlink_len.1563, %if.end292 ]
  %229 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %.pr = load i32, ptr %1, align 4
  br label %sw.epilog374

sw.epilog374:                                     ; preds = %sw.epilog374thread-pre-split, %if.end34.sw.epilog374_crit_edge
  %230 = phi i32 [ %.pr, %sw.epilog374thread-pre-split ], [ %sub29, %if.end34.sw.epilog374_crit_edge ]
  %symlink_len.2 = phi i32 [ %symlink_len.2.ph, %sw.epilog374thread-pre-split ], [ %symlink_len.1563, %if.end34.sw.epilog374_crit_edge ]
  %cmp9 = icmp sgt i32 %230, 2
  br i1 %cmp9, label %sw.epilog374.while.body_crit_edge, label %sw.epilog374.while.end375_crit_edge

sw.epilog374.while.end375_crit_edge:              ; preds = %sw.epilog374
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end375

sw.epilog374.while.body_crit_edge:                ; preds = %sw.epilog374
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end375:                                     ; preds = %sw.epilog374.while.end375_crit_edge, %repeat.while.end375_crit_edge
  %symlink_len.1.lcssa = phi i32 [ %symlink_len.0, %repeat.while.end375_crit_edge ], [ %symlink_len.2, %sw.epilog374.while.end375_crit_edge ]
  %call376 = call fastcc i32 @rock_continue(ptr noundef nonnull %rs)
  %cmp377 = icmp eq i32 %call376, 0
  br i1 %cmp377, label %while.end375.repeat_crit_edge, label %if.end380

while.end375.repeat_crit_edge:                    ; preds = %while.end375
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat

if.end380:                                        ; preds = %while.end375
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call376)
  %cmp381 = icmp eq i32 %call376, 1
  %spec.store.select = select i1 %cmp381, i32 0, i32 %call376
  br label %out

out:                                              ; preds = %if.end380, %if.then290, %do.end282, %do.end265, %do.end256, %sw.bb47.out_crit_edge, %if.end.i.out_crit_edge, %sw.bb.out_crit_edge, %if.end21.out_crit_edge, %if.end15.out_crit_edge, %while.body.out_crit_edge
  %ret.1 = phi i32 [ %179, %if.then290 ], [ 0, %do.end256 ], [ %spec.store.select, %if.end380 ], [ -5, %do.end282 ], [ -5, %do.end265 ], [ 0, %if.end.i.out_crit_edge ], [ 0, %sw.bb.out_crit_edge ], [ -5, %if.end15.out_crit_edge ], [ 0, %sw.bb47.out_crit_edge ], [ 0, %if.end21.out_crit_edge ], [ 0, %while.body.out_crit_edge ]
  %231 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rs, align 4
  tail call void @kfree(ptr noundef %232) #8
  br label %cleanup385

cleanup385:                                       ; preds = %out, %entry.cleanup385_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %entry.cleanup385_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rs) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rock_ridge_symlink_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  %rs = alloca %struct.rock_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @page_address(ptr noundef %page) #8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rs) #8
  %12 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 1
  %13 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 2
  %14 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 3
  %15 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 4
  %16 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 5
  %s_rock = getelementptr inbounds %struct.isofs_sb_info, ptr %7, i32 0, i32 11
  %17 = ptrtoint ptr %s_rock to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %s_rock, align 4
  %18 = and i16 %bf.load, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %entry
  %19 = getelementptr inbounds %struct.rock_state, ptr %rs, i32 0, i32 7
  %add.ptr.i = getelementptr i8, ptr %3, i32 -32
  %20 = call ptr @memset(ptr %rs, i32 0, i32 28)
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %19, align 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 8
  %conv = zext i32 %23 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 26
  %24 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call ptr @__bread_gfp(ptr noundef %25, i64 noundef %conv, i32 noundef %11, i32 noundef 8) #8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %fail.thread, label %if.end8

if.end8:                                          ; preds = %if.end
  %i_iget5_offset = getelementptr i8, ptr %3, i32 -28
  %26 = ptrtoint ptr %i_iget5_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_iget5_offset, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %27
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr, align 1
  %conv9 = zext i8 %31 to i32
  %add = add i32 %27, %conv9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp = icmp ugt i32 %add, %11
  br i1 %cmp, label %fail.thread159, label %if.end12

if.end12:                                         ; preds = %if.end8
  %name_len.i = getelementptr inbounds %struct.iso_directory_record, ptr %add.ptr, i32 0, i32 9
  %32 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %name_len.i, align 1
  %conv.i = zext i8 %33 to i32
  %add.i = add nuw nsw i32 %conv.i, 33
  %and.i = and i32 %add.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i131 = icmp eq i32 %and.i, 0
  %inc.i = add nuw nsw i32 %conv.i, 34
  %spec.select.i = select i1 %tobool.not.i131, i32 %add.i, i32 %inc.i
  %add.ptr.i132 = getelementptr i8, ptr %add.ptr, i32 %spec.select.i
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i132, ptr %12, align 4
  %sub.i = sub nsw i32 %conv9, %spec.select.i
  %35 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #8
  %36 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %13, align 4
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rock_offset.i = getelementptr inbounds %struct.isofs_sb_info, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %s_rock_offset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_rock_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp12.not.i = icmp eq i32 %42, -1
  br i1 %cmp12.not.i, label %if.end12.setup_rock_ridge.exit_crit_edge, label %if.then14.i

if.end12.setup_rock_ridge.exit_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_rock_ridge.exit

if.then14.i:                                      ; preds = %if.end12
  %sub19.i = sub i32 %35, %42
  %43 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub19.i, ptr %13, align 4
  %add.ptr24.i = getelementptr i8, ptr %add.ptr.i132, i32 %42
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr24.i, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i)
  %cmp26.i = icmp slt i32 %sub19.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.then14.i.setup_rock_ridge.exit_crit_edge

if.then14.i.setup_rock_ridge.exit_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_rock_ridge.exit

if.then28.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %13, align 4
  br label %setup_rock_ridge.exit

setup_rock_ridge.exit:                            ; preds = %if.then28.i, %if.then14.i.setup_rock_ridge.exit_crit_edge, %if.end12.setup_rock_ridge.exit_crit_edge
  %add.ptr50 = getelementptr i8, ptr %call2, i32 4095
  %sub.ptr.lhs.cast17.i = ptrtoint ptr %add.ptr50 to i32
  br label %repeat

repeat:                                           ; preds = %while.end.repeat_crit_edge, %setup_rock_ridge.exit
  %rpnt.0 = phi ptr [ %call2, %setup_rock_ridge.exit ], [ %rpnt.1.lcssa, %while.end.repeat_crit_edge ]
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp13165 = icmp sgt i32 %47, 2
  br i1 %cmp13165, label %repeat.while.body_crit_edge, label %repeat.while.end_crit_edge

repeat.while.end_crit_edge:                       ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

repeat.while.body_crit_edge:                      ; preds = %repeat
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %repeat.while.body_crit_edge
  %48 = phi i32 [ %115, %sw.epilog.while.body_crit_edge ], [ %47, %repeat.while.body_crit_edge ]
  %rpnt.1166 = phi ptr [ %rpnt.2, %sw.epilog.while.body_crit_edge ], [ %rpnt.0, %repeat.while.body_crit_edge ]
  %49 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %12, align 4
  %len15 = getelementptr inbounds %struct.rock_ridge, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %len15 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %len15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp17 = icmp ult i8 %52, 3
  br i1 %cmp17, label %while.body.out_crit_edge, label %if.end20

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %while.body
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %50, align 1
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #8
  %conv.i133 = zext i16 %55 to i32
  %call23 = call fastcc i32 @rock_check_overflow(ptr noundef nonnull %rs, i32 noundef %conv.i133)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end26:                                         ; preds = %if.end20
  %56 = ptrtoint ptr %len15 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %len15, align 1
  %conv28 = zext i8 %57 to i32
  %add.ptr30 = getelementptr i8, ptr %50, i32 %conv28
  %58 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr30, ptr %12, align 4
  %sub = sub nsw i32 %48, %conv28
  %59 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp35 = icmp slt i32 %sub, 0
  br i1 %cmp35, label %if.end26.out_crit_edge, label %if.end38

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end38:                                         ; preds = %if.end26
  %60 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %55, label %if.end38.sw.epilog_crit_edge [
    i16 21074, label %sw.bb
    i16 20563, label %sw.bb44
    i16 19539, label %sw.bb49
    i16 17731, label %sw.bb56
  ]

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end38
  %u = getelementptr inbounds %struct.rock_ridge, ptr %50, i32 0, i32 3
  %61 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %u, align 1
  %63 = and i8 %62, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp40 = icmp eq i8 %63, 0
  br i1 %cmp40, label %sw.bb.out_crit_edge, label %sw.bb.sw.epilogthread-pre-split_crit_edge

sw.bb.sw.epilogthread-pre-split_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb44:                                          ; preds = %if.end38
  %u.i = getelementptr inbounds %struct.rock_ridge, ptr %50, i32 0, i32 3
  %64 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %u.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %65)
  %cmp.not.i = icmp eq i8 %65, -66
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb44.out_crit_edge

sw.bb44.out_crit_edge:                            ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %sw.bb44
  %arrayidx4.i = getelementptr %struct.rock_ridge, ptr %50, i32 0, i32 3, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %67)
  %cmp6.not.i = icmp eq i8 %67, -17
  br i1 %cmp6.not.i, label %check_sp.exit, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

check_sp.exit:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %skip.i = getelementptr inbounds %struct.rock_ridge, ptr %50, i32 0, i32 3, i32 0, i32 0, i32 2
  %68 = ptrtoint ptr %skip.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %skip.i, align 1
  %conv11.i = zext i8 %69 to i32
  %70 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i135 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 33
  %72 = ptrtoint ptr %s_fs_info.i.i135 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i135, align 16
  %s_rock_offset.i136 = getelementptr inbounds %struct.isofs_sb_info, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %s_rock_offset.i136 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv11.i, ptr %s_rock_offset.i136, align 4
  br label %sw.epilogthread-pre-split

sw.bb49:                                          ; preds = %if.end38
  %u.i138 = getelementptr inbounds %struct.rock_ridge, ptr %50, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %57)
  %cmp139.i = icmp ugt i8 %57, 6
  br i1 %cmp139.i, label %while.body.lr.ph.i, label %sw.bb49.get_symlink_chunk.exit_crit_edge

sw.bb49.get_symlink_chunk.exit_crit_edge:         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_symlink_chunk.exit

while.body.lr.ph.i:                               ; preds = %sw.bb49
  %sub.i140 = add nsw i32 %conv28, -5
  %link.i = getelementptr inbounds %struct.rock_ridge, ptr %50, i32 0, i32 3, i32 0, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end74.i, %while.body.lr.ph.i
  %slp.0142.i = phi ptr [ %link.i, %while.body.lr.ph.i ], [ %add.ptr40126133.i, %if.end74.i ]
  %slen.0141.i = phi i32 [ %sub.i140, %while.body.lr.ph.i ], [ %sub36125135.i, %if.end74.i ]
  %rpnt.addr.0140.i = phi ptr [ %rpnt.1166, %while.body.lr.ph.i ], [ %rpnt.addr.2.i, %if.end74.i ]
  %75 = ptrtoint ptr %slp.0142.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %slp.0142.i, align 1
  %and.i141 = and i8 %76, -2
  %77 = zext i8 %and.i141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %and.i141, label %do.end.i [
    i8 0, label %sw.bb.i
    i8 2, label %sw.bb11.i
    i8 4, label %sw.bb16.i
    i8 8, label %sw.bb26.i
  ]

sw.bb.i:                                          ; preds = %while.body.i
  %len3.i = getelementptr inbounds %struct.SL_component, ptr %slp.0142.i, i32 0, i32 1
  %78 = ptrtoint ptr %len3.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %len3.i, align 1
  %conv4.i142 = zext i8 %79 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %rpnt.addr.0140.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast17.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %conv4.i142)
  %cmp5.i = icmp slt i32 %sub.ptr.sub.i, %conv4.i142
  br i1 %cmp5.i, label %sw.bb.i.out_crit_edge, label %if.end.i144

sw.bb.i.out_crit_edge:                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i144:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %text.i = getelementptr inbounds %struct.SL_component, ptr %slp.0142.i, i32 0, i32 2
  %80 = call ptr @memcpy(ptr %rpnt.addr.0140.i, ptr %text.i, i32 %conv4.i142)
  %81 = ptrtoint ptr %len3.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %len3.i, align 1
  %conv10.i = zext i8 %82 to i32
  %add.ptr.i143 = getelementptr i8, ptr %rpnt.addr.0140.i, i32 %conv10.i
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %while.body.i
  %cmp12.not.i145 = icmp ult ptr %rpnt.addr.0140.i, %add.ptr50
  br i1 %cmp12.not.i145, label %if.end15.i, label %sw.bb11.i.out_crit_edge

sw.bb11.i.out_crit_edge:                          ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15.i:                                       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr i8, ptr %rpnt.addr.0140.i, i32 1
  %83 = ptrtoint ptr %rpnt.addr.0140.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 46, ptr %rpnt.addr.0140.i, align 1
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %while.body.i
  %sub.ptr.rhs.cast18.i = ptrtoint ptr %rpnt.addr.0140.i to i32
  %sub.ptr.sub19.i = sub i32 %sub.ptr.lhs.cast17.i, %sub.ptr.rhs.cast18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub19.i)
  %cmp20.i = icmp slt i32 %sub.ptr.sub19.i, 2
  br i1 %cmp20.i, label %sw.bb16.i.out_crit_edge, label %if.end23.i

sw.bb16.i.out_crit_edge:                          ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end23.i:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr24.i = getelementptr i8, ptr %rpnt.addr.0140.i, i32 1
  %84 = ptrtoint ptr %rpnt.addr.0140.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 46, ptr %rpnt.addr.0140.i, align 1
  %incdec.ptr25.i = getelementptr i8, ptr %rpnt.addr.0140.i, i32 2
  %85 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 46, ptr %incdec.ptr24.i, align 1
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %while.body.i
  %cmp27.not.i = icmp ult ptr %rpnt.addr.0140.i, %add.ptr50
  br i1 %cmp27.not.i, label %sw.epilog.thread.i, label %sw.bb26.i.out_crit_edge

sw.bb26.i.out_crit_edge:                          ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i = zext i8 %76 to i32
  %call.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv2.i) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %if.end23.i, %if.end15.i, %if.end.i144
  %rpnt.addr.1.i = phi ptr [ %rpnt.addr.0140.i, %do.end.i ], [ %incdec.ptr25.i, %if.end23.i ], [ %incdec.ptr.i, %if.end15.i ], [ %add.ptr.i143, %if.end.i144 ]
  %len34.i = getelementptr inbounds %struct.SL_component, ptr %slp.0142.i, i32 0, i32 1
  %86 = ptrtoint ptr %len34.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %len34.i, align 1
  %conv35.i = zext i8 %87 to i32
  %add.neg.i = add nsw i32 %slen.0141.i, -2
  %sub36.i = sub i32 %add.neg.i, %conv35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub36.i)
  %cmp41.i = icmp slt i32 %sub36.i, 2
  br i1 %cmp41.i, label %land.lhs.true.i, label %land.lhs.true63.i

sw.epilog.thread.i:                               ; preds = %sw.bb26.i
  %incdec.ptr31.i = getelementptr i8, ptr %rpnt.addr.0140.i, i32 1
  %88 = ptrtoint ptr %rpnt.addr.0140.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 47, ptr %rpnt.addr.0140.i, align 1
  %len34114.i = getelementptr inbounds %struct.SL_component, ptr %slp.0142.i, i32 0, i32 1
  %89 = ptrtoint ptr %len34114.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %len34114.i, align 1
  %conv35115.i = zext i8 %90 to i32
  %add116.neg.i = add nsw i32 %slen.0141.i, -2
  %sub36117.i = sub i32 %add116.neg.i, %conv35115.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub36117.i)
  %cmp41120.i = icmp slt i32 %sub36117.i, 2
  br i1 %cmp41120.i, label %sw.epilog.thread.i.get_symlink_chunk.exit_crit_edge, label %sw.epilog.thread.i.if.end74.i_crit_edge

sw.epilog.thread.i.if.end74.i_crit_edge:          ; preds = %sw.epilog.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

sw.epilog.thread.i.get_symlink_chunk.exit_crit_edge: ; preds = %sw.epilog.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_symlink_chunk.exit

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %91 = ptrtoint ptr %u.i138 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %u.i138, align 1
  %93 = and i8 %92, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool48.not.i = icmp eq i8 %93, 0
  br i1 %tobool48.not.i, label %land.lhs.true.i.get_symlink_chunk.exit_crit_edge, label %land.lhs.true49.i

land.lhs.true.i.get_symlink_chunk.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_symlink_chunk.exit

land.lhs.true49.i:                                ; preds = %land.lhs.true.i
  %94 = ptrtoint ptr %slp.0142.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %slp.0142.i, align 1
  %96 = and i8 %95, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool53.not.i = icmp eq i8 %96, 0
  br i1 %tobool53.not.i, label %if.then54.i, label %land.lhs.true49.i.get_symlink_chunk.exit_crit_edge

land.lhs.true49.i.get_symlink_chunk.exit_crit_edge: ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_symlink_chunk.exit

if.then54.i:                                      ; preds = %land.lhs.true49.i
  %cmp55.not.i = icmp ult ptr %rpnt.addr.1.i, %add.ptr50
  br i1 %cmp55.not.i, label %if.end58.i, label %if.then54.i.out_crit_edge

if.then54.i.out_crit_edge:                        ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end58.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr59.i = getelementptr i8, ptr %rpnt.addr.1.i, i32 1
  %97 = ptrtoint ptr %rpnt.addr.1.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 47, ptr %rpnt.addr.1.i, align 1
  br label %get_symlink_chunk.exit

land.lhs.true63.i:                                ; preds = %sw.epilog.i
  %98 = ptrtoint ptr %slp.0142.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %slp.0142.i, align 1
  %100 = and i8 %99, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool67.not.i = icmp eq i8 %100, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %land.lhs.true63.i.if.end74.i_crit_edge

land.lhs.true63.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

if.then68.i:                                      ; preds = %land.lhs.true63.i
  %cmp69.not.i = icmp ult ptr %rpnt.addr.1.i, %add.ptr50
  br i1 %cmp69.not.i, label %if.end72.i, label %if.then68.i.out_crit_edge

if.then68.i.out_crit_edge:                        ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end72.i:                                       ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr73.i = getelementptr i8, ptr %rpnt.addr.1.i, i32 1
  %101 = ptrtoint ptr %rpnt.addr.1.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 47, ptr %rpnt.addr.1.i, align 1
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end72.i, %land.lhs.true63.i.if.end74.i_crit_edge, %sw.epilog.thread.i.if.end74.i_crit_edge
  %sub36125135.i = phi i32 [ %sub36.i, %land.lhs.true63.i.if.end74.i_crit_edge ], [ %sub36.i, %if.end72.i ], [ %sub36117.i, %sw.epilog.thread.i.if.end74.i_crit_edge ]
  %conv35.pn.i = phi i32 [ %conv35.i, %land.lhs.true63.i.if.end74.i_crit_edge ], [ %conv35.i, %if.end72.i ], [ %conv35115.i, %sw.epilog.thread.i.if.end74.i_crit_edge ]
  %rpnt.addr.2.i = phi ptr [ %rpnt.addr.1.i, %land.lhs.true63.i.if.end74.i_crit_edge ], [ %incdec.ptr73.i, %if.end72.i ], [ %incdec.ptr31.i, %sw.epilog.thread.i.if.end74.i_crit_edge ]
  %add.ptr39.pn.i = getelementptr i8, ptr %slp.0142.i, i32 2
  %add.ptr40126133.i = getelementptr i8, ptr %add.ptr39.pn.i, i32 %conv35.pn.i
  br label %while.body.i

get_symlink_chunk.exit:                           ; preds = %if.end58.i, %land.lhs.true49.i.get_symlink_chunk.exit_crit_edge, %land.lhs.true.i.get_symlink_chunk.exit_crit_edge, %sw.epilog.thread.i.get_symlink_chunk.exit_crit_edge, %sw.bb49.get_symlink_chunk.exit_crit_edge
  %retval.0.i147 = phi ptr [ %rpnt.addr.1.i, %land.lhs.true49.i.get_symlink_chunk.exit_crit_edge ], [ %incdec.ptr59.i, %if.end58.i ], [ %rpnt.addr.1.i, %land.lhs.true.i.get_symlink_chunk.exit_crit_edge ], [ %rpnt.1166, %sw.bb49.get_symlink_chunk.exit_crit_edge ], [ %incdec.ptr31.i, %sw.epilog.thread.i.get_symlink_chunk.exit_crit_edge ]
  %cmp52 = icmp eq ptr %retval.0.i147, null
  br i1 %cmp52, label %get_symlink_chunk.exit.out_crit_edge, label %get_symlink_chunk.exit.sw.epilogthread-pre-split_crit_edge

get_symlink_chunk.exit.sw.epilogthread-pre-split_crit_edge: ; preds = %get_symlink_chunk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

get_symlink_chunk.exit.out_crit_edge:             ; preds = %get_symlink_chunk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb56:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %u57 = getelementptr inbounds %struct.rock_ridge, ptr %50, i32 0, i32 3
  %102 = ptrtoint ptr %u57 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %u57, align 1
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #8
  %105 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %15, align 4
  %offset60 = getelementptr inbounds %struct.rock_ridge, ptr %50, i32 0, i32 3, i32 0, i32 1
  %106 = ptrtoint ptr %offset60 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %offset60, align 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #8
  %109 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %16, align 4
  %size = getelementptr inbounds %struct.rock_ridge, ptr %50, i32 0, i32 3, i32 0, i32 2
  %110 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %size, align 1
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #8
  %113 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %14, align 4
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %sw.bb56, %get_symlink_chunk.exit.sw.epilogthread-pre-split_crit_edge, %check_sp.exit, %sw.bb.sw.epilogthread-pre-split_crit_edge
  %rpnt.2.ph = phi ptr [ %rpnt.1166, %sw.bb.sw.epilogthread-pre-split_crit_edge ], [ %rpnt.1166, %check_sp.exit ], [ %retval.0.i147, %get_symlink_chunk.exit.sw.epilogthread-pre-split_crit_edge ], [ %rpnt.1166, %sw.bb56 ]
  %114 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr = load i32, ptr %13, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end38.sw.epilog_crit_edge
  %115 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %sub, %if.end38.sw.epilog_crit_edge ]
  %rpnt.2 = phi ptr [ %rpnt.2.ph, %sw.epilogthread-pre-split ], [ %rpnt.1166, %if.end38.sw.epilog_crit_edge ]
  %cmp13 = icmp sgt i32 %115, 2
  br i1 %cmp13, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %repeat.while.end_crit_edge
  %rpnt.1.lcssa = phi ptr [ %rpnt.0, %repeat.while.end_crit_edge ], [ %rpnt.2, %sw.epilog.while.end_crit_edge ]
  %call66 = call fastcc i32 @rock_continue(ptr noundef nonnull %rs)
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %while.end.repeat_crit_edge, label %if.end70

while.end.repeat_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat

if.end70:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp71 = icmp slt i32 %call66, 0
  %cmp75 = icmp eq ptr %rpnt.1.lcssa, %call2
  %or.cond = select i1 %cmp71, i1 true, i1 %cmp75
  br i1 %or.cond, label %if.end70.if.then.i152_crit_edge, label %brelse.exit

if.end70.if.then.i152_crit_edge:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i152

brelse.exit:                                      ; preds = %if.end70
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  %116 = ptrtoint ptr %rpnt.1.lcssa to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %rpnt.1.lcssa, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !96
  %117 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %117, align 4
  %and.i.i.i.i = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !93

if.then.i.i.i:                                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.46) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !97
  unreachable

SetPageUptodate.exit:                             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  br label %cleanup

out:                                              ; preds = %get_symlink_chunk.exit.out_crit_edge, %if.then68.i.out_crit_edge, %if.then54.i.out_crit_edge, %sw.bb26.i.out_crit_edge, %sw.bb16.i.out_crit_edge, %sw.bb11.i.out_crit_edge, %sw.bb.i.out_crit_edge, %if.end.i.out_crit_edge, %sw.bb44.out_crit_edge, %sw.bb.out_crit_edge, %if.end26.out_crit_edge, %if.end20.out_crit_edge, %while.body.out_crit_edge
  %120 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rs, align 4
  tail call void @kfree(ptr noundef %121) #8
  br label %if.then.i152

fail.thread:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #11
  br label %error

fail.thread159:                                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #11
  br label %if.then.i152

if.then.i152:                                     ; preds = %fail.thread159, %out, %if.end70.if.then.i152_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #8
  br label %error

error:                                            ; preds = %if.then.i152, %fail.thread, %entry.error_crit_edge
  %122 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %122, align 4
  %and.i.i = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !93

if.then.i:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.48) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !98
  unreachable

do.body7.i:                                       ; preds = %error
  %125 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %122, align 4
  %and.i31.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !93

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %126, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %127, %if.end.i.i ]
  %128 = inttoptr i32 %retval.0.i.i to ptr
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %130)
  %cmp.i.not.i = icmp eq i32 %130, -1
  %131 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %122, align 4
  %and.i32.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !99

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !93

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %132, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %133, %if.end.i36.i ]
  %134 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %134, ptr noundef nonnull @.str.49) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !100
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !93

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %132, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %135, %if.end.i43.i ]
  %136 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %136) #8
  br label %cleanup

cleanup:                                          ; preds = %SetPageError.exit, %SetPageUptodate.exit
  %retval.0 = phi i32 [ -5, %SetPageError.exit ], [ 0, %SetPageUptodate.exit ]
  tail call void @unlock_page(ptr noundef %page) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rs) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iso_date(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__isofs_iget(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !81, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/isofs/rock.c", i32 269, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @get_rock_ridge_filename._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @get_rock_ridge_filename._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @isofs_symlink_aops, !7, !"isofs_symlink_aops", i1 false, i1 false}
!7 = !{!"../fs/isofs/rock.c", i32 806, i32 39}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/isofs/rock.c", i32 186, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rock_check_overflow._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @rock_check_overflow._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/isofs/rock.c", i32 188, i32 3}
!15 = !{ptr @rock_check_overflow._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @rock_check_overflow._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/isofs/rock.c", i32 97, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rock_continue._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @rock_continue._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/isofs/rock.c", i32 127, i32 3}
!24 = !{ptr @rock_continue._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rock_continue._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/isofs/rock.c", i32 377, i32 4}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @parse_rock_ridge_inode_internal._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @parse_rock_ridge_inode_internal._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/isofs/rock.c", i32 381, i32 6}
!33 = !{ptr @parse_rock_ridge_inode_internal._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @parse_rock_ridge_inode_internal._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/isofs/rock.c", i32 383, i32 4}
!37 = !{ptr @parse_rock_ridge_inode_internal._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @parse_rock_ridge_inode_internal._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/isofs/rock.c", i32 474, i32 7}
!41 = !{ptr @parse_rock_ridge_inode_internal._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @parse_rock_ridge_inode_internal._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/isofs/rock.c", i32 505, i32 4}
!45 = !{ptr @parse_rock_ridge_inode_internal._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @parse_rock_ridge_inode_internal._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/isofs/rock.c", i32 510, i32 5}
!49 = !{ptr @parse_rock_ridge_inode_internal._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @parse_rock_ridge_inode_internal._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/isofs/rock.c", i32 518, i32 5}
!53 = !{ptr @parse_rock_ridge_inode_internal._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @parse_rock_ridge_inode_internal._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/isofs/rock.c", i32 552, i32 6}
!57 = !{ptr @parse_rock_ridge_inode_internal._entry.33, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @parse_rock_ridge_inode_internal._entry_ptr.35, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/isofs/rock.c", i32 577, i32 5}
!61 = !{ptr @parse_rock_ridge_inode_internal._entry.36, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @parse_rock_ridge_inode_internal._entry_ptr.38, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/isofs/rock.c", i32 794, i32 2}
!65 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rock_ridge_symlink_readpage._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rock_ridge_symlink_readpage._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/isofs/rock.c", i32 797, i32 2}
!70 = !{ptr @rock_ridge_symlink_readpage._entry.41, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rock_ridge_symlink_readpage._entry_ptr.43, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/isofs/rock.c", i32 638, i32 4}
!74 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @get_symlink_chunk._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @get_symlink_chunk._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!83 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2153818927}
!95 = !{i64 2148599937, i64 2148599963, i64 2148599992, i64 2148600026, i64 2148600057, i64 2148600080}
!96 = !{i64 2150904971}
!97 = !{i64 2150154008, i64 2150154499, i64 2150154045, i64 2150154101, i64 2150154135, i64 2150154159, i64 2150154200, i64 2150154221, i64 2150154249, i64 2150154283}
!98 = !{i64 2150219659, i64 2150219832, i64 2150219847, i64 2150219899, i64 2150219958, i64 2150219982, i64 2150220023, i64 2150220044, i64 2150220072, i64 2150220104}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2150220534, i64 2150220707, i64 2150220722, i64 2150220774, i64 2150220833, i64 2150220857, i64 2150220898, i64 2150220919, i64 2150220947, i64 2150220979}
