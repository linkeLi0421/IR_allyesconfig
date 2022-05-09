; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/commonring.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/commonring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.brcmf_commonring = type { i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i8, i8, %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }

@brcmf_commonring_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&commonring->lock\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [65 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/commonring.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 38, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @brcmf_commonring_config.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_commonring_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @brcmf_commonring_register_cb(ptr nocapture noundef writeonly %commonring, ptr noundef %cr_ring_bell, ptr noundef %cr_update_rptr, ptr noundef %cr_update_wptr, ptr noundef %cr_write_rptr, ptr noundef %cr_write_wptr, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_ring_bell1 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 6
  %0 = ptrtoint ptr %cr_ring_bell1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cr_ring_bell, ptr %cr_ring_bell1, align 4
  %cr_update_rptr2 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 7
  %1 = ptrtoint ptr %cr_update_rptr2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cr_update_rptr, ptr %cr_update_rptr2, align 4
  %cr_update_wptr3 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 8
  %2 = ptrtoint ptr %cr_update_wptr3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cr_update_wptr, ptr %cr_update_wptr3, align 4
  %cr_write_rptr4 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 9
  %3 = ptrtoint ptr %cr_write_rptr4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cr_write_rptr, ptr %cr_write_rptr4, align 4
  %cr_write_wptr5 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 10
  %4 = ptrtoint ptr %cr_write_wptr5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cr_write_wptr, ptr %cr_write_wptr5, align 4
  %cr_ctx = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 11
  %5 = ptrtoint ptr %cr_ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ctx, ptr %cr_ctx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_commonring_config(ptr noundef %commonring, i16 noundef zeroext %depth, i16 noundef zeroext %item_len, ptr noundef %buf_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %depth1 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 3
  %0 = ptrtoint ptr %depth1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %depth, ptr %depth1, align 2
  %item_len2 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 4
  %1 = ptrtoint ptr %item_len2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %item_len, ptr %item_len2, align 4
  %buf_addr3 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 5
  %2 = ptrtoint ptr %buf_addr3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf_addr, ptr %buf_addr3, align 4
  %inited = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 14
  %3 = ptrtoint ptr %inited to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %inited, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @brcmf_commonring_config.__key, i16 noundef signext 3) #5
  %5 = ptrtoint ptr %inited to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %inited, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %commonring to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %commonring, align 4
  %cr_write_rptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 9
  %7 = ptrtoint ptr %cr_write_rptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cr_write_rptr, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %cr_ctx = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 11
  %9 = ptrtoint ptr %cr_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cr_ctx, align 4
  %call8 = tail call i32 %8(ptr noundef %10) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 1
  %11 = ptrtoint ptr %w_ptr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %w_ptr, align 2
  %cr_write_wptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 10
  %12 = ptrtoint ptr %cr_write_wptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cr_write_wptr, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %cr_ctx13 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 11
  %14 = ptrtoint ptr %cr_ctx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cr_ctx13, align 4
  %call14 = tail call i32 %13(ptr noundef %15) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %f_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 2
  %16 = ptrtoint ptr %f_ptr to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %f_ptr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_commonring_lock(ptr noundef %commonring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %flags5 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 13
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %flags5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_commonring_unlock(ptr noundef %commonring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 12
  %flags = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_commonring_write_available(ptr nocapture noundef %commonring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 1
  %depth = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 3
  %cr_update_rptr39 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 7
  %cr_ctx43 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 11
  %was_full = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 15
  br label %again

again:                                            ; preds = %again.backedge, %entry
  %retry.0.off0 = phi i1 [ true, %entry ], [ false, %again.backedge ]
  %0 = ptrtoint ptr %commonring to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %commonring, align 4
  %2 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %w_ptr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not = icmp ugt i16 %1, %3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %depth, align 2
  %sub = sub i16 %1, %3
  %add = add i16 %sub, %5
  br label %if.end

if.else:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
  %sub13 = sub i16 %1, %3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %available.0 = phi i16 [ %add, %if.then ], [ %sub13, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %available.0)
  %cmp16 = icmp ugt i16 %available.0, 1
  br i1 %cmp16, label %if.then18, label %if.end36

if.then18:                                        ; preds = %if.end
  %6 = ptrtoint ptr %was_full to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %was_full, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then18.cleanup_crit_edge, label %if.end20

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.then18
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %depth, align 2
  %10 = lshr i16 %9, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %available.0, i16 %10)
  %cmp24 = icmp ugt i16 %available.0, %10
  br i1 %cmp24, label %if.end20.cleanup.sink.split_crit_edge, label %if.end28

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.end20
  br i1 %retry.0.off0, label %if.then30, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  %11 = ptrtoint ptr %cr_update_rptr39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cr_update_rptr39, align 4
  %tobool31.not = icmp eq ptr %12, null
  br i1 %tobool31.not, label %if.then30.again.backedge_crit_edge, label %if.then30.again.backedge.sink.split_crit_edge

if.then30.again.backedge.sink.split_crit_edge:    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %again.backedge.sink.split

if.then30.again.backedge_crit_edge:               ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %again.backedge

again.backedge.sink.split:                        ; preds = %if.then38.again.backedge.sink.split_crit_edge, %if.then30.again.backedge.sink.split_crit_edge
  %.sink69 = phi ptr [ %16, %if.then38.again.backedge.sink.split_crit_edge ], [ %12, %if.then30.again.backedge.sink.split_crit_edge ]
  %13 = ptrtoint ptr %cr_ctx43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cr_ctx43, align 4
  %call44 = tail call i32 %.sink69(ptr noundef %14) #5
  br label %again.backedge

again.backedge:                                   ; preds = %if.then38.again.backedge_crit_edge, %again.backedge.sink.split, %if.then30.again.backedge_crit_edge
  br label %again

if.end36:                                         ; preds = %if.end
  br i1 %retry.0.off0, label %if.then38, label %if.end36.cleanup.sink.split_crit_edge

if.end36.cleanup.sink.split_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then38:                                        ; preds = %if.end36
  %15 = ptrtoint ptr %cr_update_rptr39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cr_update_rptr39, align 4
  %tobool40.not = icmp eq ptr %16, null
  br i1 %tobool40.not, label %if.then38.again.backedge_crit_edge, label %if.then38.again.backedge.sink.split_crit_edge

if.then38.again.backedge.sink.split_crit_edge:    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %again.backedge.sink.split

if.then38.again.backedge_crit_edge:               ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %again.backedge

cleanup.sink.split:                               ; preds = %if.end36.cleanup.sink.split_crit_edge, %if.end20.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.end20.cleanup.sink.split_crit_edge ], [ 1, %if.end36.cleanup.sink.split_crit_edge ]
  %17 = ptrtoint ptr %was_full to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %was_full, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end28.cleanup_crit_edge, %if.then18.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp16, %cleanup.sink.split ], [ %tobool.not, %if.then18.cleanup_crit_edge ], [ %tobool.not, %if.end28.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_commonring_reserve_for_write(ptr nocapture noundef %commonring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 1
  %depth = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 3
  %cr_update_rptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 7
  %cr_ctx = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 11
  %0 = ptrtoint ptr %commonring to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %commonring, align 4
  %2 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %w_ptr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not = icmp ugt i16 %1, %3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %depth, align 2
  %sub = sub i16 %1, %3
  %add = add i16 %sub, %5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub13 = sub i16 %1, %3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %available.0 = phi i16 [ %add, %if.then ], [ %sub13, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %available.0)
  %cmp16 = icmp ugt i16 %available.0, 1
  br i1 %cmp16, label %if.end.if.then18_crit_edge, label %if.end32

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.then18:                                        ; preds = %if.end.1.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %.lcssa = phi i16 [ %3, %if.end.if.then18_crit_edge ], [ %20, %if.end.1.if.then18_crit_edge ]
  %buf_addr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 5
  %6 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf_addr, align 4
  %conv20 = zext i16 %.lcssa to i32
  %item_len = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 4
  %8 = ptrtoint ptr %item_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %item_len, align 4
  %conv21 = zext i16 %9 to i32
  %mul = mul nuw i32 %conv21, %conv20
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %inc = add i16 %.lcssa, 1
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %depth, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %11)
  %cmp27 = icmp eq i16 %inc, %11
  %spec.store.select = select i1 %cmp27, i16 0, i16 %inc
  %12 = ptrtoint ptr %w_ptr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %spec.store.select, ptr %w_ptr, align 2
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %13 = ptrtoint ptr %cr_update_rptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cr_update_rptr, align 4
  %tobool34.not = icmp eq ptr %14, null
  br i1 %tobool34.not, label %if.end32.if.end37_crit_edge, label %if.then35

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %cr_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cr_ctx, align 4
  %call = tail call i32 %14(ptr noundef %16) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %17 = ptrtoint ptr %commonring to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %commonring, align 4
  %19 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %w_ptr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp.not.1 = icmp ugt i16 %18, %20
  br i1 %cmp.not.1, label %if.else.1, label %if.then.1

if.then.1:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %depth, align 2
  %sub.1 = sub i16 %18, %20
  %add.1 = add i16 %sub.1, %22
  br label %if.end.1

if.else.1:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %sub13.1 = sub i16 %18, %20
  br label %if.end.1

if.end.1:                                         ; preds = %if.else.1, %if.then.1
  %available.0.1 = phi i16 [ %add.1, %if.then.1 ], [ %sub13.1, %if.else.1 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %available.0.1)
  %cmp16.1 = icmp ugt i16 %available.0.1, 1
  br i1 %cmp16.1, label %if.end.1.if.then18_crit_edge, label %if.end38

if.end.1.if.then18_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end38:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  %was_full = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 15
  %23 = ptrtoint ptr %was_full to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %was_full, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then18
  %retval.0 = phi ptr [ %add.ptr, %if.then18 ], [ null, %if.end38 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_commonring_reserve_for_write_multiple(ptr nocapture noundef %commonring, i16 noundef zeroext %n_items, ptr nocapture noundef %alloced) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 1
  %depth = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 3
  %cr_update_rptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 7
  %cr_ctx = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 11
  %0 = ptrtoint ptr %commonring to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %commonring, align 4
  %2 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %w_ptr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not = icmp ugt i16 %1, %3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %depth, align 2
  %sub = sub i16 %1, %3
  %add = add i16 %sub, %5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub13 = sub i16 %1, %3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %available.0 = phi i16 [ %add, %if.then ], [ %sub13, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %available.0)
  %cmp16 = icmp ugt i16 %available.0, 1
  br i1 %cmp16, label %if.end.if.then18_crit_edge, label %if.end62

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.then18:                                        ; preds = %if.end.1.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %available.0.lcssa = phi i16 [ %available.0, %if.end.if.then18_crit_edge ], [ %available.0.1, %if.end.1.if.then18_crit_edge ]
  %.lcssa = phi i16 [ %3, %if.end.if.then18_crit_edge ], [ %31, %if.end.1.if.then18_crit_edge ]
  %buf_addr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 5
  %6 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf_addr, align 4
  %conv20 = zext i16 %.lcssa to i32
  %item_len = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 4
  %8 = ptrtoint ptr %item_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %item_len, align 4
  %conv21 = zext i16 %9 to i32
  %mul = mul nuw i32 %conv21, %conv20
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %sub23 = add i16 %available.0.lcssa, -1
  %10 = tail call i16 @llvm.umin.i16(i16 %sub23, i16 %n_items)
  %11 = ptrtoint ptr %alloced to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %alloced, align 2
  %conv32 = zext i16 %10 to i32
  %12 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %w_ptr, align 2
  %conv34 = zext i16 %13 to i32
  %add35 = add nuw nsw i32 %conv34, %conv32
  %14 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %depth, align 2
  %conv37 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %conv37)
  %cmp38 = icmp ugt i32 %add35, %conv37
  br i1 %cmp38, label %if.then40, label %if.then18.if.end47_crit_edge

if.then18.if.end47_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then40:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %sub45 = sub i16 %15, %13
  %16 = ptrtoint ptr %alloced to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %sub45, ptr %alloced, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %if.then18.if.end47_crit_edge
  %17 = ptrtoint ptr %alloced to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %alloced, align 2
  %19 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %w_ptr, align 2
  %add51 = add i16 %20, %18
  %21 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %depth, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add51, i16 %22)
  %cmp57 = icmp eq i16 %add51, %22
  %spec.store.select = select i1 %cmp57, i16 0, i16 %add51
  %23 = ptrtoint ptr %w_ptr to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %spec.store.select, ptr %w_ptr, align 2
  br label %cleanup

if.end62:                                         ; preds = %if.end
  %24 = ptrtoint ptr %cr_update_rptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cr_update_rptr, align 4
  %tobool64.not = icmp eq ptr %25, null
  br i1 %tobool64.not, label %if.end62.if.end67_crit_edge, label %if.then65

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %cr_ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cr_ctx, align 4
  %call = tail call i32 %25(ptr noundef %27) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62.if.end67_crit_edge
  %28 = ptrtoint ptr %commonring to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %commonring, align 4
  %30 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %w_ptr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp.not.1 = icmp ugt i16 %29, %31
  br i1 %cmp.not.1, label %if.else.1, label %if.then.1

if.then.1:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %depth, align 2
  %sub.1 = sub i16 %29, %31
  %add.1 = add i16 %sub.1, %33
  br label %if.end.1

if.else.1:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %sub13.1 = sub i16 %29, %31
  br label %if.end.1

if.end.1:                                         ; preds = %if.else.1, %if.then.1
  %available.0.1 = phi i16 [ %add.1, %if.then.1 ], [ %sub13.1, %if.else.1 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %available.0.1)
  %cmp16.1 = icmp ugt i16 %available.0.1, 1
  br i1 %cmp16.1, label %if.end.1.if.then18_crit_edge, label %if.end68

if.end.1.if.then18_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end68:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  %was_full = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 15
  %34 = ptrtoint ptr %was_full to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %was_full, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end47
  %retval.0 = phi ptr [ %add.ptr, %if.end47 ], [ null, %if.end68 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_commonring_write_complete(ptr nocapture noundef %commonring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 2
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 1
  %0 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %w_ptr, align 2
  %2 = ptrtoint ptr %f_ptr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %f_ptr, align 4
  %cr_write_wptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 10
  %3 = ptrtoint ptr %cr_write_wptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cr_write_wptr, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then6

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cr_ctx = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 11
  %5 = ptrtoint ptr %cr_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cr_ctx, align 4
  %call = tail call i32 %4(ptr noundef %6) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %entry.if.end8_crit_edge
  %cr_ring_bell = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 6
  %7 = ptrtoint ptr %cr_ring_bell to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cr_ring_bell, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.end8.return_crit_edge, label %if.then10

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %cr_ctx12 = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 11
  %9 = ptrtoint ptr %cr_ctx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cr_ctx12, align 4
  %call13 = tail call i32 %8(ptr noundef %10) #5
  br label %return

return:                                           ; preds = %if.then10, %if.end8.return_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then10 ], [ -5, %if.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @brcmf_commonring_write_cancel(ptr nocapture noundef %commonring, i16 noundef zeroext %n_items) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 1
  %0 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %w_ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %depth = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 3
  %2 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %depth, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.pn = phi i16 [ %3, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %storemerge = sub i16 %.pn, %n_items
  %4 = ptrtoint ptr %w_ptr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %storemerge, ptr %w_ptr, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_commonring_get_read_ptr(ptr nocapture noundef readonly %commonring, ptr nocapture noundef writeonly %n_items) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_update_wptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 8
  %0 = ptrtoint ptr %cr_update_wptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cr_update_wptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cr_ctx = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 11
  %2 = ptrtoint ptr %cr_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cr_ctx, align 4
  %call = tail call i32 %1(ptr noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %w_ptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 1
  %4 = ptrtoint ptr %w_ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %w_ptr, align 2
  %6 = ptrtoint ptr %commonring to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %commonring, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.not = icmp ult i16 %5, %7
  br i1 %cmp.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %depth = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 3
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %depth, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %conv.pn.in = phi i16 [ %9, %cond.false ], [ %5, %if.end.cond.end_crit_edge ]
  %cond = sub i16 %conv.pn.in, %7
  %10 = ptrtoint ptr %n_items to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %cond, ptr %n_items, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.pn.in, i16 %7)
  %cmp14 = icmp eq i16 %conv.pn.in, %7
  br i1 %cmp14, label %cond.end.return_crit_edge, label %if.end17

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end17:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %buf_addr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 5
  %11 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf_addr, align 4
  %13 = ptrtoint ptr %commonring to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %commonring, align 4
  %conv19 = zext i16 %14 to i32
  %item_len = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 4
  %15 = ptrtoint ptr %item_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %item_len, align 4
  %conv20 = zext i16 %16 to i32
  %mul = mul nuw i32 %conv20, %conv19
  %add.ptr = getelementptr i8, ptr %12, i32 %mul
  br label %return

return:                                           ; preds = %if.end17, %cond.end.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end17 ], [ null, %cond.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_commonring_read_complete(ptr nocapture noundef %commonring, i16 noundef zeroext %n_items) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %commonring to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %commonring, align 4
  %add = add i16 %1, %n_items
  %depth = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 3
  %2 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %depth, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add, i16 %3)
  %cmp = icmp eq i16 %add, %3
  %spec.store.select = select i1 %cmp, i16 0, i16 %add
  %4 = ptrtoint ptr %commonring to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %spec.store.select, ptr %commonring, align 4
  %cr_write_rptr = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 9
  %5 = ptrtoint ptr %cr_write_rptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cr_write_rptr, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then8

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cr_ctx = getelementptr inbounds %struct.brcmf_commonring, ptr %commonring, i32 0, i32 11
  %7 = ptrtoint ptr %cr_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cr_ctx, align 4
  %call = tail call i32 %6(ptr noundef %8) #5
  br label %return

return:                                           ; preds = %if.then8, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then8 ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @brcmf_commonring_config.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/commonring.c", i32 38, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i8 0, i8 2}
