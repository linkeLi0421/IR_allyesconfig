; ModuleID = '/llk/IR_all_yes/fs/ubifs/sysfs.c_pt.bc'
source_filename = "../fs/ubifs/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.ubifs_attr = type { %struct.attribute, i32 }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.84 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_stats_info = type { i32, i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ubi%d_%d\00", [23 x i8] zeroinitializer }, align 32
@ubifs_kset = internal global { %struct.kset, [32 x i8] } { %struct.kset { %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, %struct.kobject { ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @ubifs_ktype, ptr null, %struct.kref zeroinitializer, %struct.delayed_work zeroinitializer, i8 0 }, ptr null }, [32 x i8] zeroinitializer }, align 32
@ubifs_sb_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @ubifs_sb_release, ptr @ubifs_attr_ops, ptr @ubifs_attrs, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cannot create sysfs entry for ubifs%d_%d, error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ubifs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @ubifs_attr_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ubifs_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @ubifs_attr_show, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ubifs_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @ubifs_attr_errors_magic, ptr @ubifs_attr_errors_node, ptr @ubifs_attr_errors_crc, ptr null], [16 x i8] zeroinitializer }, align 32
@ubifs_attr_errors_magic = internal global { %struct.ubifs_attr, [40 x i8] } { %struct.ubifs_attr { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ubifs_attr_errors_node = internal global { %struct.ubifs_attr, [40 x i8] } { %struct.ubifs_attr { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1 }, [40 x i8] zeroinitializer }, align 32
@ubifs_attr_errors_crc = internal global { %struct.ubifs_attr, [40 x i8] } { %struct.ubifs_attr { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 2 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"errors_magic\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"errors_node\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"errors_crc\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 100, i32 52 }
@___asan_gen_.12 = private unnamed_addr constant [11 x i8] c"ubifs_kset\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 86, i32 20 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"ubifs_sb_ktype\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 76, i32 25 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 113, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 125, i32 15 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 143, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"ubifs_ktype\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 82, i32 25 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"ubifs_attr_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 72, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 56, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 87, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"ubifs_attrs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 39, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"ubifs_attr_errors_magic\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"ubifs_attr_errors_node\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"ubifs_attr_errors_crc\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 33, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 35, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [20 x i8] c"../fs/ubifs/sysfs.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 34, i32 1 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @ubifs_kset, ptr @ubifs_sb_ktype, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ubifs_ktype, ptr @ubifs_attr_ops, ptr @.str.4, ptr @init_completion.__key, ptr @.str.5, ptr @ubifs_attrs, ptr @ubifs_attr_errors_magic, ptr @ubifs_attr_errors_node, ptr @ubifs_attr_errors_crc, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_kset to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_sb_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_attr_errors_magic to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_attr_errors_node to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_attr_errors_crc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_sysfs_register(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %dfs_dir_name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %dfs_dir_name) #6
  %0 = call ptr @memset(ptr %dfs_dir_name, i32 255, i32 10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %stats = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 195
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %stats, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_last_crit_edge, label %if.end

entry.out_last_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_last

if.end:                                           ; preds = %entry
  %vi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102
  %3 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vi, align 8
  %vol_id = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 1
  %5 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vol_id, align 4
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dfs_dir_name, i32 noundef 10, ptr noundef nonnull @.str, i32 noundef %4, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call3)
  %cmp = icmp sgt i32 %call3, 9
  br i1 %cmp, label %if.end.out_free_crit_edge, label %if.end5

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end5:                                          ; preds = %if.end
  %kobj = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 28
  %kset = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 28, i32 3
  %7 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ubifs_kset, ptr %kset, align 8
  %kobj_unregister = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 29
  %8 = ptrtoint ptr %kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 29, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #6
  %call8 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef nonnull @ubifs_sb_ktype, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull %dfs_dir_name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %out_put

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_put:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @kobject_put(ptr noundef %kobj) #6
  call void @wait_for_completion(ptr noundef %kobj_unregister) #6
  br label %out_free

out_free:                                         ; preds = %out_put, %if.end.out_free_crit_edge
  %ret.0 = phi i32 [ %call8, %out_put ], [ -22, %if.end.out_free_crit_edge ]
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stats, align 8
  call void @kfree(ptr noundef %10) #6
  br label %out_last

out_last:                                         ; preds = %out_free, %entry.out_last_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free ], [ -12, %entry.out_last_crit_edge ]
  %vi15 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102
  %11 = ptrtoint ptr %vi15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vi15, align 8
  %vol_id18 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 1
  %13 = ptrtoint ptr %vol_id18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vol_id18, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.2, i32 noundef %12, i32 noundef %14, i32 noundef %ret.1) #6
  br label %cleanup

cleanup:                                          ; preds = %out_last, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_last ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %dfs_dir_name) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_sysfs_unregister(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 28
  tail call void @kobject_del(ptr noundef %kobj) #6
  tail call void @kobject_put(ptr noundef %kobj) #6
  %kobj_unregister = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 29
  tail call void @wait_for_completion(ptr noundef %kobj_unregister) #6
  %stats = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 195
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 8
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_sysfs_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef getelementptr inbounds (%struct.kset, ptr @ubifs_kset, i32 0, i32 2), ptr noundef nonnull @.str.3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.kset, ptr @ubifs_kset, i32 0, i32 2, i32 2), align 4
  %call1 = tail call i32 @kset_register(ptr noundef nonnull @ubifs_kset) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kset_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_sysfs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kset_unregister(ptr noundef nonnull @ubifs_kset) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_attr_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_id = getelementptr inbounds %struct.ubifs_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %attr_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stats = getelementptr i8, ptr %kobj, i32 4768
  %3 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stats, align 8
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stats5 = getelementptr i8, ptr %kobj, i32 4768
  %5 = ptrtoint ptr %stats5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats5, align 8
  %node_errors = getelementptr inbounds %struct.ubifs_stats_info, ptr %6, i32 0, i32 1
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stats8 = getelementptr i8, ptr %kobj, i32 4768
  %7 = ptrtoint ptr %stats8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stats8, align 8
  %crc_errors = getelementptr inbounds %struct.ubifs_stats_info, ptr %8, i32 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb7, %sw.bb4, %sw.bb
  %crc_errors.sink = phi ptr [ %crc_errors, %sw.bb7 ], [ %node_errors, %sw.bb4 ], [ %4, %sw.bb ]
  %9 = ptrtoint ptr %crc_errors.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crc_errors.sink, align 4
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ubifs_sb_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %kobj_unregister) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/sysfs.c", i32 100, i32 52}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ubifs/sysfs.c", i32 113, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ubifs/sysfs.c", i32 125, i32 15}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/sysfs.c", i32 143, i32 37}
!8 = !{ptr @ubifs_kset, !9, !"ubifs_kset", i1 false, i1 false}
!9 = !{!"../fs/ubifs/sysfs.c", i32 86, i32 20}
!10 = !{ptr @ubifs_ktype, !11, !"ubifs_ktype", i1 false, i1 false}
!11 = !{!"../fs/ubifs/sysfs.c", i32 82, i32 25}
!12 = !{ptr @ubifs_attr_ops, !13, !"ubifs_attr_ops", i1 false, i1 false}
!13 = !{!"../fs/ubifs/sysfs.c", i32 72, i32 31}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ubifs/sysfs.c", i32 56, i32 26}
!16 = !{ptr @init_completion.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/completion.h", i32 87, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ubifs_sb_ktype, !20, !"ubifs_sb_ktype", i1 false, i1 false}
!20 = !{!"../fs/ubifs/sysfs.c", i32 76, i32 25}
!21 = !{ptr @ubifs_attrs, !22, !"ubifs_attrs", i1 false, i1 false}
!22 = !{!"../fs/ubifs/sysfs.c", i32 39, i32 26}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/sysfs.c", i32 33, i32 1}
!25 = !{ptr @ubifs_attr_errors_magic, !24, !"ubifs_attr_errors_magic", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/sysfs.c", i32 35, i32 1}
!28 = !{ptr @ubifs_attr_errors_node, !27, !"ubifs_attr_errors_node", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ubifs/sysfs.c", i32 34, i32 1}
!31 = !{ptr @ubifs_attr_errors_crc, !30, !"ubifs_attr_errors_crc", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
