; ModuleID = '/llk/IR_all_yes/arch/arm/vdso/vgettimeofday.c_pt.bc'
source_filename = "../arch/arm/vdso/vgettimeofday.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.old_timespec32 = type { i32, i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.timezone = type { i32, i32 }

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @__vdso_clock_gettime(i32 noundef %clock, ptr noundef %ts) local_unnamed_addr #0 align 64 {
entry:
  %dividend.addr.i.i.i.i.i = alloca i64, align 8
  %call.i.i = tail call ptr @__get_datapage() #4
  %cmp.i.i.i = icmp ugt i32 %clock, 15
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i.i, !prof !9

if.end.i.i.i:                                     ; preds = %entry
  %shl.i.i.i = shl nuw nsw i32 1, %clock
  %and.i.i.i = and i32 %shl.i.i.i, 2179
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i, label %if.end22.i.i.i, !prof !9

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %and10.i.i.i = and i32 %shl.i.i.i, 96
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.else14.i.i.i, label %if.then12.i.i.i

if.then12.i.i.i:                                  ; preds = %if.else.i.i.i
  %0 = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 6
  %arrayidx.i.i.i.i = getelementptr [12 x %struct.vdso_timestamp], ptr %0, i32 0, i32 %clock
  %nsec.i.i.i.i = getelementptr [12 x %struct.vdso_timestamp], ptr %0, i32 0, i32 %clock, i32 1
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.end15.i.i.i.i, %if.then12.i.i.i
  %1 = load volatile i32, ptr %call.i.i, align 8
  %and1.i.i.i.i = and i32 %1, 1
  %tobool.not2.i.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not2.i.i.i.i, label %do.end15.i.i.i.i, label %do.end7.i.i.i.i

do.end7.i.i.i.i:                                  ; preds = %do.end7.i.i.i.i, %do.body.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !11
  %2 = load volatile i32, ptr %call.i.i, align 8
  %and.i.i.i.i = and i32 %2, 1
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.end15.i.i.i.i, label %do.end7.i.i.i.i

do.end15.i.i.i.i:                                 ; preds = %do.end7.i.i.i.i, %do.body.i.i.i.i
  %.lcssa.i.i.i.i = phi i32 [ %1, %do.body.i.i.i.i ], [ %2, %do.end7.i.i.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  %3 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %4 = load i64, ptr %nsec.i.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !13
  %5 = load volatile i32, ptr %call.i.i, align 8
  %cmp.i.not.i.i.i.i = icmp eq i32 %5, %.lcssa.i.i.i.i
  br i1 %cmp.i.not.i.i.i.i, label %if.end.loopexit.i.i, label %do.body.i.i.i.i, !prof !14

if.else14.i.i.i:                                  ; preds = %if.else.i.i.i
  %tobool16.not.not.i.i.i = icmp eq i32 %clock, 4
  br i1 %tobool16.not.not.i.i.i, label %if.then17.i.i.i, label %if.then.i.i

if.then17.i.i.i:                                  ; preds = %if.else14.i.i.i
  %arrayidx18.i.i.i = getelementptr %struct.vdso_data, ptr %call.i.i, i32 1
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %if.then17.i.i.i, %if.end.i.i.i
  %vd.addr.0.i.i.i = phi ptr [ %arrayidx18.i.i.i, %if.then17.i.i.i ], [ %call.i.i, %if.end.i.i.i ]
  %6 = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 6
  %arrayidx.i33.i.i.i = getelementptr [12 x %struct.vdso_timestamp], ptr %6, i32 0, i32 %clock
  %clock_mode.i.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 1
  %nsec.i34.i.i.i = getelementptr [12 x %struct.vdso_timestamp], ptr %6, i32 0, i32 %clock, i32 1
  %cycle_last.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 2
  %mask.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 3
  %mult.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 4
  %shift.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 5
  br label %do.body.i35.i.i.i

do.body.i35.i.i.i:                                ; preds = %__arch_get_hw_counter.exit.i.i.i.i, %if.end22.i.i.i
  %7 = load volatile i32, ptr %vd.addr.0.i.i.i, align 8
  %and89.i.i.i.i = and i32 %7, 1
  %tobool.not90.i.i.i.i = icmp eq i32 %and89.i.i.i.i, 0
  br i1 %tobool.not90.i.i.i.i, label %do.end17.i.i.i.i, label %do.end9.i.i.i.i, !prof !14

do.end9.i.i.i.i:                                  ; preds = %do.end9.i.i.i.i, %do.body.i35.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !16
  %8 = load volatile i32, ptr %vd.addr.0.i.i.i, align 8
  %and.i36.i.i.i = and i32 %8, 1
  %tobool.not.i37.i.i.i = icmp eq i32 %and.i36.i.i.i, 0
  br i1 %tobool.not.i37.i.i.i, label %do.end17.i.i.i.i, label %do.end9.i.i.i.i, !prof !14

do.end17.i.i.i.i:                                 ; preds = %do.end9.i.i.i.i, %do.body.i35.i.i.i
  %.lcssa.i38.i.i.i = phi i32 [ %7, %do.body.i35.i.i.i ], [ %8, %do.end9.i.i.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !17
  %9 = load i32, ptr %clock_mode.i.i.i.i.i, align 4
  %cmp.i79.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i79.not.i.i.i.i, label %if.then.i.i, label %__arch_get_hw_counter.exit.i.i.i.i, !prof !9

__arch_get_hw_counter.exit.i.i.i.i:               ; preds = %do.end17.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  %10 = tail call i64 asm sideeffect "mrrc p15, 1, ${0:Q}, ${0:R}, c14", "=r"() #5, !srcloc !19
  %11 = load i64, ptr %nsec.i34.i.i.i, align 8
  %12 = load i64, ptr %cycle_last.i.i.i.i, align 8
  %13 = load i64, ptr %mask.i.i.i.i, align 8
  %14 = load i32, ptr %mult.i.i.i.i, align 8
  %15 = load i32, ptr %shift.i.i.i.i, align 4
  %16 = load i64, ptr %arrayidx.i33.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !13
  %17 = load volatile i32, ptr %vd.addr.0.i.i.i, align 8
  %cmp.i75.not.i.i.i.i = icmp eq i32 %17, %.lcssa.i38.i.i.i
  br i1 %cmp.i75.not.i.i.i.i, label %do.end55.i.i.i.i, label %do.body.i35.i.i.i, !prof !14

do.end55.i.i.i.i:                                 ; preds = %__arch_get_hw_counter.exit.i.i.i.i
  %sub.i.i.i.i.i = sub i64 %10, %12
  %and.i.i.i.i.i = and i64 %sub.i.i.i.i.i, %13
  %conv.i.i.i.i.i = zext i32 %14 to i64
  %mul.i.i.i.i.i = mul i64 %and.i.i.i.i.i, %conv.i.i.i.i.i
  %add.i.i.i.i = add i64 %mul.i.i.i.i.i, %11
  %sh_prom.i.i.i.i.i = zext i32 %15 to i64
  %shr.i.i.i.i.i = lshr i64 %add.i.i.i.i, %sh_prom.i.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i.i.i.i) #5
  store i64 %shr.i.i.i.i.i, ptr %dividend.addr.i.i.i.i.i, align 8
  %cmp1.i.i.i.i.i = icmp ugt i64 %shr.i.i.i.i.i, 999999999
  %extract.t17.i.i = trunc i64 %shr.i.i.i.i.i to i32
  br i1 %cmp1.i.i.i.i.i, label %while.body.i.i.i.i.i, label %__iter_div_u64_rem.exit.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %while.body.i.i.i.i.i, %do.end55.i.i.i.i
  %ret.02.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %while.body.i.i.i.i.i ], [ 0, %do.end55.i.i.i.i ]
  %18 = phi i64 [ %sub.i77.i.i.i.i, %while.body.i.i.i.i.i ], [ %shr.i.i.i.i.i, %do.end55.i.i.i.i ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i.i.i.i, i64 %18) #5, !srcloc !20
  %19 = load i64, ptr %dividend.addr.i.i.i.i.i, align 8
  %sub.i77.i.i.i.i = add i64 %19, -1000000000
  store i64 %sub.i77.i.i.i.i, ptr %dividend.addr.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %ret.02.i.i.i.i.i, 1
  %cmp.i78.i.i.i.i = icmp ugt i64 %sub.i77.i.i.i.i, 999999999
  br i1 %cmp.i78.i.i.i.i, label %while.body.i.i.i.i.i, label %__iter_div_u64_rem.exit.i.i.loopexit.i.i

__iter_div_u64_rem.exit.i.i.loopexit.i.i:         ; preds = %while.body.i.i.i.i.i
  %extract.t18.le.i.i = trunc i64 %sub.i77.i.i.i.i to i32
  br label %__iter_div_u64_rem.exit.i.i.i.i

__iter_div_u64_rem.exit.i.i.i.i:                  ; preds = %__iter_div_u64_rem.exit.i.i.loopexit.i.i, %do.end55.i.i.i.i
  %.lcssa.i.i.i.off0.i.i = phi i32 [ %extract.t17.i.i, %do.end55.i.i.i.i ], [ %extract.t18.le.i.i, %__iter_div_u64_rem.exit.i.i.loopexit.i.i ]
  %ret.0.lcssa.i.i.i.i.i = phi i32 [ 0, %do.end55.i.i.i.i ], [ %inc.i.i.i.i.i, %__iter_div_u64_rem.exit.i.i.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i.i.i.i) #5
  %20 = trunc i64 %16 to i32
  %extract.t.i.i = add i32 %ret.0.lcssa.i.i.i.i.i, %20
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %do.end17.i.i.i.i, %if.else14.i.i.i, %entry
  %21 = tail call i32 asm sideeffect "\09swi #0\0A", "={r0},{r0},{r1},{r7},~{memory}"(i32 %clock, ptr %ts, i32 263) #5, !srcloc !21
  br label %__cvdso_clock_gettime32.exit

if.end.loopexit.i.i:                              ; preds = %do.end15.i.i.i.i
  %extract.t16.le.i.i = trunc i64 %4 to i32
  %extract.t19.le.i.i = trunc i64 %3 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.loopexit.i.i, %__iter_div_u64_rem.exit.i.i.i.i
  %ts.sroa.6.0.off0.i.i = phi i32 [ %.lcssa.i.i.i.off0.i.i, %__iter_div_u64_rem.exit.i.i.i.i ], [ %extract.t16.le.i.i, %if.end.loopexit.i.i ]
  %ts.sroa.0.0.off0.i.i = phi i32 [ %extract.t.i.i, %__iter_div_u64_rem.exit.i.i.i.i ], [ %extract.t19.le.i.i, %if.end.loopexit.i.i ]
  store i32 %ts.sroa.0.0.off0.i.i, ptr %ts, align 4
  %tv_nsec6.i.i = getelementptr inbounds %struct.old_timespec32, ptr %ts, i32 0, i32 1
  store i32 %ts.sroa.6.0.off0.i.i, ptr %tv_nsec6.i.i, align 4
  br label %__cvdso_clock_gettime32.exit

__cvdso_clock_gettime32.exit:                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %21, %if.then.i.i ], [ 0, %if.end.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @__vdso_clock_gettime64(i32 noundef %clock, ptr noundef %ts) local_unnamed_addr #0 align 64 {
entry:
  %dividend.addr.i.i.i.i.i = alloca i64, align 8
  %call.i.i = tail call ptr @__get_datapage() #4
  %cmp.i.i.i = icmp ugt i32 %clock, 15
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i.i, !prof !9

if.end.i.i.i:                                     ; preds = %entry
  %shl.i.i.i = shl nuw nsw i32 1, %clock
  %and.i.i.i = and i32 %shl.i.i.i, 2179
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i, label %if.end22.i.i.i, !prof !9

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %and10.i.i.i = and i32 %shl.i.i.i, 96
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.else14.i.i.i, label %if.then12.i.i.i

if.then12.i.i.i:                                  ; preds = %if.else.i.i.i
  %0 = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 6
  %arrayidx.i.i.i.i = getelementptr [12 x %struct.vdso_timestamp], ptr %0, i32 0, i32 %clock
  %nsec.i.i.i.i = getelementptr [12 x %struct.vdso_timestamp], ptr %0, i32 0, i32 %clock, i32 1
  %tv_nsec.i.i.i.i = getelementptr inbounds %struct.__kernel_timespec, ptr %ts, i32 0, i32 1
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.end15.i.i.i.i, %if.then12.i.i.i
  %1 = load volatile i32, ptr %call.i.i, align 8
  %and1.i.i.i.i = and i32 %1, 1
  %tobool.not2.i.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not2.i.i.i.i, label %do.end15.i.i.i.i, label %do.end7.i.i.i.i

do.end7.i.i.i.i:                                  ; preds = %do.end7.i.i.i.i, %do.body.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !11
  %2 = load volatile i32, ptr %call.i.i, align 8
  %and.i.i.i.i = and i32 %2, 1
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.end15.i.i.i.i, label %do.end7.i.i.i.i

do.end15.i.i.i.i:                                 ; preds = %do.end7.i.i.i.i, %do.body.i.i.i.i
  %.lcssa.i.i.i.i = phi i32 [ %1, %do.body.i.i.i.i ], [ %2, %do.end7.i.i.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  %3 = load i64, ptr %arrayidx.i.i.i.i, align 8
  store i64 %3, ptr %ts, align 8
  %4 = load i64, ptr %nsec.i.i.i.i, align 8
  store i64 %4, ptr %tv_nsec.i.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !13
  %5 = load volatile i32, ptr %call.i.i, align 8
  %cmp.i.not.i.i.i.i = icmp eq i32 %5, %.lcssa.i.i.i.i
  br i1 %cmp.i.not.i.i.i.i, label %__cvdso_clock_gettime.exit, label %do.body.i.i.i.i, !prof !14

if.else14.i.i.i:                                  ; preds = %if.else.i.i.i
  %tobool16.not.not.i.i.i = icmp eq i32 %clock, 4
  br i1 %tobool16.not.not.i.i.i, label %if.then17.i.i.i, label %if.then.i.i

if.then17.i.i.i:                                  ; preds = %if.else14.i.i.i
  %arrayidx18.i.i.i = getelementptr %struct.vdso_data, ptr %call.i.i, i32 1
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %if.then17.i.i.i, %if.end.i.i.i
  %vd.addr.0.i.i.i = phi ptr [ %arrayidx18.i.i.i, %if.then17.i.i.i ], [ %call.i.i, %if.end.i.i.i ]
  %6 = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 6
  %arrayidx.i33.i.i.i = getelementptr [12 x %struct.vdso_timestamp], ptr %6, i32 0, i32 %clock
  %clock_mode.i.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 1
  %nsec.i34.i.i.i = getelementptr [12 x %struct.vdso_timestamp], ptr %6, i32 0, i32 %clock, i32 1
  %cycle_last.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 2
  %mask.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 3
  %mult.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 4
  %shift.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %vd.addr.0.i.i.i, i32 0, i32 5
  br label %do.body.i35.i.i.i

do.body.i35.i.i.i:                                ; preds = %__arch_get_hw_counter.exit.i.i.i.i, %if.end22.i.i.i
  %7 = load volatile i32, ptr %vd.addr.0.i.i.i, align 8
  %and89.i.i.i.i = and i32 %7, 1
  %tobool.not90.i.i.i.i = icmp eq i32 %and89.i.i.i.i, 0
  br i1 %tobool.not90.i.i.i.i, label %do.end17.i.i.i.i, label %do.end9.i.i.i.i, !prof !14

do.end9.i.i.i.i:                                  ; preds = %do.end9.i.i.i.i, %do.body.i35.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !16
  %8 = load volatile i32, ptr %vd.addr.0.i.i.i, align 8
  %and.i36.i.i.i = and i32 %8, 1
  %tobool.not.i37.i.i.i = icmp eq i32 %and.i36.i.i.i, 0
  br i1 %tobool.not.i37.i.i.i, label %do.end17.i.i.i.i, label %do.end9.i.i.i.i, !prof !14

do.end17.i.i.i.i:                                 ; preds = %do.end9.i.i.i.i, %do.body.i35.i.i.i
  %.lcssa.i38.i.i.i = phi i32 [ %7, %do.body.i35.i.i.i ], [ %8, %do.end9.i.i.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !17
  %9 = load i32, ptr %clock_mode.i.i.i.i.i, align 4
  %cmp.i79.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i79.not.i.i.i.i, label %if.then.i.i, label %__arch_get_hw_counter.exit.i.i.i.i, !prof !9

__arch_get_hw_counter.exit.i.i.i.i:               ; preds = %do.end17.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  %10 = tail call i64 asm sideeffect "mrrc p15, 1, ${0:Q}, ${0:R}, c14", "=r"() #5, !srcloc !19
  %11 = load i64, ptr %nsec.i34.i.i.i, align 8
  %12 = load i64, ptr %cycle_last.i.i.i.i, align 8
  %13 = load i64, ptr %mask.i.i.i.i, align 8
  %14 = load i32, ptr %mult.i.i.i.i, align 8
  %15 = load i32, ptr %shift.i.i.i.i, align 4
  %16 = load i64, ptr %arrayidx.i33.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !13
  %17 = load volatile i32, ptr %vd.addr.0.i.i.i, align 8
  %cmp.i75.not.i.i.i.i = icmp eq i32 %17, %.lcssa.i38.i.i.i
  br i1 %cmp.i75.not.i.i.i.i, label %do.end55.i.i.i.i, label %do.body.i35.i.i.i, !prof !14

do.end55.i.i.i.i:                                 ; preds = %__arch_get_hw_counter.exit.i.i.i.i
  %sub.i.i.i.i.i = sub i64 %10, %12
  %and.i.i.i.i.i = and i64 %sub.i.i.i.i.i, %13
  %conv.i.i.i.i.i = zext i32 %14 to i64
  %mul.i.i.i.i.i = mul i64 %and.i.i.i.i.i, %conv.i.i.i.i.i
  %add.i.i.i.i = add i64 %mul.i.i.i.i.i, %11
  %sh_prom.i.i.i.i.i = zext i32 %15 to i64
  %shr.i.i.i.i.i = lshr i64 %add.i.i.i.i, %sh_prom.i.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i.i.i.i) #5
  store i64 %shr.i.i.i.i.i, ptr %dividend.addr.i.i.i.i.i, align 8
  %cmp1.i.i.i.i.i = icmp ugt i64 %shr.i.i.i.i.i, 999999999
  br i1 %cmp1.i.i.i.i.i, label %while.body.i.i.i.i.i, label %__iter_div_u64_rem.exit.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %while.body.i.i.i.i.i, %do.end55.i.i.i.i
  %ret.02.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %while.body.i.i.i.i.i ], [ 0, %do.end55.i.i.i.i ]
  %18 = phi i64 [ %sub.i77.i.i.i.i, %while.body.i.i.i.i.i ], [ %shr.i.i.i.i.i, %do.end55.i.i.i.i ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i.i.i.i, i64 %18) #5, !srcloc !20
  %19 = load i64, ptr %dividend.addr.i.i.i.i.i, align 8
  %sub.i77.i.i.i.i = add i64 %19, -1000000000
  store i64 %sub.i77.i.i.i.i, ptr %dividend.addr.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %ret.02.i.i.i.i.i, 1
  %cmp.i78.i.i.i.i = icmp ugt i64 %sub.i77.i.i.i.i, 999999999
  br i1 %cmp.i78.i.i.i.i, label %while.body.i.i.i.i.i, label %__iter_div_u64_rem.exit.i.i.i.i

__iter_div_u64_rem.exit.i.i.i.i:                  ; preds = %while.body.i.i.i.i.i, %do.end55.i.i.i.i
  %.lcssa.i.i.i.i.i = phi i64 [ %shr.i.i.i.i.i, %do.end55.i.i.i.i ], [ %sub.i77.i.i.i.i, %while.body.i.i.i.i.i ]
  %ret.0.lcssa.i.i.i.i.i = phi i32 [ 0, %do.end55.i.i.i.i ], [ %inc.i.i.i.i.i, %while.body.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i.i.i.i) #5
  %conv.i.i.i.i = zext i32 %ret.0.lcssa.i.i.i.i.i to i64
  %add57.i.i.i.i = add i64 %16, %conv.i.i.i.i
  store i64 %add57.i.i.i.i, ptr %ts, align 8
  %tv_nsec.i39.i.i.i = getelementptr inbounds %struct.__kernel_timespec, ptr %ts, i32 0, i32 1
  store i64 %.lcssa.i.i.i.i.i, ptr %tv_nsec.i39.i.i.i, align 8
  br label %__cvdso_clock_gettime.exit

if.then.i.i:                                      ; preds = %do.end17.i.i.i.i, %if.else14.i.i.i, %entry
  %20 = tail call i32 asm sideeffect "\09swi #0\0A", "={r0},{r0},{r1},{r7},~{memory}"(i32 %clock, ptr %ts, i32 403) #5, !srcloc !22
  br label %__cvdso_clock_gettime.exit

__cvdso_clock_gettime.exit:                       ; preds = %if.then.i.i, %__iter_div_u64_rem.exit.i.i.i.i, %do.end15.i.i.i.i
  %retval.0.i.i = phi i32 [ %20, %if.then.i.i ], [ 0, %__iter_div_u64_rem.exit.i.i.i.i ], [ 0, %do.end15.i.i.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @__vdso_gettimeofday(ptr noundef %tv, ptr noundef %tz) local_unnamed_addr #0 align 64 {
entry:
  %dividend.addr.i.i.i.i = alloca i64, align 8
  %call.i.i = tail call ptr @__get_datapage() #4
  %cmp.not.i.i = icmp eq ptr %tv, null
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  %0 = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 6
  %clock_mode.i.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 1
  %nsec.i.i.i = getelementptr %struct.vdso_data, ptr %call.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %cycle_last.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 2
  %mask.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 3
  %mult.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 4
  %shift.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 5
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %__arch_get_hw_counter.exit.i.i.i, %if.then.i.i
  %1 = load volatile i32, ptr %call.i.i, align 8
  %and89.i.i.i = and i32 %1, 1
  %tobool.not90.i.i.i = icmp eq i32 %and89.i.i.i, 0
  br i1 %tobool.not90.i.i.i, label %do.end17.i.i.i, label %do.end9.i.i.i, !prof !14

do.end9.i.i.i:                                    ; preds = %do.end9.i.i.i, %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !16
  %2 = load volatile i32, ptr %call.i.i, align 8
  %and.i.i.i = and i32 %2, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end17.i.i.i, label %do.end9.i.i.i, !prof !14

do.end17.i.i.i:                                   ; preds = %do.end9.i.i.i, %do.body.i.i.i
  %.lcssa.i.i.i = phi i32 [ %1, %do.body.i.i.i ], [ %2, %do.end9.i.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !17
  %3 = load i32, ptr %clock_mode.i.i.i.i, align 4
  %cmp.i79.not.i.i.i = icmp eq i32 %3, 0
  br i1 %cmp.i79.not.i.i.i, label %cleanup.i.i, label %__arch_get_hw_counter.exit.i.i.i, !prof !9

__arch_get_hw_counter.exit.i.i.i:                 ; preds = %do.end17.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !18
  %4 = tail call i64 asm sideeffect "mrrc p15, 1, ${0:Q}, ${0:R}, c14", "=r"() #5, !srcloc !19
  %5 = load i64, ptr %nsec.i.i.i, align 8
  %6 = load i64, ptr %cycle_last.i.i.i, align 8
  %7 = load i64, ptr %mask.i.i.i, align 8
  %8 = load i32, ptr %mult.i.i.i, align 8
  %9 = load i32, ptr %shift.i.i.i, align 4
  %10 = load i64, ptr %0, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !13
  %11 = load volatile i32, ptr %call.i.i, align 8
  %cmp.i75.not.i.i.i = icmp eq i32 %11, %.lcssa.i.i.i
  br i1 %cmp.i75.not.i.i.i, label %do.end55.i.i.i, label %do.body.i.i.i, !prof !14

do.end55.i.i.i:                                   ; preds = %__arch_get_hw_counter.exit.i.i.i
  %sub.i.i.i.i = sub i64 %4, %6
  %and.i.i.i.i = and i64 %sub.i.i.i.i, %7
  %conv.i.i.i.i = zext i32 %8 to i64
  %mul.i.i.i.i = mul i64 %and.i.i.i.i, %conv.i.i.i.i
  %add.i.i.i = add i64 %mul.i.i.i.i, %5
  %sh_prom.i.i.i.i = zext i32 %9 to i64
  %shr.i.i.i.i = lshr i64 %add.i.i.i, %sh_prom.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i.i.i) #5
  store i64 %shr.i.i.i.i, ptr %dividend.addr.i.i.i.i, align 8
  %cmp1.i.i.i.i = icmp ugt i64 %shr.i.i.i.i, 999999999
  %extract.t.i.i = trunc i64 %shr.i.i.i.i to i32
  br i1 %cmp1.i.i.i.i, label %while.body.i.i.i.i, label %cleanup.thread.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i, %do.end55.i.i.i
  %ret.02.i.i.i.i = phi i32 [ %inc.i.i.i.i, %while.body.i.i.i.i ], [ 0, %do.end55.i.i.i ]
  %12 = phi i64 [ %sub.i77.i.i.i, %while.body.i.i.i.i ], [ %shr.i.i.i.i, %do.end55.i.i.i ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i.i.i, i64 %12) #5, !srcloc !20
  %13 = load i64, ptr %dividend.addr.i.i.i.i, align 8
  %sub.i77.i.i.i = add i64 %13, -1000000000
  store i64 %sub.i77.i.i.i, ptr %dividend.addr.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %ret.02.i.i.i.i, 1
  %cmp.i78.i.i.i = icmp ugt i64 %sub.i77.i.i.i, 999999999
  br i1 %cmp.i78.i.i.i, label %while.body.i.i.i.i, label %cleanup.thread.loopexit.i.i

cleanup.thread.loopexit.i.i:                      ; preds = %while.body.i.i.i.i
  %extract.t40.le.i.i = trunc i64 %sub.i77.i.i.i to i32
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %cleanup.thread.loopexit.i.i, %do.end55.i.i.i
  %.lcssa.i.i.off0.i.i = phi i32 [ %extract.t.i.i, %do.end55.i.i.i ], [ %extract.t40.le.i.i, %cleanup.thread.loopexit.i.i ]
  %ret.0.lcssa.i.i.i.i = phi i32 [ 0, %do.end55.i.i.i ], [ %inc.i.i.i.i, %cleanup.thread.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i.i.i) #5
  %14 = trunc i64 %10 to i32
  %conv.i.i = add i32 %ret.0.lcssa.i.i.i.i, %14
  store i32 %conv.i.i, ptr %tv, align 4
  %div.i.i = udiv i32 %.lcssa.i.i.off0.i.i, 1000
  %tv_usec.i.i = getelementptr inbounds %struct.__kernel_old_timeval, ptr %tv, i32 0, i32 1
  store i32 %div.i.i, ptr %tv_usec.i.i, align 4
  br label %if.end7.i.i

cleanup.i.i:                                      ; preds = %do.end17.i.i.i
  %15 = tail call i32 asm sideeffect "\09swi #0\0A", "={r0},{r0},{r1},{r7},~{memory}"(ptr nonnull %tv, ptr %tz, i32 78) #5, !srcloc !23
  br label %__cvdso_gettimeofday.exit

if.end7.i.i:                                      ; preds = %cleanup.thread.i.i, %entry
  %cmp8.not.i.i = icmp eq ptr %tz, null
  br i1 %cmp8.not.i.i, label %__cvdso_gettimeofday.exit, label %if.then16.i.i, !prof !14

if.then16.i.i:                                    ; preds = %if.end7.i.i
  %tz_minuteswest.i.i = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 7
  %16 = load i32, ptr %tz_minuteswest.i.i, align 8
  store i32 %16, ptr %tz, align 4
  %tz_dsttime.i.i = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 8
  %17 = load i32, ptr %tz_dsttime.i.i, align 4
  %tz_dsttime20.i.i = getelementptr inbounds %struct.timezone, ptr %tz, i32 0, i32 1
  store i32 %17, ptr %tz_dsttime20.i.i, align 4
  br label %__cvdso_gettimeofday.exit

__cvdso_gettimeofday.exit:                        ; preds = %if.then16.i.i, %if.end7.i.i, %cleanup.i.i
  %retval.1.i.i = phi i32 [ %15, %cleanup.i.i ], [ 0, %if.then16.i.i ], [ 0, %if.end7.i.i ]
  ret i32 %retval.1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @__vdso_clock_getres(i32 noundef %clock_id, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %call.i.i = tail call ptr @__get_datapage() #4
  %cmp.i.i.i = icmp ugt i32 %clock_id, 15
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i.i, !prof !9

if.end.i.i.i:                                     ; preds = %entry
  %shl.i.i.i = shl nuw nsw i32 1, %clock_id
  %and.i.i.i = and i32 %shl.i.i.i, 2195
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  %hrtimer_res.i.i.i = getelementptr inbounds %struct.vdso_data, ptr %call.i.i, i32 0, i32 9
  %0 = load volatile i32, ptr %hrtimer_res.i.i.i, align 8
  br label %if.end.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %and4.i.i.i = and i32 %shl.i.i.i, 96
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else.i.i.i, %entry
  %1 = tail call i32 asm sideeffect "       swi #0\0A", "={r0},{r0},{r1},{r7},~{memory}"(i32 %clock_id, ptr %res, i32 264) #5, !srcloc !24
  br label %__cvdso_clock_getres_time32.exit

if.end.i.i:                                       ; preds = %if.else.i.i.i, %do.end.i.i.i
  %ns.0.i.off0.i.i = phi i32 [ %0, %do.end.i.i.i ], [ 10000000, %if.else.i.i.i ]
  %tobool4.not.i.i = icmp eq ptr %res, null
  br i1 %tobool4.not.i.i, label %__cvdso_clock_getres_time32.exit, label %if.then11.i.i, !prof !9

if.then11.i.i:                                    ; preds = %if.end.i.i
  store i32 0, ptr %res, align 4
  %tv_nsec14.i.i = getelementptr inbounds %struct.old_timespec32, ptr %res, i32 0, i32 1
  store i32 %ns.0.i.off0.i.i, ptr %tv_nsec14.i.i, align 4
  br label %__cvdso_clock_getres_time32.exit

__cvdso_clock_getres_time32.exit:                 ; preds = %if.then11.i.i, %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %1, %if.then.i.i ], [ 0, %if.then11.i.i ], [ 0, %if.end.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define void @__aeabi_unwind_cpp_pr0() local_unnamed_addr #1 align 64 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define void @__aeabi_unwind_cpp_pr1() local_unnamed_addr #1 align 64 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define void @__aeabi_unwind_cpp_pr2() local_unnamed_addr #1 align 64 {
entry:
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare ptr @__get_datapage() local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148107463}
!11 = !{i64 2148107305}
!12 = !{i64 2148107628}
!13 = !{i64 2148085183}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148103024}
!16 = !{i64 2148102866}
!17 = !{i64 2148103189}
!18 = !{i64 2148078635}
!19 = !{i64 2148079017}
!20 = !{i64 547499}
!21 = !{i64 550628}
!22 = !{i64 550227}
!23 = !{i64 549823}
!24 = !{i64 551441}
