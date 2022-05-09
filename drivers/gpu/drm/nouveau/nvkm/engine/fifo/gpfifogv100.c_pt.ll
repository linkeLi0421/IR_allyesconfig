; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogv100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.8 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.gk104_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, ptr, %struct.list_head, i8, ptr, [16 x %struct.gk104_fifo_engn] }
%struct.gk104_fifo_engn = type { ptr, ptr }
%struct.gk104_fifo = type { ptr, %struct.nvkm_fifo, %struct.anon.148, i32, [16 x %struct.anon.149], i32, [16 x %struct.anon.150], i32, %struct.anon.151 }
%struct.anon.148 = type { %struct.work_struct, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.149 = type { ptr, i32, i32 }
%struct.anon.150 = type { [2 x ptr], i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.151 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.139, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.139 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.gk104_fifo_func = type { %struct.anon.146, ptr, %struct.anon.147, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.146 = type { ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_fifo_cgrp = type { i32, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.volta_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64, i32 }

@gv100_fifo_gpfifo_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gv100_fifo_gpfifo_new\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogv100.c\00", [41 x i8] zeroinitializer }, align 32
@gv100_fifo_gpfifo_new._entry_ptr = internal global ptr @gv100_fifo_gpfifo_new._entry, section ".printk_index", align 4
@gv100_fifo_gpfifo_new._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo vers %d vmm %llx ioffset %016llx ilength %08x runlist %016llx priv %d\0A\00", [35 x i8] zeroinitializer }, align 32
@gv100_fifo_gpfifo_new._entry_ptr.5 = internal global ptr @gv100_fifo_gpfifo_new._entry.3, section ".printk_index", align 4
@gv100_fifo_gpfifo = internal constant { %struct.nvkm_fifo_chan_func, [52 x i8] } { %struct.nvkm_fifo_chan_func { ptr @gk104_fifo_gpfifo_dtor, ptr @gk104_fifo_gpfifo_init, ptr @gk104_fifo_gpfifo_fini, ptr @gf100_fifo_chan_ntfy, ptr @gk104_fifo_gpfifo_engine_ctor, ptr @gk104_fifo_gpfifo_engine_dtor, ptr @gv100_fifo_gpfifo_engine_init, ptr @gv100_fifo_gpfifo_engine_fini, ptr null, ptr null, ptr @gv100_fifo_gpfifo_submit_token }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 222, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 224, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"gv100_fifo_gpfifo\00", align 1
@___asan_gen_.25 = private constant [58 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogv100.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 107, i32 1 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @gv100_fifo_gpfifo_new._entry, ptr @gv100_fifo_gpfifo_new._entry.3, ptr @gv100_fifo_gpfifo_new._entry_ptr, ptr @gv100_fifo_gpfifo_new._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @gv100_fifo_gpfifo], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_fifo_gpfifo_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_fifo_gpfifo_new._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_fifo_gpfifo to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_fifo_gpfifo_engine_fini(ptr noundef %base, ptr nocapture noundef readonly %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inst2 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 6
  %0 = ptrtoint ptr %inst2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inst2, align 4
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %3)
  %cmp = icmp eq i32 %3, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @gk104_fifo_gpfifo_kick(ptr noundef %base) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @gv100_fifo_gpfifo_engine_valid(ptr noundef %base, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp ne i32 %call3, 0
  %4 = and i1 %tobool.not, %suspend
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call7 = tail call ptr %8(ptr noundef %1) #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wr32, align 4
  tail call void %12(ptr noundef %1, i32 noundef 528, i32 noundef 0) #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %wr328 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %wr328 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr328, align 4
  tail call void %16(ptr noundef %1, i32 noundef 532, i32 noundef 0) #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release, align 4
  tail call void %20(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end6 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gv100_fifo_gpfifo_engine_valid(ptr noundef %chan, i1 noundef zeroext %ce, i1 noundef zeroext %valid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %fifo6 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %fifo6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo6, align 8
  %mutex = getelementptr inbounds %struct.gk104_fifo, ptr %5, i32 0, i32 1, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 9776
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %runl = getelementptr inbounds %struct.gk104_fifo_chan, ptr %chan, i32 0, i32 2
  %9 = ptrtoint ptr %runl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %runl, align 4
  %shl = shl nuw i32 1, %10
  %or = or i32 %shl, %8
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 9776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %or) #6, !srcloc !24
  %call13 = tail call i32 @gk104_fifo_gpfifo_kick_locked(ptr noundef %chan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %ce, i32 131072, i32 65536
  %spec.select = select i1 %valid, i32 %cond, i32 0
  %inst = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 6
  %13 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %inst, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call17 = tail call ptr %18(ptr noundef %14) #6
  %19 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %inst, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %rd32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %rd32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rd32, align 4
  %call23 = tail call i32 %24(ptr noundef %20, i32 noundef 172) #6
  %25 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %inst, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr32, align 4
  %neg28 = xor i32 %cond, -1
  %and29 = and i32 %call23, %neg28
  %or30 = or i32 %and29, %spec.select
  tail call void %30(ptr noundef %26, i32 noundef 172, i32 noundef %or30) #6
  %31 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %inst, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %release, align 4
  tail call void %36(ptr noundef %32) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr41 = getelementptr i8, ptr %38, i32 9776
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %runl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %runl, align 4
  %shl48 = shl nuw i32 1, %41
  %neg49 = xor i32 %shl48, -1
  %and50 = and i32 %39, %neg49
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr53 = getelementptr i8, ptr %43, i32 9776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %and50) #6, !srcloc !24
  %44 = ptrtoint ptr %fifo6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fifo6, align 8
  %mutex57 = getelementptr inbounds %struct.gk104_fifo, ptr %45, i32 0, i32 1, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex57) #6
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_fifo_gpfifo_engine_init(ptr noundef %base, ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gk104_fifo_gpfifo_engine(ptr noundef %base, ptr noundef %engine) #6
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %1)
  %cmp = icmp eq i32 %1, 28
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inst2 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 6
  %2 = ptrtoint ptr %inst2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inst2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call3 = tail call ptr %7(ptr noundef %3) #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr32, align 4
  %vma = getelementptr inbounds %struct.gk104_fifo_engn, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vma, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %addr, align 8
  %conv = trunc i64 %15 to i32
  %or = or i32 %conv, 4
  tail call void %11(ptr noundef %3, i32 noundef 528, i32 noundef %or) #6
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %wr324 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %wr324 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr324, align 4
  %20 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vma, align 4
  %addr6 = getelementptr inbounds %struct.nvkm_vma, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %addr6 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %addr6, align 8
  %shr = lshr i64 %23, 32
  %conv8 = trunc i64 %shr to i32
  tail call void %19(ptr noundef %3, i32 noundef 532, i32 noundef %conv8) #6
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %release, align 4
  tail call void %27(ptr noundef %3) #6
  %call9 = tail call fastcc i32 @gv100_fifo_gpfifo_engine_valid(ptr noundef %base, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gk104_fifo_gpfifo_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_fifo_gpfifo_new_(ptr noundef %func, ptr noundef %fifo, ptr nocapture noundef %runlists, ptr nocapture noundef writeonly %chid, i64 noundef %vmm, i64 noundef %ioffset, i64 noundef %ilength, ptr nocapture noundef writeonly %inst, i1 noundef zeroext %priv, ptr nocapture noundef writeonly %token, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1
  %device1 = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = ptrtoint ptr %runlists to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %runlists, align 8
  %conv = trunc i64 %3 to i32
  %4 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 true), !range !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %iszero = icmp eq i32 %conv, 0
  %sub = select i1 %iszero, i32 -1, i32 %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vmm)
  %tobool.not = icmp eq i64 %vmm, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %iszero
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %runlist_nr = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 7
  %5 = ptrtoint ptr %runlist_nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runlist_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %6)
  %cmp4.not = icmp slt i32 %sub, %6
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  %7 = ptrtoint ptr %runlists to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl, ptr %runlists, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 488) #9
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %object = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %object, ptr %pobject, align 4
  %fifo10 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %fifo10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fifo, ptr %fifo10, align 8
  %runl = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %runl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %runl, align 4
  %head = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %head, ptr %prev.i, align 8
  %engm = getelementptr %struct.gk104_fifo, ptr %fifo, i32 0, i32 6, i32 %sub, i32 5
  %14 = ptrtoint ptr %engm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %engm, align 4
  %user = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 8
  %bar = getelementptr inbounds %struct.gk104_fifo, ptr %fifo, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bar, align 4
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %addr, align 8
  %conv13 = trunc i64 %19 to i32
  %call15 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef %func, ptr noundef %base, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, i64 noundef %vmm, i64 noundef 0, i32 noundef %15, i32 noundef 1, i32 noundef %conv13, i32 noundef 512, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %chid20 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %chid20 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %chid20, align 8
  %22 = ptrtoint ptr %chid to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %chid, align 2
  %inst22 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inst22, align 4
  %addr23 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %addr23 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %addr23, align 8
  %27 = ptrtoint ptr %inst to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %inst, align 8
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i, align 8
  %submit_token = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %submit_token to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %submit_token, align 4
  %call27 = tail call i32 %31(ptr noundef nonnull %call7.i.i) #6
  %32 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call27, ptr %token, align 4
  %33 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fifo, align 4
  %cgrp_force = getelementptr inbounds %struct.gk104_fifo_func, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %cgrp_force to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cgrp_force, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool29.not = icmp eq i8 %36, 0
  br i1 %tobool29.not, label %if.end18.if.end44_crit_edge, label %if.then30

if.end18.if.end44_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then30:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 24) #9
  %cgrp = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %cgrp to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i, ptr %cgrp, align 8
  %tobool32.not = icmp eq ptr %call7.i, null
  br i1 %tobool32.not, label %if.then30.cleanup_crit_edge, label %if.end34

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %chid20 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %chid20, align 8
  %conv37 = zext i16 %40 to i32
  %41 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv37, ptr %call7.i, align 8
  %head40 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %call7.i, i32 0, i32 1
  %42 = ptrtoint ptr %head40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %head40, ptr %head40, align 4
  %prev.i686 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %call7.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i686 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %head40, ptr %prev.i686, align 8
  %chan42 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %call7.i, i32 0, i32 2
  %44 = ptrtoint ptr %chan42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %chan42, ptr %chan42, align 4
  %prev.i687 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %call7.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %prev.i687 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %chan42, ptr %prev.i687, align 8
  %chan_nr = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %call7.i, i32 0, i32 3
  %46 = ptrtoint ptr %chan_nr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %chan_nr, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end34, %if.end18.if.end44_crit_edge
  %47 = ptrtoint ptr %chid20 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %chid20, align 8
  %conv47 = zext i16 %48 to i32
  %mul = shl nuw nsw i32 %conv47, 9
  %49 = zext i32 %mul to i64
  %div682 = lshr i64 %ilength, 3
  %conv79 = trunc i64 %div682 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv79)
  %cmp.i = icmp ugt i32 %conv79, 1
  %sub.i688 = add i32 %conv79, -1
  %50 = tail call i32 @llvm.ctlz.i32(i32 %sub.i688, i1 true) #6, !range !27
  %51 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %acquire, align 4
  %call88 = tail call ptr %56(ptr noundef %52) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end44
  %i.0689 = phi i32 [ 0, %if.end44 ], [ %add97, %for.body.for.body_crit_edge ]
  %57 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %user, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr32, align 4
  %narrow = add nuw nsw i32 %i.0689, %mul
  %add96 = zext i32 %narrow to i64
  tail call void %62(ptr noundef %58, i64 noundef %add96, i32 noundef 0) #6
  %add97 = add nuw nsw i32 %i.0689, 4
  %cmp89 = icmp ult i32 %i.0689, 508
  br i1 %cmp89, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %63 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %user, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %release, align 4
  tail call void %68(ptr noundef %64) #6
  %69 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %user, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %addr106 = getelementptr inbounds %struct.nvkm_memory_func, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %addr106 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %addr106, align 4
  %call109 = tail call i64 %74(ptr noundef %70) #6
  %add110 = add i64 %call109, %49
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %75 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %76, i32 1065000
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %77) #6
  %78 = mul i32 %call.i, 1755
  %add404 = add i32 %78, 4365
  %div405683 = and i32 %add404, -4096
  %conv407 = zext i32 %div405683 to i64
  %mthd408 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %call7.i.i, i32 0, i32 6
  %call409 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef %conv407, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %mthd408) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call409)
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %if.end412, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end412:                                        ; preds = %for.end
  %79 = ptrtoint ptr %mthd408 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mthd408, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %bar2 = getelementptr inbounds %struct.nvkm_memory_func, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bar2, align 4
  %call416 = tail call i64 %84(ptr noundef %80) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call416)
  %cmp417 = icmp eq i64 %call416, -1
  br i1 %cmp417, label %if.end412.cleanup_crit_edge, label %if.end420

if.end412.cleanup_crit_edge:                      ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end420:                                        ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %inst22, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %call426 = tail call ptr %90(ptr noundef %86) #6
  %91 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %inst22, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  %wr32429 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %wr32429 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wr32429, align 4
  %conv433 = trunc i64 %add110 to i32
  tail call void %96(ptr noundef %92, i32 noundef 8, i32 noundef %conv433) #6
  %97 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %inst22, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %wr32436 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %wr32436 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wr32436, align 4
  %shr439 = lshr i64 %add110, 32
  %conv441 = trunc i64 %shr439 to i32
  tail call void %102(ptr noundef %98, i32 noundef 12, i32 noundef %conv441) #6
  %103 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %inst22, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %wr32444 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %wr32444 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wr32444, align 4
  tail call void %108(ptr noundef %104, i32 noundef 16, i32 noundef 64206) #6
  %109 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %inst22, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  %wr32449 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %wr32449 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wr32449, align 4
  tail call void %114(ptr noundef %110, i32 noundef 48, i32 noundef 2147481858) #6
  %115 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %inst22, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 8
  %wr32454 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %wr32454 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wr32454, align 4
  %conv458 = trunc i64 %ioffset to i32
  tail call void %120(ptr noundef %116, i32 noundef 72, i32 noundef %conv458) #6
  %121 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %inst22, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %wr32461 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %wr32461 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wr32461, align 4
  %shr464 = lshr i64 %ioffset, 32
  %.neg = mul nsw i32 %50, -65536
  %add.i.op = add nsw i32 %.neg, 2097152
  %127 = select i1 %cmp.i, i32 %add.i.op, i32 0
  %128 = trunc i64 %shr464 to i32
  %conv469 = or i32 %127, %128
  tail call void %126(ptr noundef %122, i32 noundef 76, i32 noundef %conv469) #6
  %129 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %inst22, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 8
  %wr32472 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %wr32472 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wr32472, align 4
  tail call void %134(ptr noundef %130, i32 noundef 132, i32 noundef 541065216) #6
  %135 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %inst22, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 8
  %wr32477 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %wr32477 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %wr32477, align 4
  tail call void %140(ptr noundef %136, i32 noundef 148, i32 noundef 805306369) #6
  %141 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %inst22, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 8
  %wr32482 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %wr32482 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %wr32482, align 4
  %cond487 = select i1 %priv, i32 32, i32 0
  tail call void %146(ptr noundef %142, i32 noundef 228, i32 noundef %cond487) #6
  %147 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %inst22, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 8
  %wr32490 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %wr32490 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %wr32490, align 4
  %153 = ptrtoint ptr %chid20 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %chid20, align 8
  %conv495 = zext i16 %154 to i32
  tail call void %152(ptr noundef %148, i32 noundef 232, i32 noundef %conv495) #6
  %155 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %inst22, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 8
  %wr32498 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %wr32498 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %wr32498, align 4
  tail call void %160(ptr noundef %156, i32 noundef 244, i32 noundef 4096) #6
  %161 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %inst22, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 8
  %wr32503 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %wr32503 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %wr32503, align 4
  tail call void %166(ptr noundef %162, i32 noundef 248, i32 noundef 268447872) #6
  %167 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %inst22, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 8
  %rd32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %rd32 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rd32, align 4
  %call510 = tail call i32 %172(ptr noundef %168, i32 noundef 536) #6
  %173 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %inst22, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 8
  %wr32513 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %176, i32 0, i32 3
  %177 = ptrtoint ptr %wr32513 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wr32513, align 4
  tail call void %178(ptr noundef %174, i32 noundef 536, i32 noundef %call510) #6
  %179 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %inst22, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 8
  %wr32521 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %wr32521 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %wr32521, align 4
  %conv525 = trunc i64 %call416 to i32
  tail call void %184(ptr noundef %180, i32 noundef 544, i32 noundef %conv525) #6
  %185 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %inst22, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 8
  %wr32528 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %wr32528 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %wr32528, align 4
  %shr531 = lshr i64 %call416, 32
  %conv533 = trunc i64 %shr531 to i32
  tail call void %190(ptr noundef %186, i32 noundef 548, i32 noundef %conv533) #6
  %191 = ptrtoint ptr %inst22 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %inst22, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 8
  %release536 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %release536 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %release536, align 4
  tail call void %196(ptr noundef %192) #6
  %call539 = tail call fastcc i32 @gv100_fifo_gpfifo_engine_valid(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end420, %if.end412.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call539, %if.end420 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call15, %if.end8.cleanup_crit_edge ], [ -12, %if.then30.cleanup_crit_edge ], [ %call409, %for.end.cleanup_crit_edge ], [ -14, %if.end412.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_fifo_gpfifo_new(ptr noundef %fifo, ptr noundef %oclass, ptr nocapture noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %client = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %oclass3 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %oclass3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %size) #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %size)
  %cmp7 = icmp ugt i32 %size, 47
  br i1 %cmp7, label %land.lhs.true11, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true11:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14 = icmp eq i8 %11, 0
  br i1 %cmp14, label %if.then16, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %size)
  %tobool.not = icmp eq i32 %size, 48
  br i1 %tobool.not, label %do.body23, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body23:                                        ; preds = %if.then16
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %debug27 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %debug27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp28 = icmp ugt i32 %15, 4
  br i1 %cmp28, label %do.end33, label %do.body23.if.end43_crit_edge

do.body23.if.end43_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end33:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %name35 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %handle37 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %handle37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle37, align 8
  %oclass38 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %oclass38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass38, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 8
  %conv40 = zext i8 %21 to i32
  %vmm = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 6
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vmm, align 8
  %ioffset = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 4
  %24 = ptrtoint ptr %ioffset to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ioffset, align 8
  %ilength = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %ilength to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ilength, align 4
  %runlist = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 5
  %28 = ptrtoint ptr %runlist to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %runlist, align 8
  %priv = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %priv, align 1
  %conv41 = zext i8 %31 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name35, i32 noundef %17, i32 noundef %19, i32 noundef %conv40, i64 noundef %23, i64 noundef %25, i32 noundef %27, i64 noundef %29, i32 noundef %conv41) #10
  br label %if.end43

if.end43:                                         ; preds = %do.end33, %do.body23.if.end43_crit_edge
  %runlist46 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 5
  %chid = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 2
  %vmm47 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 6
  %32 = ptrtoint ptr %vmm47 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %vmm47, align 8
  %ioffset48 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 4
  %34 = ptrtoint ptr %ioffset48 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ioffset48, align 8
  %ilength49 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 3
  %36 = ptrtoint ptr %ilength49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ilength49, align 4
  %conv50 = zext i32 %37 to i64
  %inst = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 7
  %priv51 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 1
  %38 = ptrtoint ptr %priv51 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %priv51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool52 = icmp ne i8 %39, 0
  %token = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %data, i32 0, i32 8
  %call53 = tail call i32 @gv100_fifo_gpfifo_new_(ptr noundef nonnull @gv100_fifo_gpfifo, ptr noundef %fifo, ptr noundef %runlist46, ptr noundef %chid, i64 noundef %33, i64 noundef %35, i64 noundef %conv50, ptr noundef %inst, i1 noundef zeroext %tobool52, ptr noundef %token, ptr noundef %oclass, ptr noundef %pobject)
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then16.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %if.end43 ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true11.cleanup_crit_edge ], [ -7, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_kick_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gk104_fifo_gpfifo_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_gpfifo_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_gpfifo_fini(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fifo_chan_ntfy(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_engine_ctor(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_gpfifo_engine_dtor(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gv100_fifo_gpfifo_submit_token(ptr nocapture noundef readonly %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %chid, align 8
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogv100.c", i32 222, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gv100_fifo_gpfifo_new._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gv100_fifo_gpfifo_new._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogv100.c", i32 224, i32 3}
!8 = !{ptr @gv100_fifo_gpfifo_new._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @gv100_fifo_gpfifo_new._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @gv100_fifo_gpfifo, !11, !"gv100_fifo_gpfifo", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogv100.c", i32 107, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 5398327}
!22 = !{i64 2156265352}
!23 = !{i64 2156265858}
!24 = !{i64 5397909}
!25 = !{i64 2156267499}
!26 = !{i64 2156267935}
!27 = !{i32 0, i32 33}
!28 = !{i8 0, i8 2}
!29 = !{i64 2156272736}
