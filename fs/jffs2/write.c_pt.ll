; ModuleID = '/llk/IR_all_yes/fs/jffs2/write.c_pt.bc'
source_filename = "../fs/jffs2/write.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.jffs2_inode_info = type { %struct.mutex, i32, %struct.rb_root, ptr, ptr, ptr, ptr, i16, i8, %struct.inode }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.82 = type { ptr }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
%struct.jffs2_raw_inode = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jmode_t, %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jmode_t = type { i32 }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.kvec = type { ptr, i32 }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.jffs2_full_dnode = type { ptr, i32, i32, i32 }
%struct.jffs2_raw_dirent = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, [2 x i8], %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jffs2_full_dirent = type { %union.anon.75, ptr, i32, i32, i32, i8, [0 x i8] }
%union.anon.75 = type { ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }

@jffs2_write_dnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014jffs2: %s(): ri->totlen (0x%08x) != sizeof(*ri) (0x%08zx) + datalen (0x%08x)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jffs2_write_dnode\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/jffs2/write.c\00", [47 x i8] zeroinitializer }, align 32
@jffs2_write_dnode._entry_ptr = internal global ptr @jffs2_write_dnode._entry, section ".printk_index", align 4
@jffs2_write_dnode._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015jffs2: Write of %zd bytes at 0x%08x failed. returned %d, retlen %zd\0A\00", [57 x i8] zeroinitializer }, align 32
@jffs2_write_dnode._entry_ptr.5 = internal global ptr @jffs2_write_dnode._entry.3, section ".printk_index", align 4
@jffs2_write_dnode._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\015jffs2: Not marking the space at 0x%08x as dirty because the flash driver returned retlen zero\0A\00", [63 x i8] zeroinitializer }, align 32
@jffs2_write_dnode._entry_ptr.8 = internal global ptr @jffs2_write_dnode._entry.6, section ".printk_index", align 4
@jffs2_write_dirent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\012jffs2: Error in jffs2_write_dirent() -- name contains zero bytes!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jffs2_write_dirent\00", [45 x i8] zeroinitializer }, align 32
@jffs2_write_dirent._entry_ptr = internal global ptr @jffs2_write_dirent._entry, section ".printk_index", align 4
@jffs2_write_dirent._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\012jffs2: Directory inode #%u, name at *0x%p \22%s\22->ino #%u, name_crc 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@jffs2_write_dirent._entry_ptr.13 = internal global ptr @jffs2_write_dirent._entry.11, section ".printk_index", align 4
@jffs2_write_dirent._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jffs2_write_dirent._entry_ptr.15 = internal global ptr @jffs2_write_dirent._entry.14, section ".printk_index", align 4
@jffs2_write_dirent._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.10, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jffs2_write_dirent._entry_ptr.17 = internal global ptr @jffs2_write_dirent._entry.16, section ".printk_index", align 4
@jffs2_write_inode_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014jffs2: Eep. We didn't actually write any data in jffs2_write_inode_range()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jffs2_write_inode_range\00", [40 x i8] zeroinitializer }, align 32
@jffs2_write_inode_range._entry_ptr = internal global ptr @jffs2_write_inode_range._entry, section ".printk_index", align 4
@jffs2_do_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014jffs2: Deleting inode #%u with active dentry \22%s\22->ino #%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jffs2_do_unlink\00", [16 x i8] zeroinitializer }, align 32
@jffs2_do_unlink._entry_ptr = internal global ptr @jffs2_do_unlink._entry, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 83, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 113, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 125, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 229, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 230, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 271, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 277, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 427, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [20 x i8] c"../fs/jffs2/write.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 644, i32 6 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @jffs2_do_unlink._entry, ptr @jffs2_do_unlink._entry_ptr, ptr @jffs2_write_dirent._entry, ptr @jffs2_write_dirent._entry.11, ptr @jffs2_write_dirent._entry.14, ptr @jffs2_write_dirent._entry.16, ptr @jffs2_write_dirent._entry_ptr, ptr @jffs2_write_dirent._entry_ptr.13, ptr @jffs2_write_dirent._entry_ptr.15, ptr @jffs2_write_dirent._entry_ptr.17, ptr @jffs2_write_dnode._entry, ptr @jffs2_write_dnode._entry.3, ptr @jffs2_write_dnode._entry.6, ptr @jffs2_write_dnode._entry_ptr, ptr @jffs2_write_dnode._entry_ptr.5, ptr @jffs2_write_dnode._entry_ptr.8, ptr @jffs2_write_inode_range._entry, ptr @jffs2_write_inode_range._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_write_dnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_write_dnode._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_write_dnode._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_write_dirent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_write_dirent._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_write_dirent._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_write_dirent._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_write_inode_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_do_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_new_inode(ptr noundef %c, ptr nocapture noundef %f, i32 noundef %mode, ptr noundef %ri) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @jffs2_alloc_inode_cache() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = call ptr @memset(ptr %call, i32 0, i32 24)
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %1 = ptrtoint ptr %inocache to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %inocache, align 8
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %pino_nlink, align 4
  %3 = load ptr, ptr %inocache, align 8
  %nodes = getelementptr inbounds %struct.jffs2_inode_cache, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %nodes, align 4
  %5 = load ptr, ptr %inocache, align 8
  %state = getelementptr inbounds %struct.jffs2_inode_cache, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %state, align 2
  %7 = load ptr, ptr %inocache, align 8
  tail call void @jffs2_add_ino_cache(ptr noundef %c, ptr noundef %7) #7
  %ino = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 4
  %8 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inocache, align 8
  %ino7 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ino7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ino7, align 4
  %12 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %ino, align 1
  %13 = ptrtoint ptr %ri to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 6533, ptr %ri, align 1
  %nodetype = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 1
  %14 = ptrtoint ptr %nodetype to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 -8190, ptr %nodetype, align 1
  %totlen = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 2
  %15 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 68, ptr %totlen, align 1
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 3
  %call15 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %ri, i32 noundef 8) #10
  %16 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %call15, ptr %hdr_crc, align 1
  %mode16 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 6
  %17 = ptrtoint ptr %mode16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %mode, ptr %mode16, align 1
  %highest_version = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 1
  %18 = ptrtoint ptr %highest_version to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %highest_version, align 4
  %version = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 5
  %19 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 1, ptr %version, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_inode_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_add_ino_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_write_dnode(ptr noundef %c, ptr noundef %f, ptr noundef %ri, ptr noundef %data, i32 noundef %datalen, i32 noundef %alloc_mode) local_unnamed_addr #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  %vecs = alloca [2 x %struct.kvec], align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #7
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vecs) #7
  %1 = getelementptr inbounds %struct.kvec, ptr %vecs, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.kvec], ptr %vecs, i32 0, i32 1
  %3 = getelementptr inbounds [2 x %struct.kvec], ptr %vecs, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %vecs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ri, ptr %vecs, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 68, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %datalen, ptr %3, align 4
  %totlen = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 2
  %8 = ptrtoint ptr %totlen to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %totlen, align 1
  %add = add i32 %datalen, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp.not = icmp eq i32 %9, %add
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef 68, i32 noundef %datalen) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call8 = tail call ptr @jffs2_alloc_full_dnode() #7
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end.cleanup163_crit_edge, label %if.end11

if.end.cleanup163_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datalen)
  %tobool12.not = icmp eq i32 %datalen, 0
  %tobool13.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool13.not, %tobool12.not
  %cnt.0 = select i1 %or.cond, i32 1, i32 2
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alloc_mode)
  %cmp18.not = icmp eq i32 %alloc_mode, 2
  %version = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 5
  %highest_version = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 1
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 20
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %add65 = add i32 %datalen, 71
  %and = and i32 %add65, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %alloc_mode)
  %cmp75.not = icmp ne i32 %alloc_mode, 3
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  br label %retry

retry:                                            ; preds = %cleanup, %if.end11
  %tobool160.not = phi i1 [ false, %cleanup ], [ true, %if.end11 ]
  %10 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nextblock, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %14 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sector_size, align 4
  %add16 = add i32 %15, %13
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_size, align 4
  %sub = sub i32 %add16, %17
  br i1 %cmp18.not, label %retry.cond.end_crit_edge, label %land.lhs.true

retry.cond.end_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true:                                    ; preds = %retry
  %18 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %version, align 1
  %20 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %highest_version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp20 = icmp ult i32 %19, %21
  br i1 %cmp20, label %do.body22, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

do.body22:                                        ; preds = %land.lhs.true
  br i1 %tobool160.not, label %do.body28, label %do.end39, !prof !49

do.body28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

do.end39:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %21, 1
  %22 = ptrtoint ptr %highest_version to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc, ptr %highest_version, align 4
  %23 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %inc, ptr %version, align 1
  %call45 = call i32 @crc32_le(i32 noundef 0, ptr noundef %ri, i32 noundef 60) #10
  %24 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %call45, ptr %node_crc, align 1
  br label %cond.false

cond.false:                                       ; preds = %do.end39, %land.lhs.true.cond.false_crit_edge
  %25 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %inocache, align 8
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ino, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %retry.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.false ], [ 0, %retry.cond.end_crit_edge ]
  %conv246 = zext i32 %sub to i64
  %call49 = call i32 @jffs2_flash_writev(ptr noundef %c, ptr noundef nonnull %vecs, i32 noundef %cnt.0, i64 noundef %conv246, ptr noundef nonnull %retlen, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %cond.end.do.end58_crit_edge

cond.end.do.end58_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

lor.lhs.false51:                                  ; preds = %cond.end
  %29 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add)
  %cmp53.not = icmp eq i32 %30, %add
  br i1 %cmp53.not, label %if.end117, label %lor.lhs.false51.do.end58_crit_edge

lor.lhs.false51.do.end58_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

do.end58:                                         ; preds = %lor.lhs.false51.do.end58_crit_edge, %cond.end.do.end58_crit_edge
  %31 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %retlen, align 4
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %add, i32 noundef %sub, i32 noundef %call49, i32 noundef %32) #11
  %33 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool62.not = icmp eq i32 %34, 0
  br i1 %tobool62.not, label %do.end69, label %if.then63

if.then63:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %sub, 1
  %call66 = call ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %or, i32 noundef %and, ptr noundef null) #7
  br label %if.end72

do.end69:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %sub) #11
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.then63
  %35 = and i1 %cmp75.not, %tobool160.not
  br i1 %35, label %if.then77, label %if.end72.if.end110_crit_edge

if.end72.if.end110_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then77:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #7
  %36 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %dummy, align 4, !annotation !48
  %37 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %blocks, align 4
  %39 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %sub, %40
  %arrayidx79 = getelementptr %struct.jffs2_eraseblock, ptr %38, i32 %div
  call void @__jffs2_dbg_acct_sanity_check(ptr noundef %c, ptr noundef %arrayidx79) #7
  br i1 %cmp18.not, label %if.then85, label %if.else88

if.then85:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef %add, ptr noundef nonnull %dummy, i32 noundef 18) #7
  br label %if.end92

if.else88:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %f) #7
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  %call90 = call i32 @jffs2_reserve_space(ptr noundef %c, i32 noundef %add, ptr noundef nonnull %dummy, i32 noundef %alloc_mode, i32 noundef 18) #7
  call void @mutex_lock_nested(ptr noundef %f, i32 noundef 0) #7
  br label %if.end92

if.end92:                                         ; preds = %if.else88, %if.then85
  %ret.0 = phi i32 [ %call87, %if.then85 ], [ %call90, %if.else88 ]
  %tobool93.not = icmp eq i32 %ret.0, 0
  br i1 %tobool93.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #7
  br label %if.end110

cleanup:                                          ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  call void @__jffs2_dbg_acct_sanity_check(ptr noundef %c, ptr noundef %arrayidx79) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #7
  br label %retry

if.end110:                                        ; preds = %cleanup.thread, %if.end72.if.end110_crit_edge
  %ret.1 = phi i32 [ %ret.0, %cleanup.thread ], [ %call49, %if.end72.if.end110_crit_edge ]
  call void @jffs2_free_full_dnode(ptr noundef nonnull %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool111.not = icmp eq i32 %ret.1, 0
  %spec.select = select i1 %tobool111.not, i32 -5, i32 %ret.1
  %41 = inttoptr i32 %spec.select to ptr
  br label %cleanup163

if.end117:                                        ; preds = %lor.lhs.false51
  %dsize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 15
  %42 = ptrtoint ptr %dsize to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %dsize, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %43)
  %cmp119 = icmp ugt i32 %43, 4095
  br i1 %cmp119, label %if.end117.if.end140_crit_edge, label %lor.lhs.false121

if.end117.if.end140_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

lor.lhs.false121:                                 ; preds = %if.end117
  %offset122 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 13
  %44 = ptrtoint ptr %offset122 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %offset122, align 1
  %and124 = and i32 %45, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %cmp125 = icmp eq i32 %and124, 0
  br i1 %cmp125, label %land.lhs.true127, label %lor.lhs.false121.if.else138_crit_edge

lor.lhs.false121.if.else138_crit_edge:            ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else138

land.lhs.true127:                                 ; preds = %lor.lhs.false121
  %add132 = add nuw i32 %45, %43
  %isize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 9
  %46 = ptrtoint ptr %isize to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %isize, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add132, i32 %47)
  %cmp134 = icmp eq i32 %add132, %47
  br i1 %cmp134, label %land.lhs.true127.if.end140_crit_edge, label %land.lhs.true127.if.else138_crit_edge

land.lhs.true127.if.else138_crit_edge:            ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else138

land.lhs.true127.if.end140_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.else138:                                       ; preds = %land.lhs.true127.if.else138_crit_edge, %lor.lhs.false121.if.else138_crit_edge
  br label %if.end140

if.end140:                                        ; preds = %if.else138, %land.lhs.true127.if.end140_crit_edge, %if.end117.if.end140_crit_edge
  %.sink = phi i32 [ 3, %if.else138 ], [ 2, %land.lhs.true127.if.end140_crit_edge ], [ 2, %if.end117.if.end140_crit_edge ]
  %or139 = or i32 %sub, %.sink
  %48 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %inocache, align 8
  %call145 = call ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %or139, i32 noundef %and, ptr noundef %49) #7
  %50 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call145, ptr %call8, align 4
  %cmp.i = icmp ugt ptr %call145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then148, label %if.end152

if.then148:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_full_dnode(ptr noundef nonnull %call8) #7
  br label %cleanup163

if.end152:                                        ; preds = %if.end140
  %offset153 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 13
  %51 = ptrtoint ptr %offset153 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %offset153, align 1
  %ofs = getelementptr inbounds %struct.jffs2_full_dnode, ptr %call8, i32 0, i32 1
  %53 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ofs, align 4
  %54 = ptrtoint ptr %dsize to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %dsize, align 1
  %size = getelementptr inbounds %struct.jffs2_full_dnode, ptr %call8, i32 0, i32 2
  %56 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %size, align 4
  %frags = getelementptr inbounds %struct.jffs2_full_dnode, ptr %call8, i32 0, i32 3
  %57 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %frags, align 4
  br i1 %tobool160.not, label %if.end152.cleanup163_crit_edge, label %if.then161

if.end152.cleanup163_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

if.then161:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  call void @__jffs2_dbg_acct_sanity_check(ptr noundef %c, ptr noundef null) #7
  br label %cleanup163

cleanup163:                                       ; preds = %if.then161, %if.end152.cleanup163_crit_edge, %if.then148, %if.end110, %if.end.cleanup163_crit_edge
  %retval.0 = phi ptr [ %41, %if.end110 ], [ %call145, %if.then148 ], [ %call8, %if.then161 ], [ %call8, %if.end152.cleanup163_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup163_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vecs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #7
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_full_dnode() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_writev(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_add_physical_node_ref(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jffs2_dbg_acct_sanity_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_reserve_space_gc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_complete_reservation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_reserve_space(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_write_dirent(ptr noundef %c, ptr noundef %f, ptr noundef %rd, ptr noundef %name, i32 noundef %namelen, i32 noundef %alloc_mode) local_unnamed_addr #0 align 64 {
entry:
  %retlen = alloca i32, align 4
  %vecs = alloca [2 x %struct.kvec], align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #7
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vecs) #7
  %call = tail call i32 @strnlen(ptr noundef %name, i32 noundef %namelen) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %namelen)
  %cmp.not = icmp eq i32 %call, %namelen
  br i1 %cmp.not, label %if.end32, label %do.end3

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  %pino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 4
  %1 = ptrtoint ptr %pino to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %pino, align 1
  %ino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 6
  %3 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %ino, align 1
  %name_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 12
  %5 = ptrtoint ptr %name_crc to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %name_crc, align 1
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %2, ptr noundef %name, ptr noundef %name, i32 noundef %4, i32 noundef %6) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 233, i32 noundef 9, ptr noundef null) #7
  br label %cleanup182

if.end32:                                         ; preds = %entry
  %7 = getelementptr inbounds [2 x %struct.kvec], ptr %vecs, i32 0, i32 1, i32 1
  %8 = getelementptr inbounds [2 x %struct.kvec], ptr %vecs, i32 0, i32 1
  %9 = getelementptr inbounds %struct.kvec, ptr %vecs, i32 0, i32 1
  %10 = ptrtoint ptr %vecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rd, ptr %vecs, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 40, ptr %9, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %8, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %namelen, ptr %7, align 4
  %add = add i32 %namelen, 1
  %call38 = tail call ptr @jffs2_alloc_full_dirent(i32 noundef %add) #7
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end32.cleanup182_crit_edge, label %if.end42

if.end32.cleanup182_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup182

if.end42:                                         ; preds = %if.end32
  %version = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 5
  %14 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %version, align 1
  %version44 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call38, i32 0, i32 2
  %16 = ptrtoint ptr %version44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %version44, align 4
  %ino45 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 6
  %17 = ptrtoint ptr %ino45 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %ino45, align 1
  %ino47 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call38, i32 0, i32 3
  %19 = ptrtoint ptr %ino47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ino47, align 4
  %call48 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name, i32 noundef %namelen) #10
  %nhash = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call38, i32 0, i32 4
  %20 = ptrtoint ptr %nhash to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call48, ptr %nhash, align 4
  %type = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 9
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 1
  %type49 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call38, i32 0, i32 5
  %23 = ptrtoint ptr %type49 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %type49, align 4
  %name50 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %call38, i32 0, i32 6
  %24 = call ptr @memcpy(ptr %name50, ptr %name, i32 %namelen)
  %arrayidx52 = getelementptr %struct.jffs2_full_dirent, ptr %call38, i32 0, i32 6, i32 %namelen
  %25 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx52, align 1
  %nextblock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 29
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alloc_mode)
  %cmp55.not = icmp eq i32 %alloc_mode, 2
  %highest_version = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 1
  %node_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 11
  %pino96 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %rd, i32 0, i32 4
  %add100 = add i32 %namelen, 40
  %add113 = add i32 %namelen, 43
  %and = and i32 %add113, -4
  %blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %add136 = add i32 %namelen, 24
  br label %retry

retry:                                            ; preds = %cleanup, %if.end42
  %tobool179.not = phi i1 [ false, %cleanup ], [ true, %if.end42 ]
  %26 = ptrtoint ptr %nextblock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nextblock, align 4
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset, align 4
  %30 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sector_size, align 4
  %add53 = add i32 %31, %29
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %27, i32 0, i32 7
  %32 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %free_size, align 4
  %sub = sub i32 %add53, %33
  br i1 %cmp55.not, label %retry.cond.end_crit_edge, label %land.lhs.true

retry.cond.end_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true:                                    ; preds = %retry
  %34 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %version, align 1
  %36 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %highest_version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp58 = icmp ult i32 %35, %37
  br i1 %cmp58, label %do.body60, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

do.body60:                                        ; preds = %land.lhs.true
  br i1 %tobool179.not, label %do.body71, label %do.end82, !prof !49

do.body71:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end82:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %37, 1
  %38 = ptrtoint ptr %highest_version to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc, ptr %highest_version, align 4
  %39 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %inc, ptr %version, align 1
  %40 = ptrtoint ptr %version44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %inc, ptr %version44, align 4
  %call91 = call i32 @crc32_le(i32 noundef 0, ptr noundef %rd, i32 noundef 32) #10
  %41 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %call91, ptr %node_crc, align 1
  br label %cond.false

cond.false:                                       ; preds = %do.end82, %land.lhs.true.cond.false_crit_edge
  %42 = ptrtoint ptr %pino96 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %pino96, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %retry.cond.end_crit_edge
  %cond = phi i32 [ %43, %cond.false ], [ 0, %retry.cond.end_crit_edge ]
  %conv271 = zext i32 %sub to i64
  %call98 = call i32 @jffs2_flash_writev(ptr noundef %c, ptr noundef nonnull %vecs, i32 noundef 2, i64 noundef %conv271, ptr noundef nonnull %retlen, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %lor.lhs.false, label %cond.end.do.end106_crit_edge

cond.end.do.end106_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end106

lor.lhs.false:                                    ; preds = %cond.end
  %44 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %add100)
  %cmp101.not = icmp eq i32 %45, %add100
  br i1 %cmp101.not, label %if.end164, label %lor.lhs.false.do.end106_crit_edge

lor.lhs.false.do.end106_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end106

do.end106:                                        ; preds = %lor.lhs.false.do.end106_crit_edge, %cond.end.do.end106_crit_edge
  %46 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %retlen, align 4
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %add100, i32 noundef %sub, i32 noundef %call98, i32 noundef %47) #11
  %48 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool110.not = icmp eq i32 %49, 0
  br i1 %tobool110.not, label %do.end117, label %if.then111

if.then111:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %sub, 1
  %call114 = call ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %or, i32 noundef %and, ptr noundef null) #7
  br label %if.end120

do.end117:                                        ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %sub) #11
  br label %if.end120

if.end120:                                        ; preds = %do.end117, %if.then111
  br i1 %tobool179.not, label %if.then122, label %if.end120.if.end157_crit_edge

if.end120.if.end157_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then122:                                       ; preds = %if.end120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #7
  %50 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %dummy, align 4, !annotation !48
  %51 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %blocks, align 4
  %53 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %sub, %54
  %arrayidx124 = getelementptr %struct.jffs2_eraseblock, ptr %52, i32 %div
  call void @__jffs2_dbg_acct_sanity_check(ptr noundef %c, ptr noundef %arrayidx124) #7
  br i1 %cmp55.not, label %if.then130, label %if.else134

if.then130:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #9
  %call133 = call i32 @jffs2_reserve_space_gc(ptr noundef %c, i32 noundef %add100, ptr noundef nonnull %dummy, i32 noundef %add136) #7
  br label %if.end139

if.else134:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %f) #7
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  %call137 = call i32 @jffs2_reserve_space(ptr noundef %c, i32 noundef %add100, ptr noundef nonnull %dummy, i32 noundef %alloc_mode, i32 noundef %add136) #7
  call void @mutex_lock_nested(ptr noundef %f, i32 noundef 0) #7
  br label %if.end139

if.end139:                                        ; preds = %if.else134, %if.then130
  %ret.0 = phi i32 [ %call133, %if.then130 ], [ %call137, %if.else134 ]
  %tobool140.not = icmp eq i32 %ret.0, 0
  br i1 %tobool140.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #7
  br label %if.end157

cleanup:                                          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  call void @__jffs2_dbg_acct_sanity_check(ptr noundef %c, ptr noundef %arrayidx124) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #7
  br label %retry

if.end157:                                        ; preds = %cleanup.thread, %if.end120.if.end157_crit_edge
  %ret.1 = phi i32 [ %ret.0, %cleanup.thread ], [ %call98, %if.end120.if.end157_crit_edge ]
  call void @jffs2_free_full_dirent(ptr noundef nonnull %call38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool158.not = icmp eq i32 %ret.1, 0
  %spec.select = select i1 %tobool158.not, i32 -5, i32 %ret.1
  %55 = inttoptr i32 %spec.select to ptr
  br label %cleanup182

if.end164:                                        ; preds = %lor.lhs.false
  %56 = ptrtoint ptr %ino45 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %ino45, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool167.not = icmp eq i32 %57, 0
  %cond168 = select i1 %tobool167.not, i32 3, i32 2
  %or169 = or i32 %cond168, %sub
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %58 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %inocache, align 8
  %call173 = call ptr @jffs2_add_physical_node_ref(ptr noundef %c, i32 noundef %or169, i32 noundef %and, ptr noundef %59) #7
  %60 = ptrtoint ptr %call38 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call173, ptr %call38, align 4
  %cmp.i = icmp ugt ptr %call173, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then175, label %if.end178

if.then175:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_full_dirent(ptr noundef nonnull %call38) #7
  br label %cleanup182

if.end178:                                        ; preds = %if.end164
  br i1 %tobool179.not, label %if.end178.cleanup182_crit_edge, label %if.then180

if.end178.cleanup182_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup182

if.then180:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  call void @__jffs2_dbg_acct_sanity_check(ptr noundef %c, ptr noundef null) #7
  br label %cleanup182

cleanup182:                                       ; preds = %if.then180, %if.end178.cleanup182_crit_edge, %if.then175, %if.end157, %if.end32.cleanup182_crit_edge, %do.end3
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end3 ], [ %55, %if.end157 ], [ %call173, %if.then175 ], [ %call38, %if.then180 ], [ %call38, %if.end178.cleanup182_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end32.cleanup182_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vecs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_full_dirent(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dirent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_write_inode_range(ptr noundef %c, ptr noundef %f, ptr noundef %ri, ptr noundef %buf, i32 noundef %offset, i32 noundef %writelen, ptr nocapture noundef writeonly %retlen) local_unnamed_addr #0 align 64 {
entry:
  %comprbuf = alloca ptr, align 4
  %alloclen = alloca i32, align 4
  %datalen = alloca i32, align 4
  %cdatalen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %writelen)
  %tobool.not184 = icmp eq i32 %writelen, 0
  br i1 %tobool.not184, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %nodetype = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 1
  %totlen = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 2
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 3
  %ino = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 4
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 6
  %version = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 5
  %highest_version = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 1
  %isize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 9
  %offset38 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 13
  %csize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 14
  %dsize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 15
  %compr = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 16
  %usercompr = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 17
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 20
  %data_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 19
  %metadata = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0188 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %offset.addr.0187 = phi i32 [ %offset, %while.body.lr.ph ], [ %add96, %cleanup.while.body_crit_edge ]
  %writelen.addr.0186 = phi i32 [ %writelen, %while.body.lr.ph ], [ %sub97, %cleanup.while.body_crit_edge ]
  %writtenlen.0185 = phi i32 [ 0, %while.body.lr.ph ], [ %add95, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comprbuf) #7
  %0 = ptrtoint ptr %comprbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %comprbuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #7
  %1 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %alloclen, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datalen) #7
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %datalen, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cdatalen) #7
  %3 = ptrtoint ptr %cdatalen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cdatalen, align 4, !annotation !48
  %and = and i32 %offset.addr.0187, 4095
  %sub = sub nuw nsw i32 4096, %and
  %4 = call i32 @llvm.umin.i32(i32 %writelen.addr.0186, i32 %sub)
  br label %retry

retry:                                            ; preds = %if.then58.retry_crit_edge, %while.body
  %tobool61.not = phi i1 [ true, %while.body ], [ false, %if.then58.retry_crit_edge ]
  %call = call i32 @jffs2_reserve_space(ptr noundef %c, i32 noundef 196, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %retry.cleanup.thread_crit_edge

retry.cleanup.thread_crit_edge:                   ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end:                                           ; preds = %retry
  call void @mutex_lock_nested(ptr noundef %f, i32 noundef 0) #7
  %5 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %datalen, align 4
  %6 = ptrtoint ptr %alloclen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloclen, align 4
  %sub8 = add i32 %7, -68
  %8 = call i32 @llvm.umin.i32(i32 %sub8, i32 %4)
  %9 = ptrtoint ptr %cdatalen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cdatalen, align 4
  %call15 = call zeroext i16 @jffs2_compress(ptr noundef %c, ptr noundef %f, ptr noundef %buf.addr.0188, ptr noundef nonnull %comprbuf, ptr noundef nonnull %datalen, ptr noundef nonnull %cdatalen) #7
  %10 = ptrtoint ptr %ri to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 6533, ptr %ri, align 1
  %11 = ptrtoint ptr %nodetype to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 -8190, ptr %nodetype, align 1
  %12 = ptrtoint ptr %cdatalen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cdatalen, align 4
  %add = add i32 %13, 68
  %14 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %add, ptr %totlen, align 1
  %call21 = call i32 @crc32_le(i32 noundef 0, ptr noundef %ri, i32 noundef 8) #10
  %15 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %call21, ptr %hdr_crc, align 1
  %16 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inocache, align 8
  %ino24 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %ino24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ino24, align 4
  %20 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %ino, align 1
  %21 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %highest_version, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %highest_version, align 4
  %23 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %inc, ptr %version, align 1
  %24 = ptrtoint ptr %isize to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %isize, align 1
  %26 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %datalen, align 4
  %add31 = add i32 %27, %offset.addr.0187
  %28 = call i32 @llvm.umax.i32(i32 %25, i32 %add31)
  %29 = ptrtoint ptr %isize to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %isize, align 1
  %30 = ptrtoint ptr %offset38 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %offset.addr.0187, ptr %offset38, align 1
  %31 = ptrtoint ptr %csize to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %13, ptr %csize, align 1
  %32 = ptrtoint ptr %dsize to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %27, ptr %dsize, align 1
  %conv46 = trunc i16 %call15 to i8
  %33 = ptrtoint ptr %compr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv46, ptr %compr, align 1
  %34 = lshr i16 %call15, 8
  %conv49 = trunc i16 %34 to i8
  %35 = ptrtoint ptr %usercompr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv49, ptr %usercompr, align 1
  %call52 = call i32 @crc32_le(i32 noundef 0, ptr noundef %ri, i32 noundef 60) #10
  %36 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %call52, ptr %node_crc, align 1
  %37 = ptrtoint ptr %comprbuf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %comprbuf, align 4
  %call55 = call i32 @crc32_le(i32 noundef 0, ptr noundef %38, i32 noundef %13) #10
  %39 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %call55, ptr %data_crc, align 1
  %call56 = call ptr @jffs2_write_dnode(ptr noundef %c, ptr noundef %f, ptr noundef %ri, ptr noundef %38, i32 noundef %13, i32 noundef 3)
  %40 = ptrtoint ptr %comprbuf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %comprbuf, align 4
  call void @jffs2_free_comprbuf(ptr noundef %41, ptr noundef %buf.addr.0188) #7
  %cmp.i = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then58, label %if.end67

if.then58:                                        ; preds = %if.end
  call void @mutex_unlock(ptr noundef %f) #7
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  br i1 %tobool61.not, label %if.then58.retry_crit_edge, label %cleanup.thread.loopexit.split.loop.exit

if.then58.retry_crit_edge:                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

if.end67:                                         ; preds = %if.end
  %call68 = call i32 @jffs2_add_full_dnode_to_inode(ptr noundef %c, ptr noundef %f, ptr noundef %call56) #7
  %42 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %metadata, align 4
  %tobool69.not = icmp eq ptr %43, null
  br i1 %tobool69.not, label %if.end67.if.end74_crit_edge, label %if.then70

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %45) #7
  %46 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %metadata, align 4
  call void @jffs2_free_full_dnode(ptr noundef %47) #7
  %48 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %metadata, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end67.if.end74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool75.not = icmp eq i32 %call68, 0
  br i1 %tobool75.not, label %if.end82, label %do.end79

do.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %call56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call56, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %50) #7
  call void @jffs2_free_full_dnode(ptr noundef %call56) #7
  call void @mutex_unlock(ptr noundef %f) #7
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  br label %cleanup.thread

if.end82:                                         ; preds = %if.end74
  call void @mutex_unlock(ptr noundef %f) #7
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  %51 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool84.not = icmp eq i32 %52, 0
  br i1 %tobool84.not, label %do.end88, label %cleanup

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %cleanup.thread

cleanup.thread.loopexit.split.loop.exit:          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call56 to i32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.loopexit.split.loop.exit, %do.end88, %do.end79, %retry.cleanup.thread_crit_edge
  %ret.1.ph = phi i32 [ -5, %do.end88 ], [ %call68, %do.end79 ], [ %53, %cleanup.thread.loopexit.split.loop.exit ], [ %call, %retry.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cdatalen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datalen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comprbuf) #7
  br label %while.end

cleanup:                                          ; preds = %if.end82
  %add95 = add i32 %52, %writtenlen.0185
  %add96 = add i32 %52, %offset.addr.0187
  %sub97 = sub i32 %writelen.addr.0186, %52
  %add.ptr = getelementptr i8, ptr %buf.addr.0188, i32 %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cdatalen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datalen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comprbuf) #7
  %tobool.not = icmp eq i32 %sub97, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  %writtenlen.0178 = phi i32 [ %writtenlen.0185, %cleanup.thread ], [ 0, %entry.while.end_crit_edge ], [ %add95, %cleanup.while.end_crit_edge ]
  %ret.2 = phi i32 [ %ret.1.ph, %cleanup.thread ], [ 0, %entry.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %54 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %writtenlen.0178, ptr %retlen, align 4
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @jffs2_compress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_comprbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_add_full_dnode_to_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_mark_node_obsolete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_create(ptr noundef %c, ptr noundef %dir_f, ptr noundef %f, ptr noundef %ri, ptr noundef %qstr) local_unnamed_addr #0 align 64 {
entry:
  %alloclen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #7
  %0 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alloclen, align 4, !annotation !48
  %call = call i32 @jffs2_reserve_space(ptr noundef %c, i32 noundef 68, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %f, i32 noundef 0) #7
  %data_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 19
  %1 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 0, ptr %data_crc, align 1
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 20
  %call3 = call i32 @crc32_le(i32 noundef 0, ptr noundef %ri, i32 noundef 60) #10
  %2 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %call3, ptr %node_crc, align 1
  %call4 = call ptr @jffs2_write_dnode(ptr noundef %c, ptr noundef %f, ptr noundef %ri, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %f) #7
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %metadata = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 3
  %4 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %metadata, align 4
  call void @mutex_unlock(ptr noundef %f) #7
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  %vfs_inode = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9
  %vfs_inode17 = getelementptr inbounds %struct.jffs2_inode_info, ptr %dir_f, i32 0, i32 9
  %call18 = call i32 @jffs2_init_security(ptr noundef %vfs_inode, ptr noundef %vfs_inode17, ptr noundef %qstr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %call23 = call i32 @jffs2_init_acl_post(ptr noundef %vfs_inode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %5 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qstr, align 8
  %add = add i32 %6, 40
  %add28 = add i32 %6, 24
  %call29 = call i32 @jffs2_reserve_space(ptr noundef %c, i32 noundef %add, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef %add28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %call36 = call ptr @jffs2_alloc_raw_dirent() #7
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @mutex_lock_nested(ptr noundef %dir_f, i32 noundef 0) #7
  %7 = ptrtoint ptr %call36 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 6533, ptr %call36, align 1
  %nodetype = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 1
  %8 = ptrtoint ptr %nodetype to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 -8191, ptr %nodetype, align 1
  %totlen = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 2
  %9 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qstr, align 8
  %add47 = add i32 %10, 40
  %11 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %add47, ptr %totlen, align 1
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 3
  %call50 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call36, i32 noundef 8) #10
  %12 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %call50, ptr %hdr_crc, align 1
  %pino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 4
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %dir_f, i32 0, i32 6
  %13 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %inocache, align 8
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ino, align 4
  %17 = ptrtoint ptr %pino to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %pino, align 1
  %version = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 5
  %highest_version = getelementptr inbounds %struct.jffs2_inode_info, ptr %dir_f, i32 0, i32 1
  %18 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %highest_version, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %highest_version, align 4
  %20 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %inc, ptr %version, align 1
  %ino55 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 6
  %ino56 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 4
  %21 = ptrtoint ptr %ino56 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %ino56, align 1
  %23 = ptrtoint ptr %ino55 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %ino55, align 1
  %mctime = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 7
  %ctime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 12
  %24 = ptrtoint ptr %ctime to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %ctime, align 1
  %26 = ptrtoint ptr %mctime to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %mctime, align 1
  %27 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qstr, align 8
  %conv = trunc i32 %28 to i8
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 8
  %29 = ptrtoint ptr %nsize to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %nsize, align 1
  %type = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 9
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %type, align 1
  %node_crc58 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 11
  %call61 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call36, i32 noundef 32) #10
  %31 = ptrtoint ptr %node_crc58 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %call61, ptr %node_crc58, align 1
  %name_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call36, i32 0, i32 12
  %name = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 8
  %34 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qstr, align 8
  %call65 = call i32 @crc32_le(i32 noundef 0, ptr noundef %33, i32 noundef %35) #10
  %36 = ptrtoint ptr %name_crc to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %call65, ptr %name_crc, align 1
  %37 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name, align 8
  %39 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qstr, align 8
  %call68 = call ptr @jffs2_write_dirent(ptr noundef %c, ptr noundef %dir_f, ptr noundef nonnull %call36, ptr noundef %38, i32 noundef %40, i32 noundef 0)
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call36) #7
  %cmp.i141 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  call void @mutex_unlock(ptr noundef %dir_f) #7
  %41 = ptrtoint ptr %call68 to i32
  br label %cleanup

if.end73:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %dents = getelementptr inbounds %struct.jffs2_inode_info, ptr %dir_f, i32 0, i32 4
  call void @jffs2_add_fd_to_list(ptr noundef %c, ptr noundef %call68, ptr noundef %dents) #7
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  call void @mutex_unlock(ptr noundef %dir_f) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then70, %if.then38, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end12 ], [ %41, %if.then70 ], [ 0, %if.end73 ], [ -12, %if.then38 ], [ %call, %entry.cleanup_crit_edge ], [ %call18, %if.end15.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ], [ %call29, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_init_security(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_init_acl_post(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_raw_dirent() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_raw_dirent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_add_fd_to_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_unlink(ptr noundef %c, ptr noundef %dir_f, ptr noundef %name, i32 noundef %namelen, ptr noundef %dead_f, i32 noundef %time) local_unnamed_addr #0 align 64 {
entry:
  %alloclen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #7
  %0 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alloclen, align 4, !annotation !48
  %call = tail call ptr @jffs2_alloc_raw_dirent() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %namelen, 40
  %add1 = add i32 %namelen, 24
  %call2 = call i32 @jffs2_reserve_space(ptr noundef %c, i32 noundef %add, ptr noundef nonnull %alloclen, i32 noundef 1, i32 noundef %add1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef %dir_f, i32 noundef 0) #7
  %1 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 6533, ptr %call, align 1
  %nodetype = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %nodetype to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -8191, ptr %nodetype, align 1
  %totlen = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %add, ptr %totlen, align 1
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 3
  %call12 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call, i32 noundef 8) #10
  %4 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %call12, ptr %hdr_crc, align 1
  %pino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 4
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %dir_f, i32 0, i32 6
  %5 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inocache, align 8
  %ino = getelementptr inbounds %struct.jffs2_inode_cache, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ino, align 4
  %9 = ptrtoint ptr %pino to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %pino, align 1
  %version = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 5
  %highest_version = getelementptr inbounds %struct.jffs2_inode_info, ptr %dir_f, i32 0, i32 1
  %10 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %highest_version, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %highest_version, align 4
  %12 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %inc, ptr %version, align 1
  %ino17 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %ino17 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %ino17, align 1
  %mctime = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %mctime to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %time, ptr %mctime, align 1
  %conv = trunc i32 %namelen to i8
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 8
  %15 = ptrtoint ptr %nsize to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %nsize, align 1
  %type = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 9
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %type, align 1
  %node_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 11
  %call24 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call, i32 noundef 32) #10
  %17 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %call24, ptr %node_crc, align 1
  %name_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 12
  %call27 = call i32 @crc32_le(i32 noundef 0, ptr noundef %name, i32 noundef %namelen) #10
  %18 = ptrtoint ptr %name_crc to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %call27, ptr %name_crc, align 1
  %call28 = call ptr @jffs2_write_dirent(ptr noundef %c, ptr noundef %dir_f, ptr noundef nonnull %call, ptr noundef %name, i32 noundef %namelen, i32 noundef 1)
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call) #7
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  call void @mutex_unlock(ptr noundef %dir_f) #7
  %19 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end5
  %dents = getelementptr inbounds %struct.jffs2_inode_info, ptr %dir_f, i32 0, i32 4
  call void @jffs2_add_fd_to_list(ptr noundef %c, ptr noundef %call28, ptr noundef %dents) #7
  call void @mutex_unlock(ptr noundef %dir_f) #7
  %tobool35.not = icmp eq ptr %dead_f, null
  br i1 %tobool35.not, label %if.end33.if.end68_crit_edge, label %land.lhs.true

if.end33.if.end68_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end33
  %inocache36 = getelementptr inbounds %struct.jffs2_inode_info, ptr %dead_f, i32 0, i32 6
  %20 = ptrtoint ptr %inocache36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inocache36, align 8
  %tobool37.not = icmp eq ptr %21, null
  br i1 %tobool37.not, label %land.lhs.true.if.end68_crit_edge, label %if.then38

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then38:                                        ; preds = %land.lhs.true
  call void @mutex_lock_nested(ptr noundef nonnull %dead_f, i32 noundef 0) #7
  %vfs_inode = getelementptr inbounds %struct.jffs2_inode_info, ptr %dead_f, i32 0, i32 9
  %22 = ptrtoint ptr %vfs_inode to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vfs_inode, align 8
  %24 = and i16 %23, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %24)
  %cmp = icmp eq i16 %24, 16384
  br i1 %cmp, label %while.cond.preheader, label %if.else63

while.cond.preheader:                             ; preds = %if.then38
  %dents43 = getelementptr inbounds %struct.jffs2_inode_info, ptr %dead_f, i32 0, i32 4
  %25 = ptrtoint ptr %dents43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dents43, align 8
  %tobool44.not128 = icmp eq ptr %26, null
  br i1 %tobool44.not128, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end61.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %27 = phi ptr [ %40, %if.end61.while.body_crit_edge ], [ %26, %while.cond.preheader.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next, align 4
  %30 = ptrtoint ptr %dents43 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %dents43, align 8
  %ino47 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %27, i32 0, i32 3
  %31 = ptrtoint ptr %ino47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ino47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool48.not = icmp eq i32 %32, 0
  br i1 %tobool48.not, label %while.body.if.end58_crit_edge, label %do.end

while.body.if.end58_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %inocache36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %inocache36, align 8
  %ino51 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %ino51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ino51, align 4
  %name52 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %27, i32 0, i32 6
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %36, ptr noundef %name52, i32 noundef %32) #11
  br label %if.end58

if.end58:                                         ; preds = %do.end, %while.body.if.end58_crit_edge
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %27, align 4
  %tobool59.not = icmp eq ptr %38, null
  br i1 %tobool59.not, label %if.end58.if.end61_crit_edge, label %if.then60

if.end58.if.end61_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef nonnull %38) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end58.if.end61_crit_edge
  call void @jffs2_free_full_dirent(ptr noundef nonnull %27) #7
  %39 = ptrtoint ptr %dents43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dents43, align 8
  %tobool44.not = icmp eq ptr %40, null
  br i1 %tobool44.not, label %if.end61.while.end_crit_edge, label %if.end61.while.body_crit_edge

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end61.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %41 = ptrtoint ptr %inocache36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %inocache36, align 8
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %pino_nlink, align 4
  br label %if.end66

if.else63:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %inocache36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %inocache36, align 8
  %pino_nlink65 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %pino_nlink65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pino_nlink65, align 4
  %dec = add i32 %47, -1
  store i32 %dec, ptr %pino_nlink65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else63, %while.end
  call void @mutex_unlock(ptr noundef nonnull %dead_f) #7
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %land.lhs.true.if.end68_crit_edge, %if.end33.if.end68_crit_edge
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then30, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %19, %if.then30 ], [ 0, %if.end68 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_link(ptr noundef %c, ptr noundef %dir_f, i32 noundef %ino, i8 noundef zeroext %type, ptr noundef %name, i32 noundef %namelen, i32 noundef %time) local_unnamed_addr #0 align 64 {
entry:
  %alloclen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #7
  %0 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alloclen, align 4, !annotation !48
  %call = tail call ptr @jffs2_alloc_raw_dirent() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %namelen, 40
  %add1 = add i32 %namelen, 24
  %call2 = call i32 @jffs2_reserve_space(ptr noundef %c, i32 noundef %add, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef %add1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef %dir_f, i32 noundef 0) #7
  %1 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 6533, ptr %call, align 1
  %nodetype = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %nodetype to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -8191, ptr %nodetype, align 1
  %totlen = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %add, ptr %totlen, align 1
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 3
  %call12 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call, i32 noundef 8) #10
  %4 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %call12, ptr %hdr_crc, align 1
  %pino = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 4
  %inocache = getelementptr inbounds %struct.jffs2_inode_info, ptr %dir_f, i32 0, i32 6
  %5 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inocache, align 8
  %ino15 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ino15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ino15, align 4
  %9 = ptrtoint ptr %pino to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %pino, align 1
  %version = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 5
  %highest_version = getelementptr inbounds %struct.jffs2_inode_info, ptr %dir_f, i32 0, i32 1
  %10 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %highest_version, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %highest_version, align 4
  %12 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %inc, ptr %version, align 1
  %ino18 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %ino18 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %ino, ptr %ino18, align 1
  %mctime = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %mctime to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %time, ptr %mctime, align 1
  %conv = trunc i32 %namelen to i8
  %nsize = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 8
  %15 = ptrtoint ptr %nsize to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %nsize, align 1
  %type23 = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 9
  %16 = ptrtoint ptr %type23 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %type, ptr %type23, align 1
  %node_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 11
  %call26 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call, i32 noundef 32) #10
  %17 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %call26, ptr %node_crc, align 1
  %name_crc = getelementptr inbounds %struct.jffs2_raw_dirent, ptr %call, i32 0, i32 12
  %call29 = call i32 @crc32_le(i32 noundef 0, ptr noundef %name, i32 noundef %namelen) #10
  %18 = ptrtoint ptr %name_crc to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %call29, ptr %name_crc, align 1
  %call30 = call ptr @jffs2_write_dirent(ptr noundef %c, ptr noundef %dir_f, ptr noundef nonnull %call, ptr noundef %name, i32 noundef %namelen, i32 noundef 0)
  call void @jffs2_free_raw_dirent(ptr noundef nonnull %call) #7
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  call void @mutex_unlock(ptr noundef %dir_f) #7
  %19 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dents = getelementptr inbounds %struct.jffs2_inode_info, ptr %dir_f, i32 0, i32 4
  call void @jffs2_add_fd_to_list(ptr noundef %c, ptr noundef %call30, ptr noundef %dents) #7
  call void @jffs2_complete_reservation(ptr noundef %c) #7
  call void @mutex_unlock(ptr noundef %dir_f) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then32, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %19, %if.then32 ], [ 0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/write.c", i32 83, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jffs2_write_dnode._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jffs2_write_dnode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/write.c", i32 113, i32 3}
!8 = !{ptr @jffs2_write_dnode._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @jffs2_write_dnode._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jffs2/write.c", i32 125, i32 4}
!12 = !{ptr @jffs2_write_dnode._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @jffs2_write_dnode._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jffs2/write.c", i32 229, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @jffs2_write_dirent._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @jffs2_write_dirent._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/jffs2/write.c", i32 230, i32 3}
!21 = !{ptr @jffs2_write_dirent._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @jffs2_write_dirent._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @jffs2_write_dirent._entry.14, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../fs/jffs2/write.c", i32 271, i32 3}
!25 = !{ptr @jffs2_write_dirent._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @jffs2_write_dirent._entry.16, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../fs/jffs2/write.c", i32 277, i32 4}
!28 = !{ptr @jffs2_write_dirent._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/jffs2/write.c", i32 427, i32 4}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @jffs2_write_inode_range._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @jffs2_write_inode_range._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jffs2/write.c", i32 644, i32 6}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @jffs2_do_unlink._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @jffs2_do_unlink._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2154434499, i64 2154434980, i64 2154434536, i64 2154434592, i64 2154434626, i64 2154434650, i64 2154434691, i64 2154434712, i64 2154434740, i64 2154434774}
!51 = !{i64 2154464334, i64 2154464815, i64 2154464371, i64 2154464427, i64 2154464461, i64 2154464485, i64 2154464526, i64 2154464547, i64 2154464575, i64 2154464609}
