; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/falcon/v1.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/falcon/v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.136, %struct.anon.137, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.anon.137 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.140 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.140 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/nouveau/nvkm/falcon/v1.c\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nvkm_falcon_v1_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Falcon mem scrubbing timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_falcon_v1_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_falcon_v1_enable._entry_ptr = internal global ptr @nvkm_falcon_v1_enable._entry, section ".printk_index", align 4
@nvkm_falcon_v1 = internal constant { %struct.nvkm_falcon_func, [56 x i8] } { %struct.nvkm_falcon_func { %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr null, ptr null, i32 0, i32 0, ptr @nvkm_falcon_v1_load_imem, ptr @nvkm_falcon_v1_load_dmem, ptr @nvkm_falcon_v1_read_dmem, i32 0, ptr @nvkm_falcon_v1_bind_context, ptr @nvkm_falcon_v1_wait_for_halt, ptr @nvkm_falcon_v1_clear_interrupt, ptr @nvkm_falcon_v1_set_start_addr, ptr @nvkm_falcon_v1_start, ptr @nvkm_falcon_v1_enable, ptr @nvkm_falcon_v1_disable, ptr null, %struct.anon.1 zeroinitializer, %struct.anon.1 zeroinitializer, [0 x %struct.nvkm_sclass] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.nvkm_falcon_v1_bind_context = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1073741824, i32 1610612736, i32 1879048192], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 210, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 247, i32 8 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 291, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"nvkm_falcon_v1\00", align 1
@___asan_gen_.28 = private constant [44 x i8] c"../drivers/gpu/drm/nouveau/nvkm/falcon/v1.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 314, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [41 x i8] c"switch.table.nvkm_falcon_v1_bind_context\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @nvkm_falcon_v1_enable._entry, ptr @nvkm_falcon_v1_enable._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nvkm_falcon_v1, ptr @switch.table.nvkm_falcon_v1_bind_context], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_v1_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_v1 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_falcon_v1_bind_context to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_load_imem(ptr nocapture noundef readonly %falcon, ptr nocapture noundef readonly %data, i32 noundef %start, i32 noundef %size, i16 noundef zeroext %tag, i8 noundef zeroext %port, i1 noundef zeroext %secure) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %size to i8
  %conv = and i8 %0, 3
  %conv2 = zext i8 %conv to i32
  %sub = sub i32 %size, %conv2
  %cond = select i1 %secure, i32 268435456, i32 0
  %or = or i32 %cond, %start
  %or4 = or i32 %or, 16777216
  %conv5 = zext i8 %port to i32
  %mul = shl nuw nsw i32 %conv5, 4
  %add = add nuw nsw i32 %mul, 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %1 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %7 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %add, %8
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or4) #6, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp104.not = icmp ult i32 %sub, 4
  br i1 %cmp104.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div73 = lshr i32 %sub, 2
  %add11 = add nuw nsw i32 %mul, 392
  %add15 = add nuw nsw i32 %mul, 388
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %if.end.for.body_crit_edge ]
  %tag.addr.0105 = phi i16 [ %tag, %for.body.lr.ph ], [ %tag.addr.1, %if.end.for.body_crit_edge ]
  %and = and i32 %i.0106, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i16 %tag.addr.0105, 1
  %conv12 = zext i16 %tag.addr.0105 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i, align 4
  %device.i75 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %device.i75 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i75, align 4
  %pri.i76 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %pri.i76 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i76, align 4
  %15 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr1.i, align 4
  %add.i78 = add i32 %add11, %16
  %add.ptr.i79 = getelementptr i8, ptr %14, i32 %add.i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %conv12) #6, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %tag.addr.1 = phi i16 [ %inc, %if.then ], [ %tag.addr.0105, %for.body.if.end_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0106
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner.i, align 4
  %device.i81 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %device.i81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i81, align 4
  %pri.i82 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %pri.i82 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i82, align 4
  %25 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr1.i, align 4
  %add.i84 = add i32 %add15, %26
  %add.ptr.i85 = getelementptr i8, ptr %24, i32 %add.i84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %18) #6, !srcloc !23
  %inc16 = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc16, %div73
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %tag.addr.0.lcssa = phi i16 [ %tag, %entry.for.end_crit_edge ], [ %tag.addr.1, %if.end.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %div73, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool17.not = icmp eq i8 %conv, 0
  br i1 %tobool17.not, label %for.end.if.end38_crit_edge, label %if.then18

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then18:                                        ; preds = %for.end
  %arrayidx19 = getelementptr i32, ptr %data, i32 %i.0.lcssa
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx19, align 4
  %and20 = and i32 %i.0.lcssa, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %if.then23, label %if.then18.if.end29_crit_edge

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %add26 = add nuw nsw i32 %mul, 392
  %conv28 = zext i16 %tag.addr.0.lcssa to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owner.i, align 4
  %device.i87 = getelementptr inbounds %struct.nvkm_subdev, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %device.i87 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device.i87, align 4
  %pri.i88 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %pri.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri.i88, align 4
  %35 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr1.i, align 4
  %add.i90 = add i32 %add26, %36
  %add.ptr.i91 = getelementptr i8, ptr %34, i32 %add.i90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %conv28) #6, !srcloc !23
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.then18.if.end29_crit_edge
  %add32 = add nuw nsw i32 %mul, 388
  %mul34 = shl nuw nsw i32 %conv2, 3
  %notmask = shl nsw i32 -1, %mul34
  %sub35 = xor i32 %notmask, -1
  %and36 = and i32 %28, %sub35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %owner.i, align 4
  %device.i93 = getelementptr inbounds %struct.nvkm_subdev, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %device.i93 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device.i93, align 4
  %pri.i94 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %pri.i94 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri.i94, align 4
  %43 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr1.i, align 4
  %add.i96 = add i32 %add32, %44
  %add.ptr.i97 = getelementptr i8, ptr %42, i32 %add.i96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %and36) #6, !srcloc !23
  %inc37 = add nuw nsw i32 %i.0.lcssa, 1
  br label %if.end38

if.end38:                                         ; preds = %if.end29, %for.end.if.end38_crit_edge
  %i.1 = phi i32 [ %inc37, %if.end29 ], [ %i.0.lcssa, %for.end.if.end38_crit_edge ]
  %and40108 = and i32 %i.1, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40108)
  %tobool41.not109 = icmp eq i32 %and40108, 0
  br i1 %tobool41.not109, label %if.end38.for.end48_crit_edge, label %for.body42.lr.ph

if.end38.for.end48_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48

for.body42.lr.ph:                                 ; preds = %if.end38
  %add45 = add nuw nsw i32 %mul, 388
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.body42.lr.ph
  %i.2110 = phi i32 [ %i.1, %for.body42.lr.ph ], [ %inc47, %for.body42.for.body42_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %owner.i, align 4
  %device.i99 = getelementptr inbounds %struct.nvkm_subdev, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %device.i99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i99, align 4
  %pri.i100 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %pri.i100 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri.i100, align 4
  %51 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr1.i, align 4
  %add.i102 = add i32 %add45, %52
  %add.ptr.i103 = getelementptr i8, ptr %50, i32 %add.i102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 0) #6, !srcloc !23
  %inc47 = add nuw nsw i32 %i.2110, 1
  %and40 = and i32 %inc47, 63
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %for.body42.for.end48_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42

for.body42.for.end48_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48

for.end48:                                        ; preds = %for.body42.for.end48_crit_edge, %if.end38.for.end48_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_load_dmem(ptr nocapture noundef readonly %falcon, ptr nocapture noundef readonly %data, i32 noundef %start, i32 noundef %size, i8 noundef zeroext %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %2 = trunc i32 %size to i8
  %conv = and i8 %2, 3
  %emem_addr = getelementptr inbounds %struct.nvkm_falcon_func, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %emem_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %emem_addr, align 4
  %5 = add i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %start)
  %.not = icmp ult i32 %5, %start
  br i1 %.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub = sub i32 %start, %4
  %conv2.i = zext i8 %conv to i32
  %sub.i = sub i32 %size, %conv2.i
  %conv3.i = zext i8 %port to i32
  %mul.i = shl nuw nsw i32 %conv3.i, 3
  %add.i = add nuw nsw i32 %mul.i, 2752
  %or.i = or i32 %sub, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %owner.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %6 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i.i, align 4
  %addr1.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %12 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr1.i.i, align 4
  %add.i.i = add i32 %add.i, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #6, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp40.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp40.not.i, label %if.then.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %div27.i = lshr i32 %sub.i, 2
  %add7.i = add nuw nsw i32 %mul.i, 2756
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %data, i32 %i.041.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner.i.i, align 4
  %device.i29.i = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %device.i29.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i29.i, align 4
  %pri.i30.i = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %pri.i30.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i30.i, align 4
  %22 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr1.i.i, align 4
  %add.i32.i = add i32 %add7.i, %23
  %add.ptr.i33.i = getelementptr i8, ptr %21, i32 %add.i32.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 %15) #6, !srcloc !23
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div27.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then.for.end.i_crit_edge ], [ %div27.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not.i = icmp eq i8 %conv, 0
  br i1 %tobool.not.i, label %for.end.i.cleanup_crit_edge, label %if.then.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8.i = getelementptr i32, ptr %data, i32 %i.0.lcssa.i
  %24 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx8.i, align 4
  %add11.i = add nuw nsw i32 %mul.i, 2756
  %mul13.i = shl nuw nsw i32 %conv2.i, 3
  %notmask.i = shl nsw i32 -1, %mul13.i
  %sub14.i = xor i32 %notmask.i, -1
  %and.i = and i32 %25, %sub14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %owner.i.i, align 4
  %device.i35.i = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %device.i35.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i35.i, align 4
  %pri.i36.i = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %pri.i36.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i36.i, align 4
  %32 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr1.i.i, align 4
  %add.i38.i = add i32 %add11.i, %33
  %add.ptr.i39.i = getelementptr i8, ptr %31, i32 %add.i38.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %and.i) #6, !srcloc !23
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv6 = zext i8 %conv to i32
  %sub7 = sub i32 %size, %conv6
  %conv8 = zext i8 %port to i32
  %mul = shl nuw nsw i32 %conv8, 3
  %add = add nuw nsw i32 %mul, 448
  %or = or i32 %start, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %34 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %40 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr1.i, align 4
  %add.i48 = add i32 %add, %41
  %add.ptr.i = getelementptr i8, ptr %39, i32 %add.i48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #6, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub7)
  %cmp961.not = icmp ult i32 %sub7, 4
  br i1 %cmp961.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %div47 = lshr i32 %sub7, 2
  %add13 = add nuw nsw i32 %mul, 452
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.062
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %owner.i, align 4
  %device.i50 = getelementptr inbounds %struct.nvkm_subdev, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %device.i50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device.i50, align 4
  %pri.i51 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %pri.i51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i51, align 4
  %50 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr1.i, align 4
  %add.i53 = add i32 %add13, %51
  %add.ptr.i54 = getelementptr i8, ptr %49, i32 %add.i53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %43) #6, !srcloc !23
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %div47
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %div47, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool14.not = icmp eq i8 %conv, 0
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %if.then15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16 = getelementptr i32, ptr %data, i32 %i.0.lcssa
  %52 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx16, align 4
  %add19 = add nuw nsw i32 %mul, 452
  %mul21 = shl nuw nsw i32 %conv6, 3
  %notmask = shl nsw i32 -1, %mul21
  %sub22 = xor i32 %notmask, -1
  %and = and i32 %53, %sub22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %owner.i, align 4
  %device.i56 = getelementptr inbounds %struct.nvkm_subdev, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %device.i56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device.i56, align 4
  %pri.i57 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %pri.i57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri.i57, align 4
  %60 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %addr1.i, align 4
  %add.i59 = add i32 %add19, %61
  %add.ptr.i60 = getelementptr i8, ptr %59, i32 %add.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %and) #6, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %for.end.cleanup_crit_edge, %if.then.i, %for.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_read_dmem(ptr nocapture noundef readonly %falcon, i32 noundef %start, i32 noundef %size, i8 noundef zeroext %port, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %2 = trunc i32 %size to i8
  %conv = and i8 %2, 3
  %emem_addr = getelementptr inbounds %struct.nvkm_falcon_func, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %emem_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %emem_addr, align 4
  %5 = add i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %start)
  %.not = icmp ult i32 %5, %start
  br i1 %.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub = sub i32 %start, %4
  %conv2.i = zext i8 %conv to i32
  %sub.i = sub i32 %size, %conv2.i
  %conv3.i = zext i8 %port to i32
  %mul.i = shl nuw nsw i32 %conv3.i, 3
  %add.i = add nuw nsw i32 %mul.i, 2752
  %or.i = or i32 %sub, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %owner.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %6 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i.i, align 4
  %addr1.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %12 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr1.i.i, align 4
  %add.i.i = add i32 %add.i, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #6, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp53.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp53.not.i, label %if.then.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %div40.i = lshr i32 %sub.i, 2
  %add7.i = add nuw nsw i32 %mul.i, 2756
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner.i.i, align 4
  %device.i42.i = getelementptr inbounds %struct.nvkm_subdev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %device.i42.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i42.i, align 4
  %pri.i43.i = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %pri.i43.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i43.i, align 4
  %20 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr1.i.i, align 4
  %add.i45.i = add i32 %add7.i, %21
  %add.ptr.i46.i = getelementptr i8, ptr %19, i32 %add.i45.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  %arrayidx.i = getelementptr i32, ptr %data, i32 %i.054.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div40.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not.i = icmp eq i8 %conv, 0
  br i1 %tobool.not.i, label %for.end.i.cleanup_crit_edge, label %if.then.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %for.end.i
  %add10.i = add nuw nsw i32 %mul.i, 2756
  %24 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %owner.i.i, align 4
  %device.i48.i = getelementptr inbounds %struct.nvkm_subdev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %device.i48.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i48.i, align 4
  %pri.i49.i = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %pri.i49.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri.i49.i, align 4
  %30 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr1.i.i, align 4
  %add.i51.i = add i32 %add10.i, %31
  %add.ptr.i52.i = getelementptr i8, ptr %29, i32 %add.i51.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %size)
  %cmp1555.not.i = icmp ugt i32 %conv2.i, %size
  br i1 %cmp1555.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.for.body17.i_crit_edge

if.then.i.for.body17.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body17.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %if.then.i.for.body17.i_crit_edge
  %extra.057.i = phi i32 [ %shr.i, %for.body17.i.for.body17.i_crit_edge ], [ %32, %if.then.i.for.body17.i_crit_edge ]
  %i.156.i = phi i32 [ %inc21.i, %for.body17.i.for.body17.i_crit_edge ], [ %sub.i, %if.then.i.for.body17.i_crit_edge ]
  %conv18.i = trunc i32 %extra.057.i to i8
  %arrayidx19.i = getelementptr i8, ptr %data, i32 %i.156.i
  %33 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv18.i, ptr %arrayidx19.i, align 1
  %shr.i = lshr i32 %extra.057.i, 8
  %inc21.i = add nuw i32 %i.156.i, 1
  %cmp15.i = icmp ult i32 %inc21.i, %size
  br i1 %cmp15.i, label %for.body17.i.for.body17.i_crit_edge, label %for.body17.i.cleanup_crit_edge

for.body17.i.cleanup_crit_edge:                   ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17.i

if.end:                                           ; preds = %entry
  %conv6 = zext i8 %conv to i32
  %sub7 = sub i32 %size, %conv6
  %conv8 = zext i8 %port to i32
  %mul = shl nuw nsw i32 %conv8, 3
  %add = add nuw nsw i32 %mul, 448
  %or = or i32 %start, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %34 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %40 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr1.i, align 4
  %add.i61 = add i32 %add, %41
  %add.ptr.i = getelementptr i8, ptr %39, i32 %add.i61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #6, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub7)
  %cmp975.not = icmp ult i32 %sub7, 4
  br i1 %cmp975.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %div60 = lshr i32 %sub7, 2
  %add13 = add nuw nsw i32 %mul, 452
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %42 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %owner.i, align 4
  %device.i63 = getelementptr inbounds %struct.nvkm_subdev, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %device.i63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device.i63, align 4
  %pri.i64 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %pri.i64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri.i64, align 4
  %48 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr1.i, align 4
  %add.i66 = add i32 %add13, %49
  %add.ptr.i67 = getelementptr i8, ptr %47, i32 %add.i66
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  %arrayidx = getelementptr i32, ptr %data, i32 %i.076
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %div60
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool14.not = icmp eq i8 %conv, 0
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %if.then15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %for.end
  %add18 = add nuw nsw i32 %mul, 452
  %52 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %owner.i, align 4
  %device.i69 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %device.i69 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device.i69, align 4
  %pri.i70 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %pri.i70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i70, align 4
  %58 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr1.i, align 4
  %add.i72 = add i32 %add18, %59
  %add.ptr.i73 = getelementptr i8, ptr %57, i32 %add.i72
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %size)
  %cmp2377.not = icmp ugt i32 %conv6, %size
  br i1 %cmp2377.not, label %if.then15.cleanup_crit_edge, label %if.then15.for.body25_crit_edge

if.then15.for.body25_crit_edge:                   ; preds = %if.then15
  br label %for.body25

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %if.then15.for.body25_crit_edge
  %extra.079 = phi i32 [ %shr, %for.body25.for.body25_crit_edge ], [ %60, %if.then15.for.body25_crit_edge ]
  %i.178 = phi i32 [ %inc29, %for.body25.for.body25_crit_edge ], [ %sub7, %if.then15.for.body25_crit_edge ]
  %conv26 = trunc i32 %extra.079 to i8
  %arrayidx27 = getelementptr i8, ptr %data, i32 %i.178
  %61 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv26, ptr %arrayidx27, align 1
  %shr = lshr i32 %extra.079, 8
  %inc29 = add nuw i32 %i.178, 1
  %cmp23 = icmp ult i32 %inc29, %size
  br i1 %cmp23, label %for.body25.for.body25_crit_edge, label %for.body25.cleanup_crit_edge

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

cleanup:                                          ; preds = %for.body25.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body17.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_bind_context(ptr noundef readonly %falcon, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %7, 268
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !23
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %falcon, align 4
  %fbif1 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %fbif1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fbif1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %owner.i53 = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %12 = ptrtoint ptr %owner.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner.i53, align 4
  %device.i54 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %device.i54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i54, align 4
  %pri.i55 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %pri.i55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri.i55, align 4
  %addr1.i56 = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %18 = ptrtoint ptr %addr1.i56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr1.i56, align 4
  %add.i57 = add i32 %19, 268
  %add.ptr.i58 = getelementptr i8, ptr %17, i32 %add.i57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %owner.i53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %owner.i53, align 4
  %device.i60 = getelementptr inbounds %struct.nvkm_subdev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %device.i60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device.i60, align 4
  %pri.i61 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %pri.i61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri.i61, align 4
  %26 = ptrtoint ptr %addr1.i56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr1.i56, align 4
  %add.i63 = add i32 %27, %11
  %add.ptr.i64 = getelementptr i8, ptr %25, i32 %add.i63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 4) #6, !srcloc !23
  %add2 = add i32 %11, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %owner.i53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %owner.i53, align 4
  %device.i66 = getelementptr inbounds %struct.nvkm_subdev, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %device.i66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device.i66, align 4
  %pri.i67 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %pri.i67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri.i67, align 4
  %34 = ptrtoint ptr %addr1.i56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr1.i56, align 4
  %add.i69 = add i32 %add2, %35
  %add.ptr.i70 = getelementptr i8, ptr %33, i32 %add.i69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 0) #6, !srcloc !23
  %add3 = add i32 %11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %owner.i53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %owner.i53, align 4
  %device.i72 = getelementptr inbounds %struct.nvkm_subdev, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %device.i72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device.i72, align 4
  %pri.i73 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %pri.i73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri.i73, align 4
  %42 = ptrtoint ptr %addr1.i56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr1.i56, align 4
  %add.i75 = add i32 %add3, %43
  %add.ptr.i76 = getelementptr i8, ptr %41, i32 %add.i75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 4) #6, !srcloc !23
  %add4 = add i32 %11, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %owner.i53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %owner.i53, align 4
  %device.i78 = getelementptr inbounds %struct.nvkm_subdev, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %device.i78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device.i78, align 4
  %pri.i79 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %pri.i79 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i79, align 4
  %50 = ptrtoint ptr %addr1.i56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr1.i56, align 4
  %add.i81 = add i32 %add4, %51
  %add.ptr.i82 = getelementptr i8, ptr %49, i32 %add.i81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 5) #6, !srcloc !23
  %add5 = add i32 %11, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %owner.i53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %owner.i53, align 4
  %device.i84 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %device.i84 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device.i84, align 4
  %pri.i85 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %pri.i85 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i85, align 4
  %58 = ptrtoint ptr %addr1.i56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr1.i56, align 4
  %add.i87 = add i32 %add5, %59
  %add.ptr.i88 = getelementptr i8, ptr %57, i32 %add.i87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 6) #6, !srcloc !23
  %60 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx, align 4
  %target = getelementptr inbounds %struct.nvkm_memory_func, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %target, align 4
  %call = tail call i32 %63(ptr noundef nonnull %ctx) #6
  %switch.tableidx = add i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %64 = icmp ult i32 %switch.tableidx, 3
  br i1 %64, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.nvkm_falcon_v1_bind_context, i32 0, i32 %switch.tableidx
  %65 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load = load i32, ptr %switch.gep, align 4
  %66 = ptrtoint ptr %owner.i53 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %owner.i53, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_subdev, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device1.i, align 4
  %70 = ptrtoint ptr %addr1.i56 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr1.i56, align 4
  %add.i90 = add i32 %71, 72
  %pri.i91 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 11
  %72 = ptrtoint ptr %pri.i91 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %73, i32 %add.i90
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %or.i = or i32 %74, 1
  %75 = ptrtoint ptr %pri.i91 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri.i91, align 4
  %add.ptr4.i = getelementptr i8, ptr %76, i32 %add.i90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %or.i) #6, !srcloc !23
  %77 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctx, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %addr, align 4
  %call27 = tail call i64 %80(ptr noundef nonnull %ctx) #6
  %shr = lshr i64 %call27, 12
  %81 = trunc i64 %shr to i32
  %82 = and i32 %81, 268435455
  %conv29 = or i32 %switch.load, %82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %owner.i53 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %owner.i53, align 4
  %device.i94 = getelementptr inbounds %struct.nvkm_subdev, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %device.i94 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device.i94, align 4
  %pri.i95 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %pri.i95 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri.i95, align 4
  %89 = ptrtoint ptr %addr1.i56 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %addr1.i56, align 4
  %add.i97 = add i32 %90, 84
  %add.ptr.i98 = getelementptr i8, ptr %88, i32 %add.i97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %conv29) #6, !srcloc !23
  %91 = ptrtoint ptr %owner.i53 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %owner.i53, align 4
  %device1.i100 = getelementptr inbounds %struct.nvkm_subdev, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %device1.i100 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device1.i100, align 4
  %95 = ptrtoint ptr %addr1.i56 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %addr1.i56, align 4
  %add.i102 = add i32 %96, 144
  %pri.i103 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 11
  %97 = ptrtoint ptr %pri.i103 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pri.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %98, i32 %add.i102
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %or.i106 = or i32 %99, 65536
  %100 = ptrtoint ptr %pri.i103 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri.i103, align 4
  %add.ptr4.i107 = getelementptr i8, ptr %101, i32 %add.i102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i107, i32 %or.i106) #6, !srcloc !23
  %102 = ptrtoint ptr %owner.i53 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %owner.i53, align 4
  %device1.i109 = getelementptr inbounds %struct.nvkm_subdev, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %device1.i109 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device1.i109, align 4
  %106 = ptrtoint ptr %addr1.i56 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addr1.i56, align 4
  %add.i111 = add i32 %107, 164
  %pri.i112 = getelementptr inbounds %struct.nvkm_device, ptr %105, i32 0, i32 11
  %108 = ptrtoint ptr %pri.i112 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pri.i112, align 4
  %add.ptr.i113 = getelementptr i8, ptr %109, i32 %add.i111
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %or.i115 = or i32 %110, 8
  %111 = ptrtoint ptr %pri.i112 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pri.i112, align 4
  %add.ptr4.i116 = getelementptr i8, ptr %112, i32 %add.i111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i116, i32 %or.i115) #6, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_set_start_addr(ptr nocapture noundef readonly %falcon, i32 noundef %start_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %7, 260
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %start_addr) #6, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_start(ptr nocapture noundef readonly %falcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %7, 256
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i, align 4
  %device.i10 = getelementptr inbounds %struct.nvkm_subdev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %device.i10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i10, align 4
  %pri.i11 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %pri.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i11, align 4
  %15 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr1.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.i7 = add i32 %16, 304
  %add.ptr.i8 = getelementptr i8, ptr %14, i32 %add.i7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 2) #6, !srcloc !23
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.i13 = add i32 %16, 256
  %add.ptr.i14 = getelementptr i8, ptr %14, i32 %add.i13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 2) #6, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_v1_wait_for_halt(ptr nocapture noundef readonly %falcon, i32 noundef %ms) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %4 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  %mul2 = mul i32 %ms, 1000000
  %conv = zext i32 %mul2 to i64
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef %conv, ptr noundef nonnull %_wait) #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %addr = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %add59 = add i32 %8, 256
  %add.ptr60 = getelementptr i8, ptr %6, i32 %add59
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #6, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %and61 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp.not62 = icmp eq i32 %and61, 0
  br i1 %cmp.not62, label %entry.do.cond_crit_edge, label %entry.if.end39_crit_edge

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

entry.do.cond_crit_edge:                          ; preds = %entry
  br label %do.cond

do.body:                                          ; preds = %do.cond
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %add = add i32 %13, 256
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %and = and i32 %14, 16
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.do.cond_crit_edge, label %if.end39.loopexit

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

do.cond:                                          ; preds = %do.body.do.cond_crit_edge, %entry.do.cond_crit_edge
  %call4 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call4)
  %cmp5 = icmp sgt i64 %call4, -1
  br i1 %cmp5, label %do.body, label %do.end18

do.end18:                                         ; preds = %do.cond
  %15 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_wait, align 8
  %device19 = getelementptr inbounds %struct.nvkm_timer, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device19, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %call20 = call ptr @dev_driver_string(ptr noundef %20) #6
  %21 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_wait, align 8
  %device23 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %device23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device23, align 4
  %dev24 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev24, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end18.dev_name.exit_crit_edge

do.end18.dev_name.exit_crit_edge:                 ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end18.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %do.end18.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call20, ptr noundef %retval.0.i) #6
  %extract.t = trunc i64 %call4 to i32
  br label %if.end39

if.end39.loopexit:                                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t57 = trunc i64 %call4 to i32
  br label %if.end39

if.end39:                                         ; preds = %if.end39.loopexit, %dev_name.exit, %entry.if.end39_crit_edge
  %_taken.154.off0 = phi i32 [ %extract.t, %dev_name.exit ], [ 0, %entry.if.end39_crit_edge ], [ %extract.t57, %if.end39.loopexit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  %31 = call i32 @llvm.smin.i32(i32 %_taken.154.off0, i32 0)
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_v1_clear_interrupt(ptr nocapture noundef readonly %falcon, i32 noundef %mask) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %addr2.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %4 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr2.i, align 4
  %add.i = add i32 %5, 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %or.i = or i32 %8, %mask
  %9 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %or.i) #6, !srcloc !23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %11 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 10000000, ptr noundef nonnull %_wait) #6
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %14 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr2.i, align 4
  %add57 = add i32 %15, 8
  %add.ptr58 = getelementptr i8, ptr %13, i32 %add57
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #6, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %and59 = and i32 %16, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60 = icmp eq i32 %and59, 0
  br i1 %cmp60, label %entry.if.end35_crit_edge, label %entry.do.cond_crit_edge

entry.do.cond_crit_edge:                          ; preds = %entry
  br label %do.cond

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.body:                                          ; preds = %do.cond
  %17 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i, align 4
  %19 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr2.i, align 4
  %add = add i32 %20, 8
  %add.ptr = getelementptr i8, ptr %18, i32 %add
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %and = and i32 %21, %mask
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end35.loopexit, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

do.cond:                                          ; preds = %do.body.do.cond_crit_edge, %entry.do.cond_crit_edge
  %call3 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call3)
  %cmp4 = icmp sgt i64 %call3, -1
  br i1 %cmp4, label %do.body, label %do.end14

do.end14:                                         ; preds = %do.cond
  %22 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_wait, align 8
  %device15 = getelementptr inbounds %struct.nvkm_timer, ptr %23, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %device15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device15, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %call16 = call ptr @dev_driver_string(ptr noundef %27) #6
  %28 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_wait, align 8
  %device19 = getelementptr inbounds %struct.nvkm_timer, ptr %29, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device19, align 4
  %dev20 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev20, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end14.dev_name.exit_crit_edge

do.end14.dev_name.exit_crit_edge:                 ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end14.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %37, %if.end.i ], [ %35, %do.end14.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16, ptr noundef %retval.0.i) #6
  %extract.t = trunc i64 %call3 to i32
  br label %if.end35

if.end35.loopexit:                                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t55 = trunc i64 %call3 to i32
  br label %if.end35

if.end35:                                         ; preds = %if.end35.loopexit, %dev_name.exit, %entry.if.end35_crit_edge
  %_taken.152.off0 = phi i32 [ %extract.t, %dev_name.exit ], [ 0, %entry.if.end35_crit_edge ], [ %extract.t55, %if.end35.loopexit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  %38 = call i32 @llvm.smin.i32(i32 %_taken.152.off0, i32 0)
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_v1_enable(ptr nocapture noundef readonly %falcon) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %4 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 10000000, ptr noundef nonnull %_wait) #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %addr = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %add79 = add i32 %8, 268
  %add.ptr80 = getelementptr i8, ptr %6, i32 %add79
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #6, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  %and81 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %cmp82 = icmp eq i32 %and81, 0
  br i1 %cmp82, label %if.end34.thread, label %entry.do.cond_crit_edge

entry.do.cond_crit_edge:                          ; preds = %entry
  br label %do.cond

if.end34.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  br label %if.end51

do.body:                                          ; preds = %do.cond
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %add = add i32 %13, 268
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  %and = and i32 %14, 6
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body.if.end34_crit_edge, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

do.body.if.end34_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.cond:                                          ; preds = %do.body.do.cond_crit_edge, %entry.do.cond_crit_edge
  %call2 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call2)
  %cmp3 = icmp sgt i64 %call2, -1
  br i1 %cmp3, label %do.body, label %do.end13

do.end13:                                         ; preds = %do.cond
  %15 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_wait, align 8
  %device14 = getelementptr inbounds %struct.nvkm_timer, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device14, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %call15 = call ptr @dev_driver_string(ptr noundef %20) #6
  %21 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_wait, align 8
  %device18 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device18, align 4
  %dev19 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev19, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end13.dev_name.exit_crit_edge

do.end13.dev_name.exit_crit_edge:                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %do.end13.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call15, ptr noundef %retval.0.i) #6
  br label %if.end34

if.end34:                                         ; preds = %dev_name.exit, %do.body.if.end34_crit_edge
  %extract.t74 = trunc i64 %call2 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t74)
  %cmp36 = icmp slt i32 %extract.t74, 0
  br i1 %cmp36, label %do.body39, label %if.end34.if.end51_crit_edge

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.body39:                                        ; preds = %if.end34
  %user = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 7
  %31 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user, align 4
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp40.not = icmp eq i32 %34, 0
  br i1 %cmp40.not, label %do.body39.cleanup_crit_edge, label %do.end45

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %device46 = getelementptr inbounds %struct.nvkm_subdev, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %device46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device46, align 4
  %dev47 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev47, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef %name) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end34.if.end51_crit_edge, %if.end34.thread
  %call52 = call fastcc i32 @falcon_v1_wait_idle(ptr noundef %falcon)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %owner, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri.i, align 4
  %45 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr, align 4
  %add.i = add i32 %46, 16
  %add.ptr.i = getelementptr i8, ptr %44, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 255) #6, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end51.cleanup_crit_edge, %do.end45, %do.body39.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ %extract.t74, %do.end45 ], [ %extract.t74, %do.body39.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @falcon_v1_wait_idle(ptr nocapture noundef readonly %falcon) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %4 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 10000000, ptr noundef nonnull %_wait) #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %addr = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %add53 = add i32 %8, 76
  %add.ptr54 = getelementptr i8, ptr %6, i32 %add53
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #6, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %and55 = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %cmp56 = icmp eq i32 %and55, 0
  br i1 %cmp56, label %entry.if.end34_crit_edge, label %entry.do.cond_crit_edge

entry.do.cond_crit_edge:                          ; preds = %entry
  br label %do.cond

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.body:                                          ; preds = %do.cond
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %add = add i32 %13, 76
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %and = and i32 %14, 65535
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end34.loopexit, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

do.cond:                                          ; preds = %do.body.do.cond_crit_edge, %entry.do.cond_crit_edge
  %call2 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call2)
  %cmp3 = icmp sgt i64 %call2, -1
  br i1 %cmp3, label %do.body, label %do.end13

do.end13:                                         ; preds = %do.cond
  %15 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_wait, align 8
  %device14 = getelementptr inbounds %struct.nvkm_timer, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device14, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %call15 = call ptr @dev_driver_string(ptr noundef %20) #6
  %21 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_wait, align 8
  %device18 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device18, align 4
  %dev19 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev19, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end13.dev_name.exit_crit_edge

do.end13.dev_name.exit_crit_edge:                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %do.end13.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call15, ptr noundef %retval.0.i) #6
  %extract.t = trunc i64 %call2 to i32
  br label %if.end34

if.end34.loopexit:                                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t51 = trunc i64 %call2 to i32
  br label %if.end34

if.end34:                                         ; preds = %if.end34.loopexit, %dev_name.exit, %entry.if.end34_crit_edge
  %_taken.148.off0 = phi i32 [ %extract.t, %dev_name.exit ], [ 0, %entry.if.end34_crit_edge ], [ %extract.t51, %if.end34.loopexit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  %31 = call i32 @llvm.smin.i32(i32 %_taken.148.off0, i32 0)
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_disable(ptr nocapture noundef readonly %falcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %7, 20
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 255) #6, !srcloc !23
  %call = tail call fastcc i32 @falcon_v1_wait_idle(ptr noundef %falcon)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_v1_new(ptr noundef %owner, ptr noundef %name, i32 noundef %addr, ptr nocapture noundef writeonly %pfalcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 452) #10
  %1 = ptrtoint ptr %pfalcon to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pfalcon, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @nvkm_falcon_ctor(ptr noundef nonnull @nvkm_falcon_v1, ptr noundef %owner, ptr noundef %name, i32 noundef %addr, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/v1.c", i32 210, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/v1.c", i32 247, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/v1.c", i32 291, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nvkm_falcon_v1_enable._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @nvkm_falcon_v1_enable._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @nvkm_falcon_v1, !12, !"nvkm_falcon_v1", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/v1.c", i32 314, i32 1}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2156233844}
!23 = !{i64 5397075}
!24 = !{i64 5397493}
!25 = !{i64 2156233293}
!26 = !{i64 2156234846}
!27 = !{i64 2156235222}
!28 = !{i64 2156254993}
!29 = !{i64 2156258150}
!30 = !{i64 2156264467}
!31 = !{i64 2156261312}
