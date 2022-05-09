; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_fifo_chan = type { ptr, %struct.nvkm_fifo_chan, ptr, ptr, ptr, ptr, ptr, [16 x ptr] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@nv50_fifo_chan_func = internal constant { %struct.nvkm_fifo_chan_func, [52 x i8] } { %struct.nvkm_fifo_chan_func { ptr @nv50_fifo_chan_dtor, ptr @nv50_fifo_chan_init, ptr @nv50_fifo_chan_fini, ptr null, ptr @nv50_fifo_chan_engine_ctor, ptr @nv50_fifo_chan_engine_dtor, ptr @nv50_fifo_chan_engine_init, ptr @nv50_fifo_chan_engine_fini, ptr @nv50_fifo_chan_object_ctor, ptr @nv50_fifo_chan_object_dtor, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv50_fifo_chan_engine_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 90, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: channel %d [%s] unload timeout\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nv50_fifo_chan_engine_fini\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_fifo_chan_engine_fini._entry_ptr = internal global ptr @nv50_fifo_chan_engine_fini._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 33, i64 36, i64 48]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 33, i64 36, i64 48]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 33, i64 36, i64 48]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 33, i64 36, i64 48]
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"nv50_fifo_chan_func\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 226, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 40, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 85, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 89, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @nv50_fifo_chan_engine_fini._entry, ptr @nv50_fifo_chan_engine_fini._entry_ptr, ptr @nv50_fifo_chan_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fifo_chan_func to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fifo_chan_engine_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv50_fifo_chan_engine(ptr noundef readonly %chan, ptr noundef %engine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %engine_id = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine_id, align 4
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %engine) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  %arrayidx = getelementptr %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 7, i32 %call
  %retval.0 = select i1 %cmp, ptr %arrayidx, ptr null
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_fifo_chan_engine_dtor(ptr noundef %base, ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  %fifo.i = getelementptr i8, ptr %base, i32 4
  %0 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, ptr noundef %engine) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.nv50_fifo_chan, ptr %add.ptr, i32 0, i32 7, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  tail call void @nvkm_gpuobj_del(ptr noundef %retval.0.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_fifo_chan_object_dtor(ptr nocapture noundef readonly %base, i32 noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ramht = getelementptr i8, ptr %base, i32 344
  %0 = ptrtoint ptr %ramht to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ramht, align 8
  tail call void @nvkm_ramht_remove(ptr noundef %1, i32 noundef %cookie) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_fifo_chan_fini(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %chid5 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %4 = ptrtoint ptr %chid5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chid5, align 8
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 9728
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %and = and i32 %8, 2147483647
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %and) #4, !srcloc !25
  tail call void @nv50_fifo_runlist_update(ptr noundef %1) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #4, !srcloc !25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_runlist_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv50_fifo_chan_dtor(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  %ramht = getelementptr i8, ptr %base, i32 344
  tail call void @nvkm_ramht_del(ptr noundef %ramht) #4
  %pgd = getelementptr i8, ptr %base, i32 340
  tail call void @nvkm_gpuobj_del(ptr noundef %pgd) #4
  %eng = getelementptr i8, ptr %base, i32 336
  tail call void @nvkm_gpuobj_del(ptr noundef %eng) #4
  %cache = getelementptr i8, ptr %base, i32 332
  tail call void @nvkm_gpuobj_del(ptr noundef %cache) #4
  %ramfc = getelementptr i8, ptr %base, i32 328
  tail call void @nvkm_gpuobj_del(ptr noundef %ramfc) #4
  ret ptr %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fifo_chan_ctor(ptr noundef %fifo, i64 noundef %vmm, i64 noundef %push, ptr noundef %oclass, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vmm)
  %tobool.not = icmp eq i64 %vmm, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %base3 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 1
  %call = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @nv50_fifo_chan_func, ptr noundef %fifo, i32 noundef 65536, i32 noundef 4096, i1 noundef zeroext false, i64 noundef %vmm, i64 noundef %push, i32 noundef 15, i32 noundef 0, i32 noundef 12582912, i32 noundef 8192, ptr noundef %oclass, ptr noundef %base3) #4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fifo, ptr %chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %inst = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 1, i32 6
  %3 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inst, align 4
  %ramfc = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 2
  %call9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 512, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %4, ptr noundef %ramfc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %5 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inst, align 4
  %eng = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 4
  %call15 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 4608, i32 noundef 0, i1 noundef zeroext true, ptr noundef %6, ptr noundef %eng) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inst, align 4
  %pgd = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 5
  %call21 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 16384, i32 noundef 0, i1 noundef zeroext false, ptr noundef %8, ptr noundef %pgd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inst, align 4
  %ramht = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 6
  %call27 = tail call i32 @nvkm_ramht_new(ptr noundef %1, i32 noundef 32768, i32 noundef 16, ptr noundef %10, ptr noundef %ramht) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end24 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call15, %if.end12.cleanup_crit_edge ], [ %call21, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_fifo_chan_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %device3 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %ramfc = getelementptr i8, ptr %base, i32 328
  %4 = ptrtoint ptr %ramfc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ramfc, align 8
  %addr4 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %addr4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr4, align 8
  %shr = lshr i64 %7, 12
  %chid6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %8 = ptrtoint ptr %chid6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chid6, align 8
  %conv = zext i16 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %10 = trunc i64 %shr to i32
  %conv7 = or i32 %10, -2147483648
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 9728
  %add.ptr8 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %conv7) #4, !srcloc !25
  tail call void @nv50_fifo_runlist_update(ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_fifo_chan_engine_ctor(ptr noundef %base, ptr noundef %engine, ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end.i [
    i32 31, label %entry.cleanup_crit_edge
    i32 48, label %entry.cleanup_crit_edge7
    i32 33, label %entry.if.end_crit_edge
    i32 36, label %entry.if.end_crit_edge8
  ]

entry.if.end_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge8
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  %fifo.i = getelementptr i8, ptr %base, i32 4
  %3 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fifo.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %8(ptr noundef %4, ptr noundef %engine) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.nv50_fifo_chan, ptr %add.ptr, i32 0, i32 7, i32 %call.i
  %retval.0.i4 = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %call2 = tail call i32 @nvkm_object_bind(ptr noundef %object, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge7
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %do.end.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_fifo_chan_engine_init(ptr nocapture noundef readonly %base, ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  %fifo.i = getelementptr i8, ptr %base, i32 4
  %0 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %engine_id.i = getelementptr inbounds %struct.nvkm_fifo_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %engine_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, ptr noundef %engine) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %arrayidx.i = getelementptr %struct.nv50_fifo_chan, ptr %add.ptr, i32 0, i32 7, i32 %call.i
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr null
  %6 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i, align 4
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %9, label %do.end.i [
    i32 31, label %entry.cleanup_crit_edge
    i32 48, label %entry.cleanup_crit_edge72
    i32 33, label %entry.if.end_crit_edge
    i32 36, label %sw.bb2.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %sw.bb2.i, %entry.if.end_crit_edge
  %retval.0.i69 = phi i32 [ 96, %sw.bb2.i ], [ 0, %entry.if.end_crit_edge ]
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %addr, align 8
  %size = getelementptr inbounds %struct.nvkm_gpuobj, ptr %7, i32 0, i32 5
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 8
  %conv = zext i32 %14 to i64
  %add = add i64 %12, -1
  %sub = add i64 %add, %conv
  %eng = getelementptr i8, ptr %base, i32 336
  %15 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eng, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call4 = tail call ptr %20(ptr noundef %16) #4
  %21 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eng, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wr32, align 4
  tail call void %26(ptr noundef %22, i32 noundef %retval.0.i69, i32 noundef 1638400) #4
  %27 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eng, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %wr329 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %wr329 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr329, align 4
  %add11 = or i32 %retval.0.i69, 4
  %conv12 = trunc i64 %sub to i32
  tail call void %32(ptr noundef %28, i32 noundef %add11, i32 noundef %conv12) #4
  %33 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eng, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %wr3214 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %wr3214 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr3214, align 4
  %add16 = or i32 %retval.0.i69, 8
  %conv18 = trunc i64 %12 to i32
  tail call void %38(ptr noundef %34, i32 noundef %add16, i32 noundef %conv18) #4
  %39 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eng, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %wr3220 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %wr3220 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wr3220, align 4
  %add22 = or i32 %retval.0.i69, 12
  %sh.diff = lshr i64 %sub, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl = and i32 %tr.sh.diff, -16777216
  %shr25 = lshr i64 %12, 32
  %conv27 = trunc i64 %shr25 to i32
  %or = or i32 %shl, %conv27
  tail call void %44(ptr noundef %40, i32 noundef %add22, i32 noundef %or) #4
  %45 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %eng, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %wr3229 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %wr3229 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr3229, align 4
  %add31 = or i32 %retval.0.i69, 16
  tail call void %50(ptr noundef %46, i32 noundef %add31, i32 noundef 0) #4
  %51 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %eng, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %wr3233 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %wr3233 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wr3233, align 4
  %add35 = or i32 %retval.0.i69, 20
  tail call void %56(ptr noundef %52, i32 noundef %add35, i32 noundef 0) #4
  %57 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %eng, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %release, align 4
  tail call void %62(ptr noundef %58) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge72
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_fifo_chan_engine_fini(ptr nocapture noundef readonly %base, ptr nocapture noundef readonly %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %device5 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device5, align 4
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %5, label %do.end.i [
    i32 31, label %entry.cleanup_crit_edge
    i32 48, label %entry.cleanup_crit_edge180
    i32 33, label %entry.if.end_crit_edge
    i32 36, label %sw.bb2.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge180:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %sw.bb2.i, %entry.if.end_crit_edge
  %retval.0.i = phi i32 [ 96, %sw.bb2.i ], [ 0, %entry.if.end_crit_edge ]
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 47200
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %or = or i32 %9, 1
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 47200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %or) #4, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %inst = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 6
  %12 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %inst, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %addr, align 8
  %shr = lshr i64 %15, 12
  %conv = trunc i64 %shr to i32
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %17, i32 13052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %conv) #4, !srcloc !25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %18 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body18

do.body18:                                        ; preds = %do.cond28.do.body18_crit_edge, %if.end
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 13052
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #4, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp24.not = icmp eq i32 %21, -1
  br i1 %cmp24.not, label %do.cond28, label %if.end66.thread

if.end66.thread:                                  ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %do.body92

do.cond28:                                        ; preds = %do.body18
  %call29 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp30 = icmp sgt i64 %call29, -1
  br i1 %cmp30, label %do.cond28.do.body18_crit_edge, label %do.end44

do.cond28.do.body18_crit_edge:                    ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body18

do.end44:                                         ; preds = %do.cond28
  %22 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_wait, align 8
  %device46 = getelementptr inbounds %struct.nvkm_timer, ptr %23, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %device46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device46, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %call47 = call ptr @dev_driver_string(ptr noundef %27) #4
  %28 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_wait, align 8
  %device50 = getelementptr inbounds %struct.nvkm_timer, ptr %29, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %device50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device50, align 4
  %dev51 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev51, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end44.do.body71_crit_edge

do.end44.do.body71_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body71

if.end.i:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  br label %do.body71

do.body71:                                        ; preds = %if.end.i, %do.end44.do.body71_crit_edge
  %retval.0.i172 = phi ptr [ %37, %if.end.i ], [ %35, %do.end44.do.body71_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call47, ptr noundef %retval.0.i172) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 5
  %38 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp72.not = icmp eq i32 %39, 0
  br i1 %cmp72.not, label %do.body71.if.end85_crit_edge, label %do.end77

do.body71.if.end85_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

do.end77:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device5, align 4
  %dev79 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev79, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 4
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %44 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %chid, align 8
  %conv81 = zext i16 %45 to i32
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client, align 4
  %name83 = getelementptr inbounds %struct.nvkm_client, ptr %47, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %conv81, ptr noundef %name83) #7
  br label %if.end85

if.end85:                                         ; preds = %do.end77, %do.body71.if.end85_crit_edge
  %not.suspend = xor i1 %suspend, true
  %spec.select171 = select i1 %suspend, i32 -16, i32 0
  br label %do.body92

do.body92:                                        ; preds = %if.end85, %if.end66.thread
  %cmp97 = phi i1 [ %not.suspend, %if.end85 ], [ true, %if.end66.thread ]
  %ret.0 = phi i32 [ %spec.select171, %if.end85 ], [ 0, %if.end66.thread ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @arm_heavy_mb() #4
  %48 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri, align 4
  %add.ptr96 = getelementptr i8, ptr %49, i32 47200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %9) #4, !srcloc !25
  br i1 %cmp97, label %if.then99, label %do.body92.cleanup_crit_edge

do.body92.cleanup_crit_edge:                      ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then99:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  %eng = getelementptr i8, ptr %base, i32 336
  %50 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %eng, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %call101 = call ptr %55(ptr noundef %51) #4
  %56 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %eng, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wr32, align 4
  call void %61(ptr noundef %57, i32 noundef %retval.0.i, i32 noundef 0) #4
  %62 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %eng, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %wr32105 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %wr32105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wr32105, align 4
  %add107 = or i32 %retval.0.i, 4
  call void %67(ptr noundef %63, i32 noundef %add107, i32 noundef 0) #4
  %68 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %eng, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %wr32109 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %wr32109 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wr32109, align 4
  %add111 = or i32 %retval.0.i, 8
  call void %73(ptr noundef %69, i32 noundef %add111, i32 noundef 0) #4
  %74 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %eng, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %wr32113 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %wr32113 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wr32113, align 4
  %add115 = or i32 %retval.0.i, 12
  call void %79(ptr noundef %75, i32 noundef %add115, i32 noundef 0) #4
  %80 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %eng, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %wr32117 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %wr32117 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wr32117, align 4
  %add119 = or i32 %retval.0.i, 16
  call void %85(ptr noundef %81, i32 noundef %add119, i32 noundef 0) #4
  %86 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %eng, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %wr32121 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %wr32121 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr32121, align 4
  %add123 = or i32 %retval.0.i, 20
  call void %91(ptr noundef %87, i32 noundef %add123, i32 noundef 0) #4
  %92 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %eng, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %release, align 4
  call void %97(ptr noundef %93) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %do.body92.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge180
  %retval.0 = phi i32 [ %ret.0, %if.then99 ], [ %ret.0, %do.body92.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge180 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_fifo_chan_object_ctor(ptr nocapture noundef readonly %base, ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handle1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %0 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handle1, align 8
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %2 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engine, align 8
  %type = getelementptr inbounds %struct.nvkm_engine, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %5, label %do.end [
    i32 31, label %entry.sw.epilog_crit_edge
    i32 48, label %entry.sw.epilog_crit_edge24
    i32 33, label %sw.bb2
    i32 36, label %sw.bb3
  ]

entry.sw.epilog_crit_edge24:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge24
  %context.0 = phi i32 [ 2097152, %sw.bb3 ], [ 1048576, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge24 ]
  %ramht = getelementptr i8, ptr %base, i32 344
  %7 = ptrtoint ptr %ramht to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ramht, align 8
  %call = tail call i32 @nvkm_ramht_insert(ptr noundef %8, ptr noundef %object, i32 noundef 0, i32 noundef 4, i32 noundef %1, i32 noundef %context.0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @nv50_fifo_chan_func, !1, !"nv50_fifo_chan_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c", i32 226, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c", i32 40, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c", i32 85, i32 6}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/channv50.c", i32 89, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nv50_fifo_chan_engine_fini._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @nv50_fifo_chan_engine_fini._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 5398353}
!23 = !{i64 2156280784}
!24 = !{i64 2156281186}
!25 = !{i64 5397935}
!26 = !{i64 2156281657}
!27 = !{i64 2156283395}
!28 = !{i64 2156263805}
!29 = !{i64 2156264207}
!30 = !{i64 2156264686}
!31 = !{i64 2156266580}
!32 = !{i64 2156270382}
