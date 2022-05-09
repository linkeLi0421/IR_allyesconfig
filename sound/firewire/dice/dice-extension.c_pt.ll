; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice-extension.c_pt.bc'
source_filename = "../sound/firewire/dice/dice-extension.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_dice = type { ptr, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, [2 x [3 x i32]], [2 x [3 x i32]], [2 x i32], [2 x i32], %struct.fw_address_handler, i32, i32, i32, i8, %struct.wait_queue_head, [2 x %struct.fw_iso_resources], [2 x %struct.fw_iso_resources], [2 x %struct.amdtp_stream], [2 x %struct.amdtp_stream], i8, %struct.completion, i32, %struct.amdtp_domain }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_detect_extension_formats(ptr nocapture noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  %reg.i59.i = alloca [2 x i32], align 4
  %reg.i.i = alloca [2 x i32], align 4
  %reg.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 72) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.end:                                           ; preds = %entry
  %unit = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call1 = tail call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 5, i64 noundef 281474441936896, ptr noundef nonnull %call7.i.i, i32 noundef 72, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.end_crit_edge, label %for.body8.lr.ph

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.body8.lr.ph.1:                                ; preds = %for.cond6.680
  %arrayidx.1 = getelementptr i32, ptr %call7.i.i, i32 2
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 8
  %arrayidx10.1 = getelementptr i32, ptr %call7.i.i, i32 4
  %5 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp11.1 = icmp eq i32 %4, %6
  br i1 %cmp11.1, label %for.body8.lr.ph.1.end_crit_edge, label %for.cond6.1

for.body8.lr.ph.1.end_crit_edge:                  ; preds = %for.body8.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.1:                                      ; preds = %for.body8.lr.ph.1
  %arrayidx10.1.1 = getelementptr i32, ptr %call7.i.i, i32 6
  %7 = ptrtoint ptr %arrayidx10.1.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx10.1.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp11.1.1 = icmp eq i32 %4, %8
  br i1 %cmp11.1.1, label %for.cond6.1.end_crit_edge, label %for.cond6.1.1

for.cond6.1.end_crit_edge:                        ; preds = %for.cond6.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.1.1:                                    ; preds = %for.cond6.1
  %arrayidx10.1.2 = getelementptr i32, ptr %call7.i.i, i32 8
  %9 = ptrtoint ptr %arrayidx10.1.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx10.1.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %10)
  %cmp11.1.2 = icmp eq i32 %4, %10
  br i1 %cmp11.1.2, label %for.cond6.1.1.end_crit_edge, label %for.cond6.1.2

for.cond6.1.1.end_crit_edge:                      ; preds = %for.cond6.1.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.1.2:                                    ; preds = %for.cond6.1.1
  %arrayidx10.1.3 = getelementptr i32, ptr %call7.i.i, i32 10
  %11 = ptrtoint ptr %arrayidx10.1.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10.1.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %12)
  %cmp11.1.3 = icmp eq i32 %4, %12
  br i1 %cmp11.1.3, label %for.cond6.1.2.end_crit_edge, label %for.cond6.1.3

for.cond6.1.2.end_crit_edge:                      ; preds = %for.cond6.1.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.1.3:                                    ; preds = %for.cond6.1.2
  %arrayidx10.1.4 = getelementptr i32, ptr %call7.i.i, i32 12
  %13 = ptrtoint ptr %arrayidx10.1.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10.1.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %14)
  %cmp11.1.4 = icmp eq i32 %4, %14
  br i1 %cmp11.1.4, label %for.cond6.1.3.end_crit_edge, label %for.cond6.1.4

for.cond6.1.3.end_crit_edge:                      ; preds = %for.cond6.1.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.1.4:                                    ; preds = %for.cond6.1.3
  %arrayidx10.1.5 = getelementptr i32, ptr %call7.i.i, i32 14
  %15 = ptrtoint ptr %arrayidx10.1.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10.1.5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %16)
  %cmp11.1.5 = icmp eq i32 %4, %16
  br i1 %cmp11.1.5, label %for.cond6.1.4.end_crit_edge, label %for.cond6.1.5

for.cond6.1.4.end_crit_edge:                      ; preds = %for.cond6.1.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.1.5:                                    ; preds = %for.cond6.1.4
  %arrayidx10.1.6 = getelementptr i32, ptr %call7.i.i, i32 16
  %17 = ptrtoint ptr %arrayidx10.1.6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx10.1.6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %18)
  %cmp11.1.6 = icmp eq i32 %4, %18
  br i1 %cmp11.1.6, label %for.cond6.1.5.end_crit_edge, label %for.body8.lr.ph.2

for.cond6.1.5.end_crit_edge:                      ; preds = %for.cond6.1.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.body8.lr.ph.2:                                ; preds = %for.cond6.1.5
  %arrayidx.2 = getelementptr i32, ptr %call7.i.i, i32 4
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2, align 8
  %arrayidx10.2 = getelementptr i32, ptr %call7.i.i, i32 6
  %21 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp11.2 = icmp eq i32 %20, %22
  br i1 %cmp11.2, label %for.body8.lr.ph.2.end_crit_edge, label %for.cond6.2

for.body8.lr.ph.2.end_crit_edge:                  ; preds = %for.body8.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.2:                                      ; preds = %for.body8.lr.ph.2
  %arrayidx10.2.1 = getelementptr i32, ptr %call7.i.i, i32 8
  %23 = ptrtoint ptr %arrayidx10.2.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx10.2.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp11.2.1 = icmp eq i32 %20, %24
  br i1 %cmp11.2.1, label %for.cond6.2.end_crit_edge, label %for.cond6.2.1

for.cond6.2.end_crit_edge:                        ; preds = %for.cond6.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.2.1:                                    ; preds = %for.cond6.2
  %arrayidx10.2.2 = getelementptr i32, ptr %call7.i.i, i32 10
  %25 = ptrtoint ptr %arrayidx10.2.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10.2.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %26)
  %cmp11.2.2 = icmp eq i32 %20, %26
  br i1 %cmp11.2.2, label %for.cond6.2.1.end_crit_edge, label %for.cond6.2.2

for.cond6.2.1.end_crit_edge:                      ; preds = %for.cond6.2.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.2.2:                                    ; preds = %for.cond6.2.1
  %arrayidx10.2.3 = getelementptr i32, ptr %call7.i.i, i32 12
  %27 = ptrtoint ptr %arrayidx10.2.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx10.2.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %28)
  %cmp11.2.3 = icmp eq i32 %20, %28
  br i1 %cmp11.2.3, label %for.cond6.2.2.end_crit_edge, label %for.cond6.2.3

for.cond6.2.2.end_crit_edge:                      ; preds = %for.cond6.2.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.2.3:                                    ; preds = %for.cond6.2.2
  %arrayidx10.2.4 = getelementptr i32, ptr %call7.i.i, i32 14
  %29 = ptrtoint ptr %arrayidx10.2.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx10.2.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %30)
  %cmp11.2.4 = icmp eq i32 %20, %30
  br i1 %cmp11.2.4, label %for.cond6.2.3.end_crit_edge, label %for.cond6.2.4

for.cond6.2.3.end_crit_edge:                      ; preds = %for.cond6.2.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.2.4:                                    ; preds = %for.cond6.2.3
  %arrayidx10.2.5 = getelementptr i32, ptr %call7.i.i, i32 16
  %31 = ptrtoint ptr %arrayidx10.2.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx10.2.5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %32)
  %cmp11.2.5 = icmp eq i32 %20, %32
  br i1 %cmp11.2.5, label %for.cond6.2.4.end_crit_edge, label %for.body8.lr.ph.3

for.cond6.2.4.end_crit_edge:                      ; preds = %for.cond6.2.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.body8.lr.ph.3:                                ; preds = %for.cond6.2.4
  %arrayidx.3 = getelementptr i32, ptr %call7.i.i, i32 6
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.3, align 8
  %arrayidx10.3 = getelementptr i32, ptr %call7.i.i, i32 8
  %35 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx10.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp11.3 = icmp eq i32 %34, %36
  br i1 %cmp11.3, label %for.body8.lr.ph.3.end_crit_edge, label %for.cond6.3

for.body8.lr.ph.3.end_crit_edge:                  ; preds = %for.body8.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.3:                                      ; preds = %for.body8.lr.ph.3
  %arrayidx10.3.1 = getelementptr i32, ptr %call7.i.i, i32 10
  %37 = ptrtoint ptr %arrayidx10.3.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx10.3.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %38)
  %cmp11.3.1 = icmp eq i32 %34, %38
  br i1 %cmp11.3.1, label %for.cond6.3.end_crit_edge, label %for.cond6.3.1

for.cond6.3.end_crit_edge:                        ; preds = %for.cond6.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.3.1:                                    ; preds = %for.cond6.3
  %arrayidx10.3.2 = getelementptr i32, ptr %call7.i.i, i32 12
  %39 = ptrtoint ptr %arrayidx10.3.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx10.3.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %40)
  %cmp11.3.2 = icmp eq i32 %34, %40
  br i1 %cmp11.3.2, label %for.cond6.3.1.end_crit_edge, label %for.cond6.3.2

for.cond6.3.1.end_crit_edge:                      ; preds = %for.cond6.3.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.3.2:                                    ; preds = %for.cond6.3.1
  %arrayidx10.3.3 = getelementptr i32, ptr %call7.i.i, i32 14
  %41 = ptrtoint ptr %arrayidx10.3.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx10.3.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %42)
  %cmp11.3.3 = icmp eq i32 %34, %42
  br i1 %cmp11.3.3, label %for.cond6.3.2.end_crit_edge, label %for.cond6.3.3

for.cond6.3.2.end_crit_edge:                      ; preds = %for.cond6.3.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.3.3:                                    ; preds = %for.cond6.3.2
  %arrayidx10.3.4 = getelementptr i32, ptr %call7.i.i, i32 16
  %43 = ptrtoint ptr %arrayidx10.3.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx10.3.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %44)
  %cmp11.3.4 = icmp eq i32 %34, %44
  br i1 %cmp11.3.4, label %for.cond6.3.3.end_crit_edge, label %for.body8.lr.ph.4

for.cond6.3.3.end_crit_edge:                      ; preds = %for.cond6.3.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.body8.lr.ph.4:                                ; preds = %for.cond6.3.3
  %arrayidx.4 = getelementptr i32, ptr %call7.i.i, i32 8
  %45 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.4, align 8
  %arrayidx10.4 = getelementptr i32, ptr %call7.i.i, i32 10
  %47 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx10.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp11.4 = icmp eq i32 %46, %48
  br i1 %cmp11.4, label %for.body8.lr.ph.4.end_crit_edge, label %for.cond6.4

for.body8.lr.ph.4.end_crit_edge:                  ; preds = %for.body8.lr.ph.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.4:                                      ; preds = %for.body8.lr.ph.4
  %arrayidx10.4.1 = getelementptr i32, ptr %call7.i.i, i32 12
  %49 = ptrtoint ptr %arrayidx10.4.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx10.4.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %50)
  %cmp11.4.1 = icmp eq i32 %46, %50
  br i1 %cmp11.4.1, label %for.cond6.4.end_crit_edge, label %for.cond6.4.1

for.cond6.4.end_crit_edge:                        ; preds = %for.cond6.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.4.1:                                    ; preds = %for.cond6.4
  %arrayidx10.4.2 = getelementptr i32, ptr %call7.i.i, i32 14
  %51 = ptrtoint ptr %arrayidx10.4.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx10.4.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %52)
  %cmp11.4.2 = icmp eq i32 %46, %52
  br i1 %cmp11.4.2, label %for.cond6.4.1.end_crit_edge, label %for.cond6.4.2

for.cond6.4.1.end_crit_edge:                      ; preds = %for.cond6.4.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.4.2:                                    ; preds = %for.cond6.4.1
  %arrayidx10.4.3 = getelementptr i32, ptr %call7.i.i, i32 16
  %53 = ptrtoint ptr %arrayidx10.4.3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx10.4.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %54)
  %cmp11.4.3 = icmp eq i32 %46, %54
  br i1 %cmp11.4.3, label %for.cond6.4.2.end_crit_edge, label %for.body8.lr.ph.5

for.cond6.4.2.end_crit_edge:                      ; preds = %for.cond6.4.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.body8.lr.ph.5:                                ; preds = %for.cond6.4.2
  %arrayidx.5 = getelementptr i32, ptr %call7.i.i, i32 10
  %55 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.5, align 8
  %arrayidx10.5 = getelementptr i32, ptr %call7.i.i, i32 12
  %57 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx10.5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp11.5 = icmp eq i32 %56, %58
  br i1 %cmp11.5, label %for.body8.lr.ph.5.end_crit_edge, label %for.cond6.5

for.body8.lr.ph.5.end_crit_edge:                  ; preds = %for.body8.lr.ph.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.5:                                      ; preds = %for.body8.lr.ph.5
  %arrayidx10.5.1 = getelementptr i32, ptr %call7.i.i, i32 14
  %59 = ptrtoint ptr %arrayidx10.5.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx10.5.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %60)
  %cmp11.5.1 = icmp eq i32 %56, %60
  br i1 %cmp11.5.1, label %for.cond6.5.end_crit_edge, label %for.cond6.5.1

for.cond6.5.end_crit_edge:                        ; preds = %for.cond6.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.5.1:                                    ; preds = %for.cond6.5
  %arrayidx10.5.2 = getelementptr i32, ptr %call7.i.i, i32 16
  %61 = ptrtoint ptr %arrayidx10.5.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx10.5.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %62)
  %cmp11.5.2 = icmp eq i32 %56, %62
  br i1 %cmp11.5.2, label %for.cond6.5.1.end_crit_edge, label %for.body8.lr.ph.6

for.cond6.5.1.end_crit_edge:                      ; preds = %for.cond6.5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.body8.lr.ph.6:                                ; preds = %for.cond6.5.1
  %arrayidx.6 = getelementptr i32, ptr %call7.i.i, i32 12
  %63 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.6, align 8
  %arrayidx10.6 = getelementptr i32, ptr %call7.i.i, i32 14
  %65 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx10.6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp11.6 = icmp eq i32 %64, %66
  br i1 %cmp11.6, label %for.body8.lr.ph.6.end_crit_edge, label %for.cond6.6

for.body8.lr.ph.6.end_crit_edge:                  ; preds = %for.body8.lr.ph.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.6:                                      ; preds = %for.body8.lr.ph.6
  %arrayidx10.6.1 = getelementptr i32, ptr %call7.i.i, i32 16
  %67 = ptrtoint ptr %arrayidx10.6.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx10.6.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %68)
  %cmp11.6.1 = icmp eq i32 %64, %68
  br i1 %cmp11.6.1, label %for.cond6.6.end_crit_edge, label %for.body8.lr.ph.7

for.cond6.6.end_crit_edge:                        ; preds = %for.cond6.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.body8.lr.ph.7:                                ; preds = %for.cond6.6
  %arrayidx.7 = getelementptr i32, ptr %call7.i.i, i32 14
  %69 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.7, align 8
  %arrayidx10.7 = getelementptr i32, ptr %call7.i.i, i32 16
  %71 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx10.7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp11.7 = icmp eq i32 %70, %72
  br i1 %cmp11.7, label %for.body8.lr.ph.7.end_crit_edge, label %for.cond.loopexit.8

for.body8.lr.ph.7.end_crit_edge:                  ; preds = %for.body8.lr.ph.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond.loopexit.8:                              ; preds = %for.body8.lr.ph.7
  %arrayidx17 = getelementptr i32, ptr %call7.i.i, i32 12
  %73 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx17, align 8
  %mul18 = shl i32 %74, 2
  %conv = zext i32 %mul18 to i64
  %add19 = add nuw nsw i64 %conv, 281474441936896
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i) #5
  %75 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %reg.i, align 4, !annotation !9
  %76 = getelementptr inbounds [2 x i32], ptr %reg.i, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %76, align 4, !annotation !9
  %clock_caps.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 9
  %tx_pcm_chs.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 10
  %tx_midi_ports.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 12
  %78 = getelementptr inbounds [2 x i32], ptr %reg.i.i, i32 0, i32 1
  %rx_pcm_chs.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 11
  %rx_midi_ports.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 13
  %79 = getelementptr inbounds [2 x i32], ptr %reg.i59.i, i32 0, i32 1
  br label %for.body.i

for.body8.lr.ph:                                  ; preds = %if.end
  %80 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %call7.i.i, align 8
  %arrayidx10 = getelementptr i32, ptr %call7.i.i, i32 2
  %82 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp11 = icmp eq i32 %81, %83
  br i1 %cmp11, label %for.body8.lr.ph.end_crit_edge, label %for.cond6

for.body8.lr.ph.end_crit_edge:                    ; preds = %for.body8.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6:                                        ; preds = %for.body8.lr.ph
  %arrayidx10.157 = getelementptr i32, ptr %call7.i.i, i32 4
  %84 = ptrtoint ptr %arrayidx10.157 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx10.157, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %85)
  %cmp11.158 = icmp eq i32 %81, %85
  br i1 %cmp11.158, label %for.cond6.end_crit_edge, label %for.cond6.160

for.cond6.end_crit_edge:                          ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.160:                                    ; preds = %for.cond6
  %arrayidx10.261 = getelementptr i32, ptr %call7.i.i, i32 6
  %86 = ptrtoint ptr %arrayidx10.261 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx10.261, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %87)
  %cmp11.262 = icmp eq i32 %81, %87
  br i1 %cmp11.262, label %for.cond6.160.end_crit_edge, label %for.cond6.264

for.cond6.160.end_crit_edge:                      ; preds = %for.cond6.160
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.264:                                    ; preds = %for.cond6.160
  %arrayidx10.365 = getelementptr i32, ptr %call7.i.i, i32 8
  %88 = ptrtoint ptr %arrayidx10.365 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx10.365, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %89)
  %cmp11.366 = icmp eq i32 %81, %89
  br i1 %cmp11.366, label %for.cond6.264.end_crit_edge, label %for.cond6.368

for.cond6.264.end_crit_edge:                      ; preds = %for.cond6.264
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.368:                                    ; preds = %for.cond6.264
  %arrayidx10.469 = getelementptr i32, ptr %call7.i.i, i32 10
  %90 = ptrtoint ptr %arrayidx10.469 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx10.469, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %91)
  %cmp11.470 = icmp eq i32 %81, %91
  br i1 %cmp11.470, label %for.cond6.368.end_crit_edge, label %for.cond6.472

for.cond6.368.end_crit_edge:                      ; preds = %for.cond6.368
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.472:                                    ; preds = %for.cond6.368
  %arrayidx10.573 = getelementptr i32, ptr %call7.i.i, i32 12
  %92 = ptrtoint ptr %arrayidx10.573 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx10.573, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %93)
  %cmp11.574 = icmp eq i32 %81, %93
  br i1 %cmp11.574, label %for.cond6.472.end_crit_edge, label %for.cond6.576

for.cond6.472.end_crit_edge:                      ; preds = %for.cond6.472
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.576:                                    ; preds = %for.cond6.472
  %arrayidx10.677 = getelementptr i32, ptr %call7.i.i, i32 14
  %94 = ptrtoint ptr %arrayidx10.677 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx10.677, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %95)
  %cmp11.678 = icmp eq i32 %81, %95
  br i1 %cmp11.678, label %for.cond6.576.end_crit_edge, label %for.cond6.680

for.cond6.576.end_crit_edge:                      ; preds = %for.cond6.576
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.cond6.680:                                    ; preds = %for.cond6.576
  %arrayidx10.783 = getelementptr i32, ptr %call7.i.i, i32 16
  %96 = ptrtoint ptr %arrayidx10.783 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx10.783, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %97)
  %cmp11.784 = icmp eq i32 %81, %97
  br i1 %cmp11.784, label %for.cond6.680.end_crit_edge, label %for.body8.lr.ph.1

for.cond6.680.end_crit_edge:                      ; preds = %for.cond6.680
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.loopexit.8
  %mode.0100.i = phi i32 [ 0, %for.cond.loopexit.8 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.0100.i)
  %switch.selectcmp.i = icmp eq i32 %mode.0100.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 24, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.0100.i)
  %switch.selectcmp56.i = icmp eq i32 %mode.0100.i, 2
  %switch.select57.i = select i1 %switch.selectcmp56.i, i32 96, i32 %switch.select.i
  %98 = ptrtoint ptr %clock_caps.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %clock_caps.i, align 4
  %and.i = and i32 %switch.select57.i, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  %mul.i = shl i32 %mode.0100.i, 13
  %add.i = or i32 %mul.i, 4096
  %100 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %unit, align 4
  %conv.i.i = zext i32 %add.i to i64
  %add.i.i = add nuw nsw i64 %add19, %conv.i.i
  %call.i.i = call i32 @snd_fw_transaction(ptr noundef %101, i32 noundef 5, i64 noundef %add.i.i, ptr noundef nonnull %reg.i, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp9.i, label %if.end7.i.detect_stream_formats.exit_crit_edge, label %if.end11.i

if.end7.i.detect_stream_formats.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %detect_stream_formats.exit

if.end11.i:                                       ; preds = %if.end7.i
  %add12.i = or i32 %mul.i, 4104
  %102 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i.i) #5
  %104 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !9
  %105 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %78, align 4, !annotation !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp22.not.i.i = icmp eq i32 %103, 0
  br i1 %cmp22.not.i.i, label %if.end11.i.if.end17.i_crit_edge, label %if.end11.i.for.body.i.i_crit_edge

if.end11.i.for.body.i.i_crit_edge:                ; preds = %if.end11.i
  br label %for.body.i.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end11.i.for.body.i.i_crit_edge
  %i.023.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.end11.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.023.i.i, 268
  %add.i58.i = add i32 %mul.i.i, %add12.i
  %106 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %unit, align 4
  %conv.i.i.i = zext i32 %add.i58.i to i64
  %add.i.i.i = add nuw nsw i64 %add19, %conv.i.i.i
  %call.i.i.i = call i32 @snd_fw_transaction(ptr noundef %107, i32 noundef 5, i64 noundef %add.i.i.i, ptr noundef nonnull %reg.i.i, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp2.i.i, label %read_stream_entries.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %108 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %reg.i.i, align 4
  %arrayidx4.i.i = getelementptr [3 x i32], ptr %tx_pcm_chs.i, i32 %i.023.i.i, i32 %mode.0100.i
  %110 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %arrayidx4.i.i, align 4
  %arrayidx5.i.i = getelementptr i32, ptr %tx_midi_ports.i, i32 %i.023.i.i
  %111 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx5.i.i, align 4
  %113 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %78, align 4
  %115 = call i32 @llvm.umax.i32(i32 %112, i32 %114) #5
  %116 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx5.i.i, align 4
  %inc.i.i = add nuw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %103
  br i1 %exitcond.not.i.i, label %if.end.i.i.if.end17.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end.i.i.if.end17.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

read_stream_entries.exit.i:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i.i) #5
  br label %detect_stream_formats.exit

if.end17.i:                                       ; preds = %if.end.i.i.if.end17.i_crit_edge, %if.end11.i.if.end17.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i.i) #5
  %117 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %76, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i59.i) #5
  %119 = ptrtoint ptr %reg.i59.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %reg.i59.i, align 4, !annotation !9
  %120 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %79, align 4, !annotation !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp22.not.i60.i = icmp eq i32 %118, 0
  br i1 %cmp22.not.i60.i, label %if.end17.i.cleanup.thread91.i_crit_edge, label %if.end17.i.for.body.i70.i_crit_edge

if.end17.i.for.body.i70.i_crit_edge:              ; preds = %if.end17.i
  br label %for.body.i70.i

if.end17.i.cleanup.thread91.i_crit_edge:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread91.i

for.body.i70.i:                                   ; preds = %if.end.i75.i.for.body.i70.i_crit_edge, %if.end17.i.for.body.i70.i_crit_edge
  %i.023.i63.i = phi i32 [ %inc.i73.i, %if.end.i75.i.for.body.i70.i_crit_edge ], [ 0, %if.end17.i.for.body.i70.i_crit_edge ]
  %reass.add.i = add i32 %i.023.i63.i, %103
  %reass.mul.i = mul i32 %reass.add.i, 268
  %add.i65.i = add i32 %reass.mul.i, %add12.i
  %121 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %unit, align 4
  %conv.i.i66.i = zext i32 %add.i65.i to i64
  %add.i.i67.i = add nuw nsw i64 %add19, %conv.i.i66.i
  %call.i.i68.i = call i32 @snd_fw_transaction(ptr noundef %122, i32 noundef 5, i64 noundef %add.i.i67.i, ptr noundef nonnull %reg.i59.i, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68.i)
  %cmp2.i69.i = icmp slt i32 %call.i.i68.i, 0
  br i1 %cmp2.i69.i, label %cleanup.i, label %if.end.i75.i

if.end.i75.i:                                     ; preds = %for.body.i70.i
  %123 = ptrtoint ptr %reg.i59.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %reg.i59.i, align 4
  %arrayidx4.i71.i = getelementptr [3 x i32], ptr %rx_pcm_chs.i, i32 %i.023.i63.i, i32 %mode.0100.i
  %125 = ptrtoint ptr %arrayidx4.i71.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx4.i71.i, align 4
  %arrayidx5.i72.i = getelementptr i32, ptr %rx_midi_ports.i, i32 %i.023.i63.i
  %126 = ptrtoint ptr %arrayidx5.i72.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx5.i72.i, align 4
  %128 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %79, align 4
  %130 = call i32 @llvm.umax.i32(i32 %127, i32 %129) #5
  %131 = ptrtoint ptr %arrayidx5.i72.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx5.i72.i, align 4
  %inc.i73.i = add nuw i32 %i.023.i63.i, 1
  %exitcond.not.i74.i = icmp eq i32 %inc.i73.i, %118
  br i1 %exitcond.not.i74.i, label %if.end.i75.i.cleanup.thread91.i_crit_edge, label %if.end.i75.i.for.body.i70.i_crit_edge

if.end.i75.i.for.body.i70.i_crit_edge:            ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i70.i

if.end.i75.i.cleanup.thread91.i_crit_edge:        ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread91.i

cleanup.thread91.i:                               ; preds = %if.end.i75.i.cleanup.thread91.i_crit_edge, %if.end17.i.cleanup.thread91.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i59.i) #5
  br label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i59.i) #5
  br label %detect_stream_formats.exit

for.inc.i:                                        ; preds = %cleanup.thread91.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %mode.0100.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.inc.i.detect_stream_formats.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.detect_stream_formats.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %detect_stream_formats.exit

detect_stream_formats.exit:                       ; preds = %for.inc.i.detect_stream_formats.exit_crit_edge, %cleanup.i, %read_stream_entries.exit.i, %if.end7.i.detect_stream_formats.exit_crit_edge
  %err.2.i = phi i32 [ %call.i.i68.i, %cleanup.i ], [ %call.i.i.i, %read_stream_entries.exit.i ], [ 0, %for.inc.i.detect_stream_formats.exit_crit_edge ], [ %call.i.i, %if.end7.i.detect_stream_formats.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #5
  br label %end

end:                                              ; preds = %detect_stream_formats.exit, %for.cond6.680.end_crit_edge, %for.cond6.576.end_crit_edge, %for.cond6.472.end_crit_edge, %for.cond6.368.end_crit_edge, %for.cond6.264.end_crit_edge, %for.cond6.160.end_crit_edge, %for.cond6.end_crit_edge, %for.body8.lr.ph.end_crit_edge, %for.body8.lr.ph.7.end_crit_edge, %for.cond6.6.end_crit_edge, %for.body8.lr.ph.6.end_crit_edge, %for.cond6.5.1.end_crit_edge, %for.cond6.5.end_crit_edge, %for.body8.lr.ph.5.end_crit_edge, %for.cond6.4.2.end_crit_edge, %for.cond6.4.1.end_crit_edge, %for.cond6.4.end_crit_edge, %for.body8.lr.ph.4.end_crit_edge, %for.cond6.3.3.end_crit_edge, %for.cond6.3.2.end_crit_edge, %for.cond6.3.1.end_crit_edge, %for.cond6.3.end_crit_edge, %for.body8.lr.ph.3.end_crit_edge, %for.cond6.2.4.end_crit_edge, %for.cond6.2.3.end_crit_edge, %for.cond6.2.2.end_crit_edge, %for.cond6.2.1.end_crit_edge, %for.cond6.2.end_crit_edge, %for.body8.lr.ph.2.end_crit_edge, %for.cond6.1.5.end_crit_edge, %for.cond6.1.4.end_crit_edge, %for.cond6.1.3.end_crit_edge, %for.cond6.1.2.end_crit_edge, %for.cond6.1.1.end_crit_edge, %for.cond6.1.end_crit_edge, %for.body8.lr.ph.1.end_crit_edge, %if.end.end_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %err.2.i, %detect_stream_formats.exit ], [ -6, %for.body8.lr.ph.7.end_crit_edge ], [ -6, %for.body8.lr.ph.6.end_crit_edge ], [ -6, %for.cond6.6.end_crit_edge ], [ -6, %for.body8.lr.ph.5.end_crit_edge ], [ -6, %for.cond6.5.end_crit_edge ], [ -6, %for.cond6.5.1.end_crit_edge ], [ -6, %for.body8.lr.ph.4.end_crit_edge ], [ -6, %for.cond6.4.end_crit_edge ], [ -6, %for.cond6.4.1.end_crit_edge ], [ -6, %for.cond6.4.2.end_crit_edge ], [ -6, %for.body8.lr.ph.3.end_crit_edge ], [ -6, %for.cond6.3.end_crit_edge ], [ -6, %for.cond6.3.1.end_crit_edge ], [ -6, %for.cond6.3.2.end_crit_edge ], [ -6, %for.cond6.3.3.end_crit_edge ], [ -6, %for.body8.lr.ph.2.end_crit_edge ], [ -6, %for.cond6.2.end_crit_edge ], [ -6, %for.cond6.2.1.end_crit_edge ], [ -6, %for.cond6.2.2.end_crit_edge ], [ -6, %for.cond6.2.3.end_crit_edge ], [ -6, %for.cond6.2.4.end_crit_edge ], [ -6, %for.body8.lr.ph.1.end_crit_edge ], [ -6, %for.cond6.1.end_crit_edge ], [ -6, %for.cond6.1.1.end_crit_edge ], [ -6, %for.cond6.1.2.end_crit_edge ], [ -6, %for.cond6.1.3.end_crit_edge ], [ -6, %for.cond6.1.4.end_crit_edge ], [ -6, %for.cond6.1.5.end_crit_edge ], [ -6, %for.body8.lr.ph.end_crit_edge ], [ -6, %for.cond6.end_crit_edge ], [ -6, %for.cond6.160.end_crit_edge ], [ -6, %for.cond6.264.end_crit_edge ], [ -6, %for.cond6.368.end_crit_edge ], [ -6, %for.cond6.472.end_crit_edge ], [ -6, %for.cond6.576.end_crit_edge ], [ -6, %for.cond6.680.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup21

cleanup21:                                        ; preds = %end, %entry.cleanup21_crit_edge
  %retval.0 = phi i32 [ %err.2, %end ], [ -12, %entry.cleanup21_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
