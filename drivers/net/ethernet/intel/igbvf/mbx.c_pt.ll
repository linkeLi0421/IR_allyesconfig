; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igbvf/mbx.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igbvf/mbx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_mbx_info, %struct.spinlock, %union.anon.2, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i16, i16, i8 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.2 = type { %struct.e1000_dev_spec_vf }
%struct.e1000_dev_spec_vf = type { i32, i32 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/intel/igbvf/mbx.c\00", [57 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [42 x i8] c"../drivers/net/ethernet/intel/igbvf/mbx.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 282, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @e1000_init_mbx_params_vf(ptr nocapture noundef writeonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %timeout, align 4
  %usec_delay = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  %1 = ptrtoint ptr %usec_delay to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 500, ptr %usec_delay, align 4
  %size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %size, align 4
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @e1000_read_mbx_vf, ptr %read, align 4
  %write = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @e1000_write_mbx_vf, ptr %write, align 4
  %read_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %5 = ptrtoint ptr %read_posted to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @e1000_read_posted_mbx, ptr %read_posted, align 4
  %write_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %6 = ptrtoint ptr %write_posted to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @e1000_write_posted_mbx, ptr %write_posted, align 4
  %check_for_msg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %7 = ptrtoint ptr %check_for_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @e1000_check_for_msg_vf, ptr %check_for_msg, align 4
  %check_for_ack = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 6
  %8 = ptrtoint ptr %check_for_ack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @e1000_check_for_ack_vf, ptr %check_for_ack, align 4
  %check_for_rst = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 7
  %9 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @e1000_check_for_rst_vf, ptr %check_for_rst, align 4
  %stats = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %10 = call ptr @memset(ptr %stats, i32 0, i32 20)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_read_mbx_vf(ptr noundef %hw, ptr nocapture noundef writeonly %msg, i16 noundef zeroext %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !11

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 282, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %v2p_mailbox2.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %count.0.i = phi i32 [ 10, %if.end ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #4, !srcloc !13
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 3136
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !14
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %7 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v2p_mailbox2.i.i, align 4
  %or.i.i = or i32 %8, %6
  %9 = and i32 %6, 176
  %or5.i.i = or i32 %8, %9
  store i32 %or5.i.i, ptr %v2p_mailbox2.i.i, align 4
  %and.i = and i32 %or.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp2954.not = icmp eq i16 %size, 0
  br i1 %cmp2954.not, label %for.cond.preheader.do.body36_crit_edge, label %for.body.preheader

for.cond.preheader.do.body36_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body36

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i16 %size to i32
  br label %for.body

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #4
  %dec.i = add nsw i32 %count.0.i, -1
  %cmp.not.i = icmp eq i32 %count.0.i, 0
  br i1 %cmp.not.i, label %if.end.i.out_no_read_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end.i.out_no_read_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_no_read

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 2048
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i32 %shl
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #4, !srcloc !14
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  %arrayidx = getelementptr i32, ptr %msg, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.do.body36_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.do.body36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body36

do.body36:                                        ; preds = %for.body.do.body36_crit_edge, %for.cond.preheader.do.body36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr40 = getelementptr i8, ptr %17, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 33554432) #4, !srcloc !13
  %msgs_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1, i32 1
  %18 = ptrtoint ptr %msgs_rx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msgs_rx, align 4
  %inc41 = add i32 %19, 1
  store i32 %inc41, ptr %msgs_rx, align 4
  br label %out_no_read

out_no_read:                                      ; preds = %do.body36, %if.end.i.out_no_read_crit_edge
  %ret_val.0.i53 = phi i32 [ 0, %do.body36 ], [ -15, %if.end.i.out_no_read_crit_edge ]
  ret i32 %ret_val.0.i53
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_write_mbx_vf(ptr noundef %hw, ptr nocapture noundef readonly %msg, i16 noundef zeroext %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !11

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %v2p_mailbox2.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %count.0.i = phi i32 [ 10, %if.end ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #4, !srcloc !13
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 3136
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !14
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %7 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v2p_mailbox2.i.i, align 4
  %or.i.i = or i32 %8, %6
  %9 = and i32 %6, 176
  %or5.i.i = or i32 %8, %9
  store i32 %or5.i.i, ptr %v2p_mailbox2.i.i, align 4
  %and.i = and i32 %or.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #4
  %dec.i = add nsw i32 %count.0.i, -1
  %cmp.not.i = icmp eq i32 %count.0.i, 0
  br i1 %cmp.not.i, label %if.end.i.out_no_write_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end.i.out_no_write_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_no_write

if.end27:                                         ; preds = %do.body.i
  %11 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 3136
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !14
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %15 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %v2p_mailbox2.i.i, align 4
  %or.i.i.i = or i32 %16, %14
  %17 = and i32 %14, 144
  %and.i.i = and i32 %or.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  %.masked.i = and i32 %16, -33
  %and2.i.i = or i32 %.masked.i, %17
  %18 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and2.i.i, ptr %v2p_mailbox2.i.i, align 4
  br i1 %tobool.not.i.not.i, label %if.end27.e1000_check_for_ack_vf.exit_crit_edge, label %if.then.i

if.end27.e1000_check_for_ack_vf.exit_crit_edge:   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_check_for_ack_vf.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %acks.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1, i32 2
  %19 = ptrtoint ptr %acks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %acks.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %acks.i, align 4
  br label %e1000_check_for_ack_vf.exit

e1000_check_for_ack_vf.exit:                      ; preds = %if.then.i, %if.end27.e1000_check_for_ack_vf.exit_crit_edge
  %21 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i.i58 = getelementptr i8, ptr %22, i32 3136
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i58) #4, !srcloc !14
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %25 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v2p_mailbox2.i.i, align 4
  %or.i.i.i60 = or i32 %26, %24
  %27 = and i32 %24, 160
  %and.i.i61 = and i32 %or.i.i.i60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61)
  %tobool.not.i.not.i62 = icmp eq i32 %and.i.i61, 0
  %.masked.i63 = and i32 %26, -17
  %and2.i.i64 = or i32 %.masked.i63, %27
  %28 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and2.i.i64, ptr %v2p_mailbox2.i.i, align 4
  br i1 %tobool.not.i.not.i62, label %e1000_check_for_ack_vf.exit.e1000_check_for_msg_vf.exit_crit_edge, label %if.then.i66

e1000_check_for_ack_vf.exit.e1000_check_for_msg_vf.exit_crit_edge: ; preds = %e1000_check_for_ack_vf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_check_for_msg_vf.exit

if.then.i66:                                      ; preds = %e1000_check_for_ack_vf.exit
  call void @__sanitizer_cov_trace_pc() #6
  %reqs.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1, i32 3
  %29 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reqs.i, align 4
  %inc.i65 = add i32 %30, 1
  store i32 %inc.i65, ptr %reqs.i, align 4
  br label %e1000_check_for_msg_vf.exit

e1000_check_for_msg_vf.exit:                      ; preds = %if.then.i66, %e1000_check_for_ack_vf.exit.e1000_check_for_msg_vf.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp3173.not = icmp eq i16 %size, 0
  br i1 %cmp3173.not, label %e1000_check_for_msg_vf.exit.for.end_crit_edge, label %do.body33.preheader

e1000_check_for_msg_vf.exit.for.end_crit_edge:    ; preds = %e1000_check_for_msg_vf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body33.preheader:                              ; preds = %e1000_check_for_msg_vf.exit
  %wide.trip.count = zext i16 %size to i32
  br label %do.body33

do.body33:                                        ; preds = %do.body33.do.body33_crit_edge, %do.body33.preheader
  %indvars.iv = phi i32 [ 0, %do.body33.preheader ], [ %indvars.iv.next, %do.body33.do.body33_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %arrayidx = getelementptr i32, ptr %msg, i32 %indvars.iv
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 2048
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add.ptr37 = getelementptr i8, ptr %add.ptr, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %33) #4, !srcloc !13
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %do.body33.for.end_crit_edge, label %do.body33.do.body33_crit_edge

do.body33.do.body33_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body33

do.body33.for.end_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %do.body33.for.end_crit_edge, %e1000_check_for_msg_vf.exit.for.end_crit_edge
  %stats = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stats, align 4
  %inc38 = add i32 %37, 1
  store i32 %inc38, ptr %stats, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %38 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr43 = getelementptr i8, ptr %39, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 16777216) #4, !srcloc !13
  br label %out_no_write

out_no_write:                                     ; preds = %for.end, %if.end.i.out_no_write_crit_edge
  %ret_val.0.i71 = phi i32 [ 0, %for.end ], [ -15, %if.end.i.out_no_write_crit_edge ]
  ret i32 %ret_val.0.i71
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_read_posted_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 1
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %timeout.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout.i, align 4
  %check_for_msg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %4 = ptrtoint ptr %check_for_msg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_for_msg.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool16.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %out.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end
  br i1 %tobool16.not.i, label %while.cond.preheader.i.out.thread.i_crit_edge, label %land.rhs.lr.ph.i

while.cond.preheader.i.out.thread.i_crit_edge:    ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread.i

land.rhs.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %usec_delay.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %countdown.034.i = phi i32 [ %3, %land.rhs.lr.ph.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %6 = ptrtoint ptr %check_for_msg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %check_for_msg.i, align 4
  %call.i = tail call i32 %7(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %land.rhs.i.if.then3_crit_edge, label %while.body.i

land.rhs.i.if.then3_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add i32 %countdown.034.i, -1
  %8 = ptrtoint ptr %usec_delay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #4
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %while.body.i.out.thread.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i

while.body.i.out.thread.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread.i

out.thread.i:                                     ; preds = %while.body.i.out.thread.i_crit_edge, %while.cond.preheader.i.out.thread.i_crit_edge
  %11 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %timeout.i, align 4
  br label %out

out.i:                                            ; preds = %if.end
  br i1 %tobool16.not.i, label %out.i.out_crit_edge, label %out.i.if.then3_crit_edge

out.i.if.then3_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

out.i.out_crit_edge:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then3:                                         ; preds = %out.i.if.then3_crit_edge, %land.rhs.i.if.then3_crit_edge
  %12 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read, align 4
  %call6 = tail call i32 %13(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size) #4
  br label %out

out:                                              ; preds = %if.then3, %out.i.out_crit_edge, %out.thread.i, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call6, %if.then3 ], [ -15, %entry.out_crit_edge ], [ -15, %out.thread.i ], [ -15, %out.i.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_write_posted_mbx(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %timeout = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 %1(ptr noundef %hw, ptr noundef %msg, i16 noundef zeroext %size) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then6:                                         ; preds = %if.end
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %check_for_ack.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 6
  %6 = ptrtoint ptr %check_for_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %check_for_ack.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool16.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %out.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.then6
  br i1 %tobool16.not.i, label %while.cond.preheader.i.out.thread.i_crit_edge, label %land.rhs.lr.ph.i

while.cond.preheader.i.out.thread.i_crit_edge:    ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread.i

land.rhs.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %usec_delay.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %countdown.034.i = phi i32 [ %5, %land.rhs.lr.ph.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %8 = ptrtoint ptr %check_for_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %check_for_ack.i, align 4
  %call.i = tail call i32 %9(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %land.rhs.i.out_crit_edge, label %while.body.i

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add i32 %countdown.034.i, -1
  %10 = ptrtoint ptr %usec_delay.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usec_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %12(i32 noundef %11) #4
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %while.body.i.out.thread.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i

while.body.i.out.thread.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread.i

out.thread.i:                                     ; preds = %while.body.i.out.thread.i_crit_edge, %while.cond.preheader.i.out.thread.i_crit_edge
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %timeout, align 4
  br label %14

out.i:                                            ; preds = %if.then6
  br i1 %tobool16.not.i, label %out.i._crit_edge, label %out.i.out_crit_edge

out.i.out_crit_edge:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out.i._crit_edge:                                 ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %14

14:                                               ; preds = %out.i._crit_edge, %out.thread.i
  br label %out

out:                                              ; preds = %14, %out.i.out_crit_edge, %land.rhs.i.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ -15, %lor.lhs.false.out_crit_edge ], [ -15, %entry.out_crit_edge ], [ -15, %14 ], [ 0, %out.i.out_crit_edge ], [ 0, %land.rhs.i.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_check_for_msg_vf(ptr nocapture noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 3136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !14
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %v2p_mailbox2.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v2p_mailbox2.i.i, align 4
  %or.i.i = or i32 %5, %3
  %6 = and i32 %3, 160
  %and.i = and i32 %or.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  %.masked = and i32 %5, -17
  %and2.i = or i32 %.masked, %6
  %7 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and2.i, ptr %v2p_mailbox2.i.i, align 4
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %reqs = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1, i32 3
  %8 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqs, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %reqs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ -15, %entry.if.end_crit_edge ], [ 0, %if.then ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_check_for_ack_vf(ptr nocapture noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 3136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !14
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %v2p_mailbox2.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v2p_mailbox2.i.i, align 4
  %or.i.i = or i32 %5, %3
  %6 = and i32 %3, 144
  %and.i = and i32 %or.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  %.masked = and i32 %5, -33
  %and2.i = or i32 %.masked, %6
  %7 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and2.i, ptr %v2p_mailbox2.i.i, align 4
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %acks = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1, i32 2
  %8 = ptrtoint ptr %acks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %acks, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %acks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ -15, %entry.if.end_crit_edge ], [ 0, %if.then ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_check_for_rst_vf(ptr nocapture noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 3136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !14
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %v2p_mailbox2.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v2p_mailbox2.i.i, align 4
  %or.i.i = or i32 %5, %3
  %6 = and i32 %3, 48
  %and.i = and i32 %or.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  %.masked = and i32 %5, -193
  %and2.i = or i32 %.masked, %6
  %7 = ptrtoint ptr %v2p_mailbox2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and2.i, ptr %v2p_mailbox2.i.i, align 4
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %rsts = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1, i32 4
  %8 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rsts, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %rsts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i32 [ -15, %entry.if.end_crit_edge ], [ 0, %if.then ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igbvf/mbx.c", i32 282, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2155123200}
!13 = !{i64 4994452}
!14 = !{i64 4994870}
!15 = !{i64 2155118696}
!16 = !{i64 2155127471}
!17 = !{i64 2155127836}
!18 = !{i64 2155125147}
!19 = !{i64 2155125741}
