; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_mxm = type { %struct.nvkm_subdev, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@nvkm_mxm = internal constant { %struct.nvkm_subdev_func, [36 x i8] } zeroinitializer, align 32
@nvkm_mxm_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: no VBIOS data, nothing to do\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_mxm_new_\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_mxm_new_._entry_ptr = internal global ptr @nvkm_mxm_new_._entry, section ".printk_index", align 4
@nvkm_mxm_new_._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: BIOS version %d.%d\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_mxm_new_._entry_ptr.7 = internal global ptr @nvkm_mxm_new_._entry.5, section ".printk_index", align 4
@nvkm_mxm_new_._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: module flags: %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_mxm_new_._entry_ptr.10 = internal global ptr @nvkm_mxm_new_._entry.8, section ".printk_index", align 4
@nvkm_mxm_new_._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 256, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: config flags: %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_mxm_new_._entry_ptr.13 = internal global ptr @nvkm_mxm_new_._entry.11, section ".printk_index", align 4
@nvkm_mxm_new_._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 259, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to locate valid SIS\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@nvkm_mxm_new_._entry_ptr.17 = internal global ptr @nvkm_mxm_new_._entry.14, section ".printk_index", align 4
@nvkm_mxm_new_._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: MXMS Version %d.%d\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_mxm_new_._entry_ptr.20 = internal global ptr @nvkm_mxm_new_._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NvMXMDCB\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mxm_shadow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: checking %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mxm_shadow\00", [21 x i8] zeroinitializer }, align 32
@mxm_shadow._entry_ptr = internal global ptr @mxm_shadow._entry, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ROM\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"nvkm_mxm\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 229, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 248, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 252, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 253, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 255, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 259, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 272, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 276, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 217, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 202, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @mxm_shadow._entry, ptr @mxm_shadow._entry_ptr, ptr @nvkm_mxm_new_._entry, ptr @nvkm_mxm_new_._entry.11, ptr @nvkm_mxm_new_._entry.14, ptr @nvkm_mxm_new_._entry.18, ptr @nvkm_mxm_new_._entry.5, ptr @nvkm_mxm_new_._entry.8, ptr @nvkm_mxm_new_._entry_ptr, ptr @nvkm_mxm_new_._entry_ptr.10, ptr @nvkm_mxm_new_._entry_ptr.13, ptr @nvkm_mxm_new_._entry_ptr.17, ptr @nvkm_mxm_new_._entry_ptr.20, ptr @nvkm_mxm_new_._entry_ptr.7, ptr @nvkm_mxm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mxm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mxm_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mxm_new_._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mxm_new_._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mxm_new_._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mxm_new_._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mxm_new_._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxm_shadow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_mxm_new_(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pmxm) local_unnamed_addr #0 align 64 {
entry:
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 21
  %0 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #6
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ver, align 1, !annotation !51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %len, align 1, !annotation !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 60) #9
  %5 = ptrtoint ptr %pmxm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pmxm, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_mxm, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #6
  %call2 = call zeroext i16 @mxm_table(ptr noundef %1, ptr noundef nonnull %ver, ptr noundef nonnull %len) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2)
  %tobool3.not = icmp eq i16 %call2, 0
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %conv = zext i16 %call2 to i32
  %call4 = call zeroext i8 @nvbios_rd08(ptr noundef %1, i32 noundef %conv) #6
  %6 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call4, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4)
  %tobool5.not = icmp eq i8 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false.do.body_crit_edge, label %do.body16

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp ugt i32 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %device11 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device11, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef %name) #10
  br label %cleanup

do.body16:                                        ; preds = %lor.lhs.false
  %debug19 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %debug19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp20 = icmp ugt i32 %14, 2
  br i1 %cmp20, label %if.end32, label %do.body16.if.end73.thread168_crit_edge

do.body16.if.end73.thread168_crit_edge:           ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.thread168

if.end32:                                         ; preds = %do.body16
  %device26 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device26, align 4
  %dev27 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev27, align 8
  %name28 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  %conv30 = zext i8 %call4 to i32
  %19 = lshr i32 %conv30, 4
  %and = and i32 %conv30, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef %name28, i32 noundef %19, i32 noundef %and) #10
  %20 = ptrtoint ptr %debug19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %debug19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp39 = icmp ugt i32 %.pr, 3
  br i1 %cmp39, label %if.end52, label %if.end32.if.end73.thread168_crit_edge

if.end32.if.end73.thread168_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.thread168

if.end52:                                         ; preds = %if.end32
  %21 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device26, align 4
  %dev46 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev46, align 8
  %add = add nuw nsw i32 %conv, 1
  %call50 = call zeroext i8 @nvbios_rd08(ptr noundef %1, i32 noundef %add) #6
  %conv51 = zext i8 %call50 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.9, ptr noundef %name28, i32 noundef %conv51) #10
  %25 = ptrtoint ptr %debug19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr160 = load i32, ptr %debug19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr160)
  %cmp59 = icmp ugt i32 %.pr160, 3
  br i1 %cmp59, label %if.end73, label %if.end73.thread

if.end73.thread:                                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ver, align 1
  br label %if.end.i

if.end73.thread168:                               ; preds = %if.end32.if.end73.thread168_crit_edge, %do.body16.if.end73.thread168_crit_edge
  %28 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ver, align 1
  br label %if.end.i

if.end73:                                         ; preds = %if.end52
  %30 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device26, align 4
  %dev66 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev66, align 8
  %add70 = add nuw nsw i32 %conv, 2
  %call71 = call zeroext i8 @nvbios_rd08(ptr noundef %1, i32 noundef %add70) #6
  %conv72 = zext i8 %call71 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.12, ptr noundef %name28, i32 noundef %conv72) #10
  %34 = ptrtoint ptr %debug19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr162.pr = load i32, ptr %debug19, align 8
  %35 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr162.pr)
  %cmp.i = icmp ugt i32 %.pr162.pr, 3
  br i1 %cmp.i, label %do.end.i, label %if.end73.if.end.i_crit_edge

if.end73.if.end.i_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device26, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.22, ptr noundef %name28, ptr noundef nonnull @.str.24) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end73.if.end.i_crit_edge, %if.end73.thread168, %if.end73.thread
  %41 = phi i8 [ %27, %if.end73.thread ], [ %36, %do.end.i ], [ %36, %if.end73.if.end.i_crit_edge ], [ %29, %if.end73.thread168 ]
  %mxms.i165 = getelementptr inbounds %struct.nvkm_mxm, ptr %call7.i.i, i32 0, i32 2
  %call.i = call fastcc zeroext i1 @mxm_shadow_rom(ptr noundef nonnull %call7.i.i, i8 noundef zeroext %41) #6
  br i1 %call.i, label %if.then6.i, label %if.end.i.do.body79_crit_edge

if.end.i.do.body79_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79

if.then6.i:                                       ; preds = %if.end.i
  %call7.i = call zeroext i1 @mxms_valid(ptr noundef nonnull %call7.i.i) #6
  br i1 %call7.i, label %do.body97, label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %mxms.i165 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mxms.i165, align 8
  call void @kfree(ptr noundef %43) #6
  %44 = ptrtoint ptr %mxms.i165 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %mxms.i165, align 8
  br label %do.body79

do.body79:                                        ; preds = %if.end9.i, %if.end.i.do.body79_crit_edge
  %45 = ptrtoint ptr %debug19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %debug19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp83 = icmp ugt i32 %46, 1
  br i1 %cmp83, label %do.end88, label %do.body79.cleanup_crit_edge

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end88:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  %device89 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device89, align 4
  %dev90 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev90, align 8
  %name91 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %50, ptr noundef nonnull @.str.15, ptr noundef %name91) #10
  br label %cleanup

do.body97:                                        ; preds = %if.then6.i
  %51 = ptrtoint ptr %debug19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp101 = icmp ugt i32 %52, 3
  br i1 %cmp101, label %do.end106, label %do.body97.if.end117_crit_edge

do.body97.if.end117_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end106:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  %device107 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %device107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device107, align 4
  %dev108 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev108, align 8
  %name109 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  %call111 = call zeroext i16 @mxms_version(ptr noundef nonnull %call7.i.i) #6
  %57 = lshr i16 %call111, 8
  %58 = zext i16 %57 to i32
  %call114 = call zeroext i16 @mxms_version(ptr noundef nonnull %call7.i.i) #6
  %59 = and i16 %call114, 255
  %and116 = zext i16 %59 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.19, ptr noundef %name109, i32 noundef %58, i32 noundef %and116) #10
  br label %if.end117

if.end117:                                        ; preds = %do.end106, %do.body97.if.end117_crit_edge
  %call120 = call zeroext i1 @mxms_foreach(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #6
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %60 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfgopt, align 4
  %call121 = call zeroext i1 @nvkm_boolopt(ptr noundef %61, ptr noundef nonnull @.str.21, i1 noundef zeroext true) #6
  br i1 %call121, label %if.then122, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then122:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  %action = getelementptr inbounds %struct.nvkm_mxm, ptr %call7.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %action, align 4
  %or = or i32 %63, 1
  store i32 %or, ptr %action, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %if.end117.cleanup_crit_edge, %do.end88, %do.body79.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end88 ], [ 0, %do.body79.cleanup_crit_edge ], [ 0, %if.then122 ], [ 0, %if.end117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mxm_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mxms_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mxms_foreach(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mxms_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mxm_shadow_rom(ptr noundef %mxm, i8 noundef zeroext %version) unnamed_addr #0 align 64 {
entry:
  %offset.addr.i72 = alloca i8, align 1
  %msgs.i73 = alloca [2 x %struct.i2c_msg], align 4
  %offset.addr.i60 = alloca i8, align 1
  %msgs.i61 = alloca [2 x %struct.i2c_msg], align 4
  %offset.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %mxms = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  %i2c3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c3, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mxms) #6
  %6 = call ptr @memset(ptr %mxms, i32 255, i32 6)
  %call = tail call zeroext i8 @mxm_ddc_map(ptr noundef %3, i8 noundef zeroext 1) #6
  %7 = and i8 %call, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %7)
  %cmp.not = icmp eq i8 %7, 15
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv5 = zext i8 %7 to i32
  %call8 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %5, i32 noundef %conv5) #6
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset.addr.i)
  %8 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %offset.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %9 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 84, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %offset.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 84, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %17 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 6, ptr %len5.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mxms, ptr %buf7.i, align 4
  %i2c.i = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %call8, i32 0, i32 5
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c.i, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset.addr.i)
  br i1 %cmp.i, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset.addr.i60)
  %19 = ptrtoint ptr %offset.addr.i60 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %offset.addr.i60, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i61) #6
  %20 = getelementptr inbounds i8, ptr %msgs.i61, i32 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 16)
  %22 = ptrtoint ptr %msgs.i61 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 86, ptr %msgs.i61, align 4
  %flags.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i61, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i62 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i62, align 2
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %20, align 4
  %buf.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i61, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i64 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %offset.addr.i60, ptr %buf.i64, align 4
  %arrayinit.element.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i61, i32 1
  %26 = ptrtoint ptr %arrayinit.element.i65 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 86, ptr %arrayinit.element.i65, align 4
  %flags4.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i61, i32 1, i32 1
  %27 = ptrtoint ptr %flags4.i66 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags4.i66, align 2
  %len5.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i61, i32 1, i32 2
  %28 = ptrtoint ptr %len5.i67 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 6, ptr %len5.i67, align 4
  %buf7.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i61, i32 1, i32 3
  %29 = ptrtoint ptr %buf7.i68 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mxms, ptr %buf7.i68, align 4
  %call.i70 = call i32 @i2c_transfer(ptr noundef %i2c.i, ptr noundef nonnull %msgs.i61, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i70)
  %cmp.i71 = icmp eq i32 %call.i70, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i61) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset.addr.i60)
  br i1 %cmp.i71, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %addr.0 = phi i8 [ 84, %if.end10.if.end17_crit_edge ], [ 86, %if.then12.if.end17_crit_edge ]
  %mxms19 = getelementptr inbounds %struct.nvkm_mxm, ptr %mxm, i32 0, i32 2
  %30 = ptrtoint ptr %mxms19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mxms, ptr %mxms19, align 4
  %call20 = call zeroext i16 @mxms_headerlen(ptr noundef %mxm) #6
  %conv21 = trunc i16 %call20 to i8
  %call22 = call zeroext i16 @mxms_structlen(ptr noundef %mxm) #6
  %conv23 = trunc i16 %call22 to i8
  %add = add i8 %conv23, %conv21
  %conv25 = zext i8 %add to i32
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv25, i32 noundef 3264) #11
  %31 = ptrtoint ptr %mxms19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i, ptr %mxms19, align 4
  %tobool29.not = icmp eq ptr %call9.i, null
  br i1 %tobool29.not, label %if.end17.if.end34_crit_edge, label %land.lhs.true

if.end17.if.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset.addr.i72)
  %32 = ptrtoint ptr %offset.addr.i72 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %offset.addr.i72, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i73) #6
  %33 = getelementptr inbounds i8, ptr %msgs.i73, i32 4
  %34 = call ptr @memset(ptr %33, i32 255, i32 16)
  %conv.i = zext i8 %addr.0 to i16
  %35 = ptrtoint ptr %msgs.i73 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %msgs.i73, align 4
  %flags.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i73, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i74 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i74, align 2
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %33, align 4
  %buf.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i73, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i76 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %offset.addr.i72, ptr %buf.i76, align 4
  %arrayinit.element.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i73, i32 1
  %39 = ptrtoint ptr %arrayinit.element.i77 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i, ptr %arrayinit.element.i77, align 4
  %flags4.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i73, i32 1, i32 1
  %40 = ptrtoint ptr %flags4.i78 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags4.i78, align 2
  %len5.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i73, i32 1, i32 2
  %conv6.i = zext i8 %add to i16
  %41 = ptrtoint ptr %len5.i79 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv6.i, ptr %len5.i79, align 4
  %buf7.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i73, i32 1, i32 3
  %42 = ptrtoint ptr %buf7.i80 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i, ptr %buf7.i80, align 4
  %call.i82 = call i32 @i2c_transfer(ptr noundef %i2c.i, ptr noundef nonnull %msgs.i73, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i82)
  %cmp.i83 = icmp eq i32 %call.i82, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i73) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset.addr.i72)
  br i1 %cmp.i83, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.end17.if.end34_crit_edge
  %43 = ptrtoint ptr %mxms19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mxms19, align 4
  call void @kfree(ptr noundef %44) #6
  %45 = ptrtoint ptr %mxms19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %mxms19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %land.lhs.true.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end34 ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.then12.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mxms) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mxm_ddc_map(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mxms_headerlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mxms_structlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !36, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 248, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_mxm_new_._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_mxm_new_._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 252, i32 2}
!10 = !{ptr @nvkm_mxm_new_._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_mxm_new_._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 253, i32 2}
!14 = !{ptr @nvkm_mxm_new_._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvkm_mxm_new_._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 255, i32 2}
!18 = !{ptr @nvkm_mxm_new_._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvkm_mxm_new_._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 259, i32 3}
!22 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nvkm_mxm_new_._entry.14, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvkm_mxm_new_._entry_ptr.17, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 272, i32 2}
!27 = !{ptr @nvkm_mxm_new_._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nvkm_mxm_new_._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 276, i32 35}
!31 = !{ptr @nvkm_mxm, !32, !"nvkm_mxm", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 229, i32 1}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 217, i32 3}
!35 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mxm_shadow._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @mxm_shadow._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 202, i32 4}
!40 = distinct !{null, !41, !"_mxm_shadow", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/base.c", i32 201, i32 3}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
