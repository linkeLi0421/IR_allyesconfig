; ModuleID = '/llk/IR_all_yes/kernel/time/vsyscall.c_pt.bc'
source_filename = "../kernel/time/vsyscall.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timezone = type { i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timekeeper = type { %struct.tk_read_base, %struct.tk_read_base, i64, i32, %struct.timespec64, i64, i64, i64, i32, i32, i8, i64, i64, %struct.timespec64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.tk_read_base = type { ptr, i64, i64, i32, i32, i64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@hrtimer_resolution = external dso_local local_unnamed_addr global i32, align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@timekeeper_lock = external dso_local global %struct.raw_spinlock, align 4
@vdso_data = external dso_local local_unnamed_addr global ptr, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_vsyscall(ptr noundef readonly %tk) local_unnamed_addr #0 align 64 {
entry:
  %dividend.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vdso_data to i32))
  %0 = load ptr, ptr @vdso_data, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %add.i = add i32 %2, 1
  store volatile i32 %add.i, ptr %0, align 8
  %arrayidx11.i = getelementptr %struct.vdso_data, ptr %0, i32 1
  %3 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx11.i, align 8
  %add13.i = add i32 %4, 1
  store volatile i32 %add13.i, ptr %arrayidx11.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !9
  %5 = ptrtoint ptr %tk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tk, align 8
  %vdso_clock_mode = getelementptr inbounds %struct.clocksource, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %vdso_clock_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vdso_clock_mode, align 4
  %clock_mode1 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %clock_mode1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %clock_mode1, align 4
  %clock_mode3 = getelementptr %struct.vdso_data, ptr %0, i32 1, i32 1
  %10 = ptrtoint ptr %clock_mode3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %clock_mode3, align 4
  %11 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 6
  %xtime_sec = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 2
  %12 = ptrtoint ptr %xtime_sec to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %xtime_sec, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %11, align 8
  %xtime_nsec = getelementptr inbounds %struct.tk_read_base, ptr %tk, i32 0, i32 5
  %15 = ptrtoint ptr %xtime_nsec to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %xtime_nsec, align 8
  %nsec7 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %nsec7 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %nsec7, align 8
  %arrayidx9 = getelementptr %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 5
  %18 = load i64, ptr %xtime_sec, align 8
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx9, align 8
  %20 = load i64, ptr %xtime_nsec, align 8
  %shift = getelementptr inbounds %struct.tk_read_base, ptr %tk, i32 0, i32 4
  %21 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %shift, align 4
  %sh_prom = zext i32 %22 to i64
  %shr = lshr i64 %20, %sh_prom
  %nsec15 = getelementptr %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %nsec15 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shr, ptr %nsec15, align 8
  %arrayidx17 = getelementptr %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 6
  %24 = load i64, ptr %xtime_sec, align 8
  %wall_to_monotonic = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 4
  %25 = ptrtoint ptr %wall_to_monotonic to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wall_to_monotonic, align 8
  %add = add i64 %26, %24
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add, ptr %arrayidx17, align 8
  %28 = load i64, ptr %xtime_nsec, align 8
  %29 = load i32, ptr %shift, align 4
  %sh_prom24 = zext i32 %29 to i64
  %shr25 = lshr i64 %28, %sh_prom24
  %tv_nsec = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tv_nsec, align 8
  %conv = sext i32 %31 to i64
  %add27 = add i64 %shr25, %conv
  %nsec28 = getelementptr %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i)
  %32 = ptrtoint ptr %dividend.addr.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add27, ptr %dividend.addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %add27)
  %cmp1.i = icmp ugt i64 %add27, 999999999
  br i1 %cmp1.i, label %entry.while.body.i_crit_edge, label %entry.__iter_div_u64_rem.exit_crit_edge

entry.__iter_div_u64_rem.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %__iter_div_u64_rem.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %ret.02.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %33 = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %add27, %entry.while.body.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i, i64 %33) #3, !srcloc !10
  %34 = ptrtoint ptr %dividend.addr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dividend.addr.i, align 8
  %sub.i = add i64 %35, -1000000000
  store i64 %sub.i, ptr %dividend.addr.i, align 8
  %inc.i = add i32 %ret.02.i, 1
  %cmp.i = icmp ugt i64 %sub.i, 999999999
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__iter_div_u64_rem.exit_crit_edge

while.body.i.__iter_div_u64_rem.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__iter_div_u64_rem.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

__iter_div_u64_rem.exit:                          ; preds = %while.body.i.__iter_div_u64_rem.exit_crit_edge, %entry.__iter_div_u64_rem.exit_crit_edge
  %.lcssa.i = phi i64 [ %add27, %entry.__iter_div_u64_rem.exit_crit_edge ], [ %sub.i, %while.body.i.__iter_div_u64_rem.exit_crit_edge ]
  %ret.0.lcssa.i = phi i32 [ 0, %entry.__iter_div_u64_rem.exit_crit_edge ], [ %inc.i, %while.body.i.__iter_div_u64_rem.exit_crit_edge ]
  %36 = ptrtoint ptr %nsec28 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %.lcssa.i, ptr %nsec28, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i)
  %conv30 = zext i32 %ret.0.lcssa.i to i64
  %37 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx17, align 8
  %add32 = add i64 %38, %conv30
  store i64 %add32, ptr %arrayidx17, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hrtimer_resolution to i32))
  %39 = load i32, ptr @hrtimer_resolution, align 4
  %hrtimer_res = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 9
  %40 = ptrtoint ptr %hrtimer_res to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %39, ptr %hrtimer_res, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %__iter_div_u64_rem.exit.if.end_crit_edge, label %if.then

__iter_div_u64_rem.exit.if.end_crit_edge:         ; preds = %__iter_div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %__iter_div_u64_rem.exit
  %cycle_last.i = getelementptr inbounds %struct.tk_read_base, ptr %tk, i32 0, i32 2
  %41 = ptrtoint ptr %cycle_last.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %cycle_last.i, align 8
  %cycle_last1.i = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 2
  %43 = ptrtoint ptr %cycle_last1.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %cycle_last1.i, align 8
  %mask.i = getelementptr inbounds %struct.tk_read_base, ptr %tk, i32 0, i32 1
  %44 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %mask.i, align 8
  %mask4.i = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 3
  %46 = ptrtoint ptr %mask4.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %mask4.i, align 8
  %mult.i = getelementptr inbounds %struct.tk_read_base, ptr %tk, i32 0, i32 3
  %47 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mult.i, align 8
  %mult7.i = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 4
  %49 = ptrtoint ptr %mult7.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %mult7.i, align 8
  %50 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %shift, align 4
  %shift10.i = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 5
  %52 = ptrtoint ptr %shift10.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %shift10.i, align 4
  %cycle_last11.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %cycle_last11.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %cycle_last11.i, align 8
  %cycle_last13.i = getelementptr %struct.vdso_data, ptr %0, i32 1, i32 2
  %55 = ptrtoint ptr %cycle_last13.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %cycle_last13.i, align 8
  %mask15.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %mask15.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %mask15.i, align 8
  %mask17.i = getelementptr %struct.vdso_data, ptr %0, i32 1, i32 3
  %58 = ptrtoint ptr %mask17.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %mask17.i, align 8
  %mult19.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 1, i32 3
  %59 = ptrtoint ptr %mult19.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mult19.i, align 8
  %mult21.i = getelementptr %struct.vdso_data, ptr %0, i32 1, i32 4
  %61 = ptrtoint ptr %mult21.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %mult21.i, align 8
  %shift23.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 1, i32 4
  %62 = ptrtoint ptr %shift23.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %shift23.i, align 4
  %shift25.i = getelementptr %struct.vdso_data, ptr %0, i32 1, i32 5
  %64 = ptrtoint ptr %shift25.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %shift25.i, align 4
  %arrayidx27.i = getelementptr %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 1
  %65 = ptrtoint ptr %xtime_sec to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %xtime_sec, align 8
  %67 = ptrtoint ptr %wall_to_monotonic to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %wall_to_monotonic, align 8
  %add.i74 = add i64 %68, %66
  %69 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %add.i74, ptr %arrayidx27.i, align 8
  %70 = ptrtoint ptr %xtime_nsec to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %xtime_nsec, align 8
  %72 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tv_nsec, align 8
  %conv.i = sext i32 %73 to i64
  %74 = load i32, ptr %shift, align 4
  %sh_prom.i = zext i32 %74 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %add33.i = add i64 %shl.i, %71
  %shl37145.i = shl i64 1000000000, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add33.i, i64 %shl37145.i)
  %cmp.not146.i = icmp ult i64 %add33.i, %shl37145.i
  br i1 %cmp.not146.i, label %if.then.while.end.i_crit_edge, label %if.then.while.body.i77_crit_edge

if.then.while.body.i77_crit_edge:                 ; preds = %if.then
  br label %while.body.i77

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

while.body.i77:                                   ; preds = %while.body.i77.while.body.i77_crit_edge, %if.then.while.body.i77_crit_edge
  %shl37148.i = phi i64 [ %shl37.i, %while.body.i77.while.body.i77_crit_edge ], [ %shl37145.i, %if.then.while.body.i77_crit_edge ]
  %nsec.0147.i = phi i64 [ %sub.i75, %while.body.i77.while.body.i77_crit_edge ], [ %add33.i, %if.then.while.body.i77_crit_edge ]
  %sub.i75 = sub i64 %nsec.0147.i, %shl37148.i
  %75 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx27.i, align 8
  %inc.i76 = add i64 %76, 1
  store i64 %inc.i76, ptr %arrayidx27.i, align 8
  %77 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %shift, align 4
  %sh_prom36.i = zext i32 %78 to i64
  %shl37.i = shl i64 1000000000, %sh_prom36.i
  %cmp.not.i = icmp ult i64 %sub.i75, %shl37.i
  br i1 %cmp.not.i, label %while.body.i77.while.end.i_crit_edge, label %while.body.i77.while.body.i77_crit_edge

while.body.i77.while.body.i77_crit_edge:          ; preds = %while.body.i77
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i77

while.body.i77.while.end.i_crit_edge:             ; preds = %while.body.i77
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i77.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %nsec.0.lcssa.i = phi i64 [ %add33.i, %if.then.while.end.i_crit_edge ], [ %sub.i75, %while.body.i77.while.end.i_crit_edge ]
  %nsec44.i = getelementptr %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %nsec44.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %nsec.0.lcssa.i, ptr %nsec44.i, align 8
  %80 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx27.i, align 8
  %monotonic_to_boot.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 13
  %82 = ptrtoint ptr %monotonic_to_boot.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %monotonic_to_boot.i, align 8
  %add47.i = add i64 %83, %81
  %tv_nsec49.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 13, i32 1
  %84 = ptrtoint ptr %tv_nsec49.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tv_nsec49.i, align 8
  %conv50.i = sext i32 %85 to i64
  %86 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %shift, align 4
  %sh_prom53.i = zext i32 %87 to i64
  %shl54.i = shl i64 %conv50.i, %sh_prom53.i
  %add55.i = add i64 %shl54.i, %nsec.0.lcssa.i
  %arrayidx57.i = getelementptr %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 7
  %88 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add47.i, ptr %arrayidx57.i, align 8
  %89 = load i32, ptr %shift, align 4
  %sh_prom62149.i = zext i32 %89 to i64
  %shl63150.i = shl i64 1000000000, %sh_prom62149.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add55.i, i64 %shl63150.i)
  %cmp64.not151.i = icmp ult i64 %add55.i, %shl63150.i
  br i1 %cmp64.not151.i, label %while.end.i.update_vdso_data.exit_crit_edge, label %while.end.i.while.body66.i_crit_edge

while.end.i.while.body66.i_crit_edge:             ; preds = %while.end.i
  br label %while.body66.i

while.end.i.update_vdso_data.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %update_vdso_data.exit

while.body66.i:                                   ; preds = %while.body66.i.while.body66.i_crit_edge, %while.end.i.while.body66.i_crit_edge
  %shl63154.i = phi i64 [ %shl63.i, %while.body66.i.while.body66.i_crit_edge ], [ %shl63150.i, %while.end.i.while.body66.i_crit_edge ]
  %nsec.1153.i = phi i64 [ %sub71.i, %while.body66.i.while.body66.i_crit_edge ], [ %add55.i, %while.end.i.while.body66.i_crit_edge ]
  %storemerge152.i = phi i64 [ %inc73.i, %while.body66.i.while.body66.i_crit_edge ], [ %add47.i, %while.end.i.while.body66.i_crit_edge ]
  %sub71.i = sub i64 %nsec.1153.i, %shl63154.i
  %inc73.i = add i64 %storemerge152.i, 1
  %90 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %inc73.i, ptr %arrayidx57.i, align 8
  %91 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %shift, align 4
  %sh_prom62.i = zext i32 %92 to i64
  %shl63.i = shl i64 1000000000, %sh_prom62.i
  %cmp64.not.i = icmp ult i64 %sub71.i, %shl63.i
  br i1 %cmp64.not.i, label %while.body66.i.update_vdso_data.exit_crit_edge, label %while.body66.i.while.body66.i_crit_edge

while.body66.i.while.body66.i_crit_edge:          ; preds = %while.body66.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body66.i

while.body66.i.update_vdso_data.exit_crit_edge:   ; preds = %while.body66.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %update_vdso_data.exit

update_vdso_data.exit:                            ; preds = %while.body66.i.update_vdso_data.exit_crit_edge, %while.end.i.update_vdso_data.exit_crit_edge
  %nsec.1.lcssa.i = phi i64 [ %add55.i, %while.end.i.update_vdso_data.exit_crit_edge ], [ %sub71.i, %while.body66.i.update_vdso_data.exit_crit_edge ]
  %nsec75.i = getelementptr %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 7, i32 1
  %93 = ptrtoint ptr %nsec75.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %nsec.1.lcssa.i, ptr %nsec75.i, align 8
  %arrayidx77.i = getelementptr %struct.vdso_data, ptr %0, i32 1, i32 6, i32 0, i32 4
  %raw_sec.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 12
  %94 = ptrtoint ptr %raw_sec.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %raw_sec.i, align 8
  %96 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %arrayidx77.i, align 8
  %xtime_nsec80.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 1, i32 5
  %97 = ptrtoint ptr %xtime_nsec80.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %xtime_nsec80.i, align 8
  %nsec81.i = getelementptr %struct.vdso_data, ptr %0, i32 1, i32 6, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %nsec81.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %nsec81.i, align 8
  %arrayidx83.i = getelementptr %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 11
  %100 = ptrtoint ptr %xtime_sec to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %xtime_sec, align 8
  %tai_offset.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 8
  %102 = ptrtoint ptr %tai_offset.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tai_offset.i, align 8
  %conv85.i = sext i32 %103 to i64
  %add86.i = add i64 %101, %conv85.i
  %104 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %add86.i, ptr %arrayidx83.i, align 8
  %105 = ptrtoint ptr %xtime_nsec to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %xtime_nsec, align 8
  %nsec90.i = getelementptr %struct.vdso_data, ptr %0, i32 0, i32 6, i32 0, i32 11, i32 1
  %107 = ptrtoint ptr %nsec90.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %nsec90.i, align 8
  br label %if.end

if.end:                                           ; preds = %update_vdso_data.exit, %__iter_div_u64_rem.exit.if.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !11
  %108 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %0, align 8
  %add.i72 = add i32 %109, 1
  store volatile i32 %add.i72, ptr %0, align 8
  %110 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx11.i, align 8
  %add17.i = add i32 %111, 1
  store volatile i32 %add17.i, ptr %arrayidx11.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %112 = load ptr, ptr @mem_map, align 4
  %113 = ptrtoint ptr %0 to i32
  %sub.i73 = add i32 %113, 1073741824
  %shr.i = lshr i32 %sub.i73, 12
  %add.ptr.i = getelementptr %struct.page, ptr %112, i32 %shr.i
  call void @flush_dcache_page(ptr noundef %add.ptr.i) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_vsyscall_tz() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vdso_data to i32))
  %0 = load ptr, ptr @vdso_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %1 = load i32, ptr @sys_tz, align 4
  %tz_minuteswest = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 7
  %2 = ptrtoint ptr %tz_minuteswest to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tz_minuteswest, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.timezone, ptr @sys_tz, i32 0, i32 1) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.timezone, ptr @sys_tz, i32 0, i32 1), align 4
  %tz_dsttime = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 8
  %4 = ptrtoint ptr %tz_dsttime to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tz_dsttime, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %0 to i32
  %sub.i = add i32 %6, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %5, i32 %shr.i
  tail call void @flush_dcache_page(ptr noundef %add.ptr.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vdso_update_begin() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vdso_data to i32))
  %0 = load ptr, ptr @vdso_data, align 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %add.i = add i32 %2, 1
  store volatile i32 %add.i, ptr %0, align 8
  %arrayidx11.i = getelementptr %struct.vdso_data, ptr %0, i32 1
  %3 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx11.i, align 8
  %add13.i = add i32 %4, 1
  store volatile i32 %add13.i, ptr %arrayidx11.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vdso_update_end(i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vdso_data to i32))
  %0 = load ptr, ptr @vdso_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !11
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %add.i = add i32 %2, 1
  store volatile i32 %add.i, ptr %0, align 8
  %arrayidx15.i = getelementptr %struct.vdso_data, ptr %0, i32 1
  %3 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx15.i, align 8
  %add17.i = add i32 %4, 1
  store volatile i32 %add17.i, ptr %arrayidx15.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %0 to i32
  %sub.i = add i32 %6, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %5, i32 %shr.i
  tail call void @flush_dcache_page(ptr noundef %add.ptr.i) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %flags) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 2151623372}
!10 = !{i64 1107856}
!11 = !{i64 2151623739}
