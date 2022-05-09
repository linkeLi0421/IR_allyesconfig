; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nv50_fifo_chan = type { ptr, %struct.nvkm_fifo_chan, ptr, ptr, ptr, ptr, ptr, [16 x ptr] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.3, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.3 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
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

@g84_fifo_chan_func = internal constant { %struct.nvkm_fifo_chan_func, [52 x i8] } { %struct.nvkm_fifo_chan_func { ptr @nv50_fifo_chan_dtor, ptr @g84_fifo_chan_init, ptr @nv50_fifo_chan_fini, ptr @g84_fifo_chan_ntfy, ptr @g84_fifo_chan_engine_ctor, ptr @nv50_fifo_chan_engine_dtor, ptr @g84_fifo_chan_engine_init, ptr @g84_fifo_chan_engine_fini, ptr @g84_fifo_chan_object_ctor, ptr @nv50_fifo_chan_object_dtor, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@g84_fifo_chan_engine_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: channel %d [%s] unload timeout\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"g84_fifo_chan_engine_fini\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@g84_fifo_chan_engine_fini._entry_ptr = internal global ptr @g84_fifo_chan_engine_fini._entry, section ".printk_index", align 4
@switch.table.g84_fifo_chan_object_ctor = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 6291456, i32 3145728, i32 5242880, i32 0, i32 0, i32 0, i32 1048576, i32 0, i32 3145728, i32 2097152, i32 0, i32 4194304, i32 2097152, i32 6291456, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5242880, i32 0, i32 0, i32 5242880, i32 4194304], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 27, i64 28, i64 29, i64 31, i64 33, i64 36, i64 38, i64 39, i64 40, i64 46, i64 48, i64 50]
@__sancov_gen_cov_switch_values.6 = internal global [14 x i64] [i64 12, i64 32, i64 27, i64 28, i64 29, i64 31, i64 33, i64 36, i64 38, i64 39, i64 40, i64 46, i64 48, i64 50]
@__sancov_gen_cov_switch_values.7 = internal global [14 x i64] [i64 12, i64 32, i64 27, i64 28, i64 29, i64 31, i64 33, i64 36, i64 38, i64 39, i64 40, i64 46, i64 48, i64 50]
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"g84_fifo_chan_func\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 197, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 64, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 88, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 94, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [39 x i8] c"switch.table.g84_fifo_chan_object_ctor\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @g84_fifo_chan_engine_fini._entry, ptr @g84_fifo_chan_engine_fini._entry_ptr, ptr @g84_fifo_chan_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switch.table.g84_fifo_chan_object_ctor], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g84_fifo_chan_func to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g84_fifo_chan_engine_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.g84_fifo_chan_object_ctor to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g84_fifo_chan_ctor(ptr noundef %fifo, i64 noundef %vmm, i64 noundef %push, ptr noundef %oclass, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vmm)
  %tobool.not = icmp eq i64 %vmm, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %base3 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 1
  %call = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @g84_fifo_chan_func, ptr noundef %fifo, i32 noundef 65536, i32 noundef 4096, i1 noundef zeroext false, i64 noundef %vmm, i64 noundef %push, i32 noundef 255, i32 noundef 0, i32 noundef 12582912, i32 noundef 8192, ptr noundef %oclass, ptr noundef %base3) #5
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fifo, ptr %chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %inst = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 1, i32 6
  %3 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inst, align 4
  %eng = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 4
  %call9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 512, i32 noundef 0, i1 noundef zeroext true, ptr noundef %4, ptr noundef %eng) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %5 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inst, align 4
  %pgd = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 5
  %call15 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 16384, i32 noundef 0, i1 noundef zeroext false, ptr noundef %6, ptr noundef %pgd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inst, align 4
  %cache = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 3
  %call21 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 4096, i32 noundef 1024, i1 noundef zeroext true, ptr noundef %8, ptr noundef %cache) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %9 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inst, align 4
  %ramfc = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 2
  %call27 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 256, i32 noundef 256, i1 noundef zeroext true, ptr noundef %10, ptr noundef %ramfc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inst, align 4
  %ramht = getelementptr inbounds %struct.nv50_fifo_chan, ptr %chan, i32 0, i32 6
  %call33 = tail call i32 @nvkm_ramht_new(ptr noundef %1, i32 noundef 32768, i32 noundef 16, ptr noundef %12, ptr noundef %ramht) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call15, %if.end12.cleanup_crit_edge ], [ %call21, %if.end18.cleanup_crit_edge ], [ %call27, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_fifo_chan_dtor(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @g84_fifo_chan_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %shr = lshr i64 %7, 8
  %chid6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %8 = ptrtoint ptr %chid6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chid6, align 8
  %conv = zext i16 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %10 = trunc i64 %shr to i32
  %conv7 = or i32 %10, -2147483648
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 9728
  %add.ptr8 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %conv7) #5, !srcloc !23
  tail call void @nv50_fifo_runlist_update(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_chan_fini(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @g84_fifo_chan_ntfy(ptr nocapture noundef readonly %chan, i32 noundef %type, ptr nocapture noundef writeonly %pevent) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %fifo = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %uevent = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pevent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %uevent, ptr %pevent, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g84_fifo_chan_engine_ctor(ptr noundef %base, ptr noundef %engine, ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end.i [
    i32 31, label %entry.cleanup_crit_edge
    i32 48, label %entry.cleanup_crit_edge6
    i32 33, label %entry.if.end_crit_edge
    i32 50, label %entry.if.end_crit_edge7
    i32 38, label %entry.if.end_crit_edge8
    i32 36, label %entry.if.end_crit_edge9
    i32 39, label %entry.if.end_crit_edge10
    i32 27, label %entry.if.end_crit_edge11
    i32 40, label %entry.if.end_crit_edge12
    i32 29, label %entry.if.end_crit_edge13
    i32 46, label %entry.if.end_crit_edge14
    i32 28, label %entry.if.end_crit_edge15
  ]

entry.if.end_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge7, %entry.if.end_crit_edge8, %entry.if.end_crit_edge9, %entry.if.end_crit_edge10, %entry.if.end_crit_edge11, %entry.if.end_crit_edge12, %entry.if.end_crit_edge13, %entry.if.end_crit_edge14, %entry.if.end_crit_edge15
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  %call1 = tail call ptr @nv50_fifo_chan_engine(ptr noundef %add.ptr, ptr noundef %engine) #5
  %call2 = tail call i32 @nvkm_object_bind(ptr noundef %object, ptr noundef null, i32 noundef 0, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge6
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge6 ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_chan_engine_dtor(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g84_fifo_chan_engine_init(ptr noundef %base, ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -8
  %call = tail call ptr @nv50_fifo_chan_engine(ptr noundef %add.ptr, ptr noundef %engine) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %type.i = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %3, label %do.end.i [
    i32 31, label %entry.cleanup_crit_edge
    i32 48, label %entry.cleanup_crit_edge72
    i32 33, label %entry.if.end_crit_edge
    i32 50, label %entry.sw.bb2.i_crit_edge
    i32 38, label %entry.sw.bb2.i_crit_edge73
    i32 36, label %entry.sw.bb3.i_crit_edge
    i32 39, label %entry.sw.bb3.i_crit_edge74
    i32 27, label %entry.sw.bb4.i_crit_edge
    i32 40, label %entry.sw.bb4.i_crit_edge75
    i32 29, label %entry.sw.bb5.i_crit_edge
    i32 46, label %entry.sw.bb5.i_crit_edge76
    i32 28, label %sw.bb6.i
  ]

entry.sw.bb5.i_crit_edge76:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

entry.sw.bb5.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

entry.sw.bb4.i_crit_edge75:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

entry.sw.bb3.i_crit_edge74:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb2.i_crit_edge73:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge73
  br label %if.end

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge74
  br label %if.end

sw.bb4.i:                                         ; preds = %entry.sw.bb4.i_crit_edge, %entry.sw.bb4.i_crit_edge75
  br label %if.end

sw.bb5.i:                                         ; preds = %entry.sw.bb5.i_crit_edge, %entry.sw.bb5.i_crit_edge76
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 64, %sw.bb2.i ], [ 96, %sw.bb3.i ], [ 128, %sw.bb4.i ], [ 160, %sw.bb5.i ], [ 192, %sw.bb6.i ], [ 32, %entry.if.end_crit_edge ]
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %addr, align 8
  %size = getelementptr inbounds %struct.nvkm_gpuobj, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 8
  %conv = zext i32 %8 to i64
  %add = add i64 %6, -1
  %sub = add i64 %add, %conv
  %eng = getelementptr i8, ptr %base, i32 336
  %9 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eng, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call4 = tail call ptr %14(ptr noundef %10) #5
  %15 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eng, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr32, align 4
  tail call void %20(ptr noundef %16, i32 noundef %retval.0.i.ph, i32 noundef 1638400) #5
  %21 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eng, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %wr329 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %wr329 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wr329, align 4
  %add11 = or i32 %retval.0.i.ph, 4
  %conv12 = trunc i64 %sub to i32
  tail call void %26(ptr noundef %22, i32 noundef %add11, i32 noundef %conv12) #5
  %27 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eng, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %wr3214 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %wr3214 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr3214, align 4
  %add16 = or i32 %retval.0.i.ph, 8
  %conv18 = trunc i64 %6 to i32
  tail call void %32(ptr noundef %28, i32 noundef %add16, i32 noundef %conv18) #5
  %33 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eng, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %wr3220 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %wr3220 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr3220, align 4
  %add22 = or i32 %retval.0.i.ph, 12
  %sh.diff = lshr i64 %sub, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl = and i32 %tr.sh.diff, -16777216
  %shr25 = lshr i64 %6, 32
  %conv27 = trunc i64 %shr25 to i32
  %or = or i32 %shl, %conv27
  tail call void %38(ptr noundef %34, i32 noundef %add22, i32 noundef %or) #5
  %39 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eng, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %wr3229 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %wr3229 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wr3229, align 4
  %add31 = or i32 %retval.0.i.ph, 16
  tail call void %44(ptr noundef %40, i32 noundef %add31, i32 noundef 0) #5
  %45 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %eng, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %wr3233 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %wr3233 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr3233, align 4
  %add35 = or i32 %retval.0.i.ph, 20
  tail call void %50(ptr noundef %46, i32 noundef %add35, i32 noundef 0) #5
  %51 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %eng, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %release, align 4
  tail call void %56(ptr noundef %52) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge72
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g84_fifo_chan_engine_fini(ptr nocapture noundef readonly %base, ptr noundef %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
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
    i32 48, label %entry.cleanup_crit_edge191
    i32 33, label %entry.if.end_crit_edge
    i32 50, label %entry.sw.bb2.i_crit_edge
    i32 38, label %entry.sw.bb2.i_crit_edge192
    i32 36, label %entry.sw.bb3.i_crit_edge
    i32 39, label %entry.sw.bb3.i_crit_edge193
    i32 27, label %entry.sw.bb4.i_crit_edge
    i32 40, label %entry.sw.bb4.i_crit_edge194
    i32 29, label %entry.sw.bb5.i_crit_edge
    i32 46, label %entry.sw.bb5.i_crit_edge195
    i32 28, label %sw.bb6.i
  ]

entry.sw.bb5.i_crit_edge195:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

entry.sw.bb5.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

entry.sw.bb4.i_crit_edge194:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

entry.sw.bb3.i_crit_edge193:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb2.i_crit_edge192:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge191:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge192
  br label %if.end

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge193
  br label %if.end

sw.bb4.i:                                         ; preds = %entry.sw.bb4.i_crit_edge, %entry.sw.bb4.i_crit_edge194
  br label %if.end

sw.bb5.i:                                         ; preds = %entry.sw.bb5.i_crit_edge, %entry.sw.bb5.i_crit_edge195
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 64, %sw.bb2.i ], [ 96, %sw.bb3.i ], [ 128, %sw.bb4.i ], [ 160, %sw.bb5.i ], [ 192, %sw.bb6.i ], [ 32, %entry.if.end_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %engine_id = getelementptr inbounds %struct.nvkm_fifo_func, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine_id, align 4
  %call8 = tail call i32 %10(ptr noundef %1, ptr noundef %engine) #5
  %sub = add i32 %call8, -1
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 9504
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %and = and i32 %13, -64
  %shl = shl nuw i32 1, %sub
  %or = or i32 %and, %shl
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 9504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %or) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %inst = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 6
  %16 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inst, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %addr, align 8
  %shr = lshr i64 %19, 12
  %conv = trunc i64 %shr to i32
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %21, i32 13052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %conv) #5, !srcloc !23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %22 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr24184 = getelementptr i8, ptr %24, i32 13052
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24184) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp27.not185 = icmp eq i32 %25, -1
  br i1 %cmp27.not185, label %if.end.do.cond31_crit_edge, label %if.end.if.end69_crit_edge

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end.do.cond31_crit_edge:                       ; preds = %if.end
  br label %do.cond31

do.body21:                                        ; preds = %do.cond31
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %27, i32 13052
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #5, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  %cmp27.not = icmp eq i32 %28, -1
  br i1 %cmp27.not, label %do.body21.do.cond31_crit_edge, label %do.body21.if.end69_crit_edge

do.body21.if.end69_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.body21.do.cond31_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond31

do.cond31:                                        ; preds = %do.body21.do.cond31_crit_edge, %if.end.do.cond31_crit_edge
  %call32 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call32)
  %cmp33 = icmp sgt i64 %call32, -1
  br i1 %cmp33, label %do.body21, label %do.end47

do.end47:                                         ; preds = %do.cond31
  %29 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_wait, align 8
  %device49 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %device49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device49, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %call50 = call ptr @dev_driver_string(ptr noundef %34) #5
  %35 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_wait, align 8
  %device53 = getelementptr inbounds %struct.nvkm_timer, ptr %36, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %device53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device53, align 4
  %dev54 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev54, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end47.dev_name.exit_crit_edge

do.end47.dev_name.exit_crit_edge:                 ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end47.dev_name.exit_crit_edge
  %retval.0.i175 = phi ptr [ %44, %if.end.i ], [ %42, %do.end47.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call50, ptr noundef %retval.0.i175) #5
  br label %if.end69

if.end69:                                         ; preds = %dev_name.exit, %do.body21.if.end69_crit_edge, %if.end.if.end69_crit_edge
  %_taken.1181 = phi i64 [ %call32, %dev_name.exit ], [ 0, %if.end.if.end69_crit_edge ], [ %call32, %do.body21.if.end69_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %_taken.1181)
  %cmp71 = icmp sgt i64 %_taken.1181, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr78 = getelementptr i8, ptr %46, i32 9504
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %13) #5, !srcloc !23
  br i1 %cmp71, label %if.end69.if.end101_crit_edge, label %do.body81

if.end69.if.end101_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

do.body81:                                        ; preds = %if.end69
  %debug = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 5
  %47 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp82.not = icmp eq i32 %48, 0
  br i1 %cmp82.not, label %do.body81.if.end95_crit_edge, label %do.end87

do.body81.if.end95_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end87:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device5, align 4
  %dev89 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev89, align 8
  %name = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 4
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 5
  %53 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %chid, align 8
  %conv91 = zext i16 %54 to i32
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %base, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 4
  %name93 = getelementptr inbounds %struct.nvkm_client, ptr %56, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %conv91, ptr noundef %name93) #8
  br label %if.end95

if.end95:                                         ; preds = %do.end87, %do.body81.if.end95_crit_edge
  br i1 %suspend, label %if.end95.cleanup_crit_edge, label %if.end95.if.end101_crit_edge

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end101:                                        ; preds = %if.end95.if.end101_crit_edge, %if.end69.if.end101_crit_edge
  %eng = getelementptr i8, ptr %base, i32 336
  %57 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %eng, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call103 = call ptr %62(ptr noundef %58) #5
  %63 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %eng, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wr32, align 4
  call void %68(ptr noundef %64, i32 noundef %retval.0.i.ph, i32 noundef 0) #5
  %69 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %eng, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %wr32107 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %wr32107 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wr32107, align 4
  %add109 = or i32 %retval.0.i.ph, 4
  call void %74(ptr noundef %70, i32 noundef %add109, i32 noundef 0) #5
  %75 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %eng, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %wr32111 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %wr32111 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wr32111, align 4
  %add113 = or i32 %retval.0.i.ph, 8
  call void %80(ptr noundef %76, i32 noundef %add113, i32 noundef 0) #5
  %81 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %eng, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %wr32115 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %wr32115 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wr32115, align 4
  %add117 = or i32 %retval.0.i.ph, 12
  call void %86(ptr noundef %82, i32 noundef %add117, i32 noundef 0) #5
  %87 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %eng, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %wr32119 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %wr32119 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wr32119, align 4
  %add121 = or i32 %retval.0.i.ph, 16
  call void %92(ptr noundef %88, i32 noundef %add121, i32 noundef 0) #5
  %93 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %eng, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %wr32123 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %wr32123 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wr32123, align 4
  %add125 = or i32 %retval.0.i.ph, 20
  call void %98(ptr noundef %94, i32 noundef %add125, i32 noundef 0) #5
  %99 = ptrtoint ptr %eng to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %eng, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %release, align 4
  call void %104(ptr noundef %100) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.end95.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge191
  %retval.0 = phi i32 [ 0, %if.end101 ], [ -16, %if.end95.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge191 ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g84_fifo_chan_object_ctor(ptr nocapture noundef readonly %base, ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %switch.tableidx = add i32 %5, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 24
  br i1 %6, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 15219543, %switch.tableidx
  %7 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.lobit.not = icmp eq i32 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [24 x i32], ptr @switch.table.g84_fifo_chan_object_ctor, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %ramht = getelementptr i8, ptr %base, i32 344
  %9 = ptrtoint ptr %ramht to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ramht, align 8
  %call = tail call i32 @nvkm_ramht_insert(ptr noundef %10, ptr noundef %object, i32 noundef 0, i32 noundef 4, i32 noundef %1, i32 noundef %switch.load) #5
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_chan_object_dtor(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_fifo_runlist_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_fifo_chan_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @g84_fifo_chan_func, !1, !"g84_fifo_chan_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c", i32 197, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c", i32 64, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c", i32 88, i32 9}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chang84.c", i32 94, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @g84_fifo_chan_engine_fini._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @g84_fifo_chan_engine_fini._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2156277687}
!23 = !{i64 5397518}
!24 = !{i64 5397936}
!25 = !{i64 2156263679}
!26 = !{i64 2156264079}
!27 = !{i64 2156264557}
!28 = !{i64 2156266451}
!29 = !{i64 2156267676}
