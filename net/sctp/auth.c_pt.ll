; ModuleID = '/llk/IR_all_yes/net/sctp/auth.c_pt.bc'
source_filename = "../net/sctp/auth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.sctp_hmac = type { i16, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.sctp_shared_key = type { %struct.list_head, ptr, %struct.refcount_struct, i16, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.167, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.167 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.sctp_stream = type { %struct.anon.168, %struct.anon.173, i16, i16, ptr, %union.anon.175, ptr }
%struct.anon.168 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.169, i32, ptr, i8 }
%union.anon.169 = type { i32 }
%struct.anon.173 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.174, i32, i32, i32, i8, i8 }
%union.anon.174 = type { i32 }
%union.anon.175 = type { %struct.anon.177 }
%struct.anon.177 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.163 }
%union.anon.163 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sctp_endpoint = type { %struct.sctp_ep_common, %struct.hlist_node, i32, %struct.list_head, [32 x i8], ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, i16, i8, i8, %struct.callback_head }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.152, %struct.list_head, ptr, %union.anon.153, %union.sctp_params, %union.anon.154, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%union.anon.152 = type { %struct.list_head }
%union.anon.153 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.154 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.sctp_paramhdr = type { i16, i16 }
%struct.sctp_chunks_param = type { %struct.sctp_paramhdr, [0 x i8] }
%struct.sctp_auth_bytes = type { %struct.refcount_struct, i32, [0 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sctp_hmac_algo_param = type { %struct.sctp_paramhdr, [0 x i16] }
%struct.sctp_auth_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_authhdr }
%struct.sctp_authhdr = type { i16, i16, [0 x i8] }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.sctp_hmacalgo = type { i32, [0 x i16] }
%struct.sctp_authkey = type { i32, i16, i16, [0 x i8] }
%struct.sctp_stream_interleave = type { i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sctp_dbg_objcnt_keys = external dso_local global %struct.atomic_t, align 4
@sctp_hmac_list = internal global { [4 x %struct.sctp_hmac], [48 x i8] } { [4 x %struct.sctp_hmac] [%struct.sctp_hmac zeroinitializer, %struct.sctp_hmac { i16 1, ptr @.str, i16 20 }, %struct.sctp_hmac { i16 2, ptr null, i16 0 }, %struct.sctp_hmac { i16 3, ptr @.str.1, i16 32 }], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hmac(sha1)\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha256)\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 14, i64 15]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 14, i64 15]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 14, i64 15]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 14, i64 15]
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"sctp_hmac_list\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 22, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 29, i32 16 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [19 x i8] c"../net/sctp/auth.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 39, i32 16 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @sctp_hmac_list, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_hmac_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_auth_key_put(ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.end

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.end:                                           ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %key, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !15
  tail call void @llvm.prefetch.p0(ptr nonnull %key, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %key, ptr nonnull %key, i32 1, ptr nonnull elementtype(i32) %key) #11, !srcloc !16
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then1, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end2_crit_edge, label %if.then10.i.i.i, !prof !17

if.end5.i.i.i.if.end2_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %key, i32 noundef 3) #11
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  tail call void @kfree_sensitive(ptr noundef nonnull %key) #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_keys, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_keys, i32 1, i32 3, i32 1) #11
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_keys, ptr nonnull @sctp_dbg_objcnt_keys, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_keys) #11, !srcloc !19
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.then10.i.i.i, %if.end5.i.i.i.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_auth_shkey_create(i16 noundef zeroext %key_id, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !17

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 20) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %refcnt = getelementptr inbounds %struct.sctp_shared_key, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refcnt, align 4
  %key_id1 = getelementptr inbounds %struct.sctp_shared_key, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %key_id1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %key_id, ptr %key_id1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_auth_shkey_release(ptr noundef %sh_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_shared_key, ptr %sh_key, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !15
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !16
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !17

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %1 = ptrtoint ptr %sh_key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %sh_key, align 4
  %cmp.i.not.i = icmp eq ptr %2, %sh_key
  br i1 %cmp.i.not.i, label %sctp_auth_shkey_destroy.exit, label %do.body4.i, !prof !17

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/auth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #11, !srcloc !20
  unreachable

sctp_auth_shkey_destroy.exit:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %key.i = getelementptr inbounds %struct.sctp_shared_key, ptr %sh_key, i32 0, i32 1
  %3 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %key.i, align 4
  tail call void @sctp_auth_key_put(ptr noundef %4) #11
  %5 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %key.i, align 4
  tail call void @kfree(ptr noundef %sh_key) #11
  br label %if.end

if.end:                                           ; preds = %sctp_auth_shkey_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_auth_shkey_hold(ptr noundef %sh_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.sctp_shared_key, ptr %sh_key, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !21
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !22

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !17

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_auth_destroy_keys(ptr noundef %keys) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %keys, align 4
  %cmp.i.not = icmp eq ptr %1, %keys
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %sctp_auth_shkey_release.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ep_key.021 = phi ptr [ %tmp.0, %sctp_auth_shkey_release.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ep_key.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %ep_key.021, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep_key.021) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ep_key.021, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %ep_key.021 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep_key.021, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %ep_key.021 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %ep_key.021, ptr %ep_key.021, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %ep_key.021, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ep_key.021, ptr %prev.i3.i, align 4
  %refcnt.i = getelementptr inbounds %struct.sctp_shared_key, ptr %ep_key.021, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !15
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !16
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sctp_auth_shkey_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !17

if.end5.i.i.i.i.sctp_auth_shkey_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_auth_shkey_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %sctp_auth_shkey_release.exit

if.then.i:                                        ; preds = %list_del_init.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %12 = ptrtoint ptr %ep_key.021 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ep_key.021, align 4
  %cmp.i.not.i.i = icmp eq ptr %13, %ep_key.021
  br i1 %cmp.i.not.i.i, label %sctp_auth_shkey_destroy.exit.i, label %do.body4.i.i, !prof !17

do.body4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/auth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #11, !srcloc !20
  unreachable

sctp_auth_shkey_destroy.exit.i:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %key.i.i = getelementptr inbounds %struct.sctp_shared_key, ptr %ep_key.021, i32 0, i32 1
  %14 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %key.i.i, align 4
  tail call void @sctp_auth_key_put(ptr noundef %15) #11
  %16 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %key.i.i, align 4
  tail call void @kfree(ptr noundef %ep_key.021) #11
  br label %sctp_auth_shkey_release.exit

sctp_auth_shkey_release.exit:                     ; preds = %sctp_auth_shkey_destroy.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sctp_auth_shkey_release.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.0, %keys
  br i1 %cmp.not, label %sctp_auth_shkey_release.exit.cleanup_crit_edge, label %sctp_auth_shkey_release.exit.for.body_crit_edge

sctp_auth_shkey_release.exit.for.body_crit_edge:  ; preds = %sctp_auth_shkey_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sctp_auth_shkey_release.exit.cleanup_crit_edge:   ; preds = %sctp_auth_shkey_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sctp_auth_shkey_release.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_asoc_copy_shkeys(ptr noundef readonly %ep, ptr noundef %asoc, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoint_shared_keys = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 73
  %0 = ptrtoint ptr %endpoint_shared_keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %endpoint_shared_keys, align 4
  %cmp.i.not = icmp eq ptr %1, %endpoint_shared_keys
  br i1 %cmp.i.not, label %do.end9, label %do.body4, !prof !17

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/auth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #11, !srcloc !23
  unreachable

do.end9:                                          ; preds = %entry
  %endpoint_shared_keys10 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 11
  %2 = ptrtoint ptr %endpoint_shared_keys10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %sh_key.040 = load ptr, ptr %endpoint_shared_keys10, align 4
  %cmp.not41 = icmp eq ptr %sh_key.040, %endpoint_shared_keys10
  br i1 %cmp.not41, label %do.end9.cleanup_crit_edge, label %for.body.lr.ph

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end9
  %or.i.i = or i32 %gfp, 256
  %and.i.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  %spec.select = select i1 %tobool3.not.i.i.i.i, i32 %..i.i.i.i, i32 3
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %sh_key.042 = phi ptr [ %sh_key.040, %for.body.lr.ph ], [ %sh_key.0, %list_add.exit.for.body_crit_edge ]
  %key_id = getelementptr inbounds %struct.sctp_shared_key, ptr %sh_key.042, i32 0, i32 3
  %3 = ptrtoint ptr %key_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %key_id, align 4
  br i1 %cmp.i19.i.i.i, label %for.body.kzalloc.exit.i_crit_edge, label %if.end.i20.i.i.i, !prof !17

for.body.kzalloc.exit.i_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit.i

if.end.i20.i.i.i:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end.i20.i.i.i, %for.body.kzalloc.exit.i_crit_edge
  %retval.0.i21.i.i.i = phi i32 [ 0, %for.body.kzalloc.exit.i_crit_edge ], [ %spec.select, %if.end.i20.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i.i, i32 7
  %5 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef %or.i.i, i32 noundef 20) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %nomem, label %if.end17

if.end17:                                         ; preds = %kzalloc.exit.i
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %refcnt.i = getelementptr inbounds %struct.sctp_shared_key, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %refcnt.i, align 4
  %key_id1.i = getelementptr inbounds %struct.sctp_shared_key, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %key_id1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %4, ptr %key_id1.i, align 8
  %key = getelementptr inbounds %struct.sctp_shared_key, ptr %sh_key.042, i32 0, i32 1
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %key, align 4
  %key18 = getelementptr inbounds %struct.sctp_shared_key, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %key18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %key18, align 8
  %tobool.not.i38 = icmp eq ptr %12, null
  br i1 %tobool.not.i38, label %if.end17.sctp_auth_key_hold.exit_crit_edge, label %if.end.i39

if.end17.sctp_auth_key_hold.exit_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_auth_key_hold.exit

if.end.i39:                                       ; preds = %if.end17
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %12, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #11, !srcloc !21
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i39.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !22

if.end.i39.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i39
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sctp_auth_key_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !17

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sctp_auth_key_hold.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_auth_key_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i39.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i39.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef %.sink.i.i.i.i) #11
  br label %sctp_auth_key_hold.exit

sctp_auth_key_hold.exit:                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sctp_auth_key_hold.exit_crit_edge, %if.end17.sctp_auth_key_hold.exit_crit_edge
  %16 = ptrtoint ptr %endpoint_shared_keys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %endpoint_shared_keys, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %endpoint_shared_keys, ptr noundef %17) #11
  br i1 %call.i.i, label %if.end.i.i, label %sctp_auth_key_hold.exit.list_add.exit_crit_edge

sctp_auth_key_hold.exit.list_add.exit_crit_edge:  ; preds = %sctp_auth_key_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %sctp_auth_key_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %call7.i.i.i, align 8
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %endpoint_shared_keys, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %endpoint_shared_keys to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i.i, ptr %endpoint_shared_keys, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %sctp_auth_key_hold.exit.list_add.exit_crit_edge
  %22 = ptrtoint ptr %sh_key.042 to i32
  call void @__asan_load4_noabort(i32 %22)
  %sh_key.0 = load ptr, ptr %sh_key.042, align 4
  %cmp.not = icmp eq ptr %sh_key.0, %endpoint_shared_keys10
  br i1 %cmp.not, label %list_add.exit.cleanup_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nomem:                                            ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sctp_auth_destroy_keys(ptr noundef %endpoint_shared_keys)
  br label %cleanup

cleanup:                                          ; preds = %nomem, %list_add.exit.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %nomem ], [ 0, %do.end9.cleanup_crit_edge ], [ 0, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_asoc_init_active_key(ptr noundef %asoc, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %auth_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %auth_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %auth_capable, align 2
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_key_id = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 77
  %2 = ptrtoint ptr %active_key_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %active_key_id, align 2
  %endpoint_shared_keys.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 73
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %key.0.in.i = phi ptr [ %endpoint_shared_keys.i, %if.end ], [ %key.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %key.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %key.0.i = load ptr, ptr %key.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %key.0.i, %endpoint_shared_keys.i
  br i1 %cmp.not.i, label %for.cond.i.do.body6_crit_edge, label %for.body.i

for.cond.i.do.body6_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

for.body.i:                                       ; preds = %for.cond.i
  %key_id2.i = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %key_id2.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %key_id2.i, align 4
  %cmp4.i = icmp eq i16 %6, %3
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %deactivated.i = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0.i, i32 0, i32 4
  %7 = ptrtoint ptr %deactivated.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %deactivated.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp ne i8 %8, 0
  %tobool1.not = icmp eq ptr %key.0.i, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.then.i.do.body6_crit_edge, label %do.end12, !prof !24

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.body6:                                         ; preds = %if.then.i.do.body6_crit_edge, %for.cond.i.do.body6_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/auth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 401, 0\0A.popsection", ""() #11, !srcloc !25
  unreachable

do.end12:                                         ; preds = %if.then.i
  %call13 = tail call fastcc ptr @sctp_auth_asoc_create_secret(ptr noundef %asoc, ptr noundef nonnull %key.0.i, i32 noundef %gfp)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end12.cleanup_crit_edge, label %if.end16

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %do.end12
  %asoc_shared_key = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 74
  %9 = ptrtoint ptr %asoc_shared_key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asoc_shared_key, align 4
  tail call void @sctp_auth_key_put(ptr noundef %10)
  %11 = ptrtoint ptr %asoc_shared_key to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %asoc_shared_key, align 4
  %shkey = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 75
  %12 = ptrtoint ptr %shkey to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %key.0.i, ptr %shkey, align 8
  %out_chunk_list = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 1
  %13 = ptrtoint ptr %out_chunk_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %chunk.065 = load ptr, ptr %out_chunk_list, align 4
  %cmp.not66 = icmp eq ptr %chunk.065, %out_chunk_list
  br i1 %cmp.not66, label %if.end16.cleanup_crit_edge, label %for.body.lr.ph

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end16
  %tobool.not.i58 = icmp eq ptr %asoc, null
  %peer_chunks.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %chunk.067 = phi ptr [ %chunk.065, %for.body.lr.ph ], [ %chunk.0, %for.inc.for.body_crit_edge ]
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.067, i32 0, i32 10
  %14 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chunk_hdr, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 2
  br i1 %tobool.not.i58, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %18 = ptrtoint ptr %auth_capable to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %auth_capable, align 2
  %19 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool1.not.i = icmp eq i16 %19, 0
  br i1 %tobool1.not.i, label %if.end.i.for.inc_crit_edge, label %if.end3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end3.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %peer_chunks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %peer_chunks.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end3.i.for.inc_crit_edge, label %lor.lhs.false.i.i

if.end3.i.for.inc_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.i.i:                                ; preds = %if.end3.i
  %length.i.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %length.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.i.i = icmp eq i16 %23, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.for.inc_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.for.inc_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %sub.i.i = add i16 %23, -4
  %conv7.i.i = zext i16 %sub.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i.i)
  %cmp828.not.i.i = icmp eq i16 %sub.i.i, 0
  br i1 %cmp828.not.i.i, label %if.end.i.i.for.inc_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.for.inc_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.029.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sctp_chunks_param, ptr %21, i32 0, i32 1, i32 %i.029.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %25, label %sw.default.i.i [
    i8 1, label %for.body.i.i.for.inc.i.i_crit_edge
    i8 2, label %for.body.i.i.for.inc.i.i_crit_edge73
    i8 14, label %for.body.i.i.for.inc.i.i_crit_edge74
    i8 15, label %for.body.i.i.for.inc.i.i_crit_edge75
  ]

for.body.i.i.for.inc.i.i_crit_edge75:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.body.i.i.for.inc.i.i_crit_edge74:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.body.i.i.for.inc.i.i_crit_edge73:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

sw.default.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %17)
  %cmp14.i.i = icmp eq i8 %25, %17
  %spec.select.i.i = zext i1 %cmp14.i.i to i32
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.default.i.i, %for.body.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge73, %for.body.i.i.for.inc.i.i_crit_edge74, %for.body.i.i.for.inc.i.i_crit_edge75
  %found.1.i.i = phi i32 [ 0, %for.body.i.i.for.inc.i.i_crit_edge ], [ 0, %for.body.i.i.for.inc.i.i_crit_edge73 ], [ 0, %for.body.i.i.for.inc.i.i_crit_edge74 ], [ 0, %for.body.i.i.for.inc.i.i_crit_edge75 ], [ %spec.select.i.i, %sw.default.i.i ]
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1.i.i)
  %tobool6.not.i.i = icmp eq i32 %found.1.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv7.i.i)
  %cmp8.i.i = icmp ult i32 %inc.i.i, %conv7.i.i
  %or.cond.i.i = select i1 %tobool6.not.i.i, i1 %cmp8.i.i, i1 false
  br i1 %or.cond.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %sctp_auth_send_cid.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

sctp_auth_send_cid.exit:                          ; preds = %for.inc.i.i
  br i1 %tobool6.not.i.i, label %sctp_auth_send_cid.exit.for.inc_crit_edge, label %if.then24

sctp_auth_send_cid.exit.for.inc_crit_edge:        ; preds = %sctp_auth_send_cid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then24:                                        ; preds = %sctp_auth_send_cid.exit
  %auth = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.067, i32 0, i32 21
  %27 = ptrtoint ptr %auth to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load25 = load i16, ptr %auth, align 4
  %bf.set = or i16 %bf.load25, 64
  store i16 %bf.set, ptr %auth, align 4
  %28 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk.067, i32 0, i32 6
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool27.not = icmp eq ptr %30, null
  br i1 %tobool27.not, label %if.then28, label %if.then24.for.inc_crit_edge

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then28:                                        ; preds = %if.then24
  %31 = ptrtoint ptr %shkey to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %shkey, align 8
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %28, align 4
  %refcnt.i = getelementptr inbounds %struct.sctp_shared_key, ptr %32, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !21
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then28.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !22

if.then28.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then28
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.inc_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !17

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.inc_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then28.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then28.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.inc_crit_edge, %if.then24.for.inc_crit_edge, %sctp_auth_send_cid.exit.for.inc_crit_edge, %if.end.i.i.for.inc_crit_edge, %lor.lhs.false.i.i.for.inc_crit_edge, %if.end3.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %36 = ptrtoint ptr %chunk.067 to i32
  call void @__asan_load4_noabort(i32 %36)
  %chunk.0 = load ptr, ptr %chunk.067, align 4
  %cmp.not = icmp eq ptr %chunk.0, %out_chunk_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %do.end12.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_auth_get_shkey(ptr noundef readonly %asoc, i16 noundef zeroext %key_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoint_shared_keys = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 73
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %key.0.in = phi ptr [ %endpoint_shared_keys, %entry ], [ %key.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %key.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %key.0 = load ptr, ptr %key.0.in, align 4
  %cmp.not = icmp eq ptr %key.0, %endpoint_shared_keys
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %key_id2 = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 3
  %1 = ptrtoint ptr %key_id2 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %key_id2, align 4
  %cmp4 = icmp eq i16 %2, %key_id
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %for.body
  %deactivated = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 4
  %3 = ptrtoint ptr %deactivated to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %deactivated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %if.then.for.end_crit_edge, %for.cond.for.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end ], [ %key.0, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sctp_auth_asoc_create_secret(ptr nocapture noundef readonly %asoc, ptr nocapture noundef readonly %ep_key, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %length.i.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 13, i32 2
  %0 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length.i.i, align 2
  %length2.i.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 14, i32 2
  %2 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length2.i.i, align 2
  %length4.i.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 15, i32 2
  %4 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length4.i.i, align 2
  %phi.cast.i.i = zext i16 %5 to i32
  %conv.i.i = zext i16 %1 to i32
  %conv5.i.i = zext i16 %3 to i32
  %add.i.i = add nuw nsw i32 %phi.cast.i.i, %conv.i.i
  %add7.i.i = add nuw nsw i32 %add.i.i, %conv5.i.i
  %add.i.i.i = add nuw nsw i32 %add7.i.i, 8
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef %gfp) #15
  %tobool.not.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %entry.sctp_auth_make_local_vector.exit_crit_edge, label %if.end10.i.i

entry.sctp_auth_make_local_vector.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_auth_make_local_vector.exit

if.end10.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %auth_hmacs.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 14
  %auth_chunks.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 15
  %auth_random.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 13
  %len.i.i.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add7.i.i, ptr %len.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %call9.i.i.i.i, align 128
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_keys, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_keys, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_keys, ptr nonnull @sctp_dbg_objcnt_keys, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_keys) #11, !srcloc !26
  %data.i.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i.i.i, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %data.i.i, ptr %auth_random.i, i32 %conv.i.i)
  %add.ptr.i.i = getelementptr i8, ptr %data.i.i, i32 %conv.i.i
  %10 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %auth_chunks.i, i32 %phi.cast.i.i)
  %add.ptr24.i.i = getelementptr i8, ptr %data.i.i, i32 %add.i.i
  %11 = call ptr @memcpy(ptr %add.ptr24.i.i, ptr %auth_hmacs.i, i32 %conv5.i.i)
  br label %sctp_auth_make_local_vector.exit

sctp_auth_make_local_vector.exit:                 ; preds = %if.end10.i.i, %entry.sctp_auth_make_local_vector.exit_crit_edge
  %peer_random.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 19
  %12 = ptrtoint ptr %peer_random.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peer_random.i, align 8
  %peer_chunks.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 20
  %14 = ptrtoint ptr %peer_chunks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer_chunks.i, align 4
  %peer_hmacs.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 21
  %16 = ptrtoint ptr %peer_hmacs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %peer_hmacs.i, align 8
  %length.i.i19 = getelementptr inbounds %struct.sctp_paramhdr, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %length.i.i19 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %length.i.i19, align 2
  %length2.i.i20 = getelementptr inbounds %struct.sctp_paramhdr, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %length2.i.i20 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length2.i.i20, align 2
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %sctp_auth_make_local_vector.exit.if.end.i.i_crit_edge, label %if.then.i.i

sctp_auth_make_local_vector.exit.if.end.i.i_crit_edge: ; preds = %sctp_auth_make_local_vector.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sctp_auth_make_local_vector.exit
  call void @__sanitizer_cov_trace_pc() #13
  %length4.i.i21 = getelementptr inbounds %struct.sctp_paramhdr, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %length4.i.i21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %length4.i.i21, align 2
  %phi.cast.i.i22 = zext i16 %23 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sctp_auth_make_local_vector.exit.if.end.i.i_crit_edge
  %chunks_len.0.i.i = phi i32 [ %phi.cast.i.i22, %if.then.i.i ], [ 0, %sctp_auth_make_local_vector.exit.if.end.i.i_crit_edge ]
  %conv.i.i23 = zext i16 %19 to i32
  %conv5.i.i24 = zext i16 %21 to i32
  %add.i.i25 = add nuw nsw i32 %chunks_len.0.i.i, %conv.i.i23
  %add7.i.i26 = add nuw nsw i32 %add.i.i25, %conv5.i.i24
  %add.i.i.i27 = add nuw nsw i32 %add7.i.i26, 8
  %call9.i.i.i.i62 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i27, i32 noundef %gfp) #15
  %tobool.not.i.i.i65 = icmp eq ptr %call9.i.i.i.i62, null
  br i1 %tobool.not.i.i.i65, label %if.end.i.i.out_crit_edge, label %if.end10.i.i71

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end10.i.i71:                                   ; preds = %if.end.i.i
  %len.i.i.i67 = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i.i.i62, i32 0, i32 1
  %24 = ptrtoint ptr %len.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add7.i.i26, ptr %len.i.i.i67, align 4
  %call.i.i.i.i.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i.i62, i32 noundef 4) #11
  %25 = ptrtoint ptr %call9.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %call9.i.i.i.i62, align 128
  %call.i.i.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_keys, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_keys, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_keys, ptr nonnull @sctp_dbg_objcnt_keys, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_keys) #11, !srcloc !26
  %data.i.i70 = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i.i.i62, i32 0, i32 2
  %27 = call ptr @memcpy(ptr %data.i.i70, ptr %13, i32 %conv.i.i23)
  br i1 %tobool.not.i.i, label %if.end10.i.i71.sctp_auth_make_peer_vector.exit_crit_edge, label %if.then15.i.i

if.end10.i.i71.sctp_auth_make_peer_vector.exit_crit_edge: ; preds = %if.end10.i.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_auth_make_peer_vector.exit

if.then15.i.i:                                    ; preds = %if.end10.i.i71
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i72 = getelementptr i8, ptr %data.i.i70, i32 %conv.i.i23
  %28 = call ptr @memcpy(ptr %add.ptr.i.i72, ptr %15, i32 %chunks_len.0.i.i)
  br label %sctp_auth_make_peer_vector.exit

sctp_auth_make_peer_vector.exit:                  ; preds = %if.then15.i.i, %if.end10.i.i71.sctp_auth_make_peer_vector.exit_crit_edge
  %offset.0.i.i = phi i32 [ %add.i.i25, %if.then15.i.i ], [ %conv.i.i23, %if.end10.i.i71.sctp_auth_make_peer_vector.exit_crit_edge ]
  %add.ptr24.i.i73 = getelementptr i8, ptr %data.i.i70, i32 %offset.0.i.i
  %29 = call ptr @memcpy(ptr %add.ptr24.i.i73, ptr %17, i32 %conv5.i.i24)
  br i1 %tobool.not.i.i.i, label %sctp_auth_make_peer_vector.exit.out_crit_edge, label %if.end

sctp_auth_make_peer_vector.exit.out_crit_edge:    ; preds = %sctp_auth_make_peer_vector.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %sctp_auth_make_peer_vector.exit
  %len.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %32 = ptrtoint ptr %len.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i.i67, align 4
  %sub.i = sub i32 %31, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end.if.end14.i_crit_edge, label %if.then.i

if.end.if.end14.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  %vector1.vector2.i = select i1 %cmp.i, ptr %call9.i.i.i.i, ptr %call9.i.i.i.i62
  %cond.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %vector1.vector2.i, i32 0, i32 2
  %34 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1034.i = icmp sgt i32 %34, 0
  br i1 %cmp1034.i, label %if.then.i.for.body.i_crit_edge, label %if.then.i.if.end14.i_crit_edge

if.then.i.if.end14.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %34
  br i1 %exitcond.not.i, label %for.cond.i.if.end14.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.if.end14.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %i.035.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %cond.i, i32 %i.035.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp11.not.i = icmp eq i8 %36, 0
  br i1 %cmp11.not.i, label %for.cond.i, label %for.body.i.sctp_auth_compare_vectors.exit_crit_edge

for.body.i.sctp_auth_compare_vectors.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_auth_compare_vectors.exit

if.end14.i:                                       ; preds = %for.cond.i.if.end14.i_crit_edge, %if.then.i.if.end14.i_crit_edge, %if.end.if.end14.i_crit_edge
  %data15.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i.i.i, i32 0, i32 2
  %call.i = tail call i32 @memcmp(ptr noundef %data15.i, ptr noundef %data.i.i70, i32 noundef %31) #16
  br label %sctp_auth_compare_vectors.exit

sctp_auth_compare_vectors.exit:                   ; preds = %if.end14.i, %for.body.i.sctp_auth_compare_vectors.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end14.i ], [ %sub.i, %for.body.i.sctp_auth_compare_vectors.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp4 = icmp slt i32 %retval.0.i, 0
  %call.call1 = select i1 %cmp4, ptr %call9.i.i.i.i, ptr %call9.i.i.i.i62
  %call1.call = select i1 %cmp4, ptr %call9.i.i.i.i62, ptr %call9.i.i.i.i
  %len.i74 = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call.call1, i32 0, i32 1
  %37 = ptrtoint ptr %len.i74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i74, align 4
  %len1.i75 = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call1.call, i32 0, i32 1
  %39 = ptrtoint ptr %len1.i75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len1.i75, align 4
  %add.i = add i32 %40, %38
  %key.i = getelementptr inbounds %struct.sctp_shared_key, ptr %ep_key, i32 0, i32 1
  %41 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %key.i, align 4
  %tobool.not.i76 = icmp eq ptr %42, null
  br i1 %tobool.not.i76, label %sctp_auth_compare_vectors.exit.if.end.i_crit_edge, label %if.then.i77

sctp_auth_compare_vectors.exit.if.end.i_crit_edge: ; preds = %sctp_auth_compare_vectors.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i77:                                      ; preds = %sctp_auth_compare_vectors.exit
  call void @__sanitizer_cov_trace_pc() #13
  %len3.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len3.i, align 4
  %add4.i = add i32 %44, %add.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i77, %sctp_auth_compare_vectors.exit.if.end.i_crit_edge
  %auth_len.0.i = phi i32 [ %add4.i, %if.then.i77 ], [ %add.i, %sctp_auth_compare_vectors.exit.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483639, i32 %auth_len.0.i)
  %cmp.i.i = icmp ugt i32 %auth_len.0.i, 2147483639
  br i1 %cmp.i.i, label %if.end.i.out_crit_edge, label %if.end8.i.i.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8.i.i.i:                                    ; preds = %if.end.i
  %add.i.i78 = add nuw nsw i32 %auth_len.0.i, 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i78, i32 noundef %gfp) #15
  %tobool.not.i.i82 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i82, label %if.end8.i.i.i.out_crit_edge, label %if.end7.i

if.end8.i.i.i.out_crit_edge:                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7.i:                                        ; preds = %if.end8.i.i.i
  %len.i.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %auth_len.0.i, ptr %len.i.i, align 4
  %call.i.i.i.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef 4) #11
  %46 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 1, ptr %call9.i.i.i, align 128
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_keys, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_keys, i32 1, i32 3, i32 1) #11
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_keys, ptr nonnull @sctp_dbg_objcnt_keys, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_keys) #11, !srcloc !26
  %48 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %key.i, align 4
  %tobool9.not.i = icmp eq ptr %49, null
  br i1 %tobool9.not.i, label %if.end7.i.if.end19.i_crit_edge, label %if.then10.i

if.end7.i.if.end19.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i.i, i32 0, i32 2
  %data12.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %49, i32 0, i32 2
  %len15.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len15.i, align 4
  %52 = call ptr @memcpy(ptr %data.i, ptr %data12.i, i32 %51)
  %53 = load i32, ptr %len15.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end19.i_crit_edge
  %offset.0.i = phi i32 [ %53, %if.then10.i ], [ 0, %if.end7.i.if.end19.i_crit_edge ]
  %data20.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i.i, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %data20.i, i32 %offset.0.i
  %data22.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call.call1, i32 0, i32 2
  %54 = ptrtoint ptr %len.i74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i74, align 4
  %56 = call ptr @memcpy(ptr %add.ptr.i, ptr %data22.i, i32 %55)
  %add26.i = add i32 %55, %offset.0.i
  %add.ptr29.i = getelementptr i8, ptr %data20.i, i32 %add26.i
  %data30.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call1.call, i32 0, i32 2
  %57 = ptrtoint ptr %len1.i75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len1.i75, align 4
  %59 = call ptr @memcpy(ptr %add.ptr29.i, ptr %data30.i, i32 %58)
  br label %out

out:                                              ; preds = %if.end19.i, %if.end8.i.i.i.out_crit_edge, %if.end.i.out_crit_edge, %sctp_auth_make_peer_vector.exit.out_crit_edge, %if.end.i.i.out_crit_edge
  %secret.0 = phi ptr [ null, %sctp_auth_make_peer_vector.exit.out_crit_edge ], [ %call9.i.i.i, %if.end19.i ], [ null, %if.end.i.out_crit_edge ], [ null, %if.end8.i.i.i.out_crit_edge ], [ null, %if.end.i.i.out_crit_edge ]
  tail call void @sctp_auth_key_put(ptr noundef %call9.i.i.i.i)
  tail call void @sctp_auth_key_put(ptr noundef %call9.i.i.i.i62)
  ret ptr %secret.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_send_cid(i32 noundef %chunk, ptr noundef readonly %asoc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %auth_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %auth_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %auth_capable, align 2
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  %peer_chunks = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 20
  %2 = ptrtoint ptr %peer_chunks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer_chunks, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end3.return_crit_edge, label %lor.lhs.false.i

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %if.end3
  %length.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp eq i16 %5, 0
  br i1 %cmp.i, label %lor.lhs.false.i.return_crit_edge, label %if.end.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub.i = add i16 %5, -4
  %conv7.i = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %cmp828.not.i = icmp eq i16 %sub.i, 0
  br i1 %cmp828.not.i, label %if.end.i.return_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sctp_chunks_param, ptr %3, i32 0, i32 1, i32 %i.029.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %7, label %sw.default.i [
    i8 1, label %for.body.i.for.inc.i_crit_edge
    i8 2, label %for.body.i.for.inc.i_crit_edge7
    i8 14, label %for.body.i.for.inc.i_crit_edge8
    i8 15, label %for.body.i.for.inc.i_crit_edge9
  ]

for.body.i.for.inc.i_crit_edge9:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge8:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge7:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv10.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i, i32 %chunk)
  %cmp14.i = icmp eq i32 %conv10.i, %chunk
  %spec.select.i = zext i1 %cmp14.i to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge7, %for.body.i.for.inc.i_crit_edge8, %for.body.i.for.inc.i_crit_edge9
  %found.1.i = phi i32 [ 0, %for.body.i.for.inc.i_crit_edge ], [ 0, %for.body.i.for.inc.i_crit_edge7 ], [ 0, %for.body.i.for.inc.i_crit_edge8 ], [ 0, %for.body.i.for.inc.i_crit_edge9 ], [ %spec.select.i, %sw.default.i ]
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1.i)
  %tobool6.not.i = icmp eq i32 %found.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv7.i)
  %cmp8.i = icmp ult i32 %inc.i, %conv7.i
  %or.cond.i = select i1 %tobool6.not.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.return_crit_edge

for.inc.i.return_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

return:                                           ; preds = %for.inc.i.return_crit_edge, %if.end.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.end3.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ %found.1.i, %for.inc.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_init_hmacs(ptr nocapture noundef %ep, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %auth_hmacs = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 8
  %0 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth_hmacs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %if.end.kcalloc.exit_crit_edge, label %if.end.i20.i.i.i, !prof !17

if.end.kcalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %kcalloc.exit

if.end.i20.i.i.i:                                 ; preds = %if.end
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i20.i.i.i.kcalloc.exit_crit_edge

if.end.i20.i.i.i.kcalloc.exit_crit_edge:          ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kcalloc.exit

if.end5.i.i.i.i:                                  ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end5.i.i.i.i, %if.end.i20.i.i.i.kcalloc.exit_crit_edge, %if.end.kcalloc.exit_crit_edge
  %retval.0.i21.i.i.i = phi i32 [ 0, %if.end.kcalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.i.kcalloc.exit_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i.i, i32 7
  %2 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %or.i, i32 noundef 16) #14
  %4 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %auth_hmacs, align 4
  %tobool3.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not, label %kcalloc.exit.cleanup_crit_edge, label %for.body.preheader

kcalloc.exit.cleanup_crit_edge:                   ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %kcalloc.exit
  %5 = load ptr, ptr getelementptr inbounds ([4 x %struct.sctp_hmac], ptr @sctp_hmac_list, i32 0, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %for.body.preheader.for.inc_crit_edge, label %if.end9

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end9:                                          ; preds = %for.body.preheader
  %6 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auth_hmacs, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end15, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15:                                         ; preds = %if.end9
  %call19 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end15.out_err_crit_edge, label %if.end22

if.end15.out_err_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %auth_hmacs, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %11, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %if.end9.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %13 = load ptr, ptr getelementptr inbounds ([4 x %struct.sctp_hmac], ptr @sctp_hmac_list, i32 0, i32 1, i32 1), align 4
  %tobool7.not.1 = icmp eq ptr %13, null
  br i1 %tobool7.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end9.1:                                        ; preds = %for.inc
  %14 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %auth_hmacs, align 4
  %arrayidx12.1 = getelementptr ptr, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx12.1, align 4
  %tobool13.not.1 = icmp eq ptr %17, null
  br i1 %tobool13.not.1, label %if.end15.1, label %if.end9.1.for.inc.1_crit_edge

if.end9.1.for.inc.1_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end15.1:                                       ; preds = %if.end9.1
  %call19.1 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull %13, i32 noundef 0, i32 noundef 0) #11
  %cmp.i.1 = icmp ugt ptr %call19.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end15.1.out_err_crit_edge, label %if.end22.1

if.end15.1.out_err_crit_edge:                     ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end22.1:                                       ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %auth_hmacs, align 4
  %arrayidx25.1 = getelementptr ptr, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call19.1, ptr %arrayidx25.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end22.1, %if.end9.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %21 = load ptr, ptr getelementptr inbounds ([4 x %struct.sctp_hmac], ptr @sctp_hmac_list, i32 0, i32 2, i32 1), align 4
  %tobool7.not.2 = icmp eq ptr %21, null
  br i1 %tobool7.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end9.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end9.2:                                        ; preds = %for.inc.1
  %22 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %auth_hmacs, align 4
  %arrayidx12.2 = getelementptr ptr, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx12.2, align 4
  %tobool13.not.2 = icmp eq ptr %25, null
  br i1 %tobool13.not.2, label %if.end15.2, label %if.end9.2.for.inc.2_crit_edge

if.end9.2.for.inc.2_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end15.2:                                       ; preds = %if.end9.2
  %call19.2 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull %21, i32 noundef 0, i32 noundef 0) #11
  %cmp.i.2 = icmp ugt ptr %call19.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.end15.2.out_err_crit_edge, label %if.end22.2

if.end15.2.out_err_crit_edge:                     ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end22.2:                                       ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %auth_hmacs, align 4
  %arrayidx25.2 = getelementptr ptr, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call19.2, ptr %arrayidx25.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end22.2, %if.end9.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %29 = load ptr, ptr getelementptr inbounds ([4 x %struct.sctp_hmac], ptr @sctp_hmac_list, i32 0, i32 3, i32 1), align 4
  %tobool7.not.3 = icmp eq ptr %29, null
  br i1 %tobool7.not.3, label %for.inc.2.cleanup_crit_edge, label %if.end9.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.3:                                        ; preds = %for.inc.2
  %30 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %auth_hmacs, align 4
  %arrayidx12.3 = getelementptr ptr, ptr %31, i32 3
  %32 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx12.3, align 4
  %tobool13.not.3 = icmp eq ptr %33, null
  br i1 %tobool13.not.3, label %if.end15.3, label %if.end9.3.cleanup_crit_edge

if.end9.3.cleanup_crit_edge:                      ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15.3:                                       ; preds = %if.end9.3
  %call19.3 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull %29, i32 noundef 0, i32 noundef 0) #11
  %cmp.i.3 = icmp ugt ptr %call19.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.end15.3.out_err_crit_edge, label %if.end22.3

if.end15.3.out_err_crit_edge:                     ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end22.3:                                       ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %auth_hmacs, align 4
  %arrayidx25.3 = getelementptr ptr, ptr %35, i32 3
  %36 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call19.3, ptr %arrayidx25.3, align 4
  br label %cleanup

out_err:                                          ; preds = %if.end15.3.out_err_crit_edge, %if.end15.2.out_err_crit_edge, %if.end15.1.out_err_crit_edge, %if.end15.out_err_crit_edge
  %37 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %auth_hmacs, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %out_err.sctp_auth_destroy_hmacs.exit_crit_edge, label %for.body.preheader.i

out_err.sctp_auth_destroy_hmacs.exit_crit_edge:   ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_auth_destroy_hmacs.exit

for.body.preheader.i:                             ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %40, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %40, ptr noundef %base.i.i.i) #11
  %arrayidx.1.i = getelementptr ptr, ptr %38, i32 1
  %41 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.1.i, align 4
  %base.i.i.1.i = getelementptr inbounds %struct.crypto_shash, ptr %42, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %42, ptr noundef %base.i.i.1.i) #11
  %arrayidx.2.i = getelementptr ptr, ptr %38, i32 2
  %43 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.2.i, align 4
  %base.i.i.2.i = getelementptr inbounds %struct.crypto_shash, ptr %44, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %44, ptr noundef %base.i.i.2.i) #11
  %arrayidx.3.i = getelementptr ptr, ptr %38, i32 3
  %45 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.3.i, align 4
  %base.i.i.3.i = getelementptr inbounds %struct.crypto_shash, ptr %46, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %46, ptr noundef %base.i.i.3.i) #11
  tail call void @kfree(ptr noundef nonnull %38) #11
  br label %sctp_auth_destroy_hmacs.exit

sctp_auth_destroy_hmacs.exit:                     ; preds = %for.body.preheader.i, %out_err.sctp_auth_destroy_hmacs.exit_crit_edge
  %47 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %auth_hmacs, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_auth_destroy_hmacs.exit, %if.end22.3, %if.end9.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %sctp_auth_destroy_hmacs.exit ], [ 0, %entry.cleanup_crit_edge ], [ -12, %kcalloc.exit.cleanup_crit_edge ], [ 0, %if.end22.3 ], [ 0, %if.end9.3.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_auth_destroy_hmacs(ptr noundef %auth_hmacs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %auth_hmacs, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth_hmacs, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #11
  %arrayidx.1 = getelementptr ptr, ptr %auth_hmacs, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %base.i.i.1 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i.1) #11
  %arrayidx.2 = getelementptr ptr, ptr %auth_hmacs, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %base.i.i.2 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %base.i.i.2) #11
  %arrayidx.3 = getelementptr ptr, ptr %auth_hmacs, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %base.i.i.3 = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %7, ptr noundef %base.i.i.3) #11
  tail call void @kfree(ptr noundef nonnull %auth_hmacs) #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @sctp_auth_get_hmac(i16 noundef zeroext %hmac_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %hmac_id to i32
  %arrayidx = getelementptr [4 x %struct.sctp_hmac], ptr @sctp_hmac_list, i32 0, i32 %idxprom
  ret ptr %arrayidx
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_auth_asoc_get_hmac(ptr nocapture noundef readonly %asoc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %default_hmac_id = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 76
  %0 = ptrtoint ptr %default_hmac_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %default_hmac_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [4 x %struct.sctp_hmac], ptr @sctp_hmac_list, i32 0, i32 %idxprom
  br label %cleanup

if.end:                                           ; preds = %entry
  %peer_hmacs = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 21
  %2 = ptrtoint ptr %peer_hmacs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer_hmacs, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 2
  %conv = zext i16 %5 to i32
  %sub = add nuw nsw i32 %conv, 131068
  %shr = lshr i32 %sub, 1
  %conv6 = and i32 %shr, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6)
  %cmp39.not = icmp eq i32 %conv6, 0
  br i1 %cmp39.not, label %if.end4.cleanup_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %if.then15.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %if.then15.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %arrayidx8 = getelementptr %struct.sctp_hmac_algo_param, ptr %3, i32 0, i32 1, i32 %i.040
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp10 = icmp ugt i16 %7, 3
  br i1 %cmp10, label %for.body.if.then15_crit_edge, label %lor.lhs.false

for.body.if.then15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

lor.lhs.false:                                    ; preds = %for.body
  %conv9 = zext i16 %7 to i32
  %hmac_name = getelementptr [4 x %struct.sctp_hmac], ptr @sctp_hmac_list, i32 0, i32 %conv9, i32 1
  %8 = ptrtoint ptr %hmac_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hmac_name, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %lor.lhs.false.if.then15_crit_edge, label %for.end

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %for.body.if.then15_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %conv6
  br i1 %exitcond.not, label %if.then15.cleanup_crit_edge, label %if.then15.for.body_crit_edge

if.then15.for.body_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp18 = icmp eq i16 %7, 0
  br i1 %cmp18, label %for.end.cleanup_crit_edge, label %if.end21

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv9.le = zext i16 %7 to i32
  %arrayidx23 = getelementptr [4 x %struct.sctp_hmac], ptr @sctp_hmac_list, i32 0, i32 %conv9.le
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %for.end.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %arrayidx, %if.then ], [ %arrayidx23, %if.end21 ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ null, %if.then15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_asoc_verify_hmac_id(ptr noundef readonly %asoc, i16 noundef zeroext %hmac_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 14, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  %conv = zext i16 %1 to i32
  %sub = add nuw nsw i32 %conv, 131068
  %shr = lshr i32 %sub, 1
  %hmac_ids = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 14, i32 4
  %conv3 = and i32 %shr, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp6.i.not = icmp eq i32 %conv3, 0
  br i1 %cmp6.i.not, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv3
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %hmac_ids, i32 %i.07.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %hmac_id)
  %cmp2.i = icmp eq i16 %3, %hmac_id
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ], [ 1, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_auth_asoc_set_default_hmac(ptr nocapture noundef %asoc, ptr nocapture noundef readonly %hmacs) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %default_hmac_id = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 76
  %0 = ptrtoint ptr %default_hmac_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %default_hmac_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %hmacs, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp23.not = icmp ult i32 %sub, 2
  br i1 %cmp23.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %shr = lshr i32 %sub, 1
  %ep1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %4 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep1, align 4
  %auth_hmacs = getelementptr inbounds %struct.sctp_endpoint, ptr %5, i32 0, i32 8
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sctp_hmac_algo_param, ptr %hmacs, i32 0, i32 1, i32 %i.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp4 = icmp ugt i16 %7, 3
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %conv3 = zext i16 %7 to i32
  %8 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %auth_hmacs, align 4
  %arrayidx8 = getelementptr ptr, ptr %9, i32 %conv3
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.end7.for.inc_crit_edge, label %if.then10

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %default_hmac_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %default_hmac_id, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_recv_cid(i32 noundef %chunk, ptr noundef readonly %asoc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %auth_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %auth_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %auth_capable, align 2
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  %auth_chunks = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 15
  %tobool.not.i = icmp eq ptr %auth_chunks, null
  br i1 %tobool.not.i, label %if.end3.return_crit_edge, label %lor.lhs.false.i

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %if.end3
  %length.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 4, i32 15, i32 2
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i = icmp eq i16 %3, 0
  br i1 %cmp.i, label %lor.lhs.false.i.return_crit_edge, label %if.end.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub.i = add i16 %3, -4
  %conv7.i = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %cmp828.not.i = icmp eq i16 %sub.i, 0
  br i1 %cmp828.not.i, label %if.end.i.return_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sctp_chunks_param, ptr %auth_chunks, i32 0, i32 1, i32 %i.029.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %5, label %sw.default.i [
    i8 1, label %for.body.i.for.inc.i_crit_edge
    i8 2, label %for.body.i.for.inc.i_crit_edge6
    i8 14, label %for.body.i.for.inc.i_crit_edge7
    i8 15, label %for.body.i.for.inc.i_crit_edge8
  ]

for.body.i.for.inc.i_crit_edge8:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge7:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge6:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv10.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i, i32 %chunk)
  %cmp14.i = icmp eq i32 %conv10.i, %chunk
  %spec.select.i = zext i1 %cmp14.i to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge6, %for.body.i.for.inc.i_crit_edge7, %for.body.i.for.inc.i_crit_edge8
  %found.1.i = phi i32 [ 0, %for.body.i.for.inc.i_crit_edge ], [ 0, %for.body.i.for.inc.i_crit_edge6 ], [ 0, %for.body.i.for.inc.i_crit_edge7 ], [ 0, %for.body.i.for.inc.i_crit_edge8 ], [ %spec.select.i, %sw.default.i ]
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1.i)
  %tobool6.not.i = icmp eq i32 %found.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv7.i)
  %cmp8.i = icmp ult i32 %inc.i, %conv7.i
  %or.cond.i = select i1 %tobool6.not.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.return_crit_edge

for.inc.i.return_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

return:                                           ; preds = %for.inc.i.return_crit_edge, %if.end.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.end3.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ %found.1.i, %for.inc.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_auth_calculate_hmac(ptr nocapture noundef readonly %asoc, ptr nocapture noundef readonly %skb, ptr noundef %auth, ptr nocapture noundef readonly %ep_key, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %auth_hdr = getelementptr inbounds %struct.sctp_auth_chunk, ptr %auth, i32 0, i32 1
  %0 = ptrtoint ptr %auth_hdr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %auth_hdr, align 2
  %hmac_id2 = getelementptr inbounds %struct.sctp_auth_chunk, ptr %auth, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %hmac_id2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hmac_id2, align 2
  %active_key_id = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 77
  %4 = ptrtoint ptr %active_key_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %active_key_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %5)
  %cmp = icmp eq i16 %1, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %asoc_shared_key = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 74
  %6 = ptrtoint ptr %asoc_shared_key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asoc_shared_key, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %call = tail call fastcc ptr @sctp_auth_asoc_create_secret(ptr noundef %asoc, ptr noundef %ep_key, i32 noundef %gfp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then
  %asoc_key.0 = phi ptr [ %7, %if.then ], [ %call, %if.else.if.end6_crit_edge ]
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %ep = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %10 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep, align 4
  %auth_hmacs = getelementptr inbounds %struct.sctp_endpoint, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %auth_hmacs, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr ptr, ptr %13, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %data = getelementptr inbounds %struct.sctp_auth_bytes, ptr %asoc_key.0, i32 0, i32 2
  %len = getelementptr inbounds %struct.sctp_auth_bytes, ptr %asoc_key.0, i32 0, i32 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %call10 = tail call i32 @crypto_shash_setkey(ptr noundef %15, ptr noundef %data, i32 noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end6.free_crit_edge

if.end6.free_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %hmac = getelementptr inbounds %struct.sctp_auth_chunk, ptr %auth, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %auth to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call14 = tail call i32 @crypto_shash_tfm_digest(ptr noundef %15, ptr noundef %auth, i32 noundef %sub.ptr.sub, ptr noundef %hmac) #11
  br label %free

free:                                             ; preds = %if.end13, %if.end6.free_crit_edge
  br i1 %cmp, label %free.cleanup_crit_edge, label %if.then16

free.cleanup_crit_edge:                           ; preds = %free
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %free
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sctp_auth_key_put(ptr noundef %asoc_key.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %free.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_ep_add_chunkid(ptr nocapture noundef readonly %ep, i8 noundef zeroext %chunk_id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %auth_chunk_list = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 10
  %0 = ptrtoint ptr %auth_chunk_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth_chunk_list, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %length.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i = icmp eq i16 %3, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub.i = add i16 %3, -4
  %conv7.i = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %cmp828.not.i = icmp eq i16 %sub.i, 0
  br i1 %cmp828.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sctp_chunks_param, ptr %1, i32 0, i32 1, i32 %i.029.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %5, label %sw.default.i [
    i8 1, label %for.body.i.for.inc.i_crit_edge
    i8 2, label %for.body.i.for.inc.i_crit_edge21
    i8 14, label %for.body.i.for.inc.i_crit_edge22
    i8 15, label %for.body.i.for.inc.i_crit_edge23
  ]

for.body.i.for.inc.i_crit_edge23:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge22:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge21:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %chunk_id)
  %cmp14.i = icmp eq i8 %5, %chunk_id
  %spec.select.i = zext i1 %cmp14.i to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge21, %for.body.i.for.inc.i_crit_edge22, %for.body.i.for.inc.i_crit_edge23
  %found.1.i = phi i32 [ 0, %for.body.i.for.inc.i_crit_edge ], [ 0, %for.body.i.for.inc.i_crit_edge21 ], [ 0, %for.body.i.for.inc.i_crit_edge22 ], [ 0, %for.body.i.for.inc.i_crit_edge23 ], [ %spec.select.i, %sw.default.i ]
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1.i)
  %tobool6.not.i = icmp eq i32 %found.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv7.i)
  %cmp8.i = icmp ult i32 %inc.i, %conv7.i
  %or.cond.i = select i1 %tobool6.not.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %__sctp_auth_cid.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

__sctp_auth_cid.exit:                             ; preds = %for.inc.i
  br i1 %tobool6.not.i, label %__sctp_auth_cid.exit.if.end_crit_edge, label %__sctp_auth_cid.exit.cleanup_crit_edge

__sctp_auth_cid.exit.cleanup_crit_edge:           ; preds = %__sctp_auth_cid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

__sctp_auth_cid.exit.if.end_crit_edge:            ; preds = %__sctp_auth_cid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %__sctp_auth_cid.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %length, align 2
  %sub = add i16 %8, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %sub)
  %cmp = icmp eq i16 %sub, 20
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i16 %sub to i32
  %arrayidx = getelementptr %struct.sctp_chunks_param, ptr %1, i32 0, i32 1, i32 %conv3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %chunk_id, ptr %arrayidx, align 1
  %add = add i16 %8, 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %add, ptr %length, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %__sctp_auth_cid.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %__sctp_auth_cid.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_ep_set_hmacs(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %hmacs) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hmacs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hmacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp44.not = icmp eq i32 %1, 0
  br i1 %cmp44.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %has_sha1.045 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sctp_hmacalgo, ptr %hmacs, i32 0, i32 1, i32 %i.046
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp1 = icmp ugt i16 %3, 3
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  %conv = zext i16 %3 to i32
  %hmac_name = getelementptr [4 x %struct.sctp_hmac], ptr @sctp_hmac_list, i32 0, i32 %conv, i32 1
  %4 = ptrtoint ptr %hmac_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hmac_name, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp4 = icmp eq i16 %3, 1
  %spec.select = select i1 %cmp4, i32 1, i32 %has_sha1.045
  %inc = add nuw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %phi.cmp = icmp eq i32 %spec.select, 0
  br i1 %phi.cmp, label %for.end.cleanup_crit_edge, label %for.cond14.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond14.preheader:                             ; preds = %for.end
  %6 = ptrtoint ptr %hmacs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hmacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1647.not = icmp eq i32 %7, 0
  br i1 %cmp1647.not, label %for.cond14.preheader.for.end24_crit_edge, label %for.body18.lr.ph

for.cond14.preheader.for.end24_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end24

for.body18.lr.ph:                                 ; preds = %for.cond14.preheader
  %auth_hmacs_list = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 9
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body18.lr.ph
  %i.148 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc23, %for.body18.for.body18_crit_edge ]
  %arrayidx20 = getelementptr %struct.sctp_hmacalgo, ptr %hmacs, i32 0, i32 1, i32 %i.148
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx20, align 2
  %10 = ptrtoint ptr %auth_hmacs_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %auth_hmacs_list, align 4
  %arrayidx21 = getelementptr %struct.sctp_hmac_algo_param, ptr %11, i32 0, i32 1, i32 %i.148
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %9, ptr %arrayidx21, align 2
  %inc23 = add nuw i32 %i.148, 1
  %13 = ptrtoint ptr %hmacs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hmacs, align 4
  %cmp16 = icmp ult i32 %inc23, %14
  br i1 %cmp16, label %for.body18.for.body18_crit_edge, label %for.end24.loopexit

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18

for.end24.loopexit:                               ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = trunc i32 %14 to i16
  %phi.bo = shl i16 %phi.cast, 1
  %phi.bo51 = add i16 %phi.bo, 4
  br label %for.end24

for.end24:                                        ; preds = %for.end24.loopexit, %for.cond14.preheader.for.end24_crit_edge
  %.lcssa = phi i16 [ 4, %for.cond14.preheader.for.end24_crit_edge ], [ %phi.bo51, %for.end24.loopexit ]
  %auth_hmacs_list27 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 9
  %15 = ptrtoint ptr %auth_hmacs_list27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %auth_hmacs_list27, align 4
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.lcssa, ptr %length, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end24, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end24 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %for.body.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_set_key(ptr noundef %ep, ptr noundef %asoc, ptr nocapture noundef readonly %auth_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %auth_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %auth_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %auth_capable, align 2
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %endpoint_shared_keys = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 73
  br label %if.end10

if.else:                                          ; preds = %entry
  %auth_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 13
  %2 = ptrtoint ptr %auth_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load3 = load i8, ptr %auth_enable, align 2
  %3 = and i8 %bf.load3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %if.end8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %endpoint_shared_keys9 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 11
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end
  %sh_keys.0 = phi ptr [ %endpoint_shared_keys, %if.end ], [ %endpoint_shared_keys9, %if.end8 ]
  %sca_keynumber = getelementptr inbounds %struct.sctp_authkey, ptr %auth_key, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end10
  %shkey.0.in = phi ptr [ %sh_keys.0, %if.end10 ], [ %shkey.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %shkey.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %shkey.0 = load ptr, ptr %shkey.0.in, align 4
  %cmp.not = icmp eq ptr %shkey.0, %sh_keys.0
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %key_id = getelementptr inbounds %struct.sctp_shared_key, ptr %shkey.0, i32 0, i32 3
  %5 = ptrtoint ptr %key_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %key_id, align 4
  %7 = ptrtoint ptr %sca_keynumber to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sca_keynumber, align 4
  %cmp12 = icmp eq i16 %6, %8
  br i1 %cmp12, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %shkey.0.lcssa = phi ptr [ %shkey.0, %for.body.for.end_crit_edge ], [ %sh_keys.0, %for.cond.for.end_crit_edge ]
  %9 = ptrtoint ptr %sca_keynumber to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sca_keynumber, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 20) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.end.cleanup_crit_edge, label %if.end24

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %for.end
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %refcnt.i = getelementptr inbounds %struct.sctp_shared_key, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  %14 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %refcnt.i, align 4
  %key_id1.i = getelementptr inbounds %struct.sctp_shared_key, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %key_id1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %10, ptr %key_id1.i, align 8
  %sca_keylength = getelementptr inbounds %struct.sctp_authkey, ptr %auth_key, i32 0, i32 2
  %16 = ptrtoint ptr %sca_keylength to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sca_keylength, align 2
  %conv25 = zext i16 %17 to i32
  %add.i = add nuw nsw i32 %conv25, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i77 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i77, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %len.i = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv25, ptr %len.i, align 4
  %call.i.i.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 4) #11
  %19 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %call9.i.i, align 128
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sctp_dbg_objcnt_keys, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @sctp_dbg_objcnt_keys, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sctp_dbg_objcnt_keys, ptr nonnull @sctp_dbg_objcnt_keys, i32 1, ptr nonnull elementtype(i32) @sctp_dbg_objcnt_keys) #11, !srcloc !26
  %data = getelementptr inbounds %struct.sctp_auth_bytes, ptr %call9.i.i, i32 0, i32 2
  %sca_key = getelementptr inbounds %struct.sctp_authkey, ptr %auth_key, i32 0, i32 3
  %21 = ptrtoint ptr %sca_keylength to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sca_keylength, align 2
  %conv31 = zext i16 %22 to i32
  %23 = call ptr @memcpy(ptr %data, ptr %sca_key, i32 %conv31)
  %key32 = getelementptr inbounds %struct.sctp_shared_key, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %key32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i, ptr %key32, align 8
  br i1 %cmp.not, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end29
  %25 = ptrtoint ptr %sh_keys.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sh_keys.0, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %sh_keys.0, ptr noundef %26) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %prev1.i.i, align 4
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %call7.i.i.i, align 8
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sh_keys.0, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %sh_keys.0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i.i, ptr %sh_keys.0, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %call.i.i79 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %shkey.0.lcssa) #11
  br i1 %call.i.i79, label %if.end.i.i81, label %if.end36.list_del_init.exit_crit_edge

if.end36.list_del_init.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i81:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i80 = getelementptr inbounds %struct.list_head, ptr %shkey.0.lcssa, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i80 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i80, align 4
  %33 = ptrtoint ptr %shkey.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %shkey.0.lcssa, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i81, %if.end36.list_del_init.exit_crit_edge
  %37 = ptrtoint ptr %shkey.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %shkey.0.lcssa, ptr %shkey.0.lcssa, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %shkey.0.lcssa, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %shkey.0.lcssa, ptr %prev.i3.i, align 4
  %refcnt.i82 = getelementptr inbounds %struct.sctp_shared_key, ptr %shkey.0.lcssa, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i82, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !15
  tail call void @llvm.prefetch.p0(ptr %refcnt.i82, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i82, ptr %refcnt.i82, i32 1, ptr elementtype(i32) %refcnt.i82) #11, !srcloc !16
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sctp_auth_shkey_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !17

if.end5.i.i.i.i.sctp_auth_shkey_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_auth_shkey_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i82, i32 noundef 3) #11
  br label %sctp_auth_shkey_release.exit

if.then.i:                                        ; preds = %list_del_init.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %40 = ptrtoint ptr %shkey.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %shkey.0.lcssa, align 4
  %cmp.i.not.i.i = icmp eq ptr %41, %shkey.0.lcssa
  br i1 %cmp.i.not.i.i, label %sctp_auth_shkey_destroy.exit.i, label %do.body4.i.i, !prof !17

do.body4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/auth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #11, !srcloc !20
  unreachable

sctp_auth_shkey_destroy.exit.i:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %key.i.i = getelementptr inbounds %struct.sctp_shared_key, ptr %shkey.0.lcssa, i32 0, i32 1
  %42 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %key.i.i, align 4
  tail call void @sctp_auth_key_put(ptr noundef %43) #11
  %44 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %key.i.i, align 4
  tail call void @kfree(ptr noundef %shkey.0.lcssa) #11
  br label %sctp_auth_shkey_release.exit

sctp_auth_shkey_release.exit:                     ; preds = %sctp_auth_shkey_destroy.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sctp_auth_shkey_release.exit_crit_edge
  %45 = ptrtoint ptr %sh_keys.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sh_keys.0, align 4
  %call.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %sh_keys.0, ptr noundef %46) #11
  br i1 %call.i.i84, label %if.end.i.i87, label %sctp_auth_shkey_release.exit.list_add.exit88_crit_edge

sctp_auth_shkey_release.exit.list_add.exit88_crit_edge: ; preds = %sctp_auth_shkey_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit88

if.end.i.i87:                                     ; preds = %sctp_auth_shkey_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i85 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i85 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i.i, ptr %prev1.i.i85, align 4
  %48 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %call7.i.i.i, align 8
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %sh_keys.0, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %sh_keys.0 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call7.i.i.i, ptr %sh_keys.0, align 4
  br label %list_add.exit88

list_add.exit88:                                  ; preds = %if.end.i.i87, %sctp_auth_shkey_release.exit.list_add.exit88_crit_edge
  br i1 %tobool.not, label %list_add.exit88.cleanup_crit_edge, label %land.lhs.true

list_add.exit88.cleanup_crit_edge:                ; preds = %list_add.exit88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %list_add.exit88
  %active_key_id = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 77
  %51 = ptrtoint ptr %active_key_id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %active_key_id, align 2
  %53 = ptrtoint ptr %sca_keynumber to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sca_keynumber, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp43 = icmp eq i16 %52, %54
  br i1 %cmp43, label %if.then45, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = tail call i32 @sctp_auth_asoc_init_active_key(ptr noundef nonnull %asoc, i32 noundef 3264)
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %land.lhs.true.cleanup_crit_edge, %list_add.exit88.cleanup_crit_edge, %if.end.i.i, %if.then34.cleanup_crit_edge, %if.then28, %for.end.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then28 ], [ -13, %if.then.cleanup_crit_edge ], [ -13, %if.else.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %list_add.exit88.cleanup_crit_edge ], [ 0, %if.then34.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -12, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_set_active_key(ptr noundef %ep, ptr noundef %asoc, i16 noundef zeroext %key_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %auth_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %auth_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %auth_capable, align 2
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %endpoint_shared_keys = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 73
  br label %if.end10

if.else:                                          ; preds = %entry
  %auth_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 13
  %2 = ptrtoint ptr %auth_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load3 = load i8, ptr %auth_enable, align 2
  %3 = and i8 %bf.load3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %if.end8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %endpoint_shared_keys9 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 11
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end
  %sh_keys.0 = phi ptr [ %endpoint_shared_keys, %if.end ], [ %endpoint_shared_keys9, %if.end8 ]
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end10
  %key.0.in = phi ptr [ %sh_keys.0, %if.end10 ], [ %key.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %key.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %key.0 = load ptr, ptr %key.0.in, align 4
  %cmp.not = icmp eq ptr %key.0, %sh_keys.0
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %key_id11 = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 3
  %5 = ptrtoint ptr %key_id11 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %key_id11, align 4
  %cmp13 = icmp eq i16 %6, %key_id
  br i1 %cmp13, label %lor.lhs.false.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

lor.lhs.false.critedge:                           ; preds = %for.body
  %deactivated = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 4
  %7 = ptrtoint ptr %deactivated to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %deactivated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool24.not = icmp eq i8 %8, 0
  br i1 %tobool24.not, label %if.end26, label %lor.lhs.false.critedge.cleanup_crit_edge

lor.lhs.false.critedge.cleanup_crit_edge:         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false.critedge
  br i1 %tobool.not, label %if.else29, label %if.then28

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %active_key_id = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 77
  %9 = ptrtoint ptr %active_key_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %key_id, ptr %active_key_id, align 2
  %call = tail call i32 @sctp_auth_asoc_init_active_key(ptr noundef nonnull %asoc, i32 noundef 3264)
  br label %cleanup

if.else29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %active_key_id30 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 12
  %10 = ptrtoint ptr %active_key_id30 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %key_id, ptr %active_key_id30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.then28, %lor.lhs.false.critedge.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %if.then.cleanup_crit_edge ], [ -13, %if.else.cleanup_crit_edge ], [ -22, %lor.lhs.false.critedge.cleanup_crit_edge ], [ 0, %if.else29 ], [ 0, %if.then28 ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_del_key_id(ptr noundef readonly %ep, ptr noundef readonly %asoc, i16 noundef zeroext %key_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %auth_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %auth_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %auth_capable, align 2
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %active_key_id = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 77
  %2 = ptrtoint ptr %active_key_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %active_key_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %key_id)
  %cmp = icmp eq i16 %3, %key_id
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %endpoint_shared_keys = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 73
  br label %if.end21

if.else:                                          ; preds = %entry
  %auth_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 13
  %4 = ptrtoint ptr %auth_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load7 = load i8, ptr %auth_enable, align 2
  %5 = and i8 %bf.load7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %active_key_id13 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 12
  %6 = ptrtoint ptr %active_key_id13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %active_key_id13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %key_id)
  %cmp16 = icmp eq i16 %7, %key_id
  br i1 %cmp16, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %endpoint_shared_keys20 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 11
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end6
  %sh_keys.0 = phi ptr [ %endpoint_shared_keys, %if.end6 ], [ %endpoint_shared_keys20, %if.end19 ]
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end21
  %key.0.in = phi ptr [ %sh_keys.0, %if.end21 ], [ %key.0, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %key.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %key.0 = load ptr, ptr %key.0.in, align 4
  %cmp22.not = icmp eq ptr %key.0, %sh_keys.0
  br i1 %cmp22.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %key_id24 = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 3
  %9 = ptrtoint ptr %key_id24 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_id24, align 4
  %cmp27 = icmp eq i16 %10, %key_id
  br i1 %cmp27, label %if.end38, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end38:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %key.0) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end38.list_del_init.exit_crit_edge

if.end38.list_del_init.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %key.0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %key.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %key.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end38.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %key.0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %key.0, ptr %key.0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %key.0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %key.0, ptr %prev.i3.i, align 4
  %refcnt.i = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !15
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !16
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !17

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %list_del_init.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %20 = ptrtoint ptr %key.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %key.0, align 4
  %cmp.i.not.i.i = icmp eq ptr %21, %key.0
  br i1 %cmp.i.not.i.i, label %sctp_auth_shkey_destroy.exit.i, label %do.body4.i.i, !prof !17

do.body4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sctp/auth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #11, !srcloc !20
  unreachable

sctp_auth_shkey_destroy.exit.i:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %key.i.i = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 1
  %22 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %key.i.i, align 4
  tail call void @sctp_auth_key_put(ptr noundef %23) #11
  %24 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %key.i.i, align 4
  tail call void @kfree(ptr noundef %key.0) #11
  br label %cleanup

cleanup:                                          ; preds = %sctp_auth_shkey_destroy.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -13, %if.else.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %sctp_auth_shkey_destroy.exit.i ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_deact_key_id(ptr noundef readonly %ep, ptr noundef %asoc, i16 noundef zeroext %key_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %asoc, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %auth_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %auth_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %auth_capable, align 2
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %active_key_id = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 77
  %2 = ptrtoint ptr %active_key_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %active_key_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %key_id)
  %cmp = icmp eq i16 %3, %key_id
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %endpoint_shared_keys = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 73
  br label %if.end21

if.else:                                          ; preds = %entry
  %auth_enable = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 13
  %4 = ptrtoint ptr %auth_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load7 = load i8, ptr %auth_enable, align 2
  %5 = and i8 %bf.load7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %active_key_id13 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 12
  %6 = ptrtoint ptr %active_key_id13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %active_key_id13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %key_id)
  %cmp16 = icmp eq i16 %7, %key_id
  br i1 %cmp16, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %endpoint_shared_keys20 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 11
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end6
  %sh_keys.0 = phi ptr [ %endpoint_shared_keys, %if.end6 ], [ %endpoint_shared_keys20, %if.end19 ]
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end21
  %key.0.in = phi ptr [ %sh_keys.0, %if.end21 ], [ %key.0, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %key.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %key.0 = load ptr, ptr %key.0.in, align 4
  %cmp22.not = icmp eq ptr %key.0, %sh_keys.0
  br i1 %cmp22.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %key_id24 = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 3
  %9 = ptrtoint ptr %key_id24 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_id24, align 4
  %cmp27 = icmp eq i16 %10, %key_id
  br i1 %cmp27, label %if.end38, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end38:                                         ; preds = %for.body
  %key_id24.le = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 3
  br i1 %tobool.not, label %if.end38.if.end53_crit_edge, label %land.lhs.true

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end38
  %11 = ptrtoint ptr %key.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %key.0, align 4
  %cmp.i.not = icmp eq ptr %12, %key.0
  br i1 %cmp.i.not, label %land.lhs.true.if.end53_crit_edge, label %land.lhs.true42

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

land.lhs.true42:                                  ; preds = %land.lhs.true
  %refcnt = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %13 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp44 = icmp eq i32 %14, 1
  br i1 %cmp44, label %if.then46, label %land.lhs.true42.if.end53_crit_edge

land.lhs.true42.if.end53_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then46:                                        ; preds = %land.lhs.true42
  %15 = ptrtoint ptr %key_id24.le to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %key_id24.le, align 4
  %call48 = tail call ptr @sctp_ulpevent_make_authkey(ptr noundef nonnull %asoc, i16 noundef zeroext %16, i32 noundef 1, i32 noundef 3264) #11
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.then46.if.end53_crit_edge, label %if.then50

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %si = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 6
  %17 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %si, align 4
  %enqueue_event = getelementptr inbounds %struct.sctp_stream_interleave, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %enqueue_event to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %enqueue_event, align 4
  %ulpq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 62
  %call51 = tail call i32 %20(ptr noundef %ulpq, ptr noundef nonnull %call48) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.then46.if.end53_crit_edge, %land.lhs.true42.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %if.end38.if.end53_crit_edge
  %deactivated = getelementptr inbounds %struct.sctp_shared_key, ptr %key.0, i32 0, i32 4
  %21 = ptrtoint ptr %deactivated to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %deactivated, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %for.cond.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -13, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -13, %if.else.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_authkey(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_auth_init(ptr nocapture noundef %ep, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %auth_hmacs_list = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %auth_hmacs_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth_hmacs_list, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.then.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !17

if.then.kzalloc.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %if.then
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %if.then.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %if.then.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %2 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %or.i, i32 noundef 12) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %kzalloc.exit.nomem_crit_edge, label %cleanup.thread

kzalloc.exit.nomem_crit_edge:                     ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem

cleanup.thread:                                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -32764, ptr %call7.i.i, align 8
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 6, ptr %length, align 2
  %hmac_ids = getelementptr inbounds %struct.sctp_hmac_algo_param, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %hmac_ids to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %hmac_ids, align 4
  %7 = ptrtoint ptr %auth_hmacs_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %auth_hmacs_list, align 4
  br label %if.end6

if.end6:                                          ; preds = %cleanup.thread, %entry.if.end6_crit_edge
  %auth_chunk_list = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 10
  %8 = ptrtoint ptr %auth_chunk_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %auth_chunk_list, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then8:                                         ; preds = %if.end6
  %or.i53 = or i32 %gfp, 256
  %and.i.i.i54 = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i54)
  %cmp.i19.i.i55 = icmp eq i32 %and.i.i.i54, 0
  br i1 %cmp.i19.i.i55, label %if.then8.kzalloc.exit66_crit_edge, label %if.end.i20.i.i58, !prof !17

if.then8.kzalloc.exit66_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit66

if.end.i20.i.i58:                                 ; preds = %if.then8
  %and2.i.i.i56 = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i56)
  %tobool3.not.i.i.i57 = icmp eq i32 %and2.i.i.i56, 0
  br i1 %tobool3.not.i.i.i57, label %if.end5.i.i.i62, label %if.end.i20.i.i58.kzalloc.exit66_crit_edge

if.end.i20.i.i58.kzalloc.exit66_crit_edge:        ; preds = %if.end.i20.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit66

if.end5.i.i.i62:                                  ; preds = %if.end.i20.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i59 = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i59)
  %tobool7.not.i.i.i60 = icmp eq i32 %and6.i.i.i59, 0
  %..i.i.i61 = select i1 %tobool7.not.i.i.i60, i32 1, i32 2
  br label %kzalloc.exit66

kzalloc.exit66:                                   ; preds = %if.end5.i.i.i62, %if.end.i20.i.i58.kzalloc.exit66_crit_edge, %if.then8.kzalloc.exit66_crit_edge
  %retval.0.i21.i.i63 = phi i32 [ 0, %if.then8.kzalloc.exit66_crit_edge ], [ 3, %if.end.i20.i.i58.kzalloc.exit66_crit_edge ], [ %..i.i.i61, %if.end5.i.i.i62 ]
  %arrayidx6.i.i64 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i63, i32 7
  %10 = ptrtoint ptr %arrayidx6.i.i64 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i.i64, align 4
  %call7.i.i65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef %or.i53, i32 noundef 24) #14
  %tobool10.not = icmp eq ptr %call7.i.i65, null
  br i1 %tobool10.not, label %kzalloc.exit66.nomem_crit_edge, label %cleanup18.thread

kzalloc.exit66.nomem_crit_edge:                   ; preds = %kzalloc.exit66
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem

cleanup18.thread:                                 ; preds = %kzalloc.exit66
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call7.i.i65 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -32765, ptr %call7.i.i65, align 8
  %length16 = getelementptr inbounds %struct.sctp_paramhdr, ptr %call7.i.i65, i32 0, i32 1
  %13 = ptrtoint ptr %length16 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4, ptr %length16, align 2
  %14 = ptrtoint ptr %auth_chunk_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i65, ptr %auth_chunk_list, align 4
  br label %if.end21

if.end21:                                         ; preds = %cleanup18.thread, %if.end6.if.end21_crit_edge
  %call22 = tail call i32 @sctp_auth_init_hmacs(ptr noundef %ep, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup30_crit_edge, label %if.end21.nomem_crit_edge

if.end21.nomem_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem

if.end21.cleanup30_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

nomem:                                            ; preds = %if.end21.nomem_crit_edge, %kzalloc.exit66.nomem_crit_edge, %kzalloc.exit.nomem_crit_edge
  %err.0 = phi i32 [ %call22, %if.end21.nomem_crit_edge ], [ -12, %kzalloc.exit.nomem_crit_edge ], [ -12, %kzalloc.exit66.nomem_crit_edge ]
  %15 = ptrtoint ptr %auth_hmacs_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %auth_hmacs_list, align 4
  tail call void @kfree(ptr noundef %16) #11
  %auth_chunk_list27 = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 10
  %17 = ptrtoint ptr %auth_chunk_list27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %auth_chunk_list27, align 4
  tail call void @kfree(ptr noundef %18) #11
  %19 = ptrtoint ptr %auth_hmacs_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %auth_hmacs_list, align 4
  %20 = ptrtoint ptr %auth_chunk_list27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %auth_chunk_list27, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %nomem, %if.end21.cleanup30_crit_edge
  %retval.0 = phi i32 [ %err.0, %nomem ], [ 0, %if.end21.cleanup30_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_auth_free(ptr nocapture noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %auth_hmacs_list = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %auth_hmacs_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth_hmacs_list, align 4
  tail call void @kfree(ptr noundef %1) #11
  %auth_chunk_list = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 10
  %2 = ptrtoint ptr %auth_chunk_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %auth_chunk_list, align 4
  tail call void @kfree(ptr noundef %3) #11
  %4 = ptrtoint ptr %auth_hmacs_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %auth_hmacs_list, align 4
  %5 = ptrtoint ptr %auth_chunk_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %auth_chunk_list, align 4
  %auth_hmacs = getelementptr inbounds %struct.sctp_endpoint, ptr %ep, i32 0, i32 8
  %6 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auth_hmacs, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.sctp_auth_destroy_hmacs.exit_crit_edge, label %for.body.preheader.i

entry.sctp_auth_destroy_hmacs.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sctp_auth_destroy_hmacs.exit

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %9, ptr noundef %base.i.i.i) #11
  %arrayidx.1.i = getelementptr ptr, ptr %7, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1.i, align 4
  %base.i.i.1.i = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %11, ptr noundef %base.i.i.1.i) #11
  %arrayidx.2.i = getelementptr ptr, ptr %7, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2.i, align 4
  %base.i.i.2.i = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %13, ptr noundef %base.i.i.2.i) #11
  %arrayidx.3.i = getelementptr ptr, ptr %7, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3.i, align 4
  %base.i.i.3.i = getelementptr inbounds %struct.crypto_shash, ptr %15, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %15, ptr noundef %base.i.i.3.i) #11
  tail call void @kfree(ptr noundef nonnull %7) #11
  br label %sctp_auth_destroy_hmacs.exit

sctp_auth_destroy_hmacs.exit:                     ; preds = %for.body.preheader.i, %entry.sctp_auth_destroy_hmacs.exit_crit_edge
  %16 = ptrtoint ptr %auth_hmacs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %auth_hmacs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/auth.c", i32 29, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/sctp/auth.c", i32 39, i32 16}
!4 = !{ptr @sctp_hmac_list, !5, !"sctp_hmac_list", i1 false, i1 false}
!5 = !{!"../net/sctp/auth.c", i32 22, i32 25}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2148295809}
!16 = !{i64 2148210273, i64 2148210305, i64 2148210334, i64 2148210368, i64 2148210399, i64 2148210422}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2148921152}
!19 = !{i64 2148208743, i64 2148208769, i64 2148208798, i64 2148208832, i64 2148208863, i64 2148208886}
!20 = !{i64 2158239752, i64 2158240231, i64 2158239789, i64 2158239845, i64 2158239879, i64 2158239903, i64 2158239944, i64 2158239965, i64 2158239993, i64 2158240027}
!21 = !{i64 2148207808, i64 2148207840, i64 2148207869, i64 2148207903, i64 2148207934, i64 2148207957}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2158251409, i64 2158251889, i64 2158251446, i64 2158251502, i64 2158251536, i64 2158251560, i64 2158251601, i64 2158251622, i64 2158251650, i64 2158251684}
!24 = !{!"branch_weights", i32 2002, i32 2000}
!25 = !{i64 2158256721, i64 2158261262, i64 2158256758, i64 2158256814, i64 2158256848, i64 2158256872, i64 2158256913, i64 2158256934, i64 2158256962, i64 2158256996}
!26 = !{i64 2148206278, i64 2148206304, i64 2148206333, i64 2148206367, i64 2148206398, i64 2148206421}
