; ModuleID = '/llk/IR_all_yes/fs/lockd/xdr4.c_pt.bc'
source_filename = "../fs/lockd/xdr4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.71 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.71 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }
%struct.nlm_reboot = type { ptr, i32, i32, %struct.nsm_private }
%struct.nsm_private = type { [16 x i8] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_void(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_testargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp1.i = icmp ugt i32 %3, 32
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %out_hpux.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i
  %call6.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #3
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  %len10.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len10.i, align 4
  %5 = call ptr @memcpy(ptr %1, ptr %call6.i, i32 %3)
  br label %if.end

out_hpux.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  %len11.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %len11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len11.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %out_hpux.i, %if.end9.i
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i15 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i15, label %if.end.cleanup_crit_edge, label %if.end3, !prof !9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %call4 = tail call fastcc zeroext i1 @svcxdr_decode_lock(ptr noundef %xdr, ptr noundef %lock)
  br i1 %call4, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 0
  br i1 %cmp.i.not, label %if.end6.cleanup_crit_edge, label %if.then7

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %fl_type = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 5, i32 7
  %10 = ptrtoint ptr %fl_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %fl_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end3.cleanup_crit_edge ], [ true, %if.then7 ], [ true, %if.end6.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end5.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @svcxdr_decode_lock(ptr noundef %xdr, ptr noundef %lock) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fl1 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5
  %len2 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 1
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %1)
  %cmp1.i = icmp ugt i32 %1, 1024
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %1) #3
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %len2, align 4
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4.i, ptr %lock, align 4
  %fh = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 2
  %call.i.i46 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i47 = icmp eq ptr %call.i.i46, null
  br i1 %tobool.not.i.i47, label %if.end.cleanup_crit_edge, label %if.end.i49, !prof !9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i49:                                       ; preds = %if.end
  %4 = ptrtoint ptr %call.i.i46 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp1.i48 = icmp ugt i32 %5, 128
  br i1 %cmp1.i48, label %if.end.i49.cleanup_crit_edge, label %if.end3.i52

if.end.i49.cleanup_crit_edge:                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i52:                                      ; preds = %if.end.i49
  %call4.i50 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %5) #3
  %tobool.not.i51 = icmp eq ptr %call4.i50, null
  br i1 %tobool.not.i51, label %if.end3.i52.cleanup_crit_edge, label %if.end5

if.end3.i52.cleanup_crit_edge:                    ; preds = %if.end3.i52
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end3.i52
  %conv.i = trunc i32 %5 to i16
  %6 = ptrtoint ptr %fh to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %fh, align 2
  %data.i = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 2, i32 1
  %7 = call ptr @memcpy(ptr %data.i, ptr %call4.i50, i32 %5)
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %5
  %sub.i = sub nuw nsw i32 128, %5
  %8 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %oh = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 3
  %call.i.i55 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i56 = icmp eq ptr %call.i.i55, null
  br i1 %tobool.not.i.i56, label %if.end5.cleanup_crit_edge, label %if.end.i58, !prof !9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i58:                                       ; preds = %if.end5
  %9 = ptrtoint ptr %call.i.i55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %10)
  %cmp1.i57 = icmp ugt i32 %10, 1024
  br i1 %cmp1.i57, label %if.end.i58.cleanup_crit_edge, label %if.end3.i61

if.end.i58.cleanup_crit_edge:                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i61:                                      ; preds = %if.end.i58
  %call4.i59 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %10) #3
  %tobool.not.i60 = icmp eq ptr %call4.i59, null
  br i1 %tobool.not.i60, label %if.end3.i61.cleanup_crit_edge, label %if.end8

if.end3.i61.cleanup_crit_edge:                    ; preds = %if.end3.i61
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end3.i61
  %11 = ptrtoint ptr %oh to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %oh, align 4
  %data.i62 = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %data.i62 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4.i59, ptr %data.i62, align 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i65 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i65, label %if.end8.cleanup_crit_edge, label %if.end11, !prof !9

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %svid = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %15 = ptrtoint ptr %svid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %svid, align 4
  %call.i68 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #3
  %tobool.not.i69 = icmp eq ptr %call.i68, null
  br i1 %tobool.not.i69, label %if.end11.cleanup_crit_edge, label %if.end15, !prof !9

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %16 = ptrtoint ptr %call.i68 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %call.i68, align 1
  %call.i72 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #3
  %tobool.not.i73 = icmp eq ptr %call.i72, null
  br i1 %tobool.not.i73, label %if.end15.cleanup_crit_edge, label %if.end19, !prof !9

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %call.i72 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %call.i72, align 1
  tail call void @locks_init_lock(ptr noundef %fl1) #3
  %fl_flags = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 6
  %20 = ptrtoint ptr %fl_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %fl_flags, align 8
  %fl_type = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 7
  %21 = ptrtoint ptr %fl_type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %fl_type, align 4
  %add = add i64 %17, -1
  %sub = add i64 %add, %19
  %fl_start = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 12
  %22 = ptrtoint ptr %fl_start to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %17, ptr %fl_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp21 = icmp eq i64 %19, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp22 = icmp slt i64 %sub, 0
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp22
  %fl_end = getelementptr inbounds %struct.nlm_lock, ptr %lock, i32 0, i32 5, i32 13
  %.sub = select i1 %or.cond, i64 9223372036854775807, i64 %sub
  %23 = ptrtoint ptr %fl_end to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %.sub, ptr %fl_end, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.i61.cleanup_crit_edge, %if.end.i58.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end3.i52.cleanup_crit_edge, %if.end.i49.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end3.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.i49.cleanup_crit_edge ], [ false, %if.end3.i52.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end.i58.cleanup_crit_edge ], [ false, %if.end3.i61.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %if.end11.cleanup_crit_edge ], [ false, %if.end15.cleanup_crit_edge ], [ true, %if.end19 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_lockargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp1.i = icmp ugt i32 %3, 32
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %out_hpux.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i
  %call6.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #3
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  %len10.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len10.i, align 4
  %5 = call ptr @memcpy(ptr %1, ptr %call6.i, i32 %3)
  br label %if.end

out_hpux.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  %len11.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %len11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len11.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %out_hpux.i, %if.end9.i
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i34 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i34, label %if.end.cleanup_crit_edge, label %if.end3, !prof !9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %block = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp ne i32 %9, 0
  %conv.i = zext i1 %cmp.i to i32
  %10 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %block, align 4
  %call.i37 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i38 = icmp eq ptr %call.i37, null
  br i1 %tobool.not.i38, label %if.end3.cleanup_crit_edge, label %if.end7, !prof !9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %11 = ptrtoint ptr %call.i37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i37, align 4
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %call8 = tail call fastcc zeroext i1 @svcxdr_decode_lock(ptr noundef %xdr, ptr noundef %lock)
  br i1 %call8, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i39.not = icmp eq i32 %12, 0
  br i1 %cmp.i39.not, label %if.end10.if.end13_crit_edge, label %if.then11

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %fl_type = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 5, i32 7
  %13 = ptrtoint ptr %fl_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %fl_type, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end10.if.end13_crit_edge
  %call.i44 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i45 = icmp eq ptr %call.i44, null
  br i1 %tobool.not.i45, label %if.end13.cleanup_crit_edge, label %if.end17, !prof !9

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %reclaim = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %call.i44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i46 = icmp ne i32 %15, 0
  %conv.i47 = zext i1 %cmp.i46 to i32
  %16 = ptrtoint ptr %reclaim to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i47, ptr %reclaim, align 4
  %call.i51 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i52 = icmp eq ptr %call.i51, null
  br i1 %tobool.not.i52, label %if.end17.cleanup_crit_edge, label %if.end21, !prof !9

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %state = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %call.i51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i51, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %state, align 4
  %monitor = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %monitor to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %monitor, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end21 ], [ false, %if.end7.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end5.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end13.cleanup_crit_edge ], [ false, %if.end17.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_cancargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp1.i = icmp ugt i32 %3, 32
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %out_hpux.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i
  %call6.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #3
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  %len10.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len10.i, align 4
  %5 = call ptr @memcpy(ptr %1, ptr %call6.i, i32 %3)
  br label %if.end

out_hpux.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  %len11.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %len11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len11.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %out_hpux.i, %if.end9.i
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i21 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i21, label %if.end.cleanup_crit_edge, label %if.end3, !prof !9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %block = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp ne i32 %9, 0
  %conv.i = zext i1 %cmp.i to i32
  %10 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %block, align 4
  %call.i24 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i25 = icmp eq ptr %call.i24, null
  br i1 %tobool.not.i25, label %if.end3.cleanup_crit_edge, label %if.end7, !prof !9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %11 = ptrtoint ptr %call.i24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i24, align 4
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %call8 = tail call fastcc zeroext i1 @svcxdr_decode_lock(ptr noundef %xdr, ptr noundef %lock)
  br i1 %call8, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i26.not = icmp eq i32 %12, 0
  br i1 %cmp.i26.not, label %if.end10.cleanup_crit_edge, label %if.then11

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %fl_type = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 5, i32 7
  %13 = ptrtoint ptr %fl_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %fl_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end7.cleanup_crit_edge ], [ true, %if.then11 ], [ true, %if.end10.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end5.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_unlockargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp1.i = icmp ugt i32 %3, 32
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %out_hpux.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i
  %call6.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #3
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  %len10.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len10.i, align 4
  %5 = call ptr @memcpy(ptr %1, ptr %call6.i, i32 %3)
  br label %if.end

out_hpux.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  %len11.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %len11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len11.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %out_hpux.i, %if.end9.i
  %lock = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %call1 = tail call fastcc zeroext i1 @svcxdr_decode_lock(ptr noundef %xdr, ptr noundef %lock)
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %fl_type = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 5, i32 7
  %8 = ptrtoint ptr %fl_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %fl_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end3 ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end5.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_res(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp1.i = icmp ugt i32 %3, 32
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %out_hpux.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i
  %call6.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #3
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  %len10.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len10.i, align 4
  %5 = call ptr @memcpy(ptr %1, ptr %call6.i, i32 %3)
  br label %if.end

out_hpux.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  %len11.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %len11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len11.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %out_hpux.i, %if.end9.i
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i6 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i6, label %if.end.svcxdr_decode_stats.exit_crit_edge, label %if.end.i7

if.end.svcxdr_decode_stats.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %svcxdr_decode_stats.exit

if.end.i7:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %status = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %status, align 4
  br label %svcxdr_decode_stats.exit

svcxdr_decode_stats.exit:                         ; preds = %if.end.i7, %if.end.svcxdr_decode_stats.exit_crit_edge
  %11 = xor i1 %tobool.not.i6, true
  br label %cleanup

cleanup:                                          ; preds = %svcxdr_decode_stats.exit, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %11, %svcxdr_decode_stats.exit ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end5.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_reboot(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1024
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #3
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %len7 = getelementptr inbounds %struct.nlm_reboot, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len7, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %1, align 4
  %call.i27 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i28 = icmp eq ptr %call.i27, null
  br i1 %tobool.not.i28, label %if.end6.cleanup_crit_edge, label %if.end11, !prof !9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %state = getelementptr inbounds %struct.nlm_reboot, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %call.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i27, align 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %state, align 4
  %call12 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 16) #3
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %priv = getelementptr inbounds %struct.nlm_reboot, ptr %1, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %priv, ptr %call12, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end15 ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end11.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_shareargs(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %lock1 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %lock1, i32 0, i32 320)
  %fl = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 5
  tail call void @locks_init_lock(ptr noundef %fl) #3
  %svid = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %svid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %svid, align 4
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp1.i = icmp ugt i32 %5, 32
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %out_hpux.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i
  %call6.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %5) #3
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  %len10.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %len10.i, align 4
  %7 = call ptr @memcpy(ptr %1, ptr %call6.i, i32 %5)
  br label %if.end

out_hpux.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  %len11.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %len11.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %len11.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %out_hpux.i, %if.end9.i
  %len = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 1
  %call.i.i33 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i34 = icmp eq ptr %call.i.i33, null
  br i1 %tobool.not.i.i34, label %if.end.cleanup_crit_edge, label %if.end.i36, !prof !9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i36:                                       ; preds = %if.end
  %10 = ptrtoint ptr %call.i.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %11)
  %cmp1.i35 = icmp ugt i32 %11, 1024
  br i1 %cmp1.i35, label %if.end.i36.cleanup_crit_edge, label %if.end3.i38

if.end.i36.cleanup_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i38:                                      ; preds = %if.end.i36
  %call4.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %11) #3
  %tobool.not.i37 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i37, label %if.end3.i38.cleanup_crit_edge, label %if.end4

if.end3.i38.cleanup_crit_edge:                    ; preds = %if.end3.i38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end3.i38
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %len, align 4
  %13 = ptrtoint ptr %lock1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call4.i, ptr %lock1, align 4
  %fh = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 2
  %call.i.i40 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i41 = icmp eq ptr %call.i.i40, null
  br i1 %tobool.not.i.i41, label %if.end4.cleanup_crit_edge, label %if.end.i43, !prof !9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i43:                                       ; preds = %if.end4
  %14 = ptrtoint ptr %call.i.i40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %15)
  %cmp1.i42 = icmp ugt i32 %15, 128
  br i1 %cmp1.i42, label %if.end.i43.cleanup_crit_edge, label %if.end3.i46

if.end.i43.cleanup_crit_edge:                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i46:                                      ; preds = %if.end.i43
  %call4.i44 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %15) #3
  %tobool.not.i45 = icmp eq ptr %call4.i44, null
  br i1 %tobool.not.i45, label %if.end3.i46.cleanup_crit_edge, label %if.end7

if.end3.i46.cleanup_crit_edge:                    ; preds = %if.end3.i46
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end3.i46
  %conv.i = trunc i32 %15 to i16
  %16 = ptrtoint ptr %fh to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %fh, align 2
  %data.i = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 2, i32 1
  %17 = call ptr @memcpy(ptr %data.i, ptr %call4.i44, i32 %15)
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %15
  %sub.i = sub nuw nsw i32 128, %15
  %18 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %oh = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 3
  %call.i.i49 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i50 = icmp eq ptr %call.i.i49, null
  br i1 %tobool.not.i.i50, label %if.end7.cleanup_crit_edge, label %if.end.i52, !prof !9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i52:                                       ; preds = %if.end7
  %19 = ptrtoint ptr %call.i.i49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %20)
  %cmp1.i51 = icmp ugt i32 %20, 1024
  br i1 %cmp1.i51, label %if.end.i52.cleanup_crit_edge, label %if.end3.i55

if.end.i52.cleanup_crit_edge:                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i55:                                      ; preds = %if.end.i52
  %call4.i53 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %20) #3
  %tobool.not.i54 = icmp eq ptr %call4.i53, null
  br i1 %tobool.not.i54, label %if.end3.i55.cleanup_crit_edge, label %if.end10

if.end3.i55.cleanup_crit_edge:                    ; preds = %if.end3.i55
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end3.i55
  %21 = ptrtoint ptr %oh to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %oh, align 4
  %data.i56 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 3, i32 1
  %22 = ptrtoint ptr %data.i56 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call4.i53, ptr %data.i56, align 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i59 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i59, label %if.end10.cleanup_crit_edge, label %if.end13, !prof !9

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %fsm_mode = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i, align 4
  %25 = ptrtoint ptr %fsm_mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fsm_mode, align 4
  %call.i62 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i63 = icmp eq ptr %call.i62, null
  br i1 %tobool.not.i63, label %if.end13.cleanup_crit_edge, label %xdr_stream_decode_u32.exit66, !prof !9

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

xdr_stream_decode_u32.exit66:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %fsm_access = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %call.i62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call.i62, align 4
  %28 = ptrtoint ptr %fsm_access to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fsm_access, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_decode_u32.exit66, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end3.i55.cleanup_crit_edge, %if.end.i52.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.i46.cleanup_crit_edge, %if.end.i43.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end3.i38.cleanup_crit_edge, %if.end.i36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %xdr_stream_decode_u32.exit66 ], [ false, %if.end13.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end5.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.i36.cleanup_crit_edge ], [ false, %if.end3.i38.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end.i43.cleanup_crit_edge ], [ false, %if.end3.i46.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %if.end.i52.cleanup_crit_edge ], [ false, %if.end3.i55.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_notify(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %0 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_argp, align 8
  %lock1 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %len = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 1
  %call.i.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp1.i = icmp ugt i32 %3, 1024
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #3
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  %5 = ptrtoint ptr %lock1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4.i, ptr %lock1, align 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i9 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i9, label %if.end.cleanup_crit_edge, label %xdr_stream_decode_u32.exit, !prof !9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

xdr_stream_decode_u32.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %state = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_decode_u32.exit, %if.end.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %xdr_stream_decode_u32.exit ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end3.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nlm4svc_encode_void(ptr nocapture noundef readnone %rqstp, ptr nocapture noundef readnone %xdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_encode_testres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.land.end_crit_edge, label %if.end.i, !prof !9

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i.i, align 4
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  %call2.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %6) #3
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.land.end_crit_edge, label %land.rhs

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

land.rhs:                                         ; preds = %if.end.i
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %9 = call ptr @memcpy(ptr %call2.i, ptr %1, i32 %8)
  %status.i = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i, align 4
  %call.i.i4 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i5 = icmp eq ptr %call.i.i4, null
  br i1 %tobool.not.i.i5, label %land.rhs.land.end_crit_edge, label %if.end.i6

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

if.end.i6:                                        ; preds = %land.rhs
  %12 = ptrtoint ptr %call.i.i4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i.i4, align 4
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cond.i = icmp eq i32 %14, 1
  br i1 %cond.i, label %sw.bb.i, label %if.end.i6.land.end_crit_edge

if.end.i6.land.end_crit_edge:                     ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

sw.bb.i:                                          ; preds = %if.end.i6
  %fl_type.i.i = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 2, i32 5, i32 7
  %15 = ptrtoint ptr %fl_type.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fl_type.i.i, align 4
  %call.i.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.land.end_crit_edge, label %if.end.i8.i, !prof !9

sw.bb.i.land.end_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

if.end.i8.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i.i = icmp ne i8 %16, 0
  %cond.i.i.i.i = zext i1 %cmp.i.i to i32
  %17 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i.i.i.i, ptr %call.i.i.i, align 4
  %svid.i.i = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %svid.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %svid.i.i, align 4
  %call.i43.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i44.i.i = icmp eq ptr %call.i43.i.i, null
  br i1 %tobool.not.i44.i.i, label %if.end.i8.i.land.end_crit_edge, label %if.end9.i.i, !prof !9

if.end.i8.i.land.end_crit_edge:                   ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

if.end9.i.i:                                      ; preds = %if.end.i8.i
  %20 = ptrtoint ptr %call.i43.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call.i43.i.i, align 4
  %oh.i.i = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %oh.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oh.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %22)
  %cmp.i.i.i = icmp ugt i32 %22, 1024
  br i1 %cmp.i.i.i, label %if.end9.i.i.land.end_crit_edge, label %if.end.i47.i.i

if.end9.i.i.land.end_crit_edge:                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

if.end.i47.i.i:                                   ; preds = %if.end9.i.i
  %data.i.i.i = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 2, i32 3, i32 1
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %25 = add nuw nsw i32 %22, 7
  %add.i.i.i.i = and i32 %25, -4
  %call1.i.i.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i.i.i.i) #3
  %tobool.not.i.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i47.i.i.land.end_crit_edge, label %svcxdr_encode_owner.exit.i.i, !prof !9

if.end.i47.i.i.land.end_crit_edge:                ; preds = %if.end.i47.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

svcxdr_encode_owner.exit.i.i:                     ; preds = %if.end.i47.i.i
  %call5.i.i.i.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call1.i.i.i.i, ptr noundef %24, i32 noundef %22) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i.i)
  %phi.cmp.i.not.i.i = icmp eq i32 %add.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i, label %svcxdr_encode_owner.exit.i.i.land.end_crit_edge, label %if.end12.i.i

svcxdr_encode_owner.exit.i.i.land.end_crit_edge:  ; preds = %svcxdr_encode_owner.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

if.end12.i.i:                                     ; preds = %svcxdr_encode_owner.exit.i.i
  %fl_start.i.i = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 2, i32 5, i32 12
  %26 = ptrtoint ptr %fl_start.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %fl_start.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %27)
  %cmp1.i.i.i = icmp eq i64 %27, -9223372036854775808
  %res.0.i.i.i = select i1 %cmp1.i.i.i, i64 -9223372036854775807, i64 %27
  %fl_end.i.i = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 2, i32 5, i32 13
  %28 = ptrtoint ptr %fl_end.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fl_end.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %29)
  %cmp14.i.i = icmp eq i64 %29, 9223372036854775807
  br i1 %cmp14.i.i, label %if.end12.i.i.if.end20.i.i_crit_edge, label %if.else.i.i

if.end12.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20.i.i

if.else.i.i:                                      ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i.i = sub i64 %29, %27
  %add.i.i = add i64 %sub.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %add.i.i)
  %cmp1.i49.i.i = icmp eq i64 %add.i.i, -9223372036854775808
  %res.0.i50.i.i = select i1 %cmp1.i49.i.i, i64 -9223372036854775807, i64 %add.i.i
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i, %if.end12.i.i.if.end20.i.i_crit_edge
  %len.0.i.i = phi i64 [ %res.0.i50.i.i, %if.else.i.i ], [ 0, %if.end12.i.i.if.end20.i.i_crit_edge ]
  %call.i51.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #3
  %tobool.not.i52.i.i = icmp eq ptr %call.i51.i.i, null
  br i1 %tobool.not.i52.i.i, label %if.end20.i.i.land.end_crit_edge, label %if.end25.i.i, !prof !9

if.end20.i.i.land.end_crit_edge:                  ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

if.end25.i.i:                                     ; preds = %if.end20.i.i
  %30 = ptrtoint ptr %call.i51.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %res.0.i.i.i, ptr %call.i51.i.i, align 1
  %call.i55.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #3
  %tobool.not.i56.i.i = icmp eq ptr %call.i55.i.i, null
  br i1 %tobool.not.i56.i.i, label %if.end25.i.i.land.end_crit_edge, label %svcxdr_encode_holder.exit.i, !prof !9

if.end25.i.i.land.end_crit_edge:                  ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

svcxdr_encode_holder.exit.i:                      ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %call.i55.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %len.0.i.i, ptr %call.i55.i.i, align 1
  br label %land.end

land.end:                                         ; preds = %svcxdr_encode_holder.exit.i, %if.end25.i.i.land.end_crit_edge, %if.end20.i.i.land.end_crit_edge, %svcxdr_encode_owner.exit.i.i.land.end_crit_edge, %if.end.i47.i.i.land.end_crit_edge, %if.end9.i.i.land.end_crit_edge, %if.end.i8.i.land.end_crit_edge, %sw.bb.i.land.end_crit_edge, %if.end.i6.land.end_crit_edge, %land.rhs.land.end_crit_edge, %if.end.i.land.end_crit_edge, %entry.land.end_crit_edge
  %32 = phi i1 [ false, %land.rhs.land.end_crit_edge ], [ true, %svcxdr_encode_holder.exit.i ], [ true, %if.end.i6.land.end_crit_edge ], [ false, %svcxdr_encode_owner.exit.i.i.land.end_crit_edge ], [ false, %if.end25.i.i.land.end_crit_edge ], [ false, %sw.bb.i.land.end_crit_edge ], [ false, %if.end.i8.i.land.end_crit_edge ], [ false, %if.end9.i.i.land.end_crit_edge ], [ false, %if.end.i47.i.i.land.end_crit_edge ], [ false, %if.end20.i.i.land.end_crit_edge ], [ false, %if.end.i.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ]
  ret i1 %32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_encode_res(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.land.end_crit_edge, label %if.end.i, !prof !9

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i.i, align 4
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  %call2.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %6) #3
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.land.end_crit_edge, label %land.rhs

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

land.rhs:                                         ; preds = %if.end.i
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %9 = call ptr @memcpy(ptr %call2.i, ptr %1, i32 %8)
  %status = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i4 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i4, label %land.rhs.svcxdr_encode_stats.exit_crit_edge, label %if.end.i5

land.rhs.svcxdr_encode_stats.exit_crit_edge:      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %svcxdr_encode_stats.exit

if.end.i5:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i, align 4
  br label %svcxdr_encode_stats.exit

svcxdr_encode_stats.exit:                         ; preds = %if.end.i5, %land.rhs.svcxdr_encode_stats.exit_crit_edge
  %13 = xor i1 %tobool.not.i4, true
  br label %land.end

land.end:                                         ; preds = %svcxdr_encode_stats.exit, %if.end.i.land.end_crit_edge, %entry.land.end_crit_edge
  %14 = phi i1 [ %13, %svcxdr_encode_stats.exit ], [ false, %if.end.i.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_encode_shareres(ptr nocapture noundef readonly %rqstp, ptr noundef %xdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %0 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_resp, align 4
  %len.i = getelementptr inbounds %struct.nlm_cookie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i.i, align 4
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  %call2.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %6) #3
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %9 = call ptr @memcpy(ptr %call2.i, ptr %1, i32 %8)
  %status = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i10 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i10, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i, align 4
  %call.i12 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #3
  %tobool.not.i13 = icmp eq ptr %call.i12, null
  br i1 %tobool.not.i13, label %if.end3.cleanup_crit_edge, label %xdr_stream_encode_u32.exit, !prof !9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

xdr_stream_encode_u32.exit:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %call.i12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %call.i12, align 4
  br label %cleanup

cleanup:                                          ; preds = %xdr_stream_encode_u32.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end.cleanup_crit_edge ], [ true, %xdr_stream_encode_u32.exit ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
