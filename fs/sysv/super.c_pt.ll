; ModuleID = '/llk/IR_all_yes/fs/sysv/super.c_pt.bc'
source_filename = "../fs/sysv/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.73 = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysv_sb_info = type { ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i16, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.xenix_super_block = type <{ i16, i32, i16, [100 x i32], i16, [100 x i16], i8, i8, i8, i8, i32, i32, i16, [4 x i16], [6 x i8], [6 x i8], i8, [371 x i8], i32, i32 }>
%struct.sysv4_super_block = type { i16, i16, i32, i16, i16, [50 x i32], i16, i16, [100 x i16], i8, i8, i8, i8, i32, [4 x i16], i32, i16, i16, [6 x i8], [6 x i8], [12 x i32], i32, i32, i32 }
%struct.sysv2_super_block = type <{ i16, i32, i16, [50 x i32], i16, [100 x i16], i8, i8, i8, i8, i32, [4 x i16], i32, i16, [6 x i8], [6 x i8], [14 x i32], i32, i32, i32 }>
%struct.coh_super_block = type <{ i16, i32, i16, [64 x i32], i16, [100 x i16], i8, i8, i8, i8, i32, i32, i16, i16, i16, [6 x i8], [6 x i8], i32 }>
%struct.v7_super_block = type <{ i16, i32, i16, [50 x i32], i16, [100 x i16], i8, i8, i8, i8, i32, i32, i16, i16, i16, [6 x i8], [6 x i8] }>

@__UNIQUE_ID_alias247 = internal constant [19 x i8] c"sysv.alias=fs-sysv\00", section ".modinfo", align 1
@__UNIQUE_ID_alias248 = internal constant [17 x i8] c"sysv.alias=fs-v7\00", section ".modinfo", align 1
@__UNIQUE_ID_alias249 = internal constant [14 x i8] c"sysv.alias=v7\00", section ".modinfo", align 1
@sysv_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr null, ptr null, ptr @sysv_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@v7_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.34, i32 1, ptr null, ptr null, ptr @v7_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_sysv__250_590_init_sysv_fs6 = internal global ptr @init_sysv_fs, section ".initcall6.init", align 4
@__exitcall_exit_sysv_fs = internal global ptr @exit_sysv_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file251 = internal constant [23 x i8] c"sysv.file=fs/sysv/sysv\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [17 x i8] c"sysv.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sysv\00", [27 x i8] zeroinitializer }, align 32
@sysv_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sbi->s_lock\00", [19 x i8] zeroinitializer }, align 32
@flavours = internal constant { [6 x %struct.anon.73], [48 x i8] } { [6 x %struct.anon.73] [%struct.anon.73 { i32 1, ptr @detect_xenix }, %struct.anon.73 { i32 0, ptr @detect_sysv }, %struct.anon.73 { i32 0, ptr @detect_coherent }, %struct.anon.73 { i32 9, ptr @detect_sysv_odd }, %struct.anon.73 { i32 15, ptr @detect_sysv_odd }, %struct.anon.73 { i32 18, ptr @detect_sysv }], [48 x i8] zeroinitializer }, align 32
@sysv_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"oldfs: cannot read superblock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sysv_fill_super\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/sysv/super.c\00", [16 x i8] zeroinitializer }, align 32
@sysv_fill_super._entry_ptr = internal global ptr @sysv_fill_super._entry, section ".printk_index", align 4
@sysv_fill_super._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"VFS: unable to find oldfs superblock on device %s\0A\00", [45 x i8] zeroinitializer }, align 32
@sysv_fill_super._entry_ptr.7 = internal global ptr @sysv_fill_super._entry.5, section ".printk_index", align 4
@sysv_fill_super._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VFS: oldfs: unsupported block size (%dKb)\0A\00", [53 x i8] zeroinitializer }, align 32
@sysv_fill_super._entry_ptr.10 = internal global ptr @sysv_fill_super._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@detect_sysv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"SysV FS: SCO EAFS on %s detected, forcing read-only mode.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"detect_sysv\00", [20 x i8] zeroinitializer }, align 32
@detect_sysv._entry_ptr = internal global ptr @detect_sysv._entry, section ".printk_index", align 4
@detect_sysv._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"SysV FS: can't handle long file names on %s, forcing read-only mode.\0A\00", [58 x i8] zeroinitializer }, align 32
@detect_sysv._entry_ptr.15 = internal global ptr @detect_sysv._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"noname\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xxxxx \00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nopack\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xxxxx\0A\00", [25 x i8] zeroinitializer }, align 32
@flavour_names = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [36 x i8] zeroinitializer }, align 32
@flavour_setup = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @detected_xenix, ptr @detected_sysv4, ptr @detected_sysv2, ptr @detected_coherent, ptr @detected_v7, ptr @detected_sysv4], [36 x i8] zeroinitializer }, align 32
@complete_read_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"VFS: Found a %s FS (block size = %ld) on device %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"complete_read_super\00", [44 x i8] zeroinitializer }, align 32
@complete_read_super._entry_ptr = internal global ptr @complete_read_super._entry, section ".printk_index", align 4
@sysv_sops = external dso_local constant %struct.super_operations, align 4
@complete_read_super._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SysV FS: get root inode failed\0A\00", [32 x i8] zeroinitializer }, align 32
@complete_read_super._entry_ptr.24 = internal global ptr @complete_read_super._entry.22, section ".printk_index", align 4
@complete_read_super._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SysV FS: get root dentry failed\0A\00", [63 x i8] zeroinitializer }, align 32
@complete_read_super._entry_ptr.27 = internal global ptr @complete_read_super._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Xenix\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SystemV\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SystemV Release 2\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Coherent\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"V7\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AFS\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v7\00", [29 x i8] zeroinitializer }, align 32
@v7_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@v7_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"VFS: unable to read V7 FS superblock on device %s.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"v7_fill_super\00", [18 x i8] zeroinitializer }, align 32
@v7_fill_super._entry_ptr = internal global ptr @v7_fill_super._entry, section ".printk_index", align 4
@v7_fill_super._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013VFS: could not find a valid V7 on %s.\0A\00", [55 x i8] zeroinitializer }, align 32
@v7_fill_super._entry_ptr.39 = internal global ptr @v7_fill_super._entry.37, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 2839876, i64 1146432256]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 545134845, i64 4246240800]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"sysv_fs_type\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 541, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"v7_fs_type\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 550, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 543, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 369, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"flavours\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 276, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 417, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 425, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 431, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 221, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 244, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 258, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 258, i32 62 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 259, i32 30 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 259, i32 65 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"flavour_names\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 285, i32 14 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"flavour_setup\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 294, i32 15 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 329, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 339, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 344, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 286, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 287, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 288, i32 19 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 289, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 290, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 291, i32 17 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 552, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 487, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 496, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [19 x i8] c"../fs/sysv/super.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 520, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_alias249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_exit_sysv_fs, ptr @__initcall__kmod_sysv__250_590_init_sysv_fs6, ptr @complete_read_super._entry, ptr @complete_read_super._entry.22, ptr @complete_read_super._entry.25, ptr @complete_read_super._entry_ptr, ptr @complete_read_super._entry_ptr.24, ptr @complete_read_super._entry_ptr.27, ptr @detect_sysv._entry, ptr @detect_sysv._entry.13, ptr @detect_sysv._entry_ptr, ptr @detect_sysv._entry_ptr.15, ptr @exit_sysv_fs, ptr @sysv_fill_super._entry, ptr @sysv_fill_super._entry.5, ptr @sysv_fill_super._entry.8, ptr @sysv_fill_super._entry_ptr, ptr @sysv_fill_super._entry_ptr.10, ptr @sysv_fill_super._entry_ptr.7, ptr @v7_fill_super._entry, ptr @v7_fill_super._entry.37, ptr @v7_fill_super._entry_ptr, ptr @v7_fill_super._entry_ptr.39, ptr @sysv_fs_type, ptr @v7_fs_type, ptr @.str, ptr @sysv_fill_super.__key, ptr @.str.1, ptr @flavours, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @flavour_names, ptr @flavour_setup, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @v7_fill_super.__key, ptr @.str.35, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v7_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flavours to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_fill_super._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_fill_super._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_sysv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_sysv._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flavour_names to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flavour_setup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @complete_read_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @complete_read_super._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @complete_read_super._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v7_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v7_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v7_fill_super._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_sysv_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @sysv_fs_type) #9
  %call1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @v7_fs_type) #9
  tail call void @sysv_destroy_icache() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysv_destroy_icache() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_sysv_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysv_init_icache() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @sysv_fs_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.destroy_icache_crit_edge

if.end.destroy_icache_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_icache

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_filesystem(ptr noundef nonnull @v7_fs_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %unregister

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

unregister:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @unregister_filesystem(ptr noundef nonnull @sysv_fs_type) #9
  br label %destroy_icache

destroy_icache:                                   ; preds = %unregister, %if.end.destroy_icache_crit_edge
  %error.0 = phi i32 [ %call1, %if.end.destroy_icache_crit_edge ], [ %call5, %unregister ]
  tail call void @sysv_destroy_icache() #9
  br label %cleanup

cleanup:                                          ; preds = %destroy_icache, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %error.0, %destroy_icache ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sysv_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @sysv_fill_super) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %data, i32 noundef %silent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sb, ptr %call7.i.i, align 8
  %s_block_base = getelementptr inbounds %struct.sysv_sb_info, ptr %call7.i.i, i32 0, i32 10
  %2 = ptrtoint ptr %s_block_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %s_block_base, align 8
  %s_lock = getelementptr inbounds %struct.sysv_sb_info, ptr %call7.i.i, i32 0, i32 32
  tail call void @__mutex_init(ptr noundef %s_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sysv_fill_super.__key) #9
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %4 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %5 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 4294967295, ptr %s_time_max, align 64
  %call16 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 1024) #9
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %bh.0152 = phi ptr [ null, %if.end ], [ %call.i, %for.inc.for.body_crit_edge ]
  %i.0150 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %bh.0152, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bh.0152) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %arrayidx = getelementptr [6 x %struct.anon.73], ptr @flavours, i32 0, i32 %i.0150
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %conv = sext i32 %7 to i64
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %10 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %9, i64 noundef %conv, i32 noundef %11, i32 noundef 8) #9
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %brelse.exit.for.inc_crit_edge, label %if.end21

brelse.exit.for.inc_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end21:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  %test = getelementptr [6 x %struct.anon.73], ptr @flavours, i32 0, i32 %i.0150, i32 1
  %12 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %test, align 4
  %14 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info, align 16
  %call24 = tail call i32 %13(ptr noundef %15, ptr noundef nonnull %call.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %brelse.exit.for.inc_crit_edge
  %size.1 = phi i32 [ %call24, %if.end21 ], [ 0, %brelse.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0150)
  %cmp = icmp ult i32 %i.0150, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1)
  %tobool17.not = icmp eq i32 %size.1, 0
  %or.cond = select i1 %cmp, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %16 = zext i32 %size.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size.1, label %Ebadsize [
    i32 0, label %Eunknown
    i32 1, label %sw.bb
    i32 2, label %for.end.sw.epilog_crit_edge
    i32 3, label %sw.bb35
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b_blocknr, align 8
  %.tr = trunc i64 %18 to i32
  %conv28 = shl i32 %.tr, 1
  br i1 %tobool19.not, label %sw.bb.brelse.exit125_crit_edge, label %if.then.i124

sw.bb.brelse.exit125_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit125

if.then.i124:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %call.i) #9
  br label %brelse.exit125

brelse.exit125:                                   ; preds = %if.then.i124, %sw.bb.brelse.exit125_crit_edge
  %call29 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 512) #9
  %conv30 = zext i32 %conv28 to i64
  %19 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bdev.i, align 4
  %21 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize.i, align 16
  %call.i128 = tail call ptr @__bread_gfp(ptr noundef %20, i64 noundef %conv30, i32 noundef %22, i32 noundef 8) #9
  %add = or i32 %conv28, 1
  %conv32 = zext i32 %add to i64
  %23 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdev.i, align 4
  %25 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i, align 16
  %call.i131 = tail call ptr @__bread_gfp(ptr noundef %24, i64 noundef %conv32, i32 noundef %26, i32 noundef 8) #9
  br label %sw.epilog

sw.bb35:                                          ; preds = %for.end
  %b_blocknr36 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %b_blocknr36 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %b_blocknr36, align 8
  %shr = lshr i64 %28, 1
  br i1 %tobool19.not, label %sw.bb35.brelse.exit134_crit_edge, label %if.then.i133

sw.bb35.brelse.exit134_crit_edge:                 ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit134

if.then.i133:                                     ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %call.i) #9
  br label %brelse.exit134

brelse.exit134:                                   ; preds = %if.then.i133, %sw.bb35.brelse.exit134_crit_edge
  %call38 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 2048) #9
  %conv39 = and i64 %shr, 4294967295
  %29 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_bdev.i, align 4
  %31 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocksize.i, align 16
  %call.i137 = tail call ptr @__bread_gfp(ptr noundef %30, i64 noundef %conv39, i32 noundef %32, i32 noundef 8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %brelse.exit134, %brelse.exit125, %for.end.sw.epilog_crit_edge
  %bh.1 = phi ptr [ %call.i137, %brelse.exit134 ], [ %call.i131, %brelse.exit125 ], [ %call.i, %for.end.sw.epilog_crit_edge ]
  %bh1.0 = phi ptr [ %call.i137, %brelse.exit134 ], [ %call.i128, %brelse.exit125 ], [ %call.i, %for.end.sw.epilog_crit_edge ]
  %tobool41.not = icmp eq ptr %bh.1, null
  %tobool42.not = icmp eq ptr %bh1.0, null
  %or.cond122 = select i1 %tobool41.not, i1 true, i1 %tobool42.not
  br i1 %or.cond122, label %sw.epilog.if.end48_crit_edge, label %if.then43

sw.epilog.if.end48_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then43:                                        ; preds = %sw.epilog
  %s_bh1 = getelementptr inbounds %struct.sysv_sb_info, ptr %call7.i.i, i32 0, i32 13
  %33 = ptrtoint ptr %s_bh1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bh1.0, ptr %s_bh1, align 8
  %s_bh2 = getelementptr inbounds %struct.sysv_sb_info, ptr %call7.i.i, i32 0, i32 14
  %34 = ptrtoint ptr %s_bh2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %bh.1, ptr %s_bh2, align 4
  %call44 = tail call fastcc i32 @complete_read_super(ptr noundef %sb, i32 noundef %silent, i32 noundef %size.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end48_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end48:                                         ; preds = %if.then43.if.end48_crit_edge, %sw.epilog.if.end48_crit_edge
  br i1 %tobool42.not, label %if.end48.brelse.exit140_crit_edge, label %if.then.i139

if.end48.brelse.exit140_crit_edge:                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit140

if.then.i139:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bh1.0) #9
  br label %brelse.exit140

brelse.exit140:                                   ; preds = %if.then.i139, %if.end48.brelse.exit140_crit_edge
  br i1 %tobool41.not, label %brelse.exit140.brelse.exit143_crit_edge, label %if.then.i142

brelse.exit140.brelse.exit143_crit_edge:          ; preds = %brelse.exit140
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit143

if.then.i142:                                     ; preds = %brelse.exit140
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bh.1) #9
  br label %brelse.exit143

brelse.exit143:                                   ; preds = %if.then.i142, %brelse.exit140.brelse.exit143_crit_edge
  %call49 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 1024) #9
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %failed

failed:                                           ; preds = %do.end66, %brelse.exit149.failed_crit_edge, %do.end58, %brelse.exit146.failed_crit_edge, %brelse.exit143
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

Eunknown:                                         ; preds = %for.end
  br i1 %tobool19.not, label %Eunknown.brelse.exit146_crit_edge, label %if.then.i145

Eunknown.brelse.exit146_crit_edge:                ; preds = %Eunknown
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit146

if.then.i145:                                     ; preds = %Eunknown
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %call.i) #9
  br label %brelse.exit146

brelse.exit146:                                   ; preds = %if.then.i145, %Eunknown.brelse.exit146_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool54.not = icmp eq i32 %silent, 0
  br i1 %tobool54.not, label %do.end58, label %brelse.exit146.failed_crit_edge

brelse.exit146.failed_crit_edge:                  ; preds = %brelse.exit146
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

do.end58:                                         ; preds = %brelse.exit146
  call void @__sanitizer_cov_trace_pc() #11
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %s_id) #13
  br label %failed

Ebadsize:                                         ; preds = %for.end
  br i1 %tobool19.not, label %Ebadsize.brelse.exit149_crit_edge, label %if.then.i148

Ebadsize.brelse.exit149_crit_edge:                ; preds = %Ebadsize
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit149

if.then.i148:                                     ; preds = %Ebadsize
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %call.i) #9
  br label %brelse.exit149

brelse.exit149:                                   ; preds = %if.then.i148, %Ebadsize.brelse.exit149_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool62.not = icmp eq i32 %silent, 0
  br i1 %tobool62.not, label %do.end66, label %brelse.exit149.failed_crit_edge

brelse.exit149.failed_crit_edge:                  ; preds = %brelse.exit149
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

do.end66:                                         ; preds = %brelse.exit149
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %size.1, -2
  %shl68 = shl nuw i32 1, %sub
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %shl68) #13
  br label %failed

cleanup:                                          ; preds = %failed, %if.then43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %failed ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @complete_read_super(ptr noundef %sb, i32 noundef %silent, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_type = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_type, align 4
  %arrayidx = getelementptr [7 x ptr], ptr @flavour_names, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %conv = add i32 %size, 8
  %conv1 = and i32 %conv, 255
  %shl = shl nuw i32 1, %conv1
  %shr = ashr i32 %shl, 2
  %s_firstinodezone = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %s_firstinodezone to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %s_firstinodezone, align 4
  %arrayidx3 = getelementptr [7 x ptr], ptr @flavour_setup, i32 0, i32 %3
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3, align 4
  %s_max_links = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 41
  tail call void %8(ptr noundef %1, ptr noundef %s_max_links) #9
  %s_nzones = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 29
  %9 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_nzones, align 4
  %s_firstdatazone = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_firstdatazone, align 4
  %sub = sub i32 %10, %12
  %s_ndatazones = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 28
  %13 = ptrtoint ptr %s_ndatazones to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %s_ndatazones, align 4
  %shr4 = ashr i32 %shl, 6
  %s_inodes_per_block = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %s_inodes_per_block to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr4, ptr %s_inodes_per_block, align 4
  %sub6 = add nsw i32 %shr4, -1
  %s_inodes_per_block_1 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %s_inodes_per_block_1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub6, ptr %s_inodes_per_block_1, align 4
  %sub8 = add nsw i32 %conv1, -6
  %s_inodes_per_block_bits = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %s_inodes_per_block_bits to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub8, ptr %s_inodes_per_block_bits, align 4
  %s_ind_per_block = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %s_ind_per_block to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %s_ind_per_block, align 4
  %mul = mul i32 %shr, %shr
  %s_ind_per_block_2 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %s_ind_per_block_2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %s_ind_per_block_2, align 4
  %add9 = add nsw i32 %shr, 1
  %mul10 = mul i32 %add9, %shr
  %add11 = add i32 %mul10, 1
  %mul12 = mul i32 %add11, %shr
  %add13 = add i32 %mul12, 10
  %s_toobig_block = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %s_toobig_block to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add13, ptr %s_toobig_block, align 4
  %sub15 = add nsw i32 %conv1, -2
  %s_ind_per_block_bits = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %s_ind_per_block_bits to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub15, ptr %s_ind_per_block_bits, align 4
  %21 = ptrtoint ptr %s_firstinodezone to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_firstinodezone, align 4
  %sub18 = sub i32 %12, %22
  %shl20 = shl i32 %sub18, %sub8
  %s_ninodes = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 27
  %23 = ptrtoint ptr %s_ninodes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl20, ptr %s_ninodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool.not = icmp eq i32 %silent, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %24 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize, align 16
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %5, i32 noundef %25, ptr noundef %s_id) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_type, align 4
  %add23 = add i32 %27, 19920819
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %28 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add23, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %29 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sysv_sops, ptr %s_op, align 4
  %s_forced_ro = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 31
  %30 = ptrtoint ptr %s_forced_ro to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_forced_ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool24.not = icmp eq i32 %31, 0
  br i1 %tobool24.not, label %if.end.if.end26_crit_edge, label %if.then25

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %32 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_flags, align 4
  %or = or i32 %33, 1
  store i32 %or, ptr %s_flags, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end.if.end26_crit_edge
  %call27 = tail call ptr @sysv_iget(ptr noundef %sb, i32 noundef 2) #9
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end26.cleanup.sink.split_crit_edge, label %if.end35

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end35:                                         ; preds = %if.end26
  %call36 = tail call ptr @d_make_root(ptr noundef %call27) #9
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %34 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call36, ptr %s_root, align 64
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.end35.cleanup.sink.split_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35.cleanup.sink.split_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end35.cleanup.sink.split_crit_edge, %if.end26.cleanup.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.23, %if.end26.cleanup.sink.split_crit_edge ], [ @.str.26, %if.end35.cleanup.sink.split_crit_edge ]
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.26.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end35.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @detect_xenix(ptr nocapture noundef %sbi, ptr nocapture noundef readonly %bh) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %s_magic = getelementptr inbounds %struct.xenix_super_block, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_magic, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1146432256, label %entry.if.end6_crit_edge
    i32 2839876, label %if.then3
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %entry.if.end6_crit_edge
  %cond = phi i1 [ true, %entry.if.end6_crit_edge ], [ false, %if.then3 ]
  %.sink = phi i8 [ 0, %entry.if.end6_crit_edge ], [ 2, %if.then3 ]
  %s_bytesex4 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 2
  %5 = ptrtoint ptr %s_bytesex4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %s_bytesex4, align 4
  %s_type = getelementptr inbounds %struct.xenix_super_block, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_type, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %spec.select = select i1 %cond, i32 %8, i32 %7
  %spec.select.off = add i32 %spec.select, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.off)
  %switch = icmp ult i32 %spec.select.off, 2
  br i1 %switch, label %cleanup.sink.split, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %s_type9 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 1
  %9 = ptrtoint ptr %s_type9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %s_type9, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %spec.select, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @detect_sysv(ptr nocapture noundef %sbi, ptr nocapture noundef readonly %bh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %s_magic = getelementptr i8, ptr %3, i32 1016
  %4 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_magic, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 545134845, label %entry.if.end6_crit_edge
    i32 -48726496, label %if.then3
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %entry.if.end6_crit_edge
  %cmp.not.i = phi i1 [ false, %entry.if.end6_crit_edge ], [ true, %if.then3 ]
  %cond = phi i1 [ true, %entry.if.end6_crit_edge ], [ false, %if.then3 ]
  %.sink = phi i8 [ 0, %entry.if.end6_crit_edge ], [ 2, %if.then3 ]
  %s_bytesex4 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 2
  %7 = ptrtoint ptr %s_bytesex4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %s_bytesex4, align 4
  %s_type = getelementptr i8, ptr %3, i32 1020
  %8 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_type, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %spec.select = select i1 %cond, i32 %10, i32 %9
  %s_nfree = getelementptr i8, ptr %3, i32 520
  %11 = ptrtoint ptr %s_nfree to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %s_nfree, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #9
  %retval.0.i89 = select i1 %cmp.not.i, i16 %12, i16 %13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %retval.0.i89)
  %cmp8 = icmp eq i16 %retval.0.i89, -1
  br i1 %cmp8, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end6
  %s_type11 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 1
  %14 = ptrtoint ptr %s_type11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %s_type11, align 4
  %s_forced_ro = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 31
  %15 = ptrtoint ptr %s_forced_ro to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %s_forced_ro, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %s_id = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %s_id) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %s_time = getelementptr i8, ptr %3, i32 932
  %18 = ptrtoint ptr %s_time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_time, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %spec.select103 = select i1 %cond, i32 %20, i32 %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 315532800, i32 %spec.select103)
  %cmp18 = icmp ult i32 %spec.select103, 315532800
  %21 = add i32 %spec.select, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %21)
  %22 = icmp ult i32 %21, -3
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.end16
  br i1 %22, label %if.then20.cleanup_crit_edge, label %if.end26

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %s_type27 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 1
  %23 = ptrtoint ptr %s_type27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %s_type27, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  br i1 %22, label %land.lhs.true, label %cond.false.critedge

land.lhs.true:                                    ; preds = %if.end28
  %24 = add i32 %spec.select, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33, i32 %24)
  %25 = icmp ult i32 %24, -33
  br i1 %25, label %land.lhs.true.cleanup_crit_edge, label %do.end46

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end46:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %s_id48 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %s_id48) #13
  %s_forced_ro51 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 31
  %26 = ptrtoint ptr %s_forced_ro51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %s_forced_ro51, align 4
  %s_type53.c = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 1
  %27 = ptrtoint ptr %s_type53.c to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %s_type53.c, align 4
  %shr = lshr i32 %spec.select, 4
  br label %cleanup

cond.false.critedge:                              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %s_type53.c87 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 1
  %28 = ptrtoint ptr %s_type53.c87 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %s_type53.c87, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false.critedge, %do.end46, %land.lhs.true.cleanup_crit_edge, %if.end26, %if.then20.cleanup_crit_edge, %do.end, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end26 ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %do.end ], [ %spec.select, %if.then10.cleanup_crit_edge ], [ 0, %if.then20.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %shr, %do.end46 ], [ %spec.select, %cond.false.critedge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @detect_coherent(ptr nocapture noundef writeonly %sbi, ptr nocapture noundef readonly %bh) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %s_fname = getelementptr i8, ptr %1, i32 996
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %s_fname, ptr noundef nonnull dereferenceable(6) @.str.16, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %bcmp19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %s_fname, ptr noundef nonnull dereferenceable(6) @.str.17, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp19)
  %tobool4.not = icmp eq i32 %bcmp19, 0
  br i1 %tobool4.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %s_fpack = getelementptr i8, ptr %1, i32 1002
  %bcmp17 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %s_fpack, ptr noundef nonnull dereferenceable(6) @.str.18, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp17)
  %tobool7.not = icmp eq i32 %bcmp17, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true8

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %bcmp18 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %s_fpack, ptr noundef nonnull dereferenceable(6) @.str.19, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp18)
  %tobool12.not = icmp eq i32 %bcmp18, 0
  br i1 %tobool12.not, label %land.lhs.true8.if.end_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %s_bytesex = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 2
  %2 = ptrtoint ptr %s_bytesex to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %s_bytesex, align 4
  %s_type = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 1
  %3 = ptrtoint ptr %s_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %s_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @detect_sysv_odd(ptr nocapture noundef %sbi, ptr nocapture noundef readonly %bh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @detect_sysv(ptr noundef %sbi, ptr noundef %bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp sgt i32 %call, 2
  %spec.select = select i1 %cmp, i32 0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sysv_iget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @detected_xenix(ptr nocapture noundef %sbi, ptr nocapture noundef writeonly %max_links) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bh1 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 13
  %0 = ptrtoint ptr %s_bh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bh1, align 4
  %s_bh2 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 14
  %2 = ptrtoint ptr %s_bh2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bh2, align 4
  %cmp.not = icmp eq ptr %1, %3
  %b_data1 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %b_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data1, align 4
  %sbd2.0.idx = select i1 %cmp.not, i32 -512, i32 0
  %sbd2.0 = getelementptr i8, ptr %5, i32 %sbd2.0.idx
  %6 = ptrtoint ptr %max_links to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 126, ptr %max_links, align 4
  %s_fic_size = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 11
  %7 = ptrtoint ptr %s_fic_size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 100, ptr %s_fic_size, align 4
  %s_flc_size = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 12
  %8 = ptrtoint ptr %s_flc_size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 100, ptr %s_flc_size, align 2
  %s_sbd1 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 15
  %9 = ptrtoint ptr %s_sbd1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %s_sbd1, align 4
  %s_sbd2 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 16
  %10 = ptrtoint ptr %s_sbd2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sbd2.0, ptr %s_sbd2, align 4
  %s_ninode = getelementptr inbounds %struct.xenix_super_block, ptr %5, i32 0, i32 4
  %s_sb_fic_count = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 17
  %11 = ptrtoint ptr %s_sb_fic_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %s_ninode, ptr %s_sb_fic_count, align 4
  %s_inode = getelementptr inbounds %struct.xenix_super_block, ptr %5, i32 0, i32 5
  %s_sb_fic_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 18
  %12 = ptrtoint ptr %s_sb_fic_inodes to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %s_inode, ptr %s_sb_fic_inodes, align 4
  %s_tinode = getelementptr inbounds %struct.xenix_super_block, ptr %sbd2.0, i32 0, i32 12
  %s_sb_total_free_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 19
  %13 = ptrtoint ptr %s_sb_total_free_inodes to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %s_tinode, ptr %s_sb_total_free_inodes, align 4
  %s_nfree = getelementptr inbounds %struct.xenix_super_block, ptr %5, i32 0, i32 2
  %s_bcache_count = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 20
  %14 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %s_nfree, ptr %s_bcache_count, align 4
  %s_free = getelementptr inbounds %struct.xenix_super_block, ptr %5, i32 0, i32 3
  %s_bcache = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 21
  %15 = ptrtoint ptr %s_bcache to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %s_free, ptr %s_bcache, align 4
  %s_tfree = getelementptr inbounds %struct.xenix_super_block, ptr %sbd2.0, i32 0, i32 11
  %s_free_blocks = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 22
  %16 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %s_tfree, ptr %s_free_blocks, align 4
  %s_time = getelementptr inbounds %struct.xenix_super_block, ptr %sbd2.0, i32 0, i32 10
  %s_sb_time = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 23
  %17 = ptrtoint ptr %s_sb_time to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %s_time, ptr %s_sb_time, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %5, align 4
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 2
  %20 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.not.i = icmp eq i8 %21, 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  %retval.0.i = select i1 %cmp.not.i, i16 %19, i16 %22
  %conv = zext i16 %retval.0.i to i32
  %s_firstdatazone = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 26
  %23 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %s_firstdatazone, align 4
  %s_fsize = getelementptr inbounds %struct.xenix_super_block, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %s_fsize to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %s_fsize, align 2
  %26 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %21, label %entry.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

entry.fs32_to_cpu.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fs32_to_cpu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = shl i32 %25, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i = lshr i32 %25, 8
  %shr.i.i = and i32 %and1.i.i, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i, %entry.fs32_to_cpu.exit_crit_edge
  %retval.0.i35 = phi i32 [ %or.i.i, %if.then.i ], [ %27, %if.then6.i ], [ %25, %entry.fs32_to_cpu.exit_crit_edge ]
  %s_nzones = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 29
  %28 = ptrtoint ptr %s_nzones to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i35, ptr %s_nzones, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @detected_sysv4(ptr nocapture noundef %sbi, ptr nocapture noundef writeonly %max_links) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bh1 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 13
  %0 = ptrtoint ptr %s_bh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bh1, align 4
  %s_bh2 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 14
  %2 = ptrtoint ptr %s_bh2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bh2, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %b_data1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %b_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sbd.0 = phi ptr [ %add.ptr, %if.then ], [ %7, %if.else ]
  %8 = ptrtoint ptr %max_links to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 126, ptr %max_links, align 4
  %s_fic_size = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 11
  %9 = ptrtoint ptr %s_fic_size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 100, ptr %s_fic_size, align 4
  %s_flc_size = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 12
  %10 = ptrtoint ptr %s_flc_size to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 50, ptr %s_flc_size, align 2
  %s_sbd1 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 15
  %11 = ptrtoint ptr %s_sbd1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sbd.0, ptr %s_sbd1, align 4
  %s_sbd2 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 16
  %12 = ptrtoint ptr %s_sbd2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sbd.0, ptr %s_sbd2, align 4
  %s_ninode = getelementptr inbounds %struct.sysv4_super_block, ptr %sbd.0, i32 0, i32 6
  %s_sb_fic_count = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 17
  %13 = ptrtoint ptr %s_sb_fic_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %s_ninode, ptr %s_sb_fic_count, align 4
  %s_inode = getelementptr inbounds %struct.sysv4_super_block, ptr %sbd.0, i32 0, i32 8
  %s_sb_fic_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 18
  %14 = ptrtoint ptr %s_sb_fic_inodes to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %s_inode, ptr %s_sb_fic_inodes, align 4
  %s_tinode = getelementptr inbounds %struct.sysv4_super_block, ptr %sbd.0, i32 0, i32 16
  %s_sb_total_free_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 19
  %15 = ptrtoint ptr %s_sb_total_free_inodes to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %s_tinode, ptr %s_sb_total_free_inodes, align 4
  %s_nfree = getelementptr inbounds %struct.sysv4_super_block, ptr %sbd.0, i32 0, i32 3
  %s_bcache_count = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 20
  %16 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %s_nfree, ptr %s_bcache_count, align 4
  %s_free = getelementptr inbounds %struct.sysv4_super_block, ptr %sbd.0, i32 0, i32 5
  %s_bcache = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 21
  %17 = ptrtoint ptr %s_bcache to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %s_free, ptr %s_bcache, align 4
  %s_tfree = getelementptr inbounds %struct.sysv4_super_block, ptr %sbd.0, i32 0, i32 15
  %s_free_blocks = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 22
  %18 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %s_tfree, ptr %s_free_blocks, align 4
  %s_time = getelementptr inbounds %struct.sysv4_super_block, ptr %sbd.0, i32 0, i32 13
  %s_sb_time = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 23
  %19 = ptrtoint ptr %s_sb_time to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %s_time, ptr %s_sb_time, align 4
  %s_state = getelementptr inbounds %struct.sysv4_super_block, ptr %sbd.0, i32 0, i32 21
  %s_sb_state = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 24
  %20 = ptrtoint ptr %s_sb_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %s_state, ptr %s_sb_state, align 4
  %21 = ptrtoint ptr %sbd.0 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sbd.0, align 4
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 2
  %23 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.not.i = icmp eq i8 %24, 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %retval.0.i = select i1 %cmp.not.i, i16 %22, i16 %25
  %conv = zext i16 %retval.0.i to i32
  %s_firstdatazone = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 26
  %26 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %s_firstdatazone, align 4
  %s_fsize = getelementptr inbounds %struct.sysv4_super_block, ptr %sbd.0, i32 0, i32 2
  %27 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_fsize, align 4
  %29 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %24, label %if.end.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

if.end.fs32_to_cpu.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fs32_to_cpu.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = shl i32 %28, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i = lshr i32 %28, 8
  %shr.i.i = and i32 %and1.i.i, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i, %if.end.fs32_to_cpu.exit_crit_edge
  %retval.0.i36 = phi i32 [ %or.i.i, %if.then.i ], [ %30, %if.then6.i ], [ %28, %if.end.fs32_to_cpu.exit_crit_edge ]
  %s_nzones = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 29
  %31 = ptrtoint ptr %s_nzones to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i36, ptr %s_nzones, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @detected_sysv2(ptr nocapture noundef %sbi, ptr nocapture noundef writeonly %max_links) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bh1 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 13
  %0 = ptrtoint ptr %s_bh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bh1, align 4
  %s_bh2 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 14
  %2 = ptrtoint ptr %s_bh2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bh2, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %b_data1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %b_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sbd.0 = phi ptr [ %add.ptr, %if.then ], [ %7, %if.else ]
  %8 = ptrtoint ptr %max_links to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 126, ptr %max_links, align 4
  %s_fic_size = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 11
  %9 = ptrtoint ptr %s_fic_size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 100, ptr %s_fic_size, align 4
  %s_flc_size = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 12
  %10 = ptrtoint ptr %s_flc_size to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 50, ptr %s_flc_size, align 2
  %s_sbd1 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 15
  %11 = ptrtoint ptr %s_sbd1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sbd.0, ptr %s_sbd1, align 4
  %s_sbd2 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 16
  %12 = ptrtoint ptr %s_sbd2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sbd.0, ptr %s_sbd2, align 4
  %s_ninode = getelementptr inbounds %struct.sysv2_super_block, ptr %sbd.0, i32 0, i32 4
  %s_sb_fic_count = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 17
  %13 = ptrtoint ptr %s_sb_fic_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %s_ninode, ptr %s_sb_fic_count, align 4
  %s_inode = getelementptr inbounds %struct.sysv2_super_block, ptr %sbd.0, i32 0, i32 5
  %s_sb_fic_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 18
  %14 = ptrtoint ptr %s_sb_fic_inodes to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %s_inode, ptr %s_sb_fic_inodes, align 4
  %s_tinode = getelementptr inbounds %struct.sysv2_super_block, ptr %sbd.0, i32 0, i32 13
  %s_sb_total_free_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 19
  %15 = ptrtoint ptr %s_sb_total_free_inodes to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %s_tinode, ptr %s_sb_total_free_inodes, align 4
  %s_nfree = getelementptr inbounds %struct.sysv2_super_block, ptr %sbd.0, i32 0, i32 2
  %s_bcache_count = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 20
  %16 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %s_nfree, ptr %s_bcache_count, align 4
  %s_free = getelementptr inbounds %struct.sysv2_super_block, ptr %sbd.0, i32 0, i32 3
  %s_bcache = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 21
  %17 = ptrtoint ptr %s_bcache to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %s_free, ptr %s_bcache, align 4
  %s_tfree = getelementptr inbounds %struct.sysv2_super_block, ptr %sbd.0, i32 0, i32 12
  %s_free_blocks = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 22
  %18 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %s_tfree, ptr %s_free_blocks, align 4
  %s_time = getelementptr inbounds %struct.sysv2_super_block, ptr %sbd.0, i32 0, i32 10
  %s_sb_time = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 23
  %19 = ptrtoint ptr %s_sb_time to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %s_time, ptr %s_sb_time, align 4
  %s_state = getelementptr inbounds %struct.sysv2_super_block, ptr %sbd.0, i32 0, i32 17
  %s_sb_state = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 24
  %20 = ptrtoint ptr %s_sb_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %s_state, ptr %s_sb_state, align 4
  %21 = ptrtoint ptr %sbd.0 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sbd.0, align 4
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 2
  %23 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.not.i = icmp eq i8 %24, 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %retval.0.i = select i1 %cmp.not.i, i16 %22, i16 %25
  %conv = zext i16 %retval.0.i to i32
  %s_firstdatazone = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 26
  %26 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %s_firstdatazone, align 4
  %s_fsize = getelementptr inbounds %struct.sysv2_super_block, ptr %sbd.0, i32 0, i32 1
  %27 = ptrtoint ptr %s_fsize to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %s_fsize, align 2
  %29 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %24, label %if.end.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

if.end.fs32_to_cpu.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fs32_to_cpu.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = shl i32 %28, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i = lshr i32 %28, 8
  %shr.i.i = and i32 %and1.i.i, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i, %if.end.fs32_to_cpu.exit_crit_edge
  %retval.0.i36 = phi i32 [ %or.i.i, %if.then.i ], [ %30, %if.then6.i ], [ %28, %if.end.fs32_to_cpu.exit_crit_edge ]
  %s_nzones = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 29
  %31 = ptrtoint ptr %s_nzones to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i36, ptr %s_nzones, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @detected_coherent(ptr nocapture noundef %sbi, ptr nocapture noundef writeonly %max_links) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bh1 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 13
  %0 = ptrtoint ptr %s_bh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bh1, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %4 = ptrtoint ptr %max_links to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10000, ptr %max_links, align 4
  %s_fic_size = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 11
  %5 = ptrtoint ptr %s_fic_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 100, ptr %s_fic_size, align 4
  %s_flc_size = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 12
  %6 = ptrtoint ptr %s_flc_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 64, ptr %s_flc_size, align 2
  %s_sbd1 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 15
  %7 = ptrtoint ptr %s_sbd1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %s_sbd1, align 4
  %s_sbd2 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 16
  %8 = ptrtoint ptr %s_sbd2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %s_sbd2, align 4
  %s_ninode = getelementptr inbounds %struct.coh_super_block, ptr %3, i32 0, i32 4
  %s_sb_fic_count = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 17
  %9 = ptrtoint ptr %s_sb_fic_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %s_ninode, ptr %s_sb_fic_count, align 4
  %s_inode = getelementptr inbounds %struct.coh_super_block, ptr %3, i32 0, i32 5
  %s_sb_fic_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 18
  %10 = ptrtoint ptr %s_sb_fic_inodes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %s_inode, ptr %s_sb_fic_inodes, align 4
  %s_tinode = getelementptr inbounds %struct.coh_super_block, ptr %3, i32 0, i32 12
  %s_sb_total_free_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 19
  %11 = ptrtoint ptr %s_sb_total_free_inodes to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %s_tinode, ptr %s_sb_total_free_inodes, align 4
  %s_nfree = getelementptr inbounds %struct.coh_super_block, ptr %3, i32 0, i32 2
  %s_bcache_count = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 20
  %12 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %s_nfree, ptr %s_bcache_count, align 4
  %s_free = getelementptr inbounds %struct.coh_super_block, ptr %3, i32 0, i32 3
  %s_bcache = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 21
  %13 = ptrtoint ptr %s_bcache to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %s_free, ptr %s_bcache, align 4
  %s_tfree = getelementptr inbounds %struct.coh_super_block, ptr %3, i32 0, i32 11
  %s_free_blocks = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 22
  %14 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %s_tfree, ptr %s_free_blocks, align 4
  %s_time = getelementptr inbounds %struct.coh_super_block, ptr %3, i32 0, i32 10
  %s_sb_time = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 23
  %15 = ptrtoint ptr %s_sb_time to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %s_time, ptr %s_sb_time, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 4
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 2
  %18 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp.not.i = icmp eq i8 %19, 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  %retval.0.i = select i1 %cmp.not.i, i16 %17, i16 %20
  %conv = zext i16 %retval.0.i to i32
  %s_firstdatazone = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 26
  %21 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %s_firstdatazone, align 4
  %s_fsize = getelementptr inbounds %struct.coh_super_block, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %s_fsize to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %s_fsize, align 2
  %24 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %19, label %entry.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

entry.fs32_to_cpu.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fs32_to_cpu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = shl i32 %23, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i = lshr i32 %23, 8
  %shr.i.i = and i32 %and1.i.i, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %25 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i, %entry.fs32_to_cpu.exit_crit_edge
  %retval.0.i29 = phi i32 [ %or.i.i, %if.then.i ], [ %25, %if.then6.i ], [ %23, %entry.fs32_to_cpu.exit_crit_edge ]
  %s_nzones = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 29
  %26 = ptrtoint ptr %s_nzones to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i29, ptr %s_nzones, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @detected_v7(ptr nocapture noundef %sbi, ptr nocapture noundef writeonly %max_links) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bh2 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 14
  %0 = ptrtoint ptr %s_bh2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bh2, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %4 = ptrtoint ptr %max_links to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 126, ptr %max_links, align 4
  %s_fic_size = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 11
  %5 = ptrtoint ptr %s_fic_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 100, ptr %s_fic_size, align 4
  %s_flc_size = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 12
  %6 = ptrtoint ptr %s_flc_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 50, ptr %s_flc_size, align 2
  %s_sbd1 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 15
  %7 = ptrtoint ptr %s_sbd1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %s_sbd1, align 4
  %s_sbd2 = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 16
  %8 = ptrtoint ptr %s_sbd2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %s_sbd2, align 4
  %s_ninode = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 4
  %s_sb_fic_count = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 17
  %9 = ptrtoint ptr %s_sb_fic_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %s_ninode, ptr %s_sb_fic_count, align 4
  %s_inode = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 5
  %s_sb_fic_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 18
  %10 = ptrtoint ptr %s_sb_fic_inodes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %s_inode, ptr %s_sb_fic_inodes, align 4
  %s_tinode = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 12
  %s_sb_total_free_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 19
  %11 = ptrtoint ptr %s_sb_total_free_inodes to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %s_tinode, ptr %s_sb_total_free_inodes, align 4
  %s_nfree = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 2
  %s_bcache_count = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 20
  %12 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %s_nfree, ptr %s_bcache_count, align 4
  %s_free = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 3
  %s_bcache = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 21
  %13 = ptrtoint ptr %s_bcache to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %s_free, ptr %s_bcache, align 4
  %s_tfree = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 11
  %s_free_blocks = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 22
  %14 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %s_tfree, ptr %s_free_blocks, align 4
  %s_time = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 10
  %s_sb_time = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 23
  %15 = ptrtoint ptr %s_sb_time to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %s_time, ptr %s_sb_time, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 4
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 2
  %18 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp.not.i = icmp eq i8 %19, 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  %retval.0.i = select i1 %cmp.not.i, i16 %17, i16 %20
  %conv = zext i16 %retval.0.i to i32
  %s_firstdatazone = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 26
  %21 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %s_firstdatazone, align 4
  %s_fsize = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %s_fsize to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %s_fsize, align 2
  %24 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %19, label %entry.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

entry.fs32_to_cpu.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fs32_to_cpu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = shl i32 %23, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i = lshr i32 %23, 8
  %shr.i.i = and i32 %and1.i.i, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %25 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i, %entry.fs32_to_cpu.exit_crit_edge
  %retval.0.i29 = phi i32 [ %or.i.i, %if.then.i ], [ %25, %if.then6.i ], [ %23, %entry.fs32_to_cpu.exit_crit_edge ]
  %s_nzones = getelementptr inbounds %struct.sysv_sb_info, ptr %sbi, i32 0, i32 29
  %26 = ptrtoint ptr %s_nzones to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i29, ptr %s_nzones, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @v7_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @v7_fill_super) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v7_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %data, i32 noundef %silent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sb, ptr %call7.i.i, align 8
  %s_block_base = getelementptr inbounds %struct.sysv_sb_info, ptr %call7.i.i, i32 0, i32 10
  %2 = ptrtoint ptr %s_block_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %s_block_base, align 8
  %s_type = getelementptr inbounds %struct.sysv_sb_info, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %s_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %s_type, align 4
  %s_lock = getelementptr inbounds %struct.sysv_sb_info, ptr %call7.i.i, i32 0, i32 32
  tail call void @__mutex_init(ptr noundef %s_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @v7_fill_super.__key) #9
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %5 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %6 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 4294967295, ptr %s_time_max, align 64
  %call7 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 512) #9
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %7 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %9 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %8, i64 noundef 1, i32 noundef %10, i32 noundef 8) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool10.not = icmp eq i32 %silent, 0
  br i1 %tobool10.not, label %do.end14, label %if.then9.do.end33.thread_crit_edge

if.then9.do.end33.thread_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.thread

do.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %s_id) #13
  br label %do.end33.thread

if.end17:                                         ; preds = %if.end
  %s_bytesex = getelementptr inbounds %struct.sysv_sb_info, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %s_bytesex to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %s_bytesex, align 8
  %call18 = tail call fastcc i32 @v7_sanity_check(ptr noundef %sb, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.detected_crit_edge

if.end17.detected_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %detected

if.end21:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %s_bytesex to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %s_bytesex, align 8
  %call23 = tail call fastcc i32 @v7_sanity_check(ptr noundef %sb, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end21.if.then.i_crit_edge, label %if.end21.detected_crit_edge

if.end21.detected_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %detected

if.end21.if.then.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

detected:                                         ; preds = %if.end21.detected_crit_edge, %if.end17.detected_crit_edge
  %s_bh1 = getelementptr inbounds %struct.sysv_sb_info, ptr %call7.i.i, i32 0, i32 13
  %13 = ptrtoint ptr %s_bh1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %s_bh1, align 8
  %s_bh2 = getelementptr inbounds %struct.sysv_sb_info, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %s_bh2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %s_bh2, align 4
  %call27 = tail call fastcc i32 @complete_read_super(ptr noundef %sb, i32 noundef %silent, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %detected.if.then.i_crit_edge, label %detected.cleanup_crit_edge

detected.cleanup_crit_edge:                       ; preds = %detected
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

detected.if.then.i_crit_edge:                     ; preds = %detected
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

do.end33.thread:                                  ; preds = %do.end14, %if.then9.do.end33.thread_crit_edge
  %s_id3564 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call3765 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %s_id3564) #13
  br label %brelse.exit

if.then.i:                                        ; preds = %detected.if.then.i_crit_edge, %if.end21.if.then.i_crit_edge
  %s_id35 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %s_id35) #13
  tail call void @__brelse(ptr noundef nonnull %call.i) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %do.end33.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %detected.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %brelse.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %detected.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v7_sanity_check(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %bh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %s_nfree = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_nfree to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_nfree, align 2
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  %retval.0.i = select i1 %cmp.not.i, i16 %5, i16 %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 50, i16 %retval.0.i)
  %cmp = icmp ugt i16 %retval.0.i, 50
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_ninode = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %s_ninode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s_ninode, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  %retval.0.i55 = select i1 %cmp.not.i, i16 %10, i16 %11
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %retval.0.i55)
  %cmp4 = icmp ugt i16 %retval.0.i55, 100
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %s_fsize = getelementptr inbounds %struct.v7_super_block, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %s_fsize to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %s_fsize, align 2
  %14 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %7, label %lor.lhs.false6.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

lor.lhs.false6.fs32_to_cpu.exit_crit_edge:        ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %fs32_to_cpu.exit

if.then.i:                                        ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = shl i32 %13, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i = lshr i32 %13, 8
  %shr.i.i = and i32 %and1.i.i, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i, %lor.lhs.false6.fs32_to_cpu.exit_crit_edge
  %retval.0.i57 = phi i32 [ %or.i.i, %if.then.i ], [ %15, %if.then6.i ], [ %13, %lor.lhs.false6.fs32_to_cpu.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %retval.0.i57)
  %cmp8 = icmp ugt i32 %retval.0.i57, 16777215
  br i1 %cmp8, label %fs32_to_cpu.exit.cleanup_crit_edge, label %if.end

fs32_to_cpu.exit.cleanup_crit_edge:               ; preds = %fs32_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %fs32_to_cpu.exit
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %17, i64 noundef 2, i32 noundef %19, i32 noundef 8) #9
  %cmp11 = icmp eq ptr %call.i, null
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %b_data15 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %b_data15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data15, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 64
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr, align 4
  %24 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp.not.i59 = icmp eq i8 %25, 2
  %26 = shl i16 %23, 8
  %retval.0.i60 = select i1 %cmp.not.i59, i16 %23, i16 %26
  %27 = and i16 %retval.0.i60, -512
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %27)
  %cmp18.not = icmp eq i16 %27, 16384
  br i1 %cmp18.not, label %lor.lhs.false20, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false20:                                  ; preds = %if.end14
  %i_size = getelementptr i8, ptr %21, i32 72
  %28 = ptrtoint ptr %i_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_size, align 4
  %30 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %25, label %lor.lhs.false20.fs32_to_cpu.exit70_crit_edge [
    i8 1, label %if.then.i67
    i8 0, label %if.then6.i68
  ]

lor.lhs.false20.fs32_to_cpu.exit70_crit_edge:     ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %fs32_to_cpu.exit70

if.then.i67:                                      ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i62 = shl i32 %29, 8
  %shl.i.i63 = and i32 %and.i.i62, -16711936
  %and1.i.i64 = lshr i32 %29, 8
  %shr.i.i65 = and i32 %and1.i.i64, 16711935
  %or.i.i66 = or i32 %shl.i.i63, %shr.i.i65
  br label %fs32_to_cpu.exit70

if.then6.i68:                                     ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  %31 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  br label %fs32_to_cpu.exit70

fs32_to_cpu.exit70:                               ; preds = %if.then6.i68, %if.then.i67, %lor.lhs.false20.fs32_to_cpu.exit70_crit_edge
  %retval.0.i69 = phi i32 [ %or.i.i66, %if.then.i67 ], [ %31, %if.then6.i68 ], [ %29, %lor.lhs.false20.fs32_to_cpu.exit70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i69)
  %cmp22 = icmp eq i32 %retval.0.i69, 0
  br i1 %cmp22, label %fs32_to_cpu.exit70.cleanup.sink.split_crit_edge, label %lor.lhs.false24

fs32_to_cpu.exit70.cleanup.sink.split_crit_edge:  ; preds = %fs32_to_cpu.exit70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false24:                                  ; preds = %fs32_to_cpu.exit70
  %32 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %25, label %lor.lhs.false24.fs32_to_cpu.exit80_crit_edge [
    i8 1, label %if.then.i77
    i8 0, label %if.then6.i78
  ]

lor.lhs.false24.fs32_to_cpu.exit80_crit_edge:     ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %fs32_to_cpu.exit80

if.then.i77:                                      ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i.i74 = lshr i32 %29, 8
  %shr.i.i75 = and i32 %and1.i.i74, 16711935
  br label %fs32_to_cpu.exit80

if.then6.i78:                                     ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  br label %fs32_to_cpu.exit80

fs32_to_cpu.exit80:                               ; preds = %if.then6.i78, %if.then.i77, %lor.lhs.false24.fs32_to_cpu.exit80_crit_edge
  %retval.0.i79 = phi i32 [ %shr.i.i75, %if.then.i77 ], [ %33, %if.then6.i78 ], [ %29, %lor.lhs.false24.fs32_to_cpu.exit80_crit_edge ]
  %and27 = and i32 %retval.0.i79, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %lor.lhs.false28, label %fs32_to_cpu.exit80.cleanup.sink.split_crit_edge

fs32_to_cpu.exit80.cleanup.sink.split_crit_edge:  ; preds = %fs32_to_cpu.exit80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false28:                                  ; preds = %fs32_to_cpu.exit80
  %34 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %25, label %lor.lhs.false28.fs32_to_cpu.exit90_crit_edge [
    i8 1, label %if.then.i87
    i8 0, label %if.then6.i88
  ]

lor.lhs.false28.fs32_to_cpu.exit90_crit_edge:     ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %fs32_to_cpu.exit90

if.then.i87:                                      ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i82 = shl i32 %29, 8
  %shl.i.i83 = and i32 %and.i.i82, -16711936
  %and1.i.i84 = lshr i32 %29, 8
  %shr.i.i85 = and i32 %and1.i.i84, 16711935
  %or.i.i86 = or i32 %shl.i.i83, %shr.i.i85
  br label %fs32_to_cpu.exit90

if.then6.i88:                                     ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  %35 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  br label %fs32_to_cpu.exit90

fs32_to_cpu.exit90:                               ; preds = %if.then6.i88, %if.then.i87, %lor.lhs.false28.fs32_to_cpu.exit90_crit_edge
  %retval.0.i89 = phi i32 [ %or.i.i86, %if.then.i87 ], [ %35, %if.then6.i88 ], [ %29, %lor.lhs.false28.fs32_to_cpu.exit90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %retval.0.i89)
  %cmp31 = icmp ult i32 %retval.0.i89, 16385
  %spec.select = zext i1 %cmp31 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %fs32_to_cpu.exit90, %fs32_to_cpu.exit80.cleanup.sink.split_crit_edge, %fs32_to_cpu.exit70.cleanup.sink.split_crit_edge, %if.end14.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %fs32_to_cpu.exit80.cleanup.sink.split_crit_edge ], [ 0, %fs32_to_cpu.exit70.cleanup.sink.split_crit_edge ], [ 0, %if.end14.cleanup.sink.split_crit_edge ], [ %spec.select, %fs32_to_cpu.exit90 ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %fs32_to_cpu.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %fs32_to_cpu.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_init_icache() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__UNIQUE_ID_alias247, !1, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!1 = !{!"../fs/sysv/super.c", i32 548, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias248, !3, !"__UNIQUE_ID_alias248", i1 false, i1 false}
!3 = !{!"../fs/sysv/super.c", i32 557, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias249, !5, !"__UNIQUE_ID_alias249", i1 false, i1 false}
!5 = !{!"../fs/sysv/super.c", i32 558, i32 1}
!6 = !{ptr @__initcall__kmod_sysv__250_590_init_sysv_fs6, !7, !"__initcall__kmod_sysv__250_590_init_sysv_fs6", i1 false, i1 false}
!7 = !{!"../fs/sysv/super.c", i32 590, i32 1}
!8 = !{ptr @__exitcall_exit_sysv_fs, !9, !"__exitcall_exit_sysv_fs", i1 false, i1 false}
!9 = !{!"../fs/sysv/super.c", i32 591, i32 1}
!10 = !{ptr @__UNIQUE_ID_file251, !11, !"__UNIQUE_ID_file251", i1 false, i1 false}
!11 = !{!"../fs/sysv/super.c", i32 592, i32 1}
!12 = !{ptr @__UNIQUE_ID_license252, !11, !"__UNIQUE_ID_license252", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/sysv/super.c", i32 543, i32 11}
!15 = !{ptr @sysv_fs_type, !16, !"sysv_fs_type", i1 false, i1 false}
!16 = !{!"../fs/sysv/super.c", i32 541, i32 32}
!17 = !{ptr @sysv_fill_super.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../fs/sysv/super.c", i32 369, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/sysv/super.c", i32 417, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sysv_fill_super._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @sysv_fill_super._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/sysv/super.c", i32 425, i32 3}
!28 = !{ptr @sysv_fill_super._entry.5, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sysv_fill_super._entry_ptr.7, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/sysv/super.c", i32 431, i32 3}
!32 = !{ptr @sysv_fill_super._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sysv_fill_super._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @flavours, !35, !"flavours", i1 false, i1 false}
!35 = !{!"../fs/sysv/super.c", i32 276, i32 3}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/sysv/super.c", i32 221, i32 5}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @detect_sysv._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @detect_sysv._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/sysv/super.c", i32 244, i32 3}
!43 = !{ptr @detect_sysv._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @detect_sysv._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/sysv/super.c", i32 258, i32 27}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/sysv/super.c", i32 258, i32 62}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/sysv/super.c", i32 259, i32 30}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/sysv/super.c", i32 259, i32 65}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/sysv/super.c", i32 329, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @complete_read_super._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @complete_read_super._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/sysv/super.c", i32 339, i32 3}
!60 = !{ptr @complete_read_super._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @complete_read_super._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/sysv/super.c", i32 344, i32 3}
!64 = !{ptr @complete_read_super._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @complete_read_super._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/sysv/super.c", i32 286, i32 19}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/sysv/super.c", i32 287, i32 19}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/sysv/super.c", i32 288, i32 19}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/sysv/super.c", i32 289, i32 17}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/sysv/super.c", i32 290, i32 16}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/sysv/super.c", i32 291, i32 17}
!78 = !{ptr @flavour_names, !79, !"flavour_names", i1 false, i1 false}
!79 = !{!"../fs/sysv/super.c", i32 285, i32 14}
!80 = !{ptr @flavour_setup, !81, !"flavour_setup", i1 false, i1 false}
!81 = !{!"../fs/sysv/super.c", i32 294, i32 15}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/sysv/super.c", i32 552, i32 11}
!84 = !{ptr @v7_fs_type, !85, !"v7_fs_type", i1 false, i1 false}
!85 = !{!"../fs/sysv/super.c", i32 550, i32 32}
!86 = !{ptr @v7_fill_super.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../fs/sysv/super.c", i32 487, i32 2}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/sysv/super.c", i32 496, i32 4}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @v7_fill_super._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @v7_fill_super._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/sysv/super.c", i32 520, i32 2}
!95 = !{ptr @v7_fill_super._entry.37, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @v7_fill_super._entry_ptr.39, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
