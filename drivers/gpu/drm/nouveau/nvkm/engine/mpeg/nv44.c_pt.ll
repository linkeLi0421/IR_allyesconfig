; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv44.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv44.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.82 = type { ptr }
%struct.anon.83 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv44_mpeg = type { %struct.nvkm_engine, %struct.list_head }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.84 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.84 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv44_mpeg_chan = type { %struct.nvkm_object, ptr, ptr, %struct.list_head, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.81, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.81 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv31_mpeg_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv44_mpeg = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.82, %struct.anon.83, ptr, [2 x %struct.nvkm_sclass] }, [36 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.82, %struct.anon.83, ptr, [2 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr null, ptr null, ptr @nv31_mpeg_init, ptr null, ptr @nv44_mpeg_intr, ptr @nv31_mpeg_tile, ptr null, %struct.anon.82 zeroinitializer, %struct.anon.83 { ptr @nv44_mpeg_chan_new, ptr null }, ptr null, [2 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 12660, ptr @nv31_mpeg_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [36 x i8] zeroinitializer }, align 32
@nv44_mpeg_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.2, ptr @.str.3, i32 187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ch %d [%08x %s] %08x %08x %08x %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv44_mpeg_intr\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv44.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv44_mpeg_intr._entry_ptr = internal global ptr @nv44_mpeg_intr._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@nv44_mpeg_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nv44_mpeg_chan_dtor, ptr null, ptr @nv44_mpeg_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv44_mpeg_chan_bind, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 400, i64 416, i64 432]
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"nv44_mpeg\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 194, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 184, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"nv44_mpeg_chan\00", align 1
@___asan_gen_.32 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv44.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 96, i32 1 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @nv44_mpeg_intr._entry, ptr @nv44_mpeg_intr._entry_ptr, ptr @nv44_mpeg, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nv44_mpeg_chan], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv44_mpeg to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv44_mpeg_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv44_mpeg_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv44_mpeg_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pmpeg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 208) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chan = getelementptr inbounds %struct.nv44_mpeg, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %chan, ptr %chan, align 8
  %prev.i = getelementptr inbounds %struct.nv44_mpeg, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chan, ptr %prev.i, align 4
  %3 = ptrtoint ptr %pmpeg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %pmpeg, align 4
  %call2 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nv44_mpeg, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv31_mpeg_init(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv44_mpeg_intr(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 45848
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  %and = and i32 %4, 1048575
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 45312
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 45616
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 45620
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 45624
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %lock = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 2
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %chan34 = getelementptr inbounds %struct.nv44_mpeg, ptr %engine, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %chan34, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %17 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp38.not = icmp eq ptr %.pn, %chan34
  br i1 %cmp38.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %inst40 = getelementptr i8, ptr %.pn, i32 8
  %18 = ptrtoint ptr %inst40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inst40, align 8
  %shr = lshr i32 %19, 4
  %cmp41 = icmp eq i32 %shr, %and
  br i1 %cmp41, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.then:                                          ; preds = %for.body
  %temp.0.le = getelementptr i8, ptr %.pn, i32 -80
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %26 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %28 = ptrtoint ptr %chan34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan34, align 4
  %call.i.i155 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %chan34, ptr noundef %29) #4
  br i1 %call.i.i155, label %if.end.i.i156, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.i.i156:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.pn, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %.pn, align 4
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %chan34, ptr %prev.i, align 4
  %33 = ptrtoint ptr %chan34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %.pn, ptr %chan34, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i156, %list_del.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %chan.0 = phi ptr [ %temp.0.le, %list_del.exit.for.end_crit_edge ], [ %temp.0.le, %if.end.i.i156 ], [ null, %for.cond.for.end_crit_edge ]
  %and51 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool.not = icmp eq i32 %and51, 0
  br i1 %tobool.not, label %for.end.do.body82_crit_edge, label %if.then52

for.end.do.body82_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body82

if.then52:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp53 = icmp eq i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp55 = icmp eq i32 %13, 0
  %or.cond = select i1 %cmp53, i1 %cmp55, i1 false
  br i1 %or.cond, label %if.end71.thread, label %if.end71

if.end71.thread:                                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr60 = getelementptr i8, ptr %35, i32 45832
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr68 = getelementptr i8, ptr %38, i32 45832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %36) #4, !srcloc !30
  %and70 = and i32 %7, -16777217
  br label %do.body82

if.end71:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp72 = icmp eq i32 %10, 16
  br i1 %cmp72, label %if.then74, label %if.end71.do.body82_crit_edge

if.end71.do.body82_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body82

if.then74:                                        ; preds = %if.end71
  %39 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.then74.do.body82_crit_edge [
    i32 400, label %if.then74.nv44_mpeg_mthd.exit_crit_edge
    i32 416, label %if.then74.nv44_mpeg_mthd.exit_crit_edge172
    i32 432, label %if.then74.nv44_mpeg_mthd.exit_crit_edge173
  ]

if.then74.nv44_mpeg_mthd.exit_crit_edge173:       ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #6
  br label %nv44_mpeg_mthd.exit

if.then74.nv44_mpeg_mthd.exit_crit_edge172:       ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #6
  br label %nv44_mpeg_mthd.exit

if.then74.nv44_mpeg_mthd.exit_crit_edge:          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #6
  br label %nv44_mpeg_mthd.exit

if.then74.do.body82_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body82

nv44_mpeg_mthd.exit:                              ; preds = %if.then74.nv44_mpeg_mthd.exit_crit_edge, %if.then74.nv44_mpeg_mthd.exit_crit_edge172, %if.then74.nv44_mpeg_mthd.exit_crit_edge173
  %40 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device3, align 4
  %call.i = tail call zeroext i1 @nv40_mpeg_mthd_dma(ptr noundef %41, i32 noundef %13, i32 noundef %16) #4
  %and78 = and i32 %7, -16777217
  %spec.select = select i1 %call.i, i32 %and78, i32 %7
  br label %do.body82

do.body82:                                        ; preds = %nv44_mpeg_mthd.exit, %if.then74.do.body82_crit_edge, %if.end71.do.body82_crit_edge, %if.end71.thread, %for.end.do.body82_crit_edge
  %show.1 = phi i32 [ %7, %if.end71.do.body82_crit_edge ], [ %7, %for.end.do.body82_crit_edge ], [ %and70, %if.end71.thread ], [ %7, %if.then74.do.body82_crit_edge ], [ %spec.select, %nv44_mpeg_mthd.exit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr86 = getelementptr i8, ptr %43, i32 45312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %7) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr91 = getelementptr i8, ptr %45, i32 45616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 1) #4, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %show.1)
  %tobool92.not = icmp eq i32 %show.1, 0
  br i1 %tobool92.not, label %do.body82.if.end114_crit_edge, label %do.body94

do.body82.if.end114_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

do.body94:                                        ; preds = %do.body82
  %debug = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %46 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp95.not = icmp eq i32 %47, 0
  br i1 %cmp95.not, label %do.body94.if.end114_crit_edge, label %do.end100

do.body94.if.end114_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

do.end100:                                        ; preds = %do.body94
  %48 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  %tobool102.not = icmp eq ptr %chan.0, null
  br i1 %tobool102.not, label %do.end100.cond.end109_crit_edge, label %cond.true105

do.end100.cond.end109_crit_edge:                  ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end109

cond.true105:                                     ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #6
  %fifo = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %chan.0, i32 0, i32 2
  %52 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fifo, align 4
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %chid, align 8
  %conv103 = zext i16 %55 to i32
  %client = getelementptr inbounds %struct.nvkm_object, ptr %chan.0, i32 0, i32 1
  %56 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client, align 4
  %name106 = getelementptr inbounds %struct.nvkm_client, ptr %57, i32 0, i32 1
  br label %cond.end109

cond.end109:                                      ; preds = %cond.true105, %do.end100.cond.end109_crit_edge
  %cond163 = phi i32 [ %conv103, %cond.true105 ], [ -1, %do.end100.cond.end109_crit_edge ]
  %cond110 = phi ptr [ %name106, %cond.true105 ], [ @.str.6, %do.end100.cond.end109_crit_edge ]
  %shl164 = shl nuw nsw i32 %and, 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %cond163, i32 noundef %shl164, ptr noundef %cond110, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %16) #8
  br label %if.end114

if.end114:                                        ; preds = %cond.end109, %do.body94.if.end114_crit_edge, %do.body82.if.end114_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv31_mpeg_tile(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv44_mpeg_chan_new(ptr noundef %fifoch, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv44_mpeg_chan, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #4
  %mpeg1 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %mpeg1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %mpeg1, align 8
  %fifo = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fifoch, ptr %fifo, align 4
  %5 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pobject, align 4
  %lock = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %head = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %call7.i.i, i32 0, i32 3
  %chan10 = getelementptr inbounds %struct.nv44_mpeg, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %chan10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan10, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %chan10, ptr noundef %7) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %head, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %head, align 8
  %prev3.i.i = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %call7.i.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %chan10, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %chan10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %head, ptr %chan10, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv40_mpeg_mthd_dma(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv44_mpeg_chan_dtor(ptr noundef returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mpeg1 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %mpeg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpeg1, align 8
  %lock = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %head = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %object, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %object, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %object, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #4
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv44_mpeg_chan_fini(ptr nocapture noundef readonly %object, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mpeg1 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %mpeg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpeg1, align 8
  %device2 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %inst3 = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %inst3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inst3, align 8
  %shr = lshr i32 %5, 4
  %or = or i32 %shr, -2147483648
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 45868
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %and = and i32 %8, -2
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 45868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %and) #4, !srcloc !30
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 45848
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %or)
  %cmp = icmp eq i32 %13, %or
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %15, i32 45848
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %and26 = and i32 %16, 2147483647
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr29 = getelementptr i8, ptr %18, i32 45848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %and26) #4, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %20, i32 45868
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %or43 = or i32 %21, 1
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr45 = getelementptr i8, ptr %23, i32 45868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %or43) #4, !srcloc !30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv44_mpeg_chan_bind(ptr nocapture noundef %object, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 1056, i32 noundef %align, i1 noundef zeroext true, ptr noundef %parent, ptr noundef %pgpuobj) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgpuobj, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr, align 8
  %conv = trunc i64 %7 to i32
  %inst = getelementptr inbounds %struct.nv44_mpeg_chan, ptr %object, i32 0, i32 4
  %8 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %inst, align 8
  %9 = load ptr, ptr %pgpuobj, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call2 = tail call ptr %13(ptr noundef %9) #4
  %14 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pgpuobj, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr32, align 4
  tail call void %19(ptr noundef %15, i32 noundef 120, i32 noundef 33562305) #4
  %20 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pgpuobj, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release, align 4
  tail call void %25(ptr noundef %21) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @nv44_mpeg, !1, !"nv44_mpeg", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv44.c", i32 194, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv44.c", i32 184, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv44_mpeg_intr._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv44_mpeg_intr._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nv44_mpeg_chan, !12, !"nv44_mpeg_chan", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv44.c", i32 96, i32 1}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 5389066}
!23 = !{i64 2156271845}
!24 = !{i64 2156272230}
!25 = !{i64 2156272615}
!26 = !{i64 2156273000}
!27 = !{i64 2156273385}
!28 = !{i64 2156277737}
!29 = !{i64 2156278139}
!30 = !{i64 5388648}
!31 = !{i64 2156278572}
!32 = !{i64 2156278979}
!33 = !{i64 2156263111}
!34 = !{i64 2156263513}
!35 = !{i64 2156264001}
!36 = !{i64 2156264771}
!37 = !{i64 2156265173}
!38 = !{i64 2156266046}
!39 = !{i64 2156266448}
