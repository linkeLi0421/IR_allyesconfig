; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c"
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

@nv40_timer = internal constant { %struct.nvkm_timer_func, [40 x i8] } { %struct.nvkm_timer_func { ptr @nv40_timer_init, ptr @nv04_timer_intr, ptr @nv04_timer_read, ptr @nv04_timer_time, ptr @nv04_timer_alarm_init, ptr @nv04_timer_alarm_fini }, [40 x i8] zeroinitializer }, align 32
@nv40_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: unknown input clock freq\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv40_timer_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv40_timer_init._entry_ptr = internal global ptr @nv40_timer_init._entry, section ".printk_index", align 4
@nv40_timer_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 65, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: input frequency : %dHz\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nv40_timer_init._entry_ptr.8 = internal global ptr @nv40_timer_init._entry.5, section ".printk_index", align 4
@nv40_timer_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 66, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: numerator       : %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@nv40_timer_init._entry_ptr.11 = internal global ptr @nv40_timer_init._entry.9, section ".printk_index", align 4
@nv40_timer_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 67, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: denominator     : %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@nv40_timer_init._entry_ptr.14 = internal global ptr @nv40_timer_init._entry.12, section ".printk_index", align 4
@nv40_timer_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 68, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: timer frequency : %dHz\0A\00", [36 x i8] zeroinitializer }, align 32
@nv40_timer_init._entry_ptr.17 = internal global ptr @nv40_timer_init._entry.15, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"nv40_timer\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 75, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 46, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 65, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 66, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 67, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 68, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @nv40_timer_init._entry, ptr @nv40_timer_init._entry.12, ptr @nv40_timer_init._entry.15, ptr @nv40_timer_init._entry.5, ptr @nv40_timer_init._entry.9, ptr @nv40_timer_init._entry_ptr, ptr @nv40_timer_init._entry_ptr.11, ptr @nv40_timer_init._entry_ptr.14, ptr @nv40_timer_init._entry_ptr.17, ptr @nv40_timer_init._entry_ptr.8, ptr @nv40_timer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_timer to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_timer_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_timer_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_timer_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_timer_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_timer_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ptmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_timer_new_(ptr noundef nonnull @nv40_timer, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ptmr) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_timer_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv40_timer_init(ptr noundef %tmr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 37376
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 37392
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  %d.0 = select i1 %or.cond, i32 1, i32 %7
  %n.0 = select i1 %or.cond, i32 1, i32 %4
  %debug = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp ugt i32 %9, 1
  br i1 %cmp, label %do.end, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %name) #6
  br label %if.end17

if.end17:                                         ; preds = %do.end, %entry.if.end17_crit_edge
  %rem162 = urem i32 %n.0, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem162)
  %cmp18163 = icmp eq i32 %rem162, 0
  %rem19164 = urem i32 %d.0, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19164)
  %cmp20165 = icmp eq i32 %rem19164, 0
  %or.cond151166 = select i1 %cmp18163, i1 %cmp20165, i1 false
  br i1 %or.cond151166, label %if.end17.while.body_crit_edge, label %if.end17.while.cond22.preheader_crit_edge

if.end17.while.cond22.preheader_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond22.preheader

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  br label %while.body

while.cond22.preheader:                           ; preds = %while.body.while.cond22.preheader_crit_edge, %if.end17.while.cond22.preheader_crit_edge
  %d.2.lcssa = phi i32 [ %d.0, %if.end17.while.cond22.preheader_crit_edge ], [ %div21, %while.body.while.cond22.preheader_crit_edge ]
  %n.2.lcssa = phi i32 [ %n.0, %if.end17.while.cond22.preheader_crit_edge ], [ %div, %while.body.while.cond22.preheader_crit_edge ]
  %rem23170 = and i32 %n.2.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem23170)
  %cmp24171 = icmp eq i32 %rem23170, 0
  %rem26172 = and i32 %d.2.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem26172)
  %cmp27173 = icmp eq i32 %rem26172, 0
  %or.cond152174 = select i1 %cmp24171, i1 %cmp27173, i1 false
  br i1 %or.cond152174, label %while.cond22.preheader.while.body29_crit_edge, label %while.cond22.preheader.while.cond33.preheader_crit_edge

while.cond22.preheader.while.cond33.preheader_crit_edge: ; preds = %while.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond33.preheader

while.cond22.preheader.while.body29_crit_edge:    ; preds = %while.cond22.preheader
  br label %while.body29

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end17.while.body_crit_edge
  %n.2168 = phi i32 [ %div, %while.body.while.body_crit_edge ], [ %n.0, %if.end17.while.body_crit_edge ]
  %d.2167 = phi i32 [ %div21, %while.body.while.body_crit_edge ], [ %d.0, %if.end17.while.body_crit_edge ]
  %div = udiv i32 %n.2168, 5
  %div21 = udiv i32 %d.2167, 5
  %rem = urem i32 %div, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp18 = icmp eq i32 %rem, 0
  %rem19 = urem i32 %div21, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19)
  %cmp20 = icmp eq i32 %rem19, 0
  %or.cond151 = select i1 %cmp18, i1 %cmp20, i1 false
  br i1 %or.cond151, label %while.body.while.body_crit_edge, label %while.body.while.cond22.preheader_crit_edge

while.body.while.cond22.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond22.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.cond33.preheader:                           ; preds = %while.body29.while.cond33.preheader_crit_edge, %while.cond22.preheader.while.cond33.preheader_crit_edge
  %d.3.lcssa = phi i32 [ %d.2.lcssa, %while.cond22.preheader.while.cond33.preheader_crit_edge ], [ %div31150, %while.body29.while.cond33.preheader_crit_edge ]
  %n.3.lcssa = phi i32 [ %n.2.lcssa, %while.cond22.preheader.while.cond33.preheader_crit_edge ], [ %div30149, %while.body29.while.cond33.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %n.3.lcssa)
  %cmp34179 = icmp ugt i32 %n.3.lcssa, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %d.3.lcssa)
  %cmp35180 = icmp ugt i32 %d.3.lcssa, 65535
  %or.cond153181 = select i1 %cmp34179, i1 true, i1 %cmp35180
  br i1 %or.cond153181, label %while.cond33.preheader.while.body36_crit_edge, label %while.cond33.preheader.do.body39_crit_edge

while.cond33.preheader.do.body39_crit_edge:       ; preds = %while.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body39

while.cond33.preheader.while.body36_crit_edge:    ; preds = %while.cond33.preheader
  br label %while.body36

while.body29:                                     ; preds = %while.body29.while.body29_crit_edge, %while.cond22.preheader.while.body29_crit_edge
  %n.3176 = phi i32 [ %div30149, %while.body29.while.body29_crit_edge ], [ %n.2.lcssa, %while.cond22.preheader.while.body29_crit_edge ]
  %d.3175 = phi i32 [ %div31150, %while.body29.while.body29_crit_edge ], [ %d.2.lcssa, %while.cond22.preheader.while.body29_crit_edge ]
  %div30149 = lshr i32 %n.3176, 1
  %div31150 = lshr i32 %d.3175, 1
  %14 = and i32 %n.3176, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp24 = icmp eq i32 %14, 0
  %15 = and i32 %d.3175, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp27 = icmp eq i32 %15, 0
  %or.cond152 = select i1 %cmp24, i1 %cmp27, i1 false
  br i1 %or.cond152, label %while.body29.while.body29_crit_edge, label %while.body29.while.cond33.preheader_crit_edge

while.body29.while.cond33.preheader_crit_edge:    ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond33.preheader

while.body29.while.body29_crit_edge:              ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body29

while.body36:                                     ; preds = %while.body36.while.body36_crit_edge, %while.cond33.preheader.while.body36_crit_edge
  %n.4183 = phi i32 [ %shr, %while.body36.while.body36_crit_edge ], [ %n.3.lcssa, %while.cond33.preheader.while.body36_crit_edge ]
  %d.4182 = phi i32 [ %shr37, %while.body36.while.body36_crit_edge ], [ %d.3.lcssa, %while.cond33.preheader.while.body36_crit_edge ]
  %shr = lshr i32 %n.4183, 1
  %shr37 = lshr i32 %d.4182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %n.4183)
  %cmp34 = icmp ugt i32 %n.4183, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %d.4182)
  %cmp35 = icmp ugt i32 %d.4182, 131071
  %or.cond153 = select i1 %cmp34, i1 true, i1 %cmp35
  br i1 %or.cond153, label %while.body36.while.body36_crit_edge, label %while.body36.do.body39_crit_edge

while.body36.do.body39_crit_edge:                 ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body39

while.body36.while.body36_crit_edge:              ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body36

do.body39:                                        ; preds = %while.body36.do.body39_crit_edge, %while.cond33.preheader.do.body39_crit_edge
  %d.4.lcssa = phi i32 [ %d.3.lcssa, %while.cond33.preheader.do.body39_crit_edge ], [ %shr37, %while.body36.do.body39_crit_edge ]
  %n.4.lcssa = phi i32 [ %n.3.lcssa, %while.cond33.preheader.do.body39_crit_edge ], [ %shr, %while.body36.do.body39_crit_edge ]
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp42 = icmp ugt i32 %17, 3
  br i1 %cmp42, label %if.end51, label %do.body39.if.end97_crit_edge

do.body39.if.end97_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

if.end51:                                         ; preds = %do.body39
  %18 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device2, align 4
  %dev48 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev48, align 8
  %name49 = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef %name49, i32 noundef 0) #6
  %22 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp57 = icmp ugt i32 %.pr, 3
  br i1 %cmp57, label %if.end66, label %if.end51.if.end97_crit_edge

if.end51.if.end97_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

if.end66:                                         ; preds = %if.end51
  %23 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device2, align 4
  %dev63 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev63, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.10, ptr noundef %name49, i32 noundef %n.4.lcssa) #6
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr155 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr155)
  %cmp72 = icmp ugt i32 %.pr155, 3
  br i1 %cmp72, label %if.end81, label %if.end66.if.end97_crit_edge

if.end66.if.end97_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

if.end81:                                         ; preds = %if.end66
  %28 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device2, align 4
  %dev78 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev78, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.13, ptr noundef %name49, i32 noundef %d.4.lcssa) #6
  %32 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr157.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr157.pr)
  %cmp87 = icmp ugt i32 %.pr157.pr, 3
  br i1 %cmp87, label %do.end91, label %if.end81.if.end97_crit_edge

if.end81.if.end97_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

do.end91:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device2, align 4
  %dev93 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev93, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.16, ptr noundef %name49, i32 noundef 0) #6
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %if.end81.if.end97_crit_edge, %if.end66.if.end97_crit_edge, %if.end51.if.end97_crit_edge, %do.body39.if.end97_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr104 = getelementptr i8, ptr %38, i32 37376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %n.4.lcssa) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr109 = getelementptr i8, ptr %40, i32 37392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %d.4.lcssa) #3, !srcloc !40
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
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @nv40_timer, !1, !"nv40_timer", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c", i32 75, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c", i32 46, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv40_timer_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv40_timer_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c", i32 65, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nv40_timer_init._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nv40_timer_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c", i32 66, i32 2}
!17 = !{ptr @nv40_timer_init._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @nv40_timer_init._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c", i32 67, i32 2}
!21 = !{ptr @nv40_timer_init._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @nv40_timer_init._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c", i32 68, i32 2}
!25 = !{ptr @nv40_timer_init._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @nv40_timer_init._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 5386836}
!37 = !{i64 2156222890}
!38 = !{i64 2156223284}
!39 = !{i64 2156234949}
!40 = !{i64 5386418}
!41 = !{i64 2156235344}
