; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/ramht.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/ramht.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ramht = type { ptr, ptr, ptr, i32, i32, [0 x %struct.nvkm_ramht_data] }
%struct.nvkm_ramht_data = type { ptr, i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_ramht_search(ptr nocapture noundef readonly %ramht, i32 noundef %chid, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool.not12.i = icmp eq i32 %handle, 0
  br i1 %tobool.not12.i, label %entry.nvkm_ramht_hash.exit_crit_edge, label %while.body.lr.ph.i

entry.nvkm_ramht_hash.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_ramht_hash.exit

while.body.lr.ph.i:                               ; preds = %entry
  %bits.i = getelementptr inbounds %struct.nvkm_ramht, ptr %ramht, i32 0, i32 4
  %0 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits.i, align 4
  %notmask.i = shl nsw i32 -1, %1
  %sub.i = xor i32 %notmask.i, -1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %hash.014.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %xor.i, %while.body.i.while.body.i_crit_edge ]
  %handle.addr.013.i = phi i32 [ %handle, %while.body.lr.ph.i ], [ %shr.i, %while.body.i.while.body.i_crit_edge ]
  %and.i = and i32 %handle.addr.013.i, %sub.i
  %xor.i = xor i32 %and.i, %hash.014.i
  %shr.i = lshr i32 %handle.addr.013.i, %1
  %tobool.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool.not.i, label %while.body.i.nvkm_ramht_hash.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.nvkm_ramht_hash.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_ramht_hash.exit

nvkm_ramht_hash.exit:                             ; preds = %while.body.i.nvkm_ramht_hash.exit_crit_edge, %entry.nvkm_ramht_hash.exit_crit_edge
  %hash.0.lcssa.i = phi i32 [ 0, %entry.nvkm_ramht_hash.exit_crit_edge ], [ %xor.i, %while.body.i.nvkm_ramht_hash.exit_crit_edge ]
  %bits2.i = getelementptr inbounds %struct.nvkm_ramht, ptr %ramht, i32 0, i32 4
  %2 = ptrtoint ptr %bits2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits2.i, align 4
  %sub3.i = add i32 %3, -4
  %shl4.i = shl i32 %chid, %sub3.i
  %xor5.i = xor i32 %shl4.i, %hash.0.lcssa.i
  %size = getelementptr inbounds %struct.nvkm_ramht, ptr %ramht, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end9.do.body_crit_edge, %nvkm_ramht_hash.exit
  %co.0 = phi i32 [ %xor5.i, %nvkm_ramht_hash.exit ], [ %spec.store.select, %if.end9.do.body_crit_edge ]
  %chid1 = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %co.0, i32 1
  %4 = ptrtoint ptr %chid1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %chid)
  %cmp = icmp eq i32 %5, %chid
  br i1 %cmp, label %if.then, label %do.body.if.end9_crit_edge

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %do.body
  %handle4 = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %co.0, i32 2
  %6 = ptrtoint ptr %handle4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %handle)
  %cmp5 = icmp eq i32 %7, %handle
  br i1 %cmp5, label %if.then6, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.le = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %co.0
  %8 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.le, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %do.body.if.end9_crit_edge
  %inc = add i32 %co.0, 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %11)
  %cmp10.not = icmp ult i32 %inc, %11
  %spec.store.select = select i1 %cmp10.not, i32 %inc, i32 0
  %cmp13.not = icmp eq i32 %spec.store.select, %xor5.i
  br i1 %cmp13.not, label %if.end9.cleanup_crit_edge, label %if.end9.do.body_crit_edge

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %if.then6
  %retval.0 = phi ptr [ %9, %if.then6 ], [ null, %if.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_ramht_remove(ptr noundef %ramht, i32 noundef %cookie) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dec = add i32 %cookie, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec)
  %cmp = icmp sgt i32 %dec, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %dec
  tail call void @nvkm_gpuobj_del(ptr noundef %arrayidx.i) #5
  %chid3.i = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %dec, i32 1
  %0 = ptrtoint ptr %chid3.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chid3.i, align 4
  %handle4.i = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %dec, i32 2
  %1 = ptrtoint ptr %handle4.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %handle4.i, align 4
  %gpuobj.i = getelementptr inbounds %struct.nvkm_ramht, ptr %ramht, i32 0, i32 2
  %2 = ptrtoint ptr %gpuobj.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpuobj.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call35.i = tail call ptr %7(ptr noundef %3) #5
  %8 = ptrtoint ptr %gpuobj.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpuobj.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %wr32.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr32.i, align 4
  %shl38.i = shl i32 %dec, 3
  tail call void %13(ptr noundef %9, i32 noundef %shl38.i, i32 noundef 0) #5
  %14 = ptrtoint ptr %gpuobj.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpuobj.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %wr3240.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %wr3240.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr3240.i, align 4
  %add43.i = or i32 %shl38.i, 4
  tail call void %19(ptr noundef %15, i32 noundef %add43.i, i32 noundef 0) #5
  %20 = ptrtoint ptr %gpuobj.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpuobj.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %release.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release.i, align 4
  tail call void %25(ptr noundef %21) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ramht_insert(ptr noundef %ramht, ptr noundef %object, i32 noundef %chid, i32 noundef %addr, i32 noundef %handle, i32 noundef %context) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool.not12.i.i = icmp eq i32 %handle, 0
  br i1 %tobool.not12.i.i, label %entry.nvkm_ramht_hash.exit.i_crit_edge, label %while.body.lr.ph.i.i

entry.nvkm_ramht_hash.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_ramht_hash.exit.i

while.body.lr.ph.i.i:                             ; preds = %entry
  %bits.i.i = getelementptr inbounds %struct.nvkm_ramht, ptr %ramht, i32 0, i32 4
  %0 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %1
  %sub.i.i = xor i32 %notmask.i.i, -1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %hash.014.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %xor.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %handle.addr.013.i.i = phi i32 [ %handle, %while.body.lr.ph.i.i ], [ %shr.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %and.i.i = and i32 %handle.addr.013.i.i, %sub.i.i
  %xor.i.i = xor i32 %and.i.i, %hash.014.i.i
  %shr.i.i = lshr i32 %handle.addr.013.i.i, %1
  %tobool.not.i.i = icmp eq i32 %shr.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.nvkm_ramht_hash.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.body.i.i.nvkm_ramht_hash.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_ramht_hash.exit.i

nvkm_ramht_hash.exit.i:                           ; preds = %while.body.i.i.nvkm_ramht_hash.exit.i_crit_edge, %entry.nvkm_ramht_hash.exit.i_crit_edge
  %hash.0.lcssa.i.i = phi i32 [ 0, %entry.nvkm_ramht_hash.exit.i_crit_edge ], [ %xor.i.i, %while.body.i.i.nvkm_ramht_hash.exit.i_crit_edge ]
  %bits2.i.i = getelementptr inbounds %struct.nvkm_ramht, ptr %ramht, i32 0, i32 4
  %2 = ptrtoint ptr %bits2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits2.i.i, align 4
  %sub3.i.i = add i32 %3, -4
  %shl4.i.i = shl i32 %chid, %sub3.i.i
  %xor5.i.i = xor i32 %shl4.i.i, %hash.0.lcssa.i.i
  %size.i = getelementptr inbounds %struct.nvkm_ramht, ptr %ramht, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end9.i.do.body.i_crit_edge, %nvkm_ramht_hash.exit.i
  %co.0.i = phi i32 [ %xor5.i.i, %nvkm_ramht_hash.exit.i ], [ %spec.store.select.i, %if.end9.i.do.body.i_crit_edge ]
  %chid1.i = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %co.0.i, i32 1
  %4 = ptrtoint ptr %chid1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chid1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %chid)
  %cmp.i = icmp eq i32 %5, %chid
  br i1 %cmp.i, label %if.then.i, label %do.body.i.if.end9.i_crit_edge

do.body.i.if.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then.i:                                        ; preds = %do.body.i
  %handle4.i = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %co.0.i, i32 2
  %6 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %handle)
  %cmp5.i = icmp eq i32 %7, %handle
  br i1 %cmp5.i, label %nvkm_ramht_search.exit, label %if.then.i.if.end9.i_crit_edge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %do.body.i.if.end9.i_crit_edge
  %inc.i = add i32 %co.0.i, 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %9)
  %cmp10.not.i = icmp ult i32 %inc.i, %9
  %spec.store.select.i = select i1 %cmp10.not.i, i32 %inc.i, i32 0
  %cmp13.not.i = icmp eq i32 %spec.store.select.i, %xor5.i.i
  br i1 %cmp13.not.i, label %if.end9.i.if.end_crit_edge, label %if.end9.i.do.body.i_crit_edge

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

nvkm_ramht_search.exit:                           ; preds = %if.then.i
  %arrayidx.le.i = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %co.0.i
  %10 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.le.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %nvkm_ramht_search.exit.if.end_crit_edge, label %nvkm_ramht_search.exit.cleanup_crit_edge

nvkm_ramht_search.exit.cleanup_crit_edge:         ; preds = %nvkm_ramht_search.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nvkm_ramht_search.exit.if.end_crit_edge:          ; preds = %nvkm_ramht_search.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %nvkm_ramht_search.exit.if.end_crit_edge, %if.end9.i.if.end_crit_edge
  br i1 %tobool.not12.i.i, label %if.end.nvkm_ramht_hash.exit_crit_edge, label %while.body.lr.ph.i

if.end.nvkm_ramht_hash.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_ramht_hash.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %notmask.i = shl nsw i32 -1, %3
  %sub.i = xor i32 %notmask.i, -1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %hash.014.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %xor.i, %while.body.i.while.body.i_crit_edge ]
  %handle.addr.013.i = phi i32 [ %handle, %while.body.lr.ph.i ], [ %shr.i, %while.body.i.while.body.i_crit_edge ]
  %and.i = and i32 %handle.addr.013.i, %sub.i
  %xor.i = xor i32 %and.i, %hash.014.i
  %shr.i = lshr i32 %handle.addr.013.i, %3
  %tobool.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool.not.i, label %while.body.i.nvkm_ramht_hash.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.nvkm_ramht_hash.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_ramht_hash.exit

nvkm_ramht_hash.exit:                             ; preds = %while.body.i.nvkm_ramht_hash.exit_crit_edge, %if.end.nvkm_ramht_hash.exit_crit_edge
  %hash.0.lcssa.i = phi i32 [ 0, %if.end.nvkm_ramht_hash.exit_crit_edge ], [ %xor.i, %while.body.i.nvkm_ramht_hash.exit_crit_edge ]
  %xor5.i = xor i32 %hash.0.lcssa.i, %shl4.i.i
  br label %do.body

do.body:                                          ; preds = %if.end5.do.body_crit_edge, %nvkm_ramht_hash.exit
  %co.0 = phi i32 [ %xor5.i, %nvkm_ramht_hash.exit ], [ %spec.store.select, %if.end5.do.body_crit_edge ]
  %chid2 = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %co.0, i32 1
  %12 = ptrtoint ptr %chid2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chid2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.body
  %arrayidx.i = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %co.0
  tail call void @nvkm_gpuobj_del(ptr noundef %arrayidx.i) #5
  %14 = ptrtoint ptr %chid2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %chid, ptr %chid2, align 4
  %handle4.i22 = getelementptr %struct.nvkm_ramht, ptr %ramht, i32 0, i32 5, i32 %co.0, i32 2
  %15 = ptrtoint ptr %handle4.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %handle, ptr %handle4.i22, align 4
  %tobool.not.i23 = icmp eq ptr %object, null
  br i1 %tobool.not.i23, label %if.then3.if.end33.i_crit_edge, label %if.then.i24

if.then3.if.end33.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

if.then.i24:                                      ; preds = %if.then3
  %parent.i = getelementptr inbounds %struct.nvkm_ramht, ptr %ramht, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 4
  %call.i = tail call i32 @nvkm_object_bind(ptr noundef nonnull %object, ptr noundef %17, i32 noundef 16, ptr noundef %arrayidx.i) #5
  %18 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.then8.i [
    i32 0, label %if.end11.i
    i32 -19, label %if.end11.thread.i
  ]

if.then8.i:                                       ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %chid2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %chid2, align 4
  br label %cleanup

if.end11.thread.i:                                ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end21.i

if.end11.i:                                       ; preds = %if.then.i24
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load ptr, ptr %arrayidx.i, align 4
  %tobool13.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end21.i_crit_edge, label %if.then14.i

if.end11.i.if.end21.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then14.i:                                      ; preds = %if.end11.i
  %22 = ptrtoint ptr %ramht to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ramht, align 4
  %card_type.i = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %25)
  %cmp15.i = icmp ugt i32 %25, 79
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %node.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %.pr.i, i32 0, i32 3
  %26 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node.i, align 4
  %offset.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  %conv.i = zext i32 %29 to i64
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr19.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %.pr.i, i32 0, i32 4
  %30 = ptrtoint ptr %addr19.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %addr19.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then16.i, %if.end11.i.if.end21.i_crit_edge, %if.end11.thread.i
  %inst.0.i = phi i64 [ %conv.i, %if.then16.i ], [ %31, %if.else.i ], [ 64, %if.end11.i.if.end21.i_crit_edge ], [ 64, %if.end11.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp22.i = icmp slt i32 %addr, 0
  br i1 %cmp22.i, label %if.then24.i, label %if.else27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i25 = sub i32 0, %addr
  %sh_prom.i = zext i32 %sub.i25 to i64
  %shl.i = shl i64 %inst.0.i, %sh_prom.i
  %32 = trunc i64 %shl.i to i32
  %conv26.i = or i32 %32, %context
  br label %if.end33.i

if.else27.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %sh_prom28.i = zext i32 %addr to i64
  %shr.i26 = lshr i64 %inst.0.i, %sh_prom28.i
  %33 = trunc i64 %shr.i26 to i32
  %conv31.i = or i32 %33, %context
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else27.i, %if.then24.i, %if.then3.if.end33.i_crit_edge
  %context.addr.0.i = phi i32 [ %conv26.i, %if.then24.i ], [ %conv31.i, %if.else27.i ], [ %context, %if.then3.if.end33.i_crit_edge ]
  %gpuobj.i = getelementptr inbounds %struct.nvkm_ramht, ptr %ramht, i32 0, i32 2
  %34 = ptrtoint ptr %gpuobj.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpuobj.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call35.i = tail call ptr %39(ptr noundef %35) #5
  %40 = ptrtoint ptr %gpuobj.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpuobj.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %wr32.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr32.i, align 4
  %shl38.i = shl i32 %co.0, 3
  tail call void %45(ptr noundef %41, i32 noundef %shl38.i, i32 noundef %handle) #5
  %46 = ptrtoint ptr %gpuobj.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gpuobj.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %wr3240.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %wr3240.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr3240.i, align 4
  %add43.i = or i32 %shl38.i, 4
  tail call void %51(ptr noundef %47, i32 noundef %add43.i, i32 noundef %context.addr.0.i) #5
  %52 = ptrtoint ptr %gpuobj.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gpuobj.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %release.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %release.i, align 4
  tail call void %57(ptr noundef %53) #5
  %add46.i = add i32 %co.0, 1
  br label %cleanup

if.end5:                                          ; preds = %do.body
  %inc = add i32 %co.0, 1
  %58 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %59)
  %cmp6.not = icmp ult i32 %inc, %59
  %spec.store.select = select i1 %cmp6.not, i32 %inc, i32 0
  %cmp9.not = icmp eq i32 %spec.store.select, %xor5.i
  br i1 %cmp9.not, label %if.end5.cleanup_crit_edge, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %if.end33.i, %if.then8.i, %nvkm_ramht_search.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %nvkm_ramht_search.exit.cleanup_crit_edge ], [ %call.i, %if.then8.i ], [ %add46.i, %if.end33.i ], [ -28, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_ramht_del(ptr nocapture noundef %pramht) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pramht to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pramht, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gpuobj = getelementptr inbounds %struct.nvkm_ramht, ptr %1, i32 0, i32 2
  tail call void @nvkm_gpuobj_del(ptr noundef %gpuobj) #5
  %2 = ptrtoint ptr %pramht to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pramht, align 4
  tail call void @vfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %pramht to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pramht, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ramht_new(ptr noundef %device, i32 noundef %size, i32 noundef %align, ptr noundef %parent, ptr nocapture noundef %pramht) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %size, 3
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 12) #5
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 20) #5
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call1 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #8
  %3 = ptrtoint ptr %pramht to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %pramht, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %device, ptr %call1, align 4
  %parent3 = getelementptr inbounds %struct.nvkm_ramht, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %parent3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent, ptr %parent3, align 4
  %size5 = getelementptr inbounds %struct.nvkm_ramht, ptr %call1, i32 0, i32 3
  %6 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr, ptr %size5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp.i = icmp ugt i32 %size, 15
  br i1 %cmp.i, label %cond.end32thread-pre-split, label %if.end.cond.end32_crit_edge

if.end.cond.end32_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end32

cond.end32thread-pre-split:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i67 = add nsw i32 %shr, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %sub.i67, i1 false) #5, !range !9
  %add.i = sub nuw nsw i32 32, %7
  %8 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %size5, align 4
  br label %cond.end32

cond.end32:                                       ; preds = %cond.end32thread-pre-split, %if.end.cond.end32_crit_edge
  %9 = phi i32 [ %.pr, %cond.end32thread-pre-split ], [ %shr, %if.end.cond.end32_crit_edge ]
  %cond33 = phi i32 [ %add.i, %cond.end32thread-pre-split ], [ 0, %if.end.cond.end32_crit_edge ]
  %bits = getelementptr inbounds %struct.nvkm_ramht, ptr %call1, i32 0, i32 4
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond33, ptr %bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3568 = icmp sgt i32 %9, 0
  br i1 %cmp3568, label %cond.end32.for.body_crit_edge, label %cond.end32.for.end_crit_edge

cond.end32.for.end_crit_edge:                     ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cond.end32.for.body_crit_edge:                    ; preds = %cond.end32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end32.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %cond.end32.for.body_crit_edge ]
  %chid = getelementptr %struct.nvkm_ramht, ptr %call1, i32 0, i32 5, i32 %i.069, i32 1
  %11 = ptrtoint ptr %chid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %chid, align 4
  %inc = add nuw nsw i32 %i.069, 1
  %12 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size5, align 4
  %cmp35 = icmp slt i32 %inc, %13
  br i1 %cmp35, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %cond.end32.for.end_crit_edge
  %14 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call1, align 4
  %16 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent3, align 4
  %gpuobj = getelementptr inbounds %struct.nvkm_ramht, ptr %call1, i32 0, i32 2
  %call39 = tail call i32 @nvkm_gpuobj_new(ptr noundef %15, i32 noundef %size, i32 noundef %align, i1 noundef zeroext true, ptr noundef %17, ptr noundef %gpuobj) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.end.cleanup_crit_edge, label %if.then41

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then41:                                        ; preds = %for.end
  %18 = ptrtoint ptr %pramht to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pramht, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then41.cleanup_crit_edge, label %if.then.i

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %gpuobj.i = getelementptr inbounds %struct.nvkm_ramht, ptr %19, i32 0, i32 2
  tail call void @nvkm_gpuobj_del(ptr noundef %gpuobj.i) #5
  %20 = ptrtoint ptr %pramht to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pramht, align 4
  tail call void @vfree(ptr noundef %21) #5
  %22 = ptrtoint ptr %pramht to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pramht, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then41.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %call39, %if.then41.cleanup_crit_edge ], [ %call39, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

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
!9 = !{i32 0, i32 33}
