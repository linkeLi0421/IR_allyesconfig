; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/engine.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/engine.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.148, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.148 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.149 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.149 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.147, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.147 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.108, %struct.anon.109, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.108 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.109 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@nvkm_engine = dso_local constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_engine_dtor, ptr @nvkm_engine_preinit, ptr null, ptr @nvkm_engine_info, ptr @nvkm_engine_init, ptr @nvkm_engine_fini, ptr @nvkm_engine_intr }, [36 x i8] zeroinitializer }, align 32
@nvkm_engine_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&engine->use.mutex\00", [45 x i8] zeroinitializer }, align 32
@nvkm_engine_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 188, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_engine_ctor\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/engine.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_engine_ctor._entry_ptr = internal global ptr @nvkm_engine_ctor._entry, section ".printk_index", align 4
@nvkm_engine_ctor.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&engine->lock\00", [18 x i8] zeroinitializer }, align 32
@nvkm_engine_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: init skipped, engine has no users\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_engine_init\00", [47 x i8] zeroinitializer }, align 32
@nvkm_engine_init._entry_ptr = internal global ptr @nvkm_engine_init._entry, section ".printk_index", align 4
@nvkm_engine_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: one-time init running...\0A\00", [34 x i8] zeroinitializer }, align 32
@nvkm_engine_init._entry_ptr.12 = internal global ptr @nvkm_engine_init._entry.10, section ".printk_index", align 4
@nvkm_engine_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: one-time init failed, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nvkm_engine_init._entry_ptr.15 = internal global ptr @nvkm_engine_init._entry.13, section ".printk_index", align 4
@nvkm_engine_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: one-time init completed in %lldus\0A\00", [57 x i8] zeroinitializer }, align 32
@nvkm_engine_init._entry_ptr.18 = internal global ptr @nvkm_engine_init._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"nvkm_engine\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 169, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 185, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 188, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 192, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 123, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 128, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 132, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/engine.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 138, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @nvkm_engine_ctor._entry, ptr @nvkm_engine_ctor._entry_ptr, ptr @nvkm_engine_init._entry, ptr @nvkm_engine_init._entry.10, ptr @nvkm_engine_init._entry.13, ptr @nvkm_engine_init._entry.16, ptr @nvkm_engine_init._entry_ptr, ptr @nvkm_engine_init._entry_ptr.12, ptr @nvkm_engine_init._entry_ptr.15, ptr @nvkm_engine_init._entry_ptr.18, ptr @nvkm_engine, ptr @nvkm_engine_ctor.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nvkm_engine_ctor.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_engine to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_engine_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_engine_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_engine_ctor.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_engine_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_engine_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_engine_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_engine_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_engine_chsw_load(ptr noundef %engine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 4
  %chsw_load = getelementptr inbounds %struct.nvkm_engine_func, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %chsw_load to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chsw_load, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 %3(ptr noundef %engine) #7
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_engine_unref(ptr nocapture noundef %pengine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pengine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pengine, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %use = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 3
  %mutex = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 3, i32 1
  %call = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %use, ptr noundef %mutex) #7
  br i1 %call, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %subdev = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @nvkm_subdev_fini(ptr noundef %subdev, i1 noundef zeroext false) #7
  %enabled = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %3 = ptrtoint ptr %pengine to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pengine, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_engine_ref(ptr noundef %engine) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i33 = alloca i32, align 4
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %engine, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %use = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use, i32 noundef 4) #7
  %0 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %use, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then
  %2 = phi i32 [ %1, %if.then ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #7
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %use) #7, !srcloc !42
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !43

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !43

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %use, i32 noundef 0) #7
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %11 = phi i32 [ %8, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #7
  br i1 %tobool12.i.i.i.not, label %if.then1, label %refcount_inc_not_zero.exit.cleanup_crit_edge

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %refcount_inc_not_zero.exit
  %mutex = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 3, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i33) #7
  %call.i.i.i.i.i.i34 = call zeroext i1 @__kasan_check_read(ptr noundef %use, i32 noundef 4) #7
  %12 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %use, align 4
  br label %do.body.i.i.i36

do.body.i.i.i36:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46.do.body.i.i.i36_crit_edge, %if.then1
  %14 = phi i32 [ %13, %if.then1 ], [ %asmresult3.i.i.i.i.i.i44, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46.do.body.i.i.i36_crit_edge ]
  %15 = ptrtoint ptr %old.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old.i.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i35 = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i35, label %do.body.i.i.i36.if.end4.i.i.i49_crit_edge, label %do.cond.i.i.i40

do.body.i.i.i36.if.end4.i.i.i49_crit_edge:        ; preds = %do.body.i.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i49

do.cond.i.i.i40:                                  ; preds = %do.body.i.i.i36
  %add.i.i.i37 = add i32 %14, 1
  %call.i.i.i.i.i38 = call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  %call.i3.i.i.i.i39 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i33, i32 noundef 4) #7
  %16 = ptrtoint ptr %old.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i33, align 4
  call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i43

do.body.i.i.i.i.i.i43:                            ; preds = %do.body.i.i.i.i.i.i43.do.body.i.i.i.i.i.i43_crit_edge, %do.cond.i.i.i40
  %18 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 %17, i32 %add.i.i.i37, ptr elementtype(i32) %use) #7, !srcloc !42
  %asmresult.i.i.i.i.i.i41 = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i42 = icmp eq i32 %asmresult.i.i.i.i.i.i41, 0
  br i1 %tobool.not.i.i.i.i.i.i42, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46, label %do.body.i.i.i.i.i.i43.do.body.i.i.i.i.i.i43_crit_edge

do.body.i.i.i.i.i.i43.do.body.i.i.i.i.i.i43_crit_edge: ; preds = %do.body.i.i.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i43

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46:     ; preds = %do.body.i.i.i.i.i.i43
  %asmresult3.i.i.i.i.i.i44 = extractvalue { i32, i32 } %18, 1
  %cmp.not.i.i.i.i.i45 = icmp eq i32 %asmresult3.i.i.i.i.i.i44, %17
  br i1 %cmp.not.i.i.i.i.i45, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46.if.end4.i.i.i49_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46.do.body.i.i.i36_crit_edge, !prof !43

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46.do.body.i.i.i36_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i36

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46.if.end4.i.i.i49_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i49

if.end4.i.i.i49:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i46.if.end4.i.i.i49_crit_edge, %do.body.i.i.i36.if.end4.i.i.i49_crit_edge
  %19 = ptrtoint ptr %old.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i33, align 4
  %add5.i.i.i47 = add i32 %20, 1
  %21 = or i32 %add5.i.i.i47, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i48 = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i48, label %if.end4.i.i.i49.refcount_inc_not_zero.exit52_crit_edge, label %if.then10.i.i.i50, !prof !43

if.end4.i.i.i49.refcount_inc_not_zero.exit52_crit_edge: ; preds = %if.end4.i.i.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc_not_zero.exit52

if.then10.i.i.i50:                                ; preds = %if.end4.i.i.i49
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %use, i32 noundef 0) #7
  %22 = ptrtoint ptr %old.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr53 = load i32, ptr %old.i.i.i33, align 4
  br label %refcount_inc_not_zero.exit52

refcount_inc_not_zero.exit52:                     ; preds = %if.then10.i.i.i50, %if.end4.i.i.i49.refcount_inc_not_zero.exit52_crit_edge
  %23 = phi i32 [ %20, %if.end4.i.i.i49.refcount_inc_not_zero.exit52_crit_edge ], [ %.pr53, %if.then10.i.i.i50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.i.i.i51.not = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i33) #7
  br i1 %tobool12.i.i.i51.not, label %if.then6, label %refcount_inc_not_zero.exit52.if.end18_crit_edge

refcount_inc_not_zero.exit52.if.end18_crit_edge:  ; preds = %refcount_inc_not_zero.exit52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then6:                                         ; preds = %refcount_inc_not_zero.exit52
  %enabled = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %enabled, align 4
  %subdev = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1
  %call8 = call i32 @nvkm_subdev_init(ptr noundef %subdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end, label %if.then10

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %enabled, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  %26 = inttoptr i32 %call8 to ptr
  br label %cleanup

if.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  %27 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %use, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %refcount_inc_not_zero.exit52.if.end18_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then10, %refcount_inc_not_zero.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %26, %if.then10 ], [ %engine, %refcount_inc_not_zero.exit.cleanup_crit_edge ], [ %engine, %if.end18 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_engine_tile(ptr noundef %engine, i32 noundef %region) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 4
  %tile = getelementptr inbounds %struct.nvkm_engine_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %tile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tile, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %fb1 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb1, align 8
  %tile4 = getelementptr inbounds %struct.nvkm_fb, ptr %7, i32 0, i32 5
  %arrayidx = getelementptr [16 x %struct.nvkm_fb_tile], ptr %tile4, i32 0, i32 %region
  tail call void %3(ptr noundef %engine, i32 noundef %region, ptr noundef %arrayidx) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_engine_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr %3(ptr noundef %add.ptr) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mutex = getelementptr i8, ptr %subdev, i32 100
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %add.ptr, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_engine_preinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %preinit = getelementptr inbounds %struct.nvkm_engine_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preinit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %preinit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %add.ptr) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_engine_info(ptr noundef %subdev, i64 noundef %mthd, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %info = getelementptr inbounds %struct.nvkm_engine_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call ptr @nvkm_engine_ref(ptr noundef %add.ptr)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %info4 = getelementptr inbounds %struct.nvkm_engine_func, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %info4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info4, align 4
  %call5 = tail call i32 %7(ptr noundef %call, i64 noundef %mthd, ptr noundef %data) #7
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.then2.cleanup_crit_edge, label %if.then.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then2
  %use.i = getelementptr inbounds %struct.nvkm_engine, ptr %call, i32 0, i32 3
  %mutex.i = getelementptr inbounds %struct.nvkm_engine, ptr %call, i32 0, i32 3, i32 1
  %call.i = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %use.i, ptr noundef %mutex.i) #7
  br i1 %call.i, label %if.then2.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %subdev.i = getelementptr inbounds %struct.nvkm_engine, ptr %call, i32 0, i32 1
  %call3.i = tail call i32 @nvkm_subdev_fini(ptr noundef %subdev.i, i1 noundef zeroext false) #7
  %enabled.i = getelementptr inbounds %struct.nvkm_engine, ptr %call, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2.i, %if.then.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end ], [ -38, %entry.cleanup_crit_edge ], [ %call5, %if.then.i.cleanup_crit_edge ], [ %call5, %if.then2.i ], [ %call5, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_engine_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %device = getelementptr %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %fb1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb1, align 8
  %enabled = getelementptr i8, ptr %subdev, i32 192
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp ugt i32 %7, 4
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef %name) #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %oneinit = getelementptr inbounds %struct.nvkm_engine_func, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %oneinit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %oneinit, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end7.if.end69_crit_edge, label %land.lhs.true

if.end7.if.end69_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end7
  %oneinit10 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 8
  %14 = ptrtoint ptr %oneinit10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %oneinit10, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %do.body13, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

do.body13:                                        ; preds = %land.lhs.true
  %debug15 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %16 = ptrtoint ptr %debug15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp16 = icmp ugt i32 %17, 4
  br i1 %cmp16, label %do.end20, label %do.body13.if.end25_crit_edge

do.body13.if.end25_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end20:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %dev22 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev22, align 8
  %name23 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.11, ptr noundef %name23) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end20, %do.body13.if.end25_crit_edge
  %call = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %20 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #7
  %21 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %20, i32 0) #11, !srcloc !45
  %asmresult.i.i.i = extractvalue { i64, i32 } %21, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %21, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %20, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !46
  %asmresult10.i.i.i = extractvalue { i64, i32 } %22, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %23 = select i1 %cmp8.i.i, i64 %div1811.i.i, i64 %sub210.i.i
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %oneinit30 = getelementptr inbounds %struct.nvkm_engine_func, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %oneinit30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %oneinit30, align 4
  %call31 = tail call i32 %27(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end49, label %do.body34

do.body34:                                        ; preds = %if.end25
  %28 = ptrtoint ptr %debug15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp37 = icmp ugt i32 %29, 4
  br i1 %cmp37, label %do.end41, label %do.body34.cleanup_crit_edge

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end41:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev43, align 8
  %name44 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.14, ptr noundef %name44, i32 noundef %call31) #10
  br label %cleanup

if.end49:                                         ; preds = %if.end25
  %34 = ptrtoint ptr %oneinit10 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %oneinit10, align 4
  %call52 = tail call i64 @ktime_get() #7
  %35 = tail call i64 @llvm.abs.i64(i64 %call52, i1 false) #7
  %36 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %35, i32 0) #11, !srcloc !45
  %asmresult.i.i.i115 = extractvalue { i64, i32 } %36, 0
  %asmresult4.i.i.i116 = extractvalue { i64, i32 } %36, 1
  %37 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %35, i64 %asmresult.i.i.i115, i32 %asmresult4.i.i.i116) #11, !srcloc !46
  %38 = ptrtoint ptr %debug15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp57 = icmp ugt i32 %39, 4
  br i1 %cmp57, label %do.end61, label %if.end49.if.end69_crit_edge

if.end49.if.end69_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

do.end61:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call52)
  %cmp8.i.i114 = icmp slt i64 %call52, 0
  %asmresult10.i.i.i117 = extractvalue { i64, i32 } %37, 0
  %div1811.i.i118 = lshr i64 %asmresult10.i.i.i117, 9
  %sub210.i.i119 = sub nsw i64 0, %div1811.i.i118
  %cond213.i.i120 = select i1 %cmp8.i.i114, i64 %sub210.i.i119, i64 %div1811.i.i118
  %sub = add nsw i64 %cond213.i.i120, %23
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 4
  %dev63 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev63, align 8
  %name64 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.17, ptr noundef %name64, i64 noundef %sub) #10
  br label %if.end69

if.end69:                                         ; preds = %do.end61, %if.end49.if.end69_crit_edge, %land.lhs.true.if.end69_crit_edge, %if.end7.if.end69_crit_edge
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  %init = getelementptr inbounds %struct.nvkm_engine_func, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init, align 4
  %tobool71.not = icmp eq ptr %47, null
  br i1 %tobool71.not, label %if.end69.if.end76_crit_edge, label %if.then72

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = tail call i32 %47(ptr noundef %add.ptr) #7
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end69.if.end76_crit_edge
  %ret.1 = phi i32 [ %call75, %if.then72 ], [ 0, %if.end69.if.end76_crit_edge ]
  %regions = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 5, i32 1
  %tobool77.not = icmp eq ptr %3, null
  br i1 %tobool77.not, label %if.end76.cleanup_crit_edge, label %land.rhs.preheader

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.preheader:                               ; preds = %if.end76
  %48 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %regions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp78123 = icmp sgt i32 %49, 0
  br i1 %cmp78123, label %land.rhs.preheader.for.body_crit_edge, label %land.rhs.preheader.cleanup_crit_edge

land.rhs.preheader.cleanup_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.preheader.for.body_crit_edge:            ; preds = %land.rhs.preheader
  br label %for.body

for.body:                                         ; preds = %nvkm_engine_tile.exit.for.body_crit_edge, %land.rhs.preheader.for.body_crit_edge
  %i.0121124 = phi i32 [ %inc, %nvkm_engine_tile.exit.for.body_crit_edge ], [ 0, %land.rhs.preheader.for.body_crit_edge ]
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %tile.i = getelementptr inbounds %struct.nvkm_engine_func, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %tile.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tile.i, align 4
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %for.body.nvkm_engine_tile.exit_crit_edge, label %if.then.i

for.body.nvkm_engine_tile.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_engine_tile.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device, align 4
  %fb1.i = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 33
  %56 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fb1.i, align 8
  %tile4.i = getelementptr inbounds %struct.nvkm_fb, ptr %57, i32 0, i32 5
  %arrayidx.i = getelementptr [16 x %struct.nvkm_fb_tile], ptr %tile4.i, i32 0, i32 %i.0121124
  tail call void %53(ptr noundef %add.ptr, i32 noundef %i.0121124, ptr noundef %arrayidx.i) #7
  br label %nvkm_engine_tile.exit

nvkm_engine_tile.exit:                            ; preds = %if.then.i, %for.body.nvkm_engine_tile.exit_crit_edge
  %inc = add nuw nsw i32 %i.0121124, 1
  %58 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %regions, align 4
  %cmp78 = icmp slt i32 %inc, %59
  br i1 %cmp78, label %nvkm_engine_tile.exit.for.body_crit_edge, label %nvkm_engine_tile.exit.cleanup_crit_edge

nvkm_engine_tile.exit.cleanup_crit_edge:          ; preds = %nvkm_engine_tile.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nvkm_engine_tile.exit.for.body_crit_edge:         ; preds = %nvkm_engine_tile.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %nvkm_engine_tile.exit.cleanup_crit_edge, %land.rhs.preheader.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %do.end41, %do.body34.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %call31, %do.end41 ], [ %call31, %do.body34.cleanup_crit_edge ], [ %ret.1, %if.end76.cleanup_crit_edge ], [ %ret.1, %land.rhs.preheader.cleanup_crit_edge ], [ %ret.1, %nvkm_engine_tile.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_engine_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nvkm_engine_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %add.ptr, i1 noundef zeroext %suspend) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_engine_intr(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_engine_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %add.ptr) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_engine_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %enable, ptr noundef %engine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_engine, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #7
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %engine, align 4
  %use = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  %1 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %use, align 4
  %mutex = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 3, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_engine_ctor.__key) #7
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %2 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfgopt, align 4
  %name = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  %call = tail call zeroext i1 @nvkm_boolopt(ptr noundef %3, ptr noundef %name, i1 noundef zeroext %enable) #7
  br i1 %call, label %do.body15, label %do.body4

do.body4:                                         ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %do.end8, label %do.body4.return_crit_edge

do.body4.return_crit_edge:                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end8:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %device9 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device9, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef %name) #10
  br label %return

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @nvkm_engine_ctor.__key.6, i16 noundef signext 3) #7
  br label %return

return:                                           ; preds = %do.body15, %do.end8, %do.body4.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body15 ], [ -19, %do.end8 ], [ -19, %do.body4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_engine_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %enable, ptr nocapture noundef writeonly %pengine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 200) #12
  %1 = ptrtoint ptr %pengine to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pengine, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @nvkm_engine_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %enable, ptr noundef nonnull %call7.i.i)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @nvkm_engine, !1, !"nvkm_engine", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/engine.c", i32 169, i32 1}
!2 = !{ptr @nvkm_engine_ctor.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/engine.c", i32 185, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/engine.c", i32 188, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nvkm_engine_ctor._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @nvkm_engine_ctor._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @nvkm_engine_ctor.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/engine.c", i32 192, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/engine.c", i32 123, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvkm_engine_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvkm_engine_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/engine.c", i32 128, i32 3}
!23 = !{ptr @nvkm_engine_init._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvkm_engine_init._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/engine.c", i32 132, i32 4}
!27 = !{ptr @nvkm_engine_init._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nvkm_engine_init._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/engine.c", i32 138, i32 3}
!31 = !{ptr @nvkm_engine_init._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @nvkm_engine_init._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 1080850, i64 1080874, i64 1080895, i64 1080912, i64 1080929}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i8 0, i8 2}
!45 = !{i64 959578, i64 959605, i64 959627, i64 959655}
!46 = !{i64 959986, i64 960013, i64 960046, i64 960067, i64 960094, i64 960120}
