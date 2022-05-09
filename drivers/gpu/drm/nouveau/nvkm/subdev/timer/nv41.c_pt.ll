; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_timer_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@nv41_timer = internal constant { %struct.nvkm_timer_func, [40 x i8] } { %struct.nvkm_timer_func { ptr @nv41_timer_init, ptr @nv04_timer_intr, ptr @nv04_timer_read, ptr @nv04_timer_time, ptr @nv04_timer_alarm_init, ptr @nv04_timer_alarm_fini }, [40 x i8] zeroinitializer }, align 32
@nv41_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: input frequency : %dHz\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv41_timer_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv41_timer_init._entry_ptr = internal global ptr @nv41_timer_init._entry, section ".printk_index", align 4
@nv41_timer_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: input multiplier: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nv41_timer_init._entry_ptr.7 = internal global ptr @nv41_timer_init._entry.5, section ".printk_index", align 4
@nv41_timer_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: numerator       : %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@nv41_timer_init._entry_ptr.10 = internal global ptr @nv41_timer_init._entry.8, section ".printk_index", align 4
@nv41_timer_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: denominator     : %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@nv41_timer_init._entry_ptr.13 = internal global ptr @nv41_timer_init._entry.11, section ".printk_index", align 4
@nv41_timer_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 64, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: timer frequency : %dHz\0A\00", [36 x i8] zeroinitializer }, align 32
@nv41_timer_init._entry_ptr.16 = internal global ptr @nv41_timer_init._entry.14, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"nv41_timer\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 72, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 60, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 61, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 62, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 63, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 64, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @nv41_timer_init._entry, ptr @nv41_timer_init._entry.11, ptr @nv41_timer_init._entry.14, ptr @nv41_timer_init._entry.5, ptr @nv41_timer_init._entry.8, ptr @nv41_timer_init._entry_ptr, ptr @nv41_timer_init._entry_ptr.10, ptr @nv41_timer_init._entry_ptr.13, ptr @nv41_timer_init._entry_ptr.16, ptr @nv41_timer_init._entry_ptr.7, ptr @nv41_timer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv41_timer to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv41_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv41_timer_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv41_timer_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv41_timer_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv41_timer_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv41_timer_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ptmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_timer_new_(ptr noundef nonnull @nv41_timer, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ptmr) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_timer_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv41_timer_init(ptr noundef %tmr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crystal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62500, i32 %3)
  %cmp167 = icmp ult i32 %3, 62500
  br i1 %cmp167, label %entry.while.body_crit_edge, label %entry.while.cond3.preheader_crit_edge

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond3.preheader

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.cond3.preheader:                            ; preds = %while.body.while.cond3.preheader_crit_edge, %entry.while.cond3.preheader_crit_edge
  %m.0.lcssa = phi i32 [ 1, %entry.while.cond3.preheader_crit_edge ], [ %inc, %while.body.while.cond3.preheader_crit_edge ]
  %n.0.lcssa = phi i32 [ %3, %entry.while.cond3.preheader_crit_edge ], [ %add, %while.body.while.cond3.preheader_crit_edge ]
  %n.0.lcssa.frozen = freeze i32 %n.0.lcssa
  %div8 = udiv i32 %n.0.lcssa.frozen, 5
  %4 = mul i32 %div8, 5
  %rem171.decomposed = sub i32 %n.0.lcssa.frozen, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem171.decomposed)
  %cmp4172 = icmp eq i32 %rem171.decomposed, 0
  br i1 %cmp4172, label %while.body7, label %while.cond3.preheader.while.cond11.preheader_crit_edge

while.cond3.preheader.while.cond11.preheader_crit_edge: ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond11.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %n.0169 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %m.0168 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %div = udiv i32 %n.0169, %m.0168
  %add = add nuw nsw i32 %div, %n.0169
  %inc = add i32 %m.0168, 1
  %cmp = icmp ult i32 %add, 62500
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.cond3.preheader_crit_edge

while.body.while.cond3.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond3.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.cond11.preheader:                           ; preds = %while.body7.4, %while.body7.3.while.cond11.preheader_crit_edge, %while.body7.2.while.cond11.preheader_crit_edge, %while.body7.1.while.cond11.preheader_crit_edge, %while.body7.while.cond11.preheader_crit_edge, %while.cond3.preheader.while.cond11.preheader_crit_edge
  %n.1.lcssa = phi i32 [ %n.0.lcssa, %while.cond3.preheader.while.cond11.preheader_crit_edge ], [ %div8, %while.body7.while.cond11.preheader_crit_edge ], [ %div8.1, %while.body7.1.while.cond11.preheader_crit_edge ], [ %div8.2, %while.body7.2.while.cond11.preheader_crit_edge ], [ %div8.3, %while.body7.3.while.cond11.preheader_crit_edge ], [ %spec.select, %while.body7.4 ]
  %d.0.lcssa = phi i32 [ 31250, %while.cond3.preheader.while.cond11.preheader_crit_edge ], [ 6250, %while.body7.while.cond11.preheader_crit_edge ], [ 1250, %while.body7.1.while.cond11.preheader_crit_edge ], [ 250, %while.body7.2.while.cond11.preheader_crit_edge ], [ 50, %while.body7.3.while.cond11.preheader_crit_edge ], [ %spec.select193, %while.body7.4 ]
  %rem12177 = and i32 %n.1.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem12177)
  %cmp13178 = icmp eq i32 %rem12177, 0
  br i1 %cmp13178, label %while.cond11.preheader.while.body18_crit_edge, label %while.cond11.preheader.while.cond22.preheader_crit_edge

while.cond11.preheader.while.cond22.preheader_crit_edge: ; preds = %while.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond22.preheader

while.cond11.preheader.while.body18_crit_edge:    ; preds = %while.cond11.preheader
  br label %while.body18

while.body7:                                      ; preds = %while.cond3.preheader
  %rem = urem i32 %div8, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %while.body7.1, label %while.body7.while.cond11.preheader_crit_edge

while.body7.while.cond11.preheader_crit_edge:     ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond11.preheader

while.body7.1:                                    ; preds = %while.body7
  %div8.1 = udiv i32 %n.0.lcssa, 25
  %rem.1 = urem i32 %div8.1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1)
  %cmp4.1 = icmp eq i32 %rem.1, 0
  br i1 %cmp4.1, label %while.body7.2, label %while.body7.1.while.cond11.preheader_crit_edge

while.body7.1.while.cond11.preheader_crit_edge:   ; preds = %while.body7.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond11.preheader

while.body7.2:                                    ; preds = %while.body7.1
  %div8.2 = udiv i32 %n.0.lcssa, 125
  %rem.2 = urem i32 %div8.2, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2)
  %cmp4.2 = icmp eq i32 %rem.2, 0
  br i1 %cmp4.2, label %while.body7.3, label %while.body7.2.while.cond11.preheader_crit_edge

while.body7.2.while.cond11.preheader_crit_edge:   ; preds = %while.body7.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond11.preheader

while.body7.3:                                    ; preds = %while.body7.2
  %div8.3 = udiv i32 %n.0.lcssa, 625
  %rem.3 = urem i32 %div8.3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3)
  %cmp4.3 = icmp eq i32 %rem.3, 0
  br i1 %cmp4.3, label %while.body7.4, label %while.body7.3.while.cond11.preheader_crit_edge

while.body7.3.while.cond11.preheader_crit_edge:   ; preds = %while.body7.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond11.preheader

while.body7.4:                                    ; preds = %while.body7.3
  call void @__sanitizer_cov_trace_pc() #5
  %div8.4 = udiv i32 %n.0.lcssa, 3125
  %rem.4 = urem i32 %div8.4, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.4)
  %cmp4.4 = icmp eq i32 %rem.4, 0
  %div8.5 = udiv i32 %n.0.lcssa, 15625
  %spec.select = select i1 %cmp4.4, i32 %div8.5, i32 %div8.4
  %spec.select193 = select i1 %cmp4.4, i32 2, i32 10
  br label %while.cond11.preheader

while.cond22.preheader:                           ; preds = %while.body18.while.cond22.preheader_crit_edge, %while.cond11.preheader.while.cond22.preheader_crit_edge
  %n.2.lcssa = phi i32 [ %n.1.lcssa, %while.cond11.preheader.while.cond22.preheader_crit_edge ], [ %div19153, %while.body18.while.cond22.preheader_crit_edge ]
  %d.1.lcssa = phi i32 [ %d.0.lcssa, %while.cond11.preheader.while.cond22.preheader_crit_edge ], [ %div20154, %while.body18.while.cond22.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %n.2.lcssa)
  %cmp23186 = icmp ugt i32 %n.2.lcssa, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %d.1.lcssa)
  %cmp24187 = icmp ugt i32 %d.1.lcssa, 65535
  %or.cond156188 = select i1 %cmp23186, i1 true, i1 %cmp24187
  br i1 %or.cond156188, label %while.cond22.preheader.while.body25_crit_edge, label %while.cond22.preheader.do.body_crit_edge

while.cond22.preheader.do.body_crit_edge:         ; preds = %while.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

while.cond22.preheader.while.body25_crit_edge:    ; preds = %while.cond22.preheader
  br label %while.body25

while.body18:                                     ; preds = %while.body18.while.body18_crit_edge, %while.cond11.preheader.while.body18_crit_edge
  %d.1183 = phi i32 [ %div20154, %while.body18.while.body18_crit_edge ], [ %d.0.lcssa, %while.cond11.preheader.while.body18_crit_edge ]
  %n.2182 = phi i32 [ %div19153, %while.body18.while.body18_crit_edge ], [ %n.1.lcssa, %while.cond11.preheader.while.body18_crit_edge ]
  %div19153 = lshr i32 %n.2182, 1
  %div20154 = lshr i32 %d.1183, 1
  %5 = and i32 %n.2182, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13 = icmp eq i32 %5, 0
  %6 = and i32 %d.1183, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16 = icmp eq i32 %6, 0
  %or.cond155 = select i1 %cmp13, i1 %cmp16, i1 false
  br i1 %or.cond155, label %while.body18.while.body18_crit_edge, label %while.body18.while.cond22.preheader_crit_edge

while.body18.while.cond22.preheader_crit_edge:    ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond22.preheader

while.body18.while.body18_crit_edge:              ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body18

while.body25:                                     ; preds = %while.body25.while.body25_crit_edge, %while.cond22.preheader.while.body25_crit_edge
  %d.2190 = phi i32 [ %shr26, %while.body25.while.body25_crit_edge ], [ %d.1.lcssa, %while.cond22.preheader.while.body25_crit_edge ]
  %n.3189 = phi i32 [ %shr, %while.body25.while.body25_crit_edge ], [ %n.2.lcssa, %while.cond22.preheader.while.body25_crit_edge ]
  %shr = lshr i32 %n.3189, 1
  %shr26 = lshr i32 %d.2190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %n.3189)
  %cmp23 = icmp ugt i32 %n.3189, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %d.2190)
  %cmp24 = icmp ugt i32 %d.2190, 131071
  %or.cond156 = select i1 %cmp23, i1 true, i1 %cmp24
  br i1 %or.cond156, label %while.body25.while.body25_crit_edge, label %while.body25.do.body_crit_edge

while.body25.do.body_crit_edge:                   ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

while.body25.while.body25_crit_edge:              ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body25

do.body:                                          ; preds = %while.body25.do.body_crit_edge, %while.cond22.preheader.do.body_crit_edge
  %n.3.lcssa = phi i32 [ %n.2.lcssa, %while.cond22.preheader.do.body_crit_edge ], [ %shr, %while.body25.do.body_crit_edge ]
  %d.2.lcssa = phi i32 [ %d.1.lcssa, %while.cond22.preheader.do.body_crit_edge ], [ %shr26, %while.body25.do.body_crit_edge ]
  %debug = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp28 = icmp ugt i32 %8, 3
  br i1 %cmp28, label %if.end, label %do.body.if.end93_crit_edge

do.body.if.end93_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end93

if.end:                                           ; preds = %do.body
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %3) #6
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp36 = icmp ugt i32 %.pr, 3
  br i1 %cmp36, label %if.end45, label %if.end.if.end93_crit_edge

if.end.if.end93_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end93

if.end45:                                         ; preds = %if.end
  %12 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device2, align 4
  %dev42 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev42, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %m.0.lcssa) #6
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr158 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr158)
  %cmp51 = icmp ugt i32 %.pr158, 3
  br i1 %cmp51, label %if.end60, label %if.end45.if.end93_crit_edge

if.end45.if.end93_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end93

if.end60:                                         ; preds = %if.end45
  %17 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device2, align 4
  %dev57 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev57, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %n.3.lcssa) #6
  %21 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr160.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr160.pr)
  %cmp66 = icmp ugt i32 %.pr160.pr, 3
  br i1 %cmp66, label %if.end75, label %if.end60.if.end93_crit_edge

if.end60.if.end93_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end93

if.end75:                                         ; preds = %if.end60
  %22 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device2, align 4
  %dev72 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev72, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %d.2.lcssa) #6
  %26 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr162 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr162)
  %cmp81 = icmp ugt i32 %.pr162, 3
  br i1 %cmp81, label %do.end85, label %if.end75.if.end93_crit_edge

if.end75.if.end93_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end93

do.end85:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device2, align 4
  %dev87 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev87, align 8
  %mul90 = mul i32 %m.0.lcssa, %3
  %mul91 = mul i32 %mul90, %d.2.lcssa
  %div92 = udiv i32 %mul91, %n.3.lcssa
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %div92) #6
  br label %if.end93

if.end93:                                         ; preds = %do.end85, %if.end75.if.end93_crit_edge, %if.end60.if.end93_crit_edge, %if.end45.if.end93_crit_edge, %if.end.if.end93_crit_edge, %do.body.if.end93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %sub = add i32 %m.0.lcssa, -1
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 37408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %sub) #3, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr103 = getelementptr i8, ptr %34, i32 37376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %n.3.lcssa) #3, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr108 = getelementptr i8, ptr %36, i32 37392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %d.2.lcssa) #3, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv04_timer_read(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_time(ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_alarm_init(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_alarm_fini(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @nv41_timer, !1, !"nv41_timer", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c", i32 72, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c", i32 60, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv41_timer_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv41_timer_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c", i32 61, i32 2}
!12 = !{ptr @nv41_timer_init._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nv41_timer_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c", i32 62, i32 2}
!16 = !{ptr @nv41_timer_init._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nv41_timer_init._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c", i32 63, i32 2}
!20 = !{ptr @nv41_timer_init._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nv41_timer_init._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c", i32 64, i32 2}
!24 = !{ptr @nv41_timer_init._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nv41_timer_init._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2156234076}
!36 = !{i64 5386350}
!37 = !{i64 2156234475}
!38 = !{i64 2156234870}
