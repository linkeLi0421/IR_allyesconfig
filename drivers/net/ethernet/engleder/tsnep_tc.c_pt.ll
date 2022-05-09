; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/engleder/tsnep_tc.c_pt.bc'
source_filename = "../drivers/net/ethernet/engleder/tsnep_tc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_taprio_qopt_offload = type { i8, i64, i64, i64, i32, [0 x %struct.tc_taprio_sched_entry] }
%struct.tc_taprio_sched_entry = type { i8, i32, i32 }
%struct.tsnep_adapter = type { ptr, [6 x i8], ptr, i8, i32, ptr, i32, ptr, ptr, ptr, i32, i8, %struct.mutex, i8, [2 x %struct.tsnep_gcl], i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.spinlock, i32, [8 x %struct.tsnep_tx], i32, [8 x %struct.tsnep_rx], i32, [8 x %struct.tsnep_queue] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tsnep_gcl = type { ptr, i64, i64, i64, [256 x %struct.tsnep_gcl_operation], i32, i64, i64, i8 }
%struct.tsnep_gcl_operation = type { i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.tsnep_tx = type { ptr, ptr, [16 x ptr], [16 x i32], %struct.spinlock, [256 x %struct.tsnep_tx_entry], i32, i32, i32, i32, i32, i32, i32 }
%struct.tsnep_tx_entry = type { ptr, ptr, i32, i8, i32, ptr, i32, i32 }
%struct.tsnep_rx = type { ptr, ptr, [16 x ptr], [16 x i32], [256 x %struct.tsnep_rx_entry], i32, i32, i32, i32, i32, i32, i32 }
%struct.tsnep_rx_entry = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.tsnep_queue = type { ptr, ptr, ptr, %struct.napi_struct, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/engleder/tsnep_tc.c\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [44 x i8] c"../drivers/net/ethernet/engleder/tsnep_tc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 304, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tsnep_tc_setup(ptr noundef %netdev, i32 noundef %type, ptr nocapture noundef readonly %type_data) local_unnamed_addr #0 align 64 {
entry:
  %system_time.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %cond = icmp eq i32 %type, 13
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %gate_control.i = getelementptr i8, ptr %netdev, i32 2352
  %0 = ptrtoint ptr %gate_control.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gate_control.i, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %2 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type_data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i = icmp eq i8 %3, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %gate_control_lock.i = getelementptr i8, ptr %netdev, i32 2356
  tail call void @mutex_lock_nested(ptr noundef %gate_control_lock.i, i32 noundef 0) #4
  %gate_control_active.i = getelementptr i8, ptr %netdev, i32 2448
  %4 = ptrtoint ptr %gate_control_active.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gate_control_active.i, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not.i = icmp eq i8 %5, 0
  br i1 %tobool4.not.i, label %if.then3.i.if.end7.i_crit_edge, label %if.then5.i

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr.i = getelementptr i8, ptr %netdev, i32 2344
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %7, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2, i8 8) #4, !srcloc !13
  %8 = ptrtoint ptr %gate_control_active.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %gate_control_active.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then3.i.if.end7.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %gate_control_lock.i) #4
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %cycle_time1.i.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 2
  %9 = ptrtoint ptr %cycle_time1.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %cycle_time1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i.i, label %if.end9.i.cleanup_crit_edge, label %if.end.i.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end9.i
  %num_entries.i.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 4
  %11 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_entries.i.i, align 8
  %13 = add i32 %12, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %13)
  %14 = icmp ult i32 %13, -255
  br i1 %14, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i.i:                                     ; preds = %if.end20.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cycle_time.055.i.i = phi i64 [ %add.i.i, %if.end20.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %i.054.i.i = phi i32 [ %inc.i.i, %if.end20.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.054.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp6.not.i.i = icmp eq i8 %16, 0
  br i1 %cmp6.not.i.i, label %if.end9.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.i.i:                                      ; preds = %for.body.i.i
  %gate_mask.i.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.054.i.i, i32 1
  %17 = ptrtoint ptr %gate_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gate_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %18)
  %tobool12.not.i.i = icmp ult i32 %18, 256
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end9.i.i.cleanup_crit_edge

if.end9.i.i.cleanup_crit_edge:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %interval.i.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.054.i.i, i32 2
  %19 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %interval.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp17.i.i = icmp ult i32 %20, 32
  br i1 %cmp17.i.i, label %if.end14.i.i.cleanup_crit_edge, label %if.end20.i.i

if.end14.i.i.cleanup_crit_edge:                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %conv24.i.i = zext i32 %20 to i64
  %add.i.i = add i64 %cycle_time.055.i.i, %conv24.i.i
  %inc.i.i = add nuw nsw i32 %i.054.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %12
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end20.i.i.for.body.i.i_crit_edge

if.end20.i.i.for.body.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %add.i.i)
  %cmp26.not.i.i = icmp eq i64 %10, %add.i.i
  br i1 %cmp26.not.i.i, label %if.end29.i.i, label %for.end.i.i.cleanup_crit_edge

for.end.i.i.cleanup_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29.i.i:                                     ; preds = %for.end.i.i
  %cycle_time_extension.i.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 3
  %21 = ptrtoint ptr %cycle_time_extension.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cycle_time_extension.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %10)
  %cmp31.not.i.i = icmp ult i64 %22, %10
  br i1 %cmp31.not.i.i, label %if.end12.i, label %if.end29.i.i.cleanup_crit_edge

if.end29.i.i.cleanup_crit_edge:                   ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12.i:                                       ; preds = %if.end29.i.i
  %gate_control_lock13.i = getelementptr i8, ptr %netdev, i32 2356
  tail call void @mutex_lock_nested(ptr noundef %gate_control_lock13.i, i32 noundef 0) #4
  %next_gcl.i = getelementptr i8, ptr %netdev, i32 6680
  %23 = ptrtoint ptr %next_gcl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_gcl.i, align 8
  %arrayidx.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24
  %base_time.i.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 1
  %25 = ptrtoint ptr %base_time.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %base_time.i.i, align 8
  %base_time1.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 1
  %27 = ptrtoint ptr %base_time1.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %base_time1.i.i, align 8
  %28 = ptrtoint ptr %cycle_time1.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %cycle_time1.i.i, align 8
  %cycle_time2.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 2
  %30 = ptrtoint ptr %cycle_time2.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %cycle_time2.i.i, align 8
  %31 = ptrtoint ptr %cycle_time_extension.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %cycle_time_extension.i.i, align 8
  %cycle_time_extension3.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 3
  %33 = ptrtoint ptr %cycle_time_extension3.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %cycle_time_extension3.i.i, align 8
  %34 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_entries.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp83.not.i.i = icmp eq i32 %35, 0
  br i1 %cmp83.not.i.i, label %if.end12.i.for.end.i104.i_crit_edge, label %if.end12.i.for.body.i103.i_crit_edge

if.end12.i.for.body.i103.i_crit_edge:             ; preds = %if.end12.i
  br label %for.body.i103.i

if.end12.i.for.end.i104.i_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i104.i

for.body.i103.i:                                  ; preds = %for.body.i103.i.for.body.i103.i_crit_edge, %if.end12.i.for.body.i103.i_crit_edge
  %36 = phi i32 [ %49, %for.body.i103.i.for.body.i103.i_crit_edge ], [ %35, %if.end12.i.for.body.i103.i_crit_edge ]
  %i.084.i.i = phi i32 [ %inc.i102.i, %for.body.i103.i.for.body.i103.i_crit_edge ], [ 0, %if.end12.i.for.body.i103.i_crit_edge ]
  %gate_mask.i100.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.084.i.i, i32 1
  %37 = ptrtoint ptr %gate_mask.i100.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gate_mask.i100.i, align 4
  %sub.i.i = add i32 %36, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.084.i.i, i32 %sub.i.i)
  %cmp5.i.i = icmp eq i32 %i.084.i.i, %sub.i.i
  %or.i.i = or i32 %38, -2147483648
  %spec.select.i.i = select i1 %cmp5.i.i, i32 %or.i.i, i32 %38
  %interval.i101.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.084.i.i, i32 2
  %39 = ptrtoint ptr %interval.i101.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %interval.i101.i, align 4
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 8
  %mul.i.i.i = shl i32 %i.084.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 %mul.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 4, i32 %i.084.i.i
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select.i.i, ptr %arrayidx.i.i.i, align 8
  %interval5.i.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 4, i32 %i.084.i.i, i32 1
  %44 = ptrtoint ptr %interval5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %40, ptr %interval5.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %45 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %45) #4, !srcloc !15
  %add.ptr6.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %46 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i.i, i32 %46) #4, !srcloc !15
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  %inc.i102.i = add nuw i32 %i.084.i.i, 1
  %48 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_entries.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i102.i, %49
  br i1 %cmp.i.i, label %for.body.i103.i.for.body.i103.i_crit_edge, label %for.body.i103.i.for.end.i104.i_crit_edge

for.body.i103.i.for.end.i104.i_crit_edge:         ; preds = %for.body.i103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i104.i

for.body.i103.i.for.body.i103.i_crit_edge:        ; preds = %for.body.i103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i103.i

for.end.i104.i:                                   ; preds = %for.body.i103.i.for.end.i104.i_crit_edge, %if.end12.i.for.end.i104.i_crit_edge
  %.lcssa.i.i = phi i32 [ 0, %if.end12.i.for.end.i104.i_crit_edge ], [ %49, %for.body.i103.i.for.end.i104.i_crit_edge ]
  %count.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 5
  %50 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.lcssa.i.i, ptr %count.i.i, align 8
  %sub10.i.i = add i32 %.lcssa.i.i, -1
  %interval.i.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 4, i32 %sub10.i.i, i32 1
  %51 = ptrtoint ptr %interval.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %interval.i.i.i, align 4
  %dec.i.i.i = add i32 %.lcssa.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp slt i32 %dec.i.i.i, 0
  %spec.select81.i.i = select i1 %cmp.i.i.i, i32 %sub10.i.i, i32 %dec.i.i.i
  %interval.1.i.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 4, i32 %spec.select81.i.i, i32 1
  %53 = ptrtoint ptr %interval.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %interval.1.i.i.i, align 4
  %dec.1.i.i.i = add nsw i32 %spec.select81.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select81.i.i)
  %cmp.1.i.i.i = icmp slt i32 %spec.select81.i.i, 1
  %index.addr.1.1.i.i.i = select i1 %cmp.1.i.i.i, i32 %sub10.i.i, i32 %dec.1.i.i.i
  %interval.2.i.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 4, i32 %index.addr.1.1.i.i.i, i32 1
  %55 = ptrtoint ptr %interval.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %interval.2.i.i.i, align 4
  %57 = ptrtoint ptr %cycle_time_extension3.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %cycle_time_extension3.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i.i)
  %cmp1585.i.i = icmp sgt i32 %.lcssa.i.i, 0
  br i1 %cmp1585.i.i, label %for.end.i104.i.for.body16.i.i_crit_edge, label %for.end.i104.i.tsnep_write_gcl.exit.i_crit_edge

for.end.i104.i.tsnep_write_gcl.exit.i_crit_edge:  ; preds = %for.end.i104.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tsnep_write_gcl.exit.i

for.end.i104.i.for.body16.i.i_crit_edge:          ; preds = %for.end.i104.i
  br label %for.body16.i.i

for.body16.i.i:                                   ; preds = %for.body16.i.i.for.body16.i.i_crit_edge, %for.end.i104.i.for.body16.i.i_crit_edge
  %i.187.i.i = phi i32 [ %inc20.i.i, %for.body16.i.i.for.body16.i.i_crit_edge ], [ 0, %for.end.i104.i.for.body16.i.i_crit_edge ]
  %cut.086.i.i = phi i64 [ %65, %for.body16.i.i.for.body16.i.i_crit_edge ], [ 0, %for.end.i104.i.for.body16.i.i_crit_edge ]
  %interval.i61.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 4, i32 %i.187.i.i, i32 1
  %59 = ptrtoint ptr %interval.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %interval.i61.i.i, align 4
  %dec.i62.i.i = add nsw i32 %i.187.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.187.i.i)
  %cmp.i63.i.i = icmp eq i32 %i.187.i.i, 0
  %spec.select82.i.i = select i1 %cmp.i63.i.i, i32 %sub10.i.i, i32 %dec.i62.i.i
  %interval.1.i67.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 4, i32 %spec.select82.i.i, i32 1
  %61 = ptrtoint ptr %interval.1.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %interval.1.i67.i.i, align 4
  %dec.1.i68.i.i = add i32 %spec.select82.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1.i68.i.i)
  %cmp.1.i69.i.i = icmp slt i32 %dec.1.i68.i.i, 0
  %index.addr.1.1.i73.i.i = select i1 %cmp.1.i69.i.i, i32 %sub10.i.i, i32 %dec.1.i68.i.i
  %interval.2.i74.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 4, i32 %index.addr.1.1.i73.i.i, i32 1
  %63 = ptrtoint ptr %interval.2.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %interval.2.i74.i.i, align 4
  %conv.i75.i.i = zext i32 %60 to i64
  %conv.1.i76.i.i = zext i32 %62 to i64
  %add.1.i77.i.i = add nuw nsw i64 %conv.1.i76.i.i, %conv.i75.i.i
  %conv.2.i78.i.i = zext i32 %64 to i64
  %add.2.i79.i.i = add nuw nsw i64 %add.1.i77.i.i, %conv.2.i78.i.i
  %65 = tail call i64 @llvm.umax.i64(i64 %cut.086.i.i, i64 %add.2.i79.i.i) #4
  %inc20.i.i = add nuw nsw i32 %i.187.i.i, 1
  %exitcond.not.i105.i = icmp eq i32 %inc20.i.i, %.lcssa.i.i
  br i1 %exitcond.not.i105.i, label %for.body16.i.i.tsnep_write_gcl.exit.i_crit_edge, label %for.body16.i.i.for.body16.i.i_crit_edge

for.body16.i.i.for.body16.i.i_crit_edge:          ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body16.i.i

for.body16.i.i.tsnep_write_gcl.exit.i_crit_edge:  ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tsnep_write_gcl.exit.i

tsnep_write_gcl.exit.i:                           ; preds = %for.body16.i.i.tsnep_write_gcl.exit.i_crit_edge, %for.end.i104.i.tsnep_write_gcl.exit.i_crit_edge
  %cut.0.lcssa.i.i = phi i64 [ 0, %for.end.i104.i.tsnep_write_gcl.exit.i_crit_edge ], [ %65, %for.body16.i.i.tsnep_write_gcl.exit.i_crit_edge ]
  %conv.i.i.i = zext i32 %52 to i64
  %conv.1.i.i.i = zext i32 %54 to i64
  %add.1.i.i.i = add nuw nsw i64 %conv.1.i.i.i, %conv.i.i.i
  %conv.2.i.i.i = zext i32 %56 to i64
  %add.2.i.i.i = add nuw nsw i64 %add.1.i.i.i, %conv.2.i.i.i
  %add.i106.i = add i64 %add.2.i.i.i, %58
  %66 = tail call i64 @llvm.umax.i64(i64 %add.i106.i, i64 %cut.0.lcssa.i.i) #4
  %change_limit.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 6
  %67 = ptrtoint ptr %change_limit.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %change_limit.i.i, align 8
  %gate_control_active15.i = getelementptr i8, ptr %netdev, i32 2448
  %68 = ptrtoint ptr %gate_control_active15.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %gate_control_active15.i, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool16.not.i = icmp eq i8 %69, 0
  br i1 %tobool16.not.i, label %tsnep_write_gcl.exit.i.if.end26.i_crit_edge, label %if.then17.i

tsnep_write_gcl.exit.i.if.end26.i_crit_edge:      ; preds = %tsnep_write_gcl.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26.i

if.then17.i:                                      ; preds = %tsnep_write_gcl.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %next_gcl.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %next_gcl.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i = icmp eq i32 %71, 0
  %spec.select.i.v = select i1 %cmp.i, i32 4568, i32 2456
  %spec.select.i = getelementptr i8, ptr %netdev, i32 %spec.select.i.v
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then17.i, %tsnep_write_gcl.exit.i.if.end26.i_crit_edge
  %curr.0.i = phi ptr [ null, %tsnep_write_gcl.exit.i.if.end26.i_crit_edge ], [ %spec.select.i, %if.then17.i ]
  %addr27.i = getelementptr i8, ptr %netdev, i32 2344
  %tobool.not.i108.i = icmp eq ptr %curr.0.i, null
  %change_limit.i109.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 6
  %start_time.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 7
  %base_time.i138.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 1
  %cycle_time.i140.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 2
  %cycle_time_extension.i117.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 3
  %count.i151.i.i = getelementptr inbounds %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 5
  %change56.i.i = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %24, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.end26.i
  %72 = ptrtoint ptr %addr27.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %addr27.i, align 8
  %add.ptr28.i = getelementptr i8, ptr %73, i32 2056
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 16) #4, !srcloc !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %system_time.i.i) #4
  %74 = ptrtoint ptr %system_time.i.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 -1, ptr %system_time.i.i, align 8, !annotation !18
  call void @tsnep_get_system_time(ptr noundef %add.ptr.i, ptr noundef nonnull %system_time.i.i) #4
  %75 = ptrtoint ptr %system_time.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %system_time.i.i, align 8
  %add.i107.i = add i64 %76, 131072
  br i1 %tobool.not.i108.i, label %for.cond.i.if.end.i110.i_crit_edge, label %if.then.i.i

for.cond.i.if.end.i110.i_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i110.i

if.then.i.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %change_limit.i109.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %change_limit.i109.i, align 8
  %add1.i.i = add i64 %78, %add.i107.i
  br label %if.end.i110.i

if.end.i110.i:                                    ; preds = %if.then.i.i, %for.cond.i.if.end.i110.i_crit_edge
  %limit.0.i.i = phi i64 [ %add1.i.i, %if.then.i.i ], [ %add.i107.i, %for.cond.i.if.end.i110.i_crit_edge ]
  %79 = ptrtoint ptr %base_time1.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %base_time1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %limit.0.i.i, i64 %80)
  %cmp.not.i.i.i = icmp ult i64 %limit.0.i.i, %80
  br i1 %cmp.not.i.i.i, label %if.end.i110.i.tsnep_gcl_start_after.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i110.i.tsnep_gcl_start_after.exit.i.i_crit_edge: ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tsnep_gcl_start_after.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i.i = sub i64 %limit.0.i.i, %80
  %81 = ptrtoint ptr %cycle_time2.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %cycle_time2.i.i, align 8
  %call.i.i.i = call i64 @div64_u64(i64 noundef %sub.i.i.i, i64 noundef %82) #4
  %add.i.i.i = add i64 %call.i.i.i, 1
  %83 = ptrtoint ptr %cycle_time2.i.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %cycle_time2.i.i, align 8
  %mul.i.i111.i = mul i64 %add.i.i.i, %84
  %add2.i.i.i = add i64 %mul.i.i111.i, %80
  br label %tsnep_gcl_start_after.exit.i.i

tsnep_gcl_start_after.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end.i110.i.tsnep_gcl_start_after.exit.i.i_crit_edge
  %start.0.i.i.i = phi i64 [ %add2.i.i.i, %if.then.i.i.i ], [ %80, %if.end.i110.i.tsnep_gcl_start_after.exit.i.i_crit_edge ]
  %85 = ptrtoint ptr %start_time.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %start.0.i.i.i, ptr %start_time.i.i, align 8
  %86 = ptrtoint ptr %system_time.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %system_time.i.i, align 8
  %sub.i112.i = sub i64 %start.0.i.i.i, %87
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %sub.i112.i)
  %cmp.i113.i = icmp ugt i64 %sub.i112.i, 4294967294
  br i1 %cmp.i113.i, label %if.then31.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %tsnep_gcl_start_after.exit.i.i
  br i1 %tobool.not.i108.i, label %if.else58.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  %88 = ptrtoint ptr %base_time.i138.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %base_time.i138.i.i, align 8
  %sub.i139.i.i = sub i64 %start.0.i.i.i, %89
  %90 = ptrtoint ptr %cycle_time.i140.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %cycle_time.i140.i.i, align 8
  %call.i141.i.i = call i64 @div64_u64(i64 noundef %sub.i139.i.i, i64 noundef %91) #4
  %92 = ptrtoint ptr %cycle_time.i140.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %cycle_time.i140.i.i, align 8
  %mul.i142.i.i = mul i64 %93, %call.i141.i.i
  %add.i143.i.i = add i64 %mul.i142.i.i, %89
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i143.i.i, i64 %start.0.i.i.i)
  %cmp.i.i114.i = icmp eq i64 %add.i143.i.i, %start.0.i.i.i
  %sub3.i.i.i = select i1 %cmp.i.i114.i, i64 %93, i64 0
  %spec.select.i.i.i = sub i64 %add.i143.i.i, %sub3.i.i.i
  %add9.i.i = add i64 %spec.select.i.i.i, %93
  %94 = ptrtoint ptr %start_time.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %start_time.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add9.i.i, i64 %95)
  %cmp11.i.i = icmp eq i64 %add9.i.i, %95
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.else16.i.i

if.then12.i.i:                                    ; preds = %if.then6.i.i
  %96 = ptrtoint ptr %count.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count.i151.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp45.i.i.i = icmp sgt i32 %97, 0
  br i1 %cmp45.i.i.i, label %if.then12.i.i.for.body.i.i.i_crit_edge, label %if.then12.i.i.for.end.i.i.i_crit_edge

if.then12.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i

if.then12.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then12.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then12.i.i.for.body.i.i.i_crit_edge
  %i.047.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then12.i.i.for.body.i.i.i_crit_edge ]
  %sum.046.i.i.i = phi i64 [ %add.i144.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then12.i.i.for.body.i.i.i_crit_edge ]
  %interval.i.i115.i = getelementptr %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 4, i32 %i.047.i.i.i, i32 1
  %98 = ptrtoint ptr %interval.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %interval.i.i115.i, align 4
  %conv.i.i116.i = zext i32 %99 to i64
  %add.i144.i.i = add i64 %sum.046.i.i.i, %conv.i.i116.i
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %add.i144.i.i)
  %cmp2.i.i.i = icmp ult i64 %93, %add.i144.i.i
  br i1 %cmp2.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %add.i144.i.i)
  %cmp4.not.i.i.i = icmp ne i64 %93, %add.i144.i.i
  %sub.i145.i.i = sub i64 %93, %add.i144.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %sub.i145.i.i)
  %cmp6.i.i.i = icmp ult i64 %sub.i145.i.i, 32
  %or.cond.i.i.i = and i1 %cmp4.not.i.i.i, %cmp6.i.i.i
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i

if.end.i.i.i.for.end.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.047.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %97
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.end.i.i.i.for.end.i.i.i_crit_edge, %for.body.i.i.i.for.end.i.i.i_crit_edge, %if.then12.i.i.for.end.i.i.i_crit_edge
  %sum.0.lcssa.i.i.i = phi i64 [ 0, %if.then12.i.i.for.end.i.i.i_crit_edge ], [ %add.i144.i.i, %for.inc.i.i.i.for.end.i.i.i_crit_edge ], [ %sum.046.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ], [ %sum.046.i.i.i, %if.end.i.i.i.for.end.i.i.i_crit_edge ]
  %i.0.lcssa.i.i.i = phi i32 [ 0, %if.then12.i.i.for.end.i.i.i_crit_edge ], [ %97, %for.inc.i.i.i.for.end.i.i.i_crit_edge ], [ %i.047.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ], [ %i.047.i.i.i, %if.end.i.i.i.for.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %sum.0.lcssa.i.i.i)
  %cmp11.i.i.i = icmp eq i64 %93, %sum.0.lcssa.i.i.i
  br i1 %cmp11.i.i.i, label %if.then13.i.i.i, label %if.end15.i.i.i

if.then13.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %i.0.lcssa.i.i.i, 0
  %spec.select44.i.i.i = select i1 %cmp.i.i.i.i, i32 %97, i32 %i.0.lcssa.i.i.i
  %index.addr.0.i.i.i.i = add i32 %spec.select44.i.i.i, -1
  %interval.i.i.i.i = getelementptr %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 4, i32 %index.addr.0.i.i.i.i, i32 1
  %100 = ptrtoint ptr %interval.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %interval.i.i.i.i, align 4
  %conv.i.i.i.i = zext i32 %101 to i64
  %sub2.i.i.i.i = sub i64 %add9.i.i, %conv.i.i.i.i
  br label %if.end32.i.i

if.end15.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add16.i.i.i = add i64 %sum.0.lcssa.i.i.i, %spec.select.i.i.i
  %sub17.i.i.i = sub i64 %93, %sum.0.lcssa.i.i.i
  %conv18.i.i.i = trunc i64 %sub17.i.i.i to i32
  %call19.i.i.i = call fastcc i64 @tsnep_insert_gcl_operation(ptr noundef nonnull %curr.0.i, i32 noundef %i.0.lcssa.i.i.i, i64 noundef %add16.i.i.i, i32 noundef %conv18.i.i.i) #4
  br label %if.end32.i.i

if.else16.i.i:                                    ; preds = %if.then6.i.i
  %sub18.i.i = sub i64 %95, %spec.select.i.i.i
  %102 = ptrtoint ptr %cycle_time_extension.i117.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %cycle_time_extension.i117.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub18.i.i, i64 %103)
  %cmp19.not.i.i = icmp ule i64 %sub18.i.i, %103
  call void @__sanitizer_cov_trace_const_cmp8(i64 33, i64 %sub18.i.i)
  %cmp22.i.i = icmp ult i64 %sub18.i.i, 33
  %or.cond.i.i = or i1 %cmp22.i.i, %cmp19.not.i.i
  br i1 %or.cond.i.i, label %if.then23.i.i, label %if.else27.i.i

if.then23.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i = trunc i64 %sub18.i.i to i32
  %104 = ptrtoint ptr %count.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count.i151.i.i, align 8
  %sub.i147.i.i = add i32 %105, -1
  %interval1.i.i.i = getelementptr %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 4, i32 %sub.i147.i.i, i32 1
  %106 = ptrtoint ptr %interval1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %interval1.i.i.i, align 4
  %add.i148.i.i = add i32 %107, %conv.i.i
  %conv.i149.i.i = zext i32 %107 to i64
  %sub5.i.i.i = sub i64 %spec.select.i.i.i, %conv.i149.i.i
  %call.i150.i.i = call fastcc i64 @tsnep_insert_gcl_operation(ptr noundef nonnull %curr.0.i, i32 noundef %sub.i147.i.i, i64 noundef %sub5.i.i.i, i32 noundef %add.i148.i.i) #4
  br label %if.end32.i.i

if.else27.i.i:                                    ; preds = %if.else16.i.i
  %108 = ptrtoint ptr %count.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count.i151.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp45.i152.i.i = icmp sgt i32 %109, 0
  br i1 %cmp45.i152.i.i, label %if.else27.i.i.for.body.i159.i.i_crit_edge, label %if.else27.i.i.if.end15.i183.i.i_crit_edge

if.else27.i.i.if.end15.i183.i.i_crit_edge:        ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i183.i.i

if.else27.i.i.for.body.i159.i.i_crit_edge:        ; preds = %if.else27.i.i
  br label %for.body.i159.i.i

for.body.i159.i.i:                                ; preds = %for.inc.i167.i.i.for.body.i159.i.i_crit_edge, %if.else27.i.i.for.body.i159.i.i_crit_edge
  %i.047.i153.i.i = phi i32 [ %inc.i165.i.i, %for.inc.i167.i.i.for.body.i159.i.i_crit_edge ], [ 0, %if.else27.i.i.for.body.i159.i.i_crit_edge ]
  %sum.046.i154.i.i = phi i64 [ %add.i157.i.i, %for.inc.i167.i.i.for.body.i159.i.i_crit_edge ], [ 0, %if.else27.i.i.for.body.i159.i.i_crit_edge ]
  %interval.i155.i.i = getelementptr %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 4, i32 %i.047.i153.i.i, i32 1
  %110 = ptrtoint ptr %interval.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %interval.i155.i.i, align 4
  %conv.i156.i.i = zext i32 %111 to i64
  %add.i157.i.i = add i64 %sum.046.i154.i.i, %conv.i156.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub18.i.i, i64 %add.i157.i.i)
  %cmp2.i158.i.i = icmp ult i64 %sub18.i.i, %add.i157.i.i
  br i1 %cmp2.i158.i.i, label %for.body.i159.i.i.for.end.i171.i.i_crit_edge, label %if.end.i164.i.i

for.body.i159.i.i.for.end.i171.i.i_crit_edge:     ; preds = %for.body.i159.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i171.i.i

if.end.i164.i.i:                                  ; preds = %for.body.i159.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub18.i.i, i64 %add.i157.i.i)
  %cmp4.not.i160.i.i = icmp ne i64 %sub18.i.i, %add.i157.i.i
  %sub.i161.i.i = sub i64 %sub18.i.i, %add.i157.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %sub.i161.i.i)
  %cmp6.i162.i.i = icmp ult i64 %sub.i161.i.i, 32
  %or.cond.i163.i.i = and i1 %cmp4.not.i160.i.i, %cmp6.i162.i.i
  br i1 %or.cond.i163.i.i, label %if.end.i164.i.i.for.end.i171.i.i_crit_edge, label %for.inc.i167.i.i

if.end.i164.i.i.for.end.i171.i.i_crit_edge:       ; preds = %if.end.i164.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i171.i.i

for.inc.i167.i.i:                                 ; preds = %if.end.i164.i.i
  %inc.i165.i.i = add nuw nsw i32 %i.047.i153.i.i, 1
  %exitcond.not.i166.i.i = icmp eq i32 %inc.i165.i.i, %109
  br i1 %exitcond.not.i166.i.i, label %for.inc.i167.i.i.for.end.i171.i.i_crit_edge, label %for.inc.i167.i.i.for.body.i159.i.i_crit_edge

for.inc.i167.i.i.for.body.i159.i.i_crit_edge:     ; preds = %for.inc.i167.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i159.i.i

for.inc.i167.i.i.for.end.i171.i.i_crit_edge:      ; preds = %for.inc.i167.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i171.i.i

for.end.i171.i.i:                                 ; preds = %for.inc.i167.i.i.for.end.i171.i.i_crit_edge, %if.end.i164.i.i.for.end.i171.i.i_crit_edge, %for.body.i159.i.i.for.end.i171.i.i_crit_edge
  %sum.0.lcssa.i168.i.i = phi i64 [ %sum.046.i154.i.i, %if.end.i164.i.i.for.end.i171.i.i_crit_edge ], [ %sum.046.i154.i.i, %for.body.i159.i.i.for.end.i171.i.i_crit_edge ], [ %add.i157.i.i, %for.inc.i167.i.i.for.end.i171.i.i_crit_edge ]
  %i.0.lcssa.i169.i.i = phi i32 [ %i.047.i153.i.i, %if.end.i164.i.i.for.end.i171.i.i_crit_edge ], [ %i.047.i153.i.i, %for.body.i159.i.i.for.end.i171.i.i_crit_edge ], [ %109, %for.inc.i167.i.i.for.end.i171.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sub18.i.i, i64 %sum.0.lcssa.i168.i.i)
  %cmp11.i170.i.i = icmp eq i64 %sub18.i.i, %sum.0.lcssa.i168.i.i
  br i1 %cmp11.i170.i.i, label %if.then13.i178.i.i, label %for.end.i171.i.i.if.end15.i183.i.i_crit_edge

for.end.i171.i.i.if.end15.i183.i.i_crit_edge:     ; preds = %for.end.i171.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i183.i.i

if.then13.i178.i.i:                               ; preds = %for.end.i171.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i169.i.i)
  %cmp.i.i172.i.i = icmp eq i32 %i.0.lcssa.i169.i.i, 0
  %spec.select44.i173.i.i = select i1 %cmp.i.i172.i.i, i32 %109, i32 %i.0.lcssa.i169.i.i
  %index.addr.0.i.i174.i.i = add i32 %spec.select44.i173.i.i, -1
  %interval.i.i175.i.i = getelementptr %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 4, i32 %index.addr.0.i.i174.i.i, i32 1
  %112 = ptrtoint ptr %interval.i.i175.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %interval.i.i175.i.i, align 4
  %conv.i.i176.i.i = zext i32 %113 to i64
  %sub2.i.i177.i.i = sub i64 %95, %conv.i.i176.i.i
  br label %if.end32.i.i

if.end15.i183.i.i:                                ; preds = %for.end.i171.i.i.if.end15.i183.i.i_crit_edge, %if.else27.i.i.if.end15.i183.i.i_crit_edge
  %i.0.lcssa.i169190.i.i = phi i32 [ %i.0.lcssa.i169.i.i, %for.end.i171.i.i.if.end15.i183.i.i_crit_edge ], [ 0, %if.else27.i.i.if.end15.i183.i.i_crit_edge ]
  %sum.0.lcssa.i168189.i.i = phi i64 [ %sum.0.lcssa.i168.i.i, %for.end.i171.i.i.if.end15.i183.i.i_crit_edge ], [ 0, %if.else27.i.i.if.end15.i183.i.i_crit_edge ]
  %add16.i179.i.i = add i64 %sum.0.lcssa.i168189.i.i, %spec.select.i.i.i
  %sub17.i180.i.i = sub i64 %sub18.i.i, %sum.0.lcssa.i168189.i.i
  %conv18.i181.i.i = trunc i64 %sub17.i180.i.i to i32
  %call19.i182.i.i = call fastcc i64 @tsnep_insert_gcl_operation(ptr noundef nonnull %curr.0.i, i32 noundef %i.0.lcssa.i169190.i.i, i64 noundef %add16.i179.i.i, i32 noundef %conv18.i181.i.i) #4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end15.i183.i.i, %if.then13.i178.i.i, %if.then23.i.i, %if.end15.i.i.i, %if.then13.i.i.i
  %change.0.i.i = phi i64 [ %call.i150.i.i, %if.then23.i.i ], [ %sub2.i.i.i.i, %if.then13.i.i.i ], [ %call19.i.i.i, %if.end15.i.i.i ], [ %sub2.i.i177.i.i, %if.then13.i178.i.i ], [ %call19.i182.i.i, %if.end15.i183.i.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %change.0.i.i, i64 %add.i107.i)
  %cmp33.not.i.i = icmp ugt i64 %change.0.i.i, %add.i107.i
  br i1 %cmp33.not.i.i, label %if.end32.i.i.if.end49.i.i_crit_edge, label %do.end.i.i, !prof !19

if.end32.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49.i.i

do.end.i.i:                                       ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 9, ptr noundef null) #4
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %do.end.i.i, %if.end32.i.i.if.end49.i.i_crit_edge
  %114 = ptrtoint ptr %change56.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %change56.i.i, align 8
  %conv57.i.i = trunc i64 %change.0.i.i to i32
  %115 = ptrtoint ptr %addr27.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %addr27.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %116, i32 2064
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  call void @arm_heavy_mb() #4
  %117 = call i32 @llvm.bswap.i32(i32 %conv57.i.i) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %117) #4, !srcloc !15
  br label %if.end33.i

if.else58.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %start.0.i.i.i, i64 %add.i107.i)
  %cmp61.not.i.i = icmp ugt i64 %start.0.i.i.i, %add.i107.i
  br i1 %cmp61.not.i.i, label %if.else58.i.i.if.end84.i.i_crit_edge, label %do.end78.i.i, !prof !19

if.else58.i.i.if.end84.i.i_crit_edge:             ; preds = %if.else58.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84.i.i

do.end78.i.i:                                     ; preds = %if.else58.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef null) #4
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %do.end78.i.i, %if.else58.i.i.if.end84.i.i_crit_edge
  %118 = ptrtoint ptr %change56.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %change56.i.i, align 8
  %119 = ptrtoint ptr %start_time.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %start_time.i.i, align 8
  %conv95.i.i = trunc i64 %120 to i32
  %121 = ptrtoint ptr %addr27.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %addr27.i, align 8
  %add.ptr97.i.i = getelementptr i8, ptr %122, i32 2060
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  call void @arm_heavy_mb() #4
  %123 = call i32 @llvm.bswap.i32(i32 %conv95.i.i) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i.i, i32 %123) #4, !srcloc !15
  br label %if.end33.i

if.then31.i:                                      ; preds = %tsnep_gcl_start_after.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i.i) #4
  call void @mutex_unlock(ptr noundef %gate_control_lock13.i) #4
  br label %cleanup

if.end33.i:                                       ; preds = %if.end84.i.i, %if.end49.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %system_time.i.i) #4
  %124 = ptrtoint ptr %next_gcl.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %next_gcl.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp35.i = icmp eq i32 %125, 0
  %126 = ptrtoint ptr %addr27.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %addr27.i, align 8
  %add.ptr38.i = getelementptr i8, ptr %127, i32 2056
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  call void @arm_heavy_mb() #4
  br i1 %cmp35.i, label %if.then36.i, label %if.else39.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38.i, i8 2) #4, !srcloc !13
  br label %if.end42.i

if.else39.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38.i, i8 4) #4, !srcloc !13
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else39.i, %if.then36.i
  %128 = ptrtoint ptr %addr27.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %addr27.i, align 8
  %add.ptr44.i = getelementptr i8, ptr %129, i32 2056
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #4, !srcloc !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  %131 = and i32 %130, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool46.not.i = icmp eq i32 %131, 0
  br i1 %tobool46.not.i, label %for.end.i, label %if.end48.i

if.end48.i:                                       ; preds = %if.end42.i
  %132 = ptrtoint ptr %addr27.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %addr27.i, align 8
  %add.ptr50.i = getelementptr i8, ptr %133, i32 2056
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50.i, i8 2) #4, !srcloc !13
  br i1 %tobool.not.i108.i, label %if.end48.i.for.cond.i.backedge_crit_edge, label %if.then52.i

if.end48.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.backedge

if.then52.i:                                      ; preds = %if.end48.i
  %134 = ptrtoint ptr %count.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %count.i151.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp20.i.i = icmp sgt i32 %135, 0
  br i1 %cmp20.i.i, label %if.then52.i.for.body.i122.i_crit_edge, label %if.then52.i.for.cond.i.backedge_crit_edge

if.then52.i.for.cond.i.backedge_crit_edge:        ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.backedge

if.then52.i.for.body.i122.i_crit_edge:            ; preds = %if.then52.i
  br label %for.body.i122.i

for.body.i122.i:                                  ; preds = %for.inc.i.i.for.body.i122.i_crit_edge, %if.then52.i.for.body.i122.i_crit_edge
  %i.021.i.i = phi i32 [ %inc.i125.i, %for.inc.i.i.for.body.i122.i_crit_edge ], [ 0, %if.then52.i.for.body.i122.i_crit_edge ]
  %arrayidx.i120.i = getelementptr %struct.tsnep_gcl, ptr %curr.0.i, i32 0, i32 4, i32 %i.021.i.i
  %136 = ptrtoint ptr %arrayidx.i120.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i120.i, align 8
  %and.i.i = and i32 %137, 2147483392
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i121.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i121.i, label %for.inc.i.i, label %if.then.i124.i

if.then.i124.i:                                   ; preds = %for.body.i122.i
  call void @__sanitizer_cov_trace_pc() #6
  %138 = ptrtoint ptr %curr.0.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %curr.0.i, align 8
  %mul.i.i = shl i32 %i.021.i.i, 3
  %add.ptr.i123.i = getelementptr i8, ptr %139, i32 %mul.i.i
  %and5.i.i = and i32 %137, -2147483393
  %140 = ptrtoint ptr %arrayidx.i120.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %and5.i.i, ptr %arrayidx.i120.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  call void @arm_heavy_mb() #4
  %141 = call i32 @llvm.bswap.i32(i32 %and5.i.i) #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 %141) #4, !srcloc !15
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %for.inc.i.i.for.cond.i.backedge_crit_edge, %if.then.i124.i, %if.then52.i.for.cond.i.backedge_crit_edge, %if.end48.i.for.cond.i.backedge_crit_edge
  br label %for.cond.i

for.inc.i.i:                                      ; preds = %for.body.i122.i
  %inc.i125.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i126.i = icmp eq i32 %inc.i125.i, %135
  br i1 %exitcond.not.i126.i, label %for.inc.i.i.for.cond.i.backedge_crit_edge, label %for.inc.i.i.for.body.i122.i_crit_edge

for.inc.i.i.for.body.i122.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i122.i

for.inc.i.i.for.cond.i.backedge_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.backedge

for.end.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  %142 = ptrtoint ptr %gate_control_active15.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %gate_control_active15.i, align 8
  %143 = ptrtoint ptr %next_gcl.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %next_gcl.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp56.i = icmp eq i32 %144, 0
  %..i = zext i1 %cmp56.i to i32
  %145 = ptrtoint ptr %next_gcl.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %..i, ptr %next_gcl.i, align 8
  call void @mutex_unlock(ptr noundef %gate_control_lock13.i) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.then31.i, %if.end29.i.i.cleanup_crit_edge, %for.end.i.i.cleanup_crit_edge, %if.end14.i.i.cleanup_crit_edge, %if.end9.i.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end7.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -11, %if.then31.i ], [ 0, %for.end.i ], [ 0, %if.end7.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ -22, %if.end29.i.i.cleanup_crit_edge ], [ -22, %for.end.i.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -34, %if.end9.i.cleanup_crit_edge ], [ -22, %for.body.i.i.cleanup_crit_edge ], [ -22, %if.end9.i.i.cleanup_crit_edge ], [ -22, %if.end14.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tsnep_tc_init(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_control = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 11
  %0 = ptrtoint ptr %gate_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gate_control, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %addr = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 9
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 8) #4, !srcloc !13
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 65535) #4, !srcloc !15
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 8192
  %gcl = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 14
  %8 = ptrtoint ptr %gcl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr4, ptr %gcl, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 10240
  %arrayidx9 = getelementptr %struct.tsnep_adapter, ptr %adapter, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr7, ptr %arrayidx9, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tsnep_tc_cleanup(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_control = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 11
  %0 = ptrtoint ptr %gate_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gate_control, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end:                                           ; preds = %entry
  %gate_control_active = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 13
  %2 = ptrtoint ptr %gate_control_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gate_control_active, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %addr = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 9
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 8) #4, !srcloc !13
  %6 = ptrtoint ptr %gate_control_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %gate_control_active, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tsnep_get_system_time(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @tsnep_insert_gcl_operation(ptr nocapture noundef %gcl, i32 noundef %ref, i64 noundef %change, i32 noundef %interval) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tsnep_gcl, ptr %gcl, i32 0, i32 4, i32 %ref
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %and = and i32 %1, 255
  %or = or i32 %and, 1073741824
  %2 = ptrtoint ptr %gcl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gcl, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 2040
  %arrayidx.i = getelementptr %struct.tsnep_gcl, ptr %gcl, i32 0, i32 4, i32 255
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %arrayidx.i, align 8
  %interval5.i = getelementptr %struct.tsnep_gcl, ptr %gcl, i32 0, i32 4, i32 255, i32 1
  %5 = ptrtoint ptr %interval5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %interval, ptr %interval5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #4, !srcloc !15
  %add.ptr6.i = getelementptr i8, ptr %3, i32 2044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %interval) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %7) #4, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ref)
  %cmp.i = icmp eq i32 %ref, 0
  br i1 %cmp.i, label %if.then.i, label %entry.tsnep_set_gcl_change.exit_crit_edge

entry.tsnep_set_gcl_change.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %tsnep_set_gcl_change.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %count.i = getelementptr inbounds %struct.tsnep_gcl, ptr %gcl, i32 0, i32 5
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  br label %tsnep_set_gcl_change.exit

tsnep_set_gcl_change.exit:                        ; preds = %if.then.i, %entry.tsnep_set_gcl_change.exit_crit_edge
  %index.addr.0.in.i = phi i32 [ %9, %if.then.i ], [ %ref, %entry.tsnep_set_gcl_change.exit_crit_edge ]
  %index.addr.0.i = add i32 %index.addr.0.in.i, -1
  %interval.i = getelementptr %struct.tsnep_gcl, ptr %gcl, i32 0, i32 4, i32 %index.addr.0.i, i32 1
  %10 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interval.i, align 4
  %arrayidx.i6 = getelementptr %struct.tsnep_gcl, ptr %gcl, i32 0, i32 4, i32 %index.addr.0.i
  %12 = ptrtoint ptr %gcl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gcl, align 8
  %mul.i = shl i32 %index.addr.0.i, 3
  %add.ptr.i7 = getelementptr i8, ptr %13, i32 %mul.i
  %14 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i6, align 8
  %or.i = or i32 %15, 536870912
  store i32 %or.i, ptr %arrayidx.i6, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %16) #4, !srcloc !15
  %conv.i = zext i32 %11 to i64
  %sub2.i = sub i64 %change, %conv.i
  ret i64 %sub2.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/engleder/tsnep_tc.c", i32 304, i32 3}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
!12 = !{i64 2153791415}
!13 = !{i64 6250070}
!14 = !{i64 2153792389}
!15 = !{i64 6250267}
!16 = !{i64 6250685}
!17 = !{i64 2153791034}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", i32 2000, i32 1}
