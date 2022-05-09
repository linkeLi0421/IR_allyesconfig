; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_debugfs_crc.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_debugfs_crc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+drm_crtc_add_crc_entry\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_crtc_add_crc_entry\09\09\09\09"
module asm "\09.long\09__crc_drm_crtc_add_crc_entry\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_add_crc_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_add_crc_entry\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_add_crc_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_crc_entry = type { i8, i32, [10 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.80 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.82 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.84 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@drm_crtc_crc_control_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @crc_control_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @crc_control_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@drm_crtc_crc_data_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @crtc_crc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @crtc_crc_poll, ptr null, ptr null, ptr null, i32 0, ptr @crtc_crc_open, ptr null, ptr @crtc_crc_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Overflow of CRC buffer, userspace reads too slow.\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_drm_crtc_add_crc_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_add_crc_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_add_crc_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_add_crc_entry to i32), ptr @__kstrtab_drm_crtc_add_crc_entry, ptr @__kstrtabns_drm_crtc_add_crc_entry }, section "___ksymtab_gpl+drm_crtc_add_crc_entry", align 4
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Expected < %lu bytes into crtc crc control\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s*\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%08x\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XXXXXXXXXX\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" 0x%08x\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/drm_debugfs_crc.c\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 375, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 377, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"drm_crtc_crc_control_fops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 169, i32 37 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 379, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"drm_crtc_crc_data_fops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 360, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 419, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 134, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 101, i32 20 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 103, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 330, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 332, i32 16 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 335, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 230, i32 6 }
@___asan_gen_.55 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 214, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 174, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [37 x i8] c"../drivers/gpu/drm/drm_debugfs_crc.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 220, i32 6 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_drm_crtc_add_crc_entry, ptr @.str, ptr @.str.1, ptr @drm_crtc_crc_control_fops, ptr @.str.2, ptr @drm_crtc_crc_data_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_crtc_crc_control_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_crtc_crc_data_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_debugfs_crtc_crc_add(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 16
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %set_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %set_crc_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_crc_source, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %verify_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %verify_crc_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %verify_crc_source, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %debugfs_entry = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 25
  %6 = ptrtoint ptr %debugfs_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_entry, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %7) #6
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %call, ptr noundef %crtc, ptr noundef nonnull @drm_crtc_crc_control_fops) #6
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %crtc, ptr noundef nonnull @drm_crtc_crc_data_fops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_crtc_add_crc_entry(ptr noundef %crtc, i1 noundef zeroext %has_frame, i32 noundef %frame, ptr nocapture noundef readonly %crcs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %has_frame to i8
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 26
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %crc1) #6
  %entries = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 26, i32 4
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %crc1, i32 noundef %call4) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %head8 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 26, i32 5
  %2 = ptrtoint ptr %head8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head8, align 4
  %tail9 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 26, i32 6
  %4 = ptrtoint ptr %tail9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail9, align 4
  %add = add i32 %3, 1
  %sub = sub i32 %5, %add
  %and = and i32 %sub, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %overflow = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %overflow to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %overflow, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %overflow to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %overflow, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %crc1, i32 noundef %call4) #6
  br i1 %tobool13.not, label %if.then18, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.drm_crtc_crc_entry, ptr %1, i32 %3
  %frame22 = getelementptr %struct.drm_crtc_crc_entry, ptr %1, i32 %3, i32 1
  %9 = ptrtoint ptr %frame22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %frame, ptr %frame22, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %arrayidx, align 4
  %crcs25 = getelementptr %struct.drm_crtc_crc_entry, ptr %1, i32 %3, i32 2
  %values_cnt = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 26, i32 7
  %11 = ptrtoint ptr %values_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %values_cnt, align 4
  %mul = shl i32 %12, 2
  %13 = call ptr @memcpy(ptr %crcs25, ptr %crcs, i32 %mul)
  %and27 = and i32 %add, 127
  %14 = ptrtoint ptr %head8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and27, ptr %head8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %crc1, i32 noundef %call4) #6
  %wq = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 26, i32 8
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %if.then12.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -22, %if.then ], [ -105, %if.then18 ], [ -105, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc_control_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %len, ptr nocapture noundef %offp) #0 align 64 {
entry:
  %values_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values_cnt) #6
  %4 = ptrtoint ptr %values_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %values_cnt, align 4, !annotation !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %len)
  %cmp2 = icmp ugt i32 %len, 4095
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef 4096) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %len) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %sub = add nsw i32 %len, -1
  %arrayidx = getelementptr i8, ptr %call, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp9 = icmp eq i8 %7, 10
  br i1 %cmp9, label %if.then11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 4
  %verify_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %verify_crc_source to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %verify_crc_source, align 4
  %call15 = call i32 %12(ptr noundef %3, ptr noundef %call, ptr noundef nonnull %values_cnt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %call) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  call void @_raw_spin_lock_irq(ptr noundef %crc1) #6
  %opened = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 2
  %13 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %opened, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not = icmp eq i8 %14, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  call void @kfree(ptr noundef %call) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %source22 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 1
  %15 = ptrtoint ptr %source22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %source22, align 4
  call void @kfree(ptr noundef %16) #6
  %17 = ptrtoint ptr %source22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %source22, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  %conv25 = zext i32 %len to i64
  %18 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offp, align 8
  %add = add i64 %19, %conv25
  store i64 %add, ptr %offp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %if.then16, %if.then6, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then3 ], [ %5, %if.then6 ], [ %call15, %if.then16 ], [ -16, %if.then19 ], [ %len, %if.end21 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values_cnt) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc_control_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @crc_control_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc_control_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %count = alloca i32, align 4
  %values_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %get_crc_sources = getelementptr inbounds %struct.drm_crtc_funcs, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %get_crc_sources to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_crc_sources, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup24_crit_edge, label %if.then

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #6
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %count, align 4, !annotation !47
  %call = call ptr %5(ptr noundef %1, ptr noundef nonnull %count) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values_cnt) #6
  %7 = ptrtoint ptr %values_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %values_cnt, align 4, !annotation !47
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %tobool3.not = icmp eq ptr %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %out, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp546.not = icmp eq i32 %11, 0
  br i1 %cmp546.not, label %for.cond.preheader.cleanup.thread_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup.thread_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %source = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26, i32 1
  br label %for.body

cleanup.thread:                                   ; preds = %for.inc.cleanup.thread_crit_edge, %for.cond.preheader.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values_cnt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #6
  br label %cleanup24

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %verify_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %verify_crc_source to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %verify_crc_source, align 4
  %arrayidx = getelementptr ptr, ptr %call, i32 %i.047
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call7 = call i32 %15(ptr noundef %1, ptr noundef %17, ptr noundef nonnull %values_cnt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %source, align 4
  %call11 = call i32 @strcmp(ptr noundef %19, ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %.str.6..str.5 = select i1 %tobool12.not, ptr @.str.6, ptr @.str.5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.6..str.5, ptr noundef %19) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.047, 1
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count, align 4
  %cmp5 = icmp ult i32 %inc, %23
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.cleanup.thread_crit_edge

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

out:                                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values_cnt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #6
  %source23 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26, i32 1
  %24 = ptrtoint ptr %source23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %source23, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef %25) #6
  br label %cleanup24

cleanup24:                                        ; preds = %out, %cleanup.thread, %entry.cleanup24_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crtc_crc_read(ptr nocapture noundef readonly %filep, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i123 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i112 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %buf = alloca [122 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 122, ptr nonnull %buf) #6
  %4 = call ptr @memset(ptr %buf, i32 255, i32 122)
  tail call void @_raw_spin_lock_irq(ptr noundef %crc1) #6
  %source = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 1
  %5 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %source, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %7 = ptrtoint ptr %crc1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload.i.i156 = load volatile i32, ptr %crc1, align 4
  %8 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i156, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i157 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i156, 16
  %conv.i.i.i158 = and i32 %agg.tmp.sroa.0.0.copyload.i.i156, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i158, i32 %lock.sroa.0.0.extract.shift.i.i.i157)
  %cmp.i.i.not.i159 = icmp eq i32 %conv.i.i.i158, %lock.sroa.0.0.extract.shift.i.i.i157
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i159, label %while.cond.preheader.do.body4.i_crit_edge, label %crtc_crc_data_count.exit.lr.ph, !prof !48

while.cond.preheader.do.body4.i_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4.i

crtc_crc_data_count.exit.lr.ph:                   ; preds = %while.cond.preheader
  %head.i = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 5
  %tail.i = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 6
  %f_flags = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 7
  %wq = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 8
  br label %crtc_crc_data_count.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  br label %cleanup76

do.body4.i:                                       ; preds = %if.end23.do.body4.i_crit_edge, %while.cond.preheader.do.body4.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_debugfs_crc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

crtc_crc_data_count.exit:                         ; preds = %if.end23.crtc_crc_data_count.exit_crit_edge, %crtc_crc_data_count.exit.lr.ph
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %head.i, align 4
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %10, %12
  %and.i = and i32 %sub.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %crtc_crc_data_count.exit
  %13 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_flags, align 4
  %and = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  br label %cleanup76

if.end7:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i112)
  %15 = ptrtoint ptr %crc1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp.sroa.0.0.copyload.i.i113 = load volatile i32, ptr %crc1, align 4
  %16 = ptrtoint ptr %agg.tmp.sroa.0.i.i112 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i113, ptr %agg.tmp.sroa.0.i.i112, align 4
  %lock.sroa.0.0.extract.shift.i.i.i114 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i113, 16
  %conv.i.i.i115 = and i32 %agg.tmp.sroa.0.0.copyload.i.i113, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i115, i32 %lock.sroa.0.0.extract.shift.i.i.i114)
  %cmp.i.i.not.i116 = icmp eq i32 %conv.i.i.i115, %lock.sroa.0.0.extract.shift.i.i.i114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i112)
  br i1 %cmp.i.i.not.i116, label %do.body4.i117, label %if.then10, !prof !48

do.body4.i117:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_debugfs_crc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %17 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call12150 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i123)
  %18 = ptrtoint ptr %crc1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %agg.tmp.sroa.0.0.copyload.i.i124151 = load volatile i32, ptr %crc1, align 4
  %19 = ptrtoint ptr %agg.tmp.sroa.0.i.i123 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i124151, ptr %agg.tmp.sroa.0.i.i123, align 4
  %lock.sroa.0.0.extract.shift.i.i.i125152 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i124151, 16
  %conv.i.i.i126153 = and i32 %agg.tmp.sroa.0.0.copyload.i.i124151, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i126153, i32 %lock.sroa.0.0.extract.shift.i.i.i125152)
  %cmp.i.i.not.i127154 = icmp eq i32 %conv.i.i.i126153, %lock.sroa.0.0.extract.shift.i.i.i125152
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i123)
  br i1 %cmp.i.i.not.i127154, label %if.then10.do.body4.i128_crit_edge, label %if.then10.crtc_crc_data_count.exit133_crit_edge, !prof !48

if.then10.crtc_crc_data_count.exit133_crit_edge:  ; preds = %if.then10
  br label %crtc_crc_data_count.exit133

if.then10.do.body4.i128_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4.i128

do.body4.i128:                                    ; preds = %cleanup.do.body4.i128_crit_edge, %if.then10.do.body4.i128_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_debugfs_crc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

crtc_crc_data_count.exit133:                      ; preds = %cleanup.crtc_crc_data_count.exit133_crit_edge, %if.then10.crtc_crc_data_count.exit133_crit_edge
  %call12155 = phi i32 [ %call12, %cleanup.crtc_crc_data_count.exit133_crit_edge ], [ %call12150, %if.then10.crtc_crc_data_count.exit133_crit_edge ]
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %head.i, align 4
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail.i, align 4
  %sub.i131 = sub i32 %21, %23
  %and.i132 = and i32 %sub.i131, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i132)
  %tobool14.not = icmp eq i32 %and.i132, 0
  br i1 %tobool14.not, label %if.end16, label %if.end23

if.end16:                                         ; preds = %crtc_crc_data_count.exit133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12155)
  %tobool17.not = icmp eq i32 %call12155, 0
  br i1 %tobool17.not, label %cleanup, label %if.end23.thread

if.end23.thread:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  br label %cleanup76

cleanup:                                          ; preds = %if.end16
  call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  call void @schedule() #6
  call void @_raw_spin_lock_irq(ptr noundef %crc1) #6
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i123)
  %24 = ptrtoint ptr %crc1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %agg.tmp.sroa.0.0.copyload.i.i124 = load volatile i32, ptr %crc1, align 4
  %25 = ptrtoint ptr %agg.tmp.sroa.0.i.i123 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i124, ptr %agg.tmp.sroa.0.i.i123, align 4
  %lock.sroa.0.0.extract.shift.i.i.i125 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i124, 16
  %conv.i.i.i126 = and i32 %agg.tmp.sroa.0.0.copyload.i.i124, 65535
  %cmp.i.i.not.i127 = icmp eq i32 %conv.i.i.i126, %lock.sroa.0.0.extract.shift.i.i.i125
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i123)
  br i1 %cmp.i.i.not.i127, label %cleanup.do.body4.i128_crit_edge, label %cleanup.crtc_crc_data_count.exit133_crit_edge, !prof !48

cleanup.crtc_crc_data_count.exit133_crit_edge:    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %crtc_crc_data_count.exit133

cleanup.do.body4.i128_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4.i128

if.end23:                                         ; preds = %crtc_crc_data_count.exit133
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %26 = ptrtoint ptr %crc1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %crc1, align 4
  %27 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %if.end23.do.body4.i_crit_edge, label %if.end23.crtc_crc_data_count.exit_crit_edge, !prof !48

if.end23.crtc_crc_data_count.exit_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %crtc_crc_data_count.exit

if.end23.do.body4.i_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4.i

while.end:                                        ; preds = %crtc_crc_data_count.exit
  %entries = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 4
  %28 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %entries, align 4
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail.i, align 4
  %values_cnt = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 7
  %32 = ptrtoint ptr %values_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %values_cnt, align 4
  %mul = mul i32 %33, 11
  %add30 = add i32 %mul, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %count)
  %cmp31 = icmp ugt i32 %add30, %count
  br i1 %cmp31, label %if.then32, label %do.end

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  br label %cleanup76

do.end:                                           ; preds = %while.end
  %arrayidx = getelementptr %struct.drm_crtc_crc_entry, ptr %29, i32 %31
  %add36 = add i32 %31, 1
  %and37 = and i32 %add36, 127
  %34 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and37, ptr %tail.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool40.not = icmp eq i8 %36, 0
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %frame = getelementptr %struct.drm_crtc_crc_entry, ptr %29, i32 %31, i32 1
  %37 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frame, align 4
  %call42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.7, i32 noundef %38)
  br label %if.end45

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %39 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 11)
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then41
  %40 = ptrtoint ptr %values_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %values_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp48160.not = icmp eq i32 %41, 0
  br i1 %cmp48160.not, label %if.end45.for.end54_crit_edge, label %for.body.lr.ph

if.end45.for.end54_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end54

for.body.lr.ph:                                   ; preds = %if.end45
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul50 = mul i32 %i.0161, 11
  %add.ptr51 = getelementptr i8, ptr %add.ptr, i32 %mul50
  %arrayidx52 = getelementptr %struct.drm_crtc_crc_entry, ptr %29, i32 %31, i32 2, i32 %i.0161
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx52, align 4
  %call53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr51, ptr noundef nonnull @.str.9, i32 noundef %43)
  %inc = add nuw i32 %i.0161, 1
  %44 = ptrtoint ptr %values_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %values_cnt, align 4
  %cmp48 = icmp ult i32 %inc, %45
  br i1 %cmp48, label %for.body.for.body_crit_edge, label %for.end54.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end54.loopexit:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = mul i32 %45, 11
  br label %for.end54

for.end54:                                        ; preds = %for.end54.loopexit, %if.end45.for.end54_crit_edge
  %.lcssa = phi i32 [ 0, %if.end45.for.end54_crit_edge ], [ %phi.bo, %for.end54.loopexit ]
  %add.ptr56 = getelementptr inbounds i8, ptr %buf, i32 10
  %add.ptr59 = getelementptr i8, ptr %add.ptr56, i32 %.lcssa
  %46 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 2560, ptr %add.ptr59, align 1
  %47 = ptrtoint ptr %values_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %values_cnt, align 4
  %mul63 = mul i32 %48, 11
  %add66 = add i32 %mul63, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 122, i32 %add66)
  %cmp1.i.i = icmp ugt i32 %add66, 122
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !48

if.then3.i.i:                                     ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef 122, i32 noundef %add66) #6
  br label %cleanup76

if.then.i.i.i:                                    ; preds = %for.end54
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %add66, i1 noundef zeroext true) #6
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %add66, i32 -1226833920) #10, !srcloc !50
  %asmresult.i.i = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf, i32 noundef %add66) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %user_buf, ptr noundef nonnull %buf, i32 noundef %add66) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add66, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add66, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool68.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool68.not, label %if.end70, label %copy_to_user.exit.cleanup76_crit_edge

copy_to_user.exit.cleanup76_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.end70:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %values_cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %values_cnt, align 4
  %mul72 = mul i32 %51, 11
  %add75 = add i32 %mul72, 12
  br label %cleanup76

cleanup76:                                        ; preds = %if.end70, %copy_to_user.exit.cleanup76_crit_edge, %if.then3.i.i, %if.then32, %if.end23.thread, %if.then5, %if.then
  %retval.0 = phi i32 [ -11, %if.then5 ], [ %call12155, %if.end23.thread ], [ -22, %if.then32 ], [ %add75, %if.end70 ], [ 0, %if.then ], [ -14, %copy_to_user.exit.cleanup76_crit_edge ], [ -14, %if.then3.i.i ]
  call void @llvm.lifetime.end.p0(i64 122, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crtc_crc_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26
  %wq = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 8
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %wq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wq, ptr noundef nonnull %wait) #6
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %crc1) #6
  %source = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 1
  %6 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %source, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %poll_wait.exit.if.end_crit_edge, label %land.lhs.true

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %poll_wait.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %8 = ptrtoint ptr %crc1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %crc1, align 4
  %9 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %crtc_crc_data_count.exit, !prof !48

do.body4.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_debugfs_crc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

crtc_crc_data_count.exit:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %head.i = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 5
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 6
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %11, %13
  %and.i = and i32 %sub.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 65
  br label %if.end

if.end:                                           ; preds = %crtc_crc_data_count.exit, %poll_wait.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %poll_wait.exit.if.end_crit_edge ], [ %spec.select, %crtc_crc_data_count.exit ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crtc_crc_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %filep) #0 align 64 {
entry:
  %values_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values_cnt) #6
  %2 = ptrtoint ptr %values_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %values_cnt, align 4, !annotation !47
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 10
  %9 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %8, 16
  %and2.i.i.i = and i32 %and.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.rhs.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 27
  %11 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.end11_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.end11_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %14, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.end11_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge

drm_drv_uses_atomic_modeset.exit.if.then_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

drm_drv_uses_atomic_modeset.exit.if.end11_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %mutex = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @drm_modeset_lock_single_interruptible(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %state = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %active, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not = icmp eq i8 %18, 0
  tail call void @drm_modeset_unlock(ptr noundef %mutex) #6
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %drm_drv_uses_atomic_modeset.exit.if.end11_crit_edge, %lor.rhs.i.if.end11_crit_edge
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs, align 4
  %verify_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %verify_crc_source to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %verify_crc_source, align 4
  %source = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26, i32 1
  %23 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %source, align 4
  %call12 = call i32 %22(ptr noundef %1, ptr noundef %24, ptr noundef nonnull %values_cnt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %25 = ptrtoint ptr %values_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %values_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %26)
  %cmp = icmp ugt i32 %26, 10
  br i1 %cmp, label %do.end, label %if.end39, !prof !48

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 220, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end39:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp41 = icmp eq i32 %26, 0
  br i1 %cmp41, label %do.end57, label %if.end73, !prof !48

do.end57:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 223, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end73:                                         ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 6144) #11
  %tobool75.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool75.not, label %if.end73.cleanup_crit_edge, label %if.end77

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end77:                                         ; preds = %if.end73
  call void @_raw_spin_lock_irq(ptr noundef %crc1) #6
  %opened = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26, i32 2
  %28 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %opened, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool78.not = icmp eq i8 %29, 0
  br i1 %tobool78.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

if.end87:                                         ; preds = %if.end77
  %30 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %opened, align 4
  %entries81 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26, i32 4
  %31 = ptrtoint ptr %entries81 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %entries81, align 4
  %32 = ptrtoint ptr %values_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %values_cnt, align 4
  %values_cnt82 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26, i32 7
  %34 = ptrtoint ptr %values_cnt82 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %values_cnt82, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  %35 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %funcs, align 4
  %set_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %set_crc_source to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_crc_source, align 4
  %39 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %source, align 4
  %call90 = call i32 %38(ptr noundef %1, ptr noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end87.cleanup_crit_edge, label %err

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err:                                              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_lock_irq(ptr noundef %crc1) #6
  %41 = ptrtoint ptr %entries81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %entries81, align 4
  call void @kfree(ptr noundef %42) #6
  %overflow.i = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26, i32 3
  %43 = ptrtoint ptr %overflow.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %overflow.i, align 1
  %44 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %opened, align 4
  %45 = call ptr @memset(ptr %entries81, i32 0, i32 16)
  call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end87.cleanup_crit_edge, %if.then86, %if.end73.cleanup_crit_edge, %do.end57, %do.end, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end57 ], [ -16, %if.then86 ], [ %call90, %err ], [ %call2, %if.then.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -12, %if.end73.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values_cnt) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crtc_crc_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26
  tail call void @_raw_spin_lock_irq(ptr noundef %crc1) #6
  %opened = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 2
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %opened, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 16
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %set_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %set_crc_source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_crc_source, align 4
  %call = tail call i32 %8(ptr noundef %3, ptr noundef null) #6
  tail call void @_raw_spin_lock_irq(ptr noundef %crc1) #6
  %entries.i = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 4
  %9 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entries.i, align 4
  tail call void @kfree(ptr noundef %10) #6
  %overflow.i = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, i32 3
  %11 = ptrtoint ptr %overflow.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %overflow.i, align 1
  %12 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %opened, align 4
  %13 = call ptr @memset(ptr %entries.i, i32 0, i32 16)
  tail call void @_raw_spin_unlock_irq(ptr noundef %crc1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_single_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 375, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 377, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 379, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 419, i32 4}
!8 = !{ptr @__ksymtab_drm_crtc_add_crc_entry, !9, !"__ksymtab_drm_crtc_add_crc_entry", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 438, i32 1}
!10 = !{ptr @drm_crtc_crc_control_fops, !11, !"drm_crtc_crc_control_fops", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 169, i32 37}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 134, i32 3}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 101, i32 20}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 103, i32 20}
!18 = !{ptr @drm_crtc_crc_data_fops, !19, !"drm_crtc_crc_data_fops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 360, i32 37}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 330, i32 16}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 332, i32 16}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 335, i32 30}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 336, i32 43}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/drm_debugfs_crc.c", i32 220, i32 6}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i8 0, i8 2}
!47 = !{!"auto-init"}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 2156503653, i64 2156504151, i64 2156503690, i64 2156503746, i64 2156503780, i64 2156503804, i64 2156503845, i64 2156503866, i64 2156503894, i64 2156503928}
!50 = !{i64 2152191055, i64 2152191080}
