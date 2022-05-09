; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, %struct.anon.138, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.137 = type { ptr }
%struct.anon.138 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_sec2 = type { ptr, %struct.nvkm_engine, %struct.nvkm_falcon, ptr, ptr, ptr, %struct.work_struct, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.135, %struct.anon.136, %struct.nvkm_engine }
%struct.anon.135 = type { i32, ptr, i32, i8 }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_sec2_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_sec2_func = type { ptr, i8, ptr, ptr }

@nvkm_sec2 = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @nvkm_sec2_dtor, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_sec2_fini, ptr @nvkm_sec2_intr, ptr null, ptr null, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sec2\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Nv%sFw\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Nv%sFwVer\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cmdq\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msgq\00", [27 x i8] zeroinitializer }, align 32
@nvkm_sec2_new_.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&sec2->work)\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_sec2_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 36, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: error parsing init message: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_sec2_recv\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_sec2_recv._entry_ptr = internal global ptr @nvkm_sec2_recv._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"nvkm_sec2\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 80, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 100, i32 9 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 112, i32 46 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 113, i32 46 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 116, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 35, i32 4 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @nvkm_sec2_recv._entry, ptr @nvkm_sec2_recv._entry_ptr, ptr @nvkm_sec2, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nvkm_sec2_new_.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_sec2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_sec2_new_.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_sec2_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_sec2_new_(ptr noundef %fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef %addr, ptr nocapture noundef writeonly %psec2) local_unnamed_addr #0 align 64 {
entry:
  %_option = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 716) #9
  %1 = ptrtoint ptr %psec2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %psec2, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %engine = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 1
  %call1 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_sec2, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %engine) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %subdev = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option) #6
  %2 = call ptr @memset(ptr %_option, i32 255, i32 32)
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
  %device7 = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device7, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfgopt, align 4
  %call9 = call i32 @nvkm_longopt(ptr noundef %6, ptr noundef nonnull %_option, i32 noundef -2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call9)
  %cmp = icmp sgt i32 %call9, -2
  br i1 %cmp, label %if.end4.land.rhs_crit_edge, label %13

if.end4.land.rhs_crit_edge:                       ; preds = %if.end4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.end4.land.rhs_crit_edge
  %_next.0173 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %fwif, %if.end4.land.rhs_crit_edge ]
  %load = getelementptr inbounds %struct.nvkm_sec2_fwif, ptr %_next.0173, i32 0, i32 1
  %7 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %load, align 4
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %land.rhs.if.then55_crit_edge, label %for.body

land.rhs.if.then55_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

for.body:                                         ; preds = %land.rhs
  %9 = ptrtoint ptr %_next.0173 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_next.0173, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call9)
  %cmp13 = icmp ne i32 %10, %call9
  %incdec.ptr = getelementptr %struct.nvkm_sec2_fwif, ptr %_next.0173, i32 1
  %tobool11.not180 = icmp eq ptr %_next.0173, null
  %tobool11.not = select i1 %cmp13, i1 true, i1 %tobool11.not180
  br i1 %tobool11.not, label %for.body.land.rhs_crit_edge, label %cond.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  %11 = ptrtoint ptr %_next.0173 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_next.0173, align 4
  br label %14

13:                                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call21150 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  br label %14

14:                                               ; preds = %13, %cond.end
  %.sink196 = phi i32 [ %12, %cond.end ], [ -1, %13 ]
  %_fwif.2148158 = phi ptr [ %_next.0173, %cond.end ], [ null, %13 ]
  %15 = phi ptr [ %_next.0173, %cond.end ], [ %fwif, %13 ]
  %16 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device7, align 4
  %cfgopt26 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %cfgopt26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfgopt26, align 4
  %call28 = call i32 @nvkm_longopt(ptr noundef %19, ptr noundef nonnull %_option, i32 noundef %.sink196) #6
  %load35174 = getelementptr inbounds %struct.nvkm_sec2_fwif, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %load35174 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %load35174, align 4
  %tobool36.not175 = icmp eq ptr %21, null
  br i1 %tobool36.not175, label %.if.end57_crit_edge, label %for.body37.lr.ph

.if.end57_crit_edge:                              ; preds = %14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

for.body37.lr.ph:                                 ; preds = %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28)
  %cmp38 = icmp sgt i32 %call28, -1
  br label %for.body37

for.body37:                                       ; preds = %for.inc50.for.body37_crit_edge, %for.body37.lr.ph
  %22 = phi ptr [ %21, %for.body37.lr.ph ], [ %26, %for.inc50.for.body37_crit_edge ]
  %_next.1176 = phi ptr [ %15, %for.body37.lr.ph ], [ %incdec.ptr51, %for.inc50.for.body37_crit_edge ]
  br i1 %cmp38, label %if.end53, label %cond.end42

cond.end42:                                       ; preds = %for.body37
  %23 = ptrtoint ptr %_next.1176 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %_next.1176, align 4
  %call45 = call i32 %22(ptr noundef nonnull %call7.i.i, i32 noundef %24, ptr noundef %_next.1176) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %cond.end42.if.end57_crit_edge, label %for.inc50

cond.end42.if.end57_crit_edge:                    ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

for.inc50:                                        ; preds = %cond.end42
  %incdec.ptr51 = getelementptr %struct.nvkm_sec2_fwif, ptr %_next.1176, i32 1
  %load35 = getelementptr %struct.nvkm_sec2_fwif, ptr %_next.1176, i32 1, i32 1
  %25 = ptrtoint ptr %load35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %load35, align 4
  %tobool36.not = icmp eq ptr %26, null
  br i1 %tobool36.not, label %for.inc50.if.then55_crit_edge, label %for.inc50.for.body37_crit_edge

for.inc50.for.body37_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body37

for.inc50.if.then55_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

if.end53:                                         ; preds = %for.body37
  %call45163 = call i32 %21(ptr noundef nonnull %call7.i.i, i32 noundef %call28, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45163)
  %tobool54.not = icmp eq i32 %call45163, 0
  br i1 %tobool54.not, label %if.end53.if.end57_crit_edge, label %if.end53.if.then55_crit_edge

if.end53.if.then55_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then55:                                        ; preds = %if.end53.if.then55_crit_edge, %for.inc50.if.then55_crit_edge, %land.rhs.if.then55_crit_edge
  %_ret.2169 = phi i32 [ %call45163, %if.end53.if.then55_crit_edge ], [ %call45, %for.inc50.if.then55_crit_edge ], [ -22, %land.rhs.if.then55_crit_edge ]
  %27 = inttoptr i32 %_ret.2169 to ptr
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge, %cond.end42.if.end57_crit_edge, %.if.end57_crit_edge
  %_fwif.4 = phi ptr [ %27, %if.then55 ], [ %15, %if.end53.if.end57_crit_edge ], [ %_fwif.2148158, %.if.end57_crit_edge ], [ %_next.1176, %cond.end42.if.end57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option) #6
  %cmp.i = icmp ugt ptr %_fwif.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %_fwif.4 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %func = getelementptr inbounds %struct.nvkm_sec2_fwif, ptr %_fwif.4, i32 0, i32 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %func, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %call7.i.i, align 8
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %30, align 4
  %name = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 4
  %falcon = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 2
  %call69 = call i32 @nvkm_falcon_ctor(ptr noundef %33, ptr noundef %subdev, ptr noundef %name, i32 noundef %addr, ptr noundef %falcon) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72:                                         ; preds = %if.end61
  %qmgr = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 3
  %call74 = call i32 @nvkm_falcon_qmgr_new(ptr noundef %falcon, ptr noundef %qmgr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %lor.lhs.false76, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false76:                                  ; preds = %if.end72
  %34 = ptrtoint ptr %qmgr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qmgr, align 8
  %cmdq = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 4
  %call78 = call i32 @nvkm_falcon_cmdq_new(ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef %cmdq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %lor.lhs.false80, label %lor.lhs.false76.cleanup_crit_edge

lor.lhs.false76.cleanup_crit_edge:                ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false80:                                  ; preds = %lor.lhs.false76
  %36 = ptrtoint ptr %qmgr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qmgr, align 8
  %msgq = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 5
  %call82 = call i32 @nvkm_falcon_msgq_new(ptr noundef %37, ptr noundef nonnull @.str.4, ptr noundef %msgq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %do.body, label %lor.lhs.false80.cleanup_crit_edge

lor.lhs.false80.cleanup_crit_edge:                ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 6
  call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %38 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @nvkm_sec2_new_.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry89 = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %entry89 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry89, ptr %entry89, align 8
  %prev.i = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry89, ptr %prev.i, align 4
  %func91 = getelementptr inbounds %struct.nvkm_sec2, ptr %call7.i.i, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %func91 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @nvkm_sec2_recv, ptr %func91, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %lor.lhs.false80.cleanup_crit_edge, %lor.lhs.false76.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then59, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.then59 ], [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call69, %if.end61.cleanup_crit_edge ], [ %call74, %if.end72.cleanup_crit_edge ], [ %call78, %lor.lhs.false76.cleanup_crit_edge ], [ %call82, %lor.lhs.false80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_qmgr_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_cmdq_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_msgq_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_sec2_recv(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %initmsg_received = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %initmsg_received to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initmsg_received, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -668
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %initmsg = getelementptr inbounds %struct.nvkm_sec2_func, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %initmsg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %initmsg, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end7, label %do.body

do.body:                                          ; preds = %if.then
  %debug = getelementptr i8, ptr %work, i32 -628
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.body.cleanup10_crit_edge, label %do.end

do.body.cleanup10_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr i8, ptr %work, i32 -656
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr i8, ptr %work, i32 -644
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %call) #10
  br label %cleanup10

if.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %initmsg_received to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %initmsg_received, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %entry.if.end9_crit_edge
  %msgq = getelementptr i8, ptr %work, i32 -4
  %13 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msgq, align 4
  tail call void @nvkm_falcon_msgq_recv(ptr noundef %14) #6
  br label %cleanup10

cleanup10:                                        ; preds = %if.end9, %do.end, %do.body.cleanup10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_sec2_dtor(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %msgq = getelementptr i8, ptr %engine, i32 660
  tail call void @nvkm_falcon_msgq_del(ptr noundef %msgq) #6
  %cmdq = getelementptr i8, ptr %engine, i32 656
  tail call void @nvkm_falcon_cmdq_del(ptr noundef %cmdq) #6
  %qmgr = getelementptr i8, ptr %engine, i32 652
  tail call void @nvkm_falcon_qmgr_del(ptr noundef %qmgr) #6
  %falcon = getelementptr i8, ptr %engine, i32 200
  tail call void @nvkm_falcon_dtor(ptr noundef %falcon) #6
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_sec2_fini(ptr noundef %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr i8, ptr %engine, i32 664
  %call = tail call zeroext i1 @flush_work(ptr noundef %work) #6
  br i1 %suspend, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmdq = getelementptr i8, ptr %engine, i32 656
  %0 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmdq, align 4
  tail call void @nvkm_falcon_cmdq_fini(ptr noundef %1) #6
  %initmsg_received = getelementptr i8, ptr %engine, i32 708
  %2 = ptrtoint ptr %initmsg_received to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %initmsg_received, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_sec2_intr(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_sec2_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  tail call void %3(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_qmgr_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_recv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c", i32 100, i32 9}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c", i32 112, i32 46}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c", i32 113, i32 46}
!8 = !{ptr @nvkm_sec2_new_.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c", i32 116, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nvkm_sec2, !12, !"nvkm_sec2", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c", i32 80, i32 1}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/base.c", i32 35, i32 4}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvkm_sec2_recv._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvkm_sec2_recv._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
