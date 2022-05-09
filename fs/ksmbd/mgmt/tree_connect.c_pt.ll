; ModuleID = '/llk/IR_all_yes/fs/ksmbd/mgmt/tree_connect.c_pt.bc'
source_filename = "../fs/ksmbd/mgmt/tree_connect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ksmbd_tree_conn_status = type { i32, ptr }
%struct.ksmbd_session = type { i64, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, [40 x i8], %struct.hlist_node, %struct.list_head, %struct.xarray, %struct.ida, %struct.list_head, [32 x i8], [32 x i8], [16 x i8], %struct.list_head, %struct.ksmbd_file_table, %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.list_head = type { ptr, ptr }
%struct.ksmbd_file_table = type { %struct.rwlock_t, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.__kernel_sockaddr_storage = type { %union.anon.170 }
%union.anon.170 = type { ptr, [124 x i8] }
%struct.ksmbd_tree_connect_response = type { i32, i16, i16, [16 x i32] }
%struct.ksmbd_tree_connect = type { i32, i32, ptr, ptr, %struct.list_head, i32, i8 }
%struct.ksmbd_share_config = type { ptr, ptr, i32, i32, %struct.list_head, %struct.path, %struct.atomic_t, %struct.hlist_node, i16, i16, i16, i16, i16, i16 }
%struct.path = type { ptr, ptr }

@__const.ksmbd_tree_conn_connect.status = private unnamed_addr constant %struct.ksmbd_tree_conn_status { i32 -22, ptr null }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_tree_conn_connect(ptr noalias nocapture writeonly sret(%struct.ksmbd_tree_conn_status) align 4 %agg.result, ptr noundef %sess, ptr noundef %share_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @__const.ksmbd_tree_conn_connect.status, align 8
  %1 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 %0, ptr %agg.result, align 4
  %call = tail call ptr @ksmbd_share_config_get(ptr noundef %share_name) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %out_error, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @ksmbd_acquire_tree_conn_id(ptr noundef %sess) #5
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call6, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.if.then34.sink.split_crit_edge, label %if.end10

if.end5.if.then34.sink.split_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34.sink.split

if.end10:                                         ; preds = %if.end5
  %conn = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 2
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %peer_addr11 = getelementptr inbounds %struct.ksmbd_conn, ptr %5, i32 0, i32 40
  %call12 = tail call ptr @ksmbd_ipc_tree_connect_request(ptr noundef %sess, ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i, ptr noundef %peer_addr11) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.if.then34.sink.split_crit_edge, label %if.end16

if.end10.if.then34.sink.split_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34.sink.split

if.end16:                                         ; preds = %if.end10
  %status = getelementptr inbounds %struct.ksmbd_tree_connect_response, ptr %call12, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %status, align 4
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %agg.result, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp19.not = icmp eq i16 %7, 0
  br i1 %cmp19.not, label %if.end22, label %if.end16.if.then34_crit_edge

if.end16.if.then34_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34

if.end22:                                         ; preds = %if.end16
  %connection_flags = getelementptr inbounds %struct.ksmbd_tree_connect_response, ptr %call12, i32 0, i32 2
  %9 = ptrtoint ptr %connection_flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %connection_flags, align 2
  %conv23 = zext i16 %10 to i32
  %flags = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv23, ptr %flags, align 4
  %user = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 1
  %12 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user, align 8
  %user24 = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %user24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %user24, align 4
  %share_conf = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %share_conf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %share_conf, align 8
  %tree_conn25 = getelementptr inbounds %struct.ksmbd_tree_conn_status, ptr %agg.result, i32 0, i32 1
  %16 = ptrtoint ptr %tree_conn25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %tree_conn25, align 4
  %tree_conns = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 13
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call7.i.i, align 8
  %call27 = tail call ptr @xa_store(ptr noundef %tree_conns, i32 noundef %18, ptr noundef nonnull %call7.i.i, i32 noundef 3264) #5
  %19 = ptrtoint ptr %call27 to i32
  %and.i.i.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i.i.i, 2
  %cmp.i.i = icmp ult ptr %call27, inttoptr (i32 -16378 to ptr)
  %tobool29.not69 = icmp ult ptr %call27, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i = or i1 %cmp.i.i, %cmp.i.i.i
  %tobool29.not = or i1 %tobool29.not69, %not.spec.select.i.i
  br i1 %tobool29.not, label %if.end32, label %if.end22.if.then34.sink.split_crit_edge

if.end22.if.then34.sink.split_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34.sink.split

if.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kvfree(ptr noundef nonnull %call12) #5
  br label %cleanup

out_error:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -12, ptr %agg.result, align 4
  br label %if.end36

if.then34.sink.split:                             ; preds = %if.end22.if.then34.sink.split_crit_edge, %if.end10.if.then34.sink.split_crit_edge, %if.end5.if.then34.sink.split_crit_edge
  %.sink = phi i32 [ -22, %if.end5.if.then34.sink.split_crit_edge ], [ -22, %if.end10.if.then34.sink.split_crit_edge ], [ -12, %if.end22.if.then34.sink.split_crit_edge ]
  %resp.0.ph.ph = phi ptr [ null, %if.end5.if.then34.sink.split_crit_edge ], [ null, %if.end10.if.then34.sink.split_crit_edge ], [ %call12, %if.end22.if.then34.sink.split_crit_edge ]
  %21 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %agg.result, align 4
  br label %if.then34

if.then34:                                        ; preds = %if.then34.sink.split, %if.end16.if.then34_crit_edge
  %resp.0.ph = phi ptr [ %call12, %if.end16.if.then34_crit_edge ], [ %resp.0.ph.ph, %if.then34.sink.split ]
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call7.i.i, align 8
  tail call void @ksmbd_release_tree_conn_id(ptr noundef %sess, i32 noundef %23) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %out_error
  %resp.068 = phi ptr [ %resp.0.ph, %if.then34 ], [ null, %out_error ]
  %refcount.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !10
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i65 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i65, label %if.end.i, label %if.end36.ksmbd_share_config_put.exit_crit_edge

if.end36.ksmbd_share_config_put.exit_crit_edge:   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %ksmbd_share_config_put.exit

if.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__ksmbd_share_config_put(ptr noundef nonnull %call) #5
  br label %ksmbd_share_config_put.exit

ksmbd_share_config_put.exit:                      ; preds = %if.end.i, %if.end36.ksmbd_share_config_put.exit_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #5
  tail call void @kvfree(ptr noundef %resp.068) #5
  br label %cleanup

cleanup:                                          ; preds = %ksmbd_share_config_put.exit, %if.end32, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_share_config_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_acquire_tree_conn_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_ipc_tree_connect_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_release_tree_conn_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_tree_conn_disconnect(ptr noundef %sess, ptr noundef %tree_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sess, align 8
  %2 = ptrtoint ptr %tree_conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tree_conn, align 4
  %conv = sext i32 %3 to i64
  %call = tail call i32 @ksmbd_ipc_tree_disconnect_request(i64 noundef %1, i64 noundef %conv) #5
  %4 = ptrtoint ptr %tree_conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tree_conn, align 4
  tail call void @ksmbd_release_tree_conn_id(ptr noundef %sess, i32 noundef %5) #5
  %tree_conns = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 13
  %6 = ptrtoint ptr %tree_conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tree_conn, align 4
  %call4 = tail call ptr @xa_erase(ptr noundef %tree_conns, i32 noundef %7) #5
  %share_conf = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %tree_conn, i32 0, i32 2
  %8 = ptrtoint ptr %share_conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %share_conf, align 4
  %refcount.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %9, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !10
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %entry.ksmbd_share_config_put.exit_crit_edge

entry.ksmbd_share_config_put.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ksmbd_share_config_put.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__ksmbd_share_config_put(ptr noundef %9) #5
  br label %ksmbd_share_config_put.exit

ksmbd_share_config_put.exit:                      ; preds = %if.end.i, %entry.ksmbd_share_config_put.exit_crit_edge
  tail call void @kfree(ptr noundef %tree_conn) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_ipc_tree_disconnect_request(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_tree_conn_lookup(ptr noundef %sess, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tree_conns = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 13
  %call = tail call ptr @xa_load(ptr noundef %tree_conns, i32 noundef %id) #5
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_tree_conn_share(ptr noundef %sess, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tree_conns.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 13
  %call.i = tail call ptr @xa_load(ptr noundef %tree_conns.i, i32 noundef %id) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %share_conf = getelementptr inbounds %struct.ksmbd_tree_connect, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %share_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %share_conf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_tree_conn_session_logoff(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #5
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %tree_conns = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 13
  %call = call ptr @xa_find(ptr noundef %tree_conns, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #5
  %tobool.not10 = icmp eq ptr %call, null
  br i1 %tobool.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %tc.012 = phi ptr [ %call3, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %ret.011 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = call i32 @ksmbd_tree_conn_disconnect(ptr noundef %sess, ptr noundef nonnull %tc.012)
  %or = or i32 %call1, %ret.011
  %call3 = call ptr @xa_find_after(ptr noundef %tree_conns, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  call void @xa_destroy(ptr noundef %tree_conns) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #5
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ksmbd_share_config_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
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
!9 = !{i64 2148669820}
!10 = !{i64 2148584529, i64 2148584561, i64 2148584590, i64 2148584624, i64 2148584655, i64 2148584678}
!11 = !{i64 2148670049}
