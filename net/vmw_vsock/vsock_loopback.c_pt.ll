; ModuleID = '/llk/IR_all_yes/net/vmw_vsock/vsock_loopback.c_pt.bc'
source_filename = "../net/vmw_vsock/vsock_loopback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsock_loopback = type { ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.virtio_transport = type { %struct.vsock_transport, ptr }
%struct.vsock_transport = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.virtio_vsock_pkt = type { %struct.virtio_vsock_hdr, %struct.list_head, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.virtio_vsock_hdr = type <{ i64, i64, i32, i32, i32, i16, i16, i32, i32, i32 }>

@the_vsock_loopback = internal global { %struct.vsock_loopback, [60 x i8] } zeroinitializer, align 32
@loopback_transport = internal global { %struct.virtio_transport, [52 x i8] } { %struct.virtio_transport { %struct.vsock_transport { ptr null, ptr @virtio_transport_do_socket_init, ptr @virtio_transport_destruct, ptr @virtio_transport_release, ptr @vsock_loopback_cancel_pkt, ptr @virtio_transport_connect, ptr @virtio_transport_dgram_bind, ptr @virtio_transport_dgram_dequeue, ptr @virtio_transport_dgram_enqueue, ptr @virtio_transport_dgram_allow, ptr @virtio_transport_stream_dequeue, ptr @virtio_transport_stream_enqueue, ptr @virtio_transport_stream_has_data, ptr @virtio_transport_stream_has_space, ptr @virtio_transport_stream_rcvhiwat, ptr @virtio_transport_stream_is_active, ptr @virtio_transport_stream_allow, ptr @virtio_transport_seqpacket_dequeue, ptr @virtio_transport_seqpacket_enqueue, ptr @vsock_loopback_seqpacket_allow, ptr @virtio_transport_seqpacket_has_data, ptr @virtio_transport_notify_poll_in, ptr @virtio_transport_notify_poll_out, ptr @virtio_transport_notify_recv_init, ptr @virtio_transport_notify_recv_pre_block, ptr @virtio_transport_notify_recv_pre_dequeue, ptr @virtio_transport_notify_recv_post_dequeue, ptr @virtio_transport_notify_send_init, ptr @virtio_transport_notify_send_pre_block, ptr @virtio_transport_notify_send_pre_enqueue, ptr @virtio_transport_notify_send_post_enqueue, ptr @virtio_transport_notify_buffer_size, ptr @virtio_transport_shutdown, ptr @vsock_loopback_get_local_cid }, ptr @vsock_loopback_send_pkt }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_vsock_loopback__460_187_vsock_loopback_init6 = internal global ptr @vsock_loopback_init, section ".initcall6.init", align 4
@__exitcall_vsock_loopback_exit = internal global ptr @vsock_loopback_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file461 = internal constant [49 x i8] c"vsock_loopback.file=net/vmw_vsock/vsock_loopback\00", section ".modinfo", align 1
@__UNIQUE_ID_license462 = internal constant [30 x i8] c"vsock_loopback.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author463 = internal constant [63 x i8] c"vsock_loopback.author=Stefano Garzarella <sgarzare@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description464 = internal constant [56 x i8] c"vsock_loopback.description=loopback transport for vsock\00", section ".modinfo", align 1
@__UNIQUE_ID_alias465 = internal constant [31 x i8] c"vsock_loopback.alias=net-pf-40\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vsock-loopback\00", [17 x i8] zeroinitializer }, align 32
@vsock_loopback_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vsock->pkt_list_lock\00", [42 x i8] zeroinitializer }, align 32
@vsock_loopback_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&vsock->pkt_work)\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"the_vsock_loopback\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 23, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"loopback_transport\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 68, i32 32 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 146, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 150, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [34 x i8] c"../net/vmw_vsock/vsock_loopback.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 152, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias465, ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_description464, ptr @__UNIQUE_ID_file461, ptr @__UNIQUE_ID_license462, ptr @__exitcall_vsock_loopback_exit, ptr @__initcall__kmod_vsock_loopback__460_187_vsock_loopback_init6, ptr @vsock_loopback_exit, ptr @the_vsock_loopback, ptr @loopback_transport, ptr @.str, ptr @vsock_loopback_init.__key, ptr @.str.1, ptr @vsock_loopback_init.__key.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @the_vsock_loopback to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_transport to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_loopback_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_loopback_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vsock_loopback_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vsock_core_unregister(ptr noundef nonnull @loopback_transport) #5
  %call = tail call zeroext i1 @flush_work(ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 3)) #5
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 1)) #5
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2), align 4
  %cmp.i.not10 = icmp eq ptr %0, getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2)
  br i1 %cmp.i.not10, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %10, %list_del.exit.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 -44
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @virtio_transport_free_pkt(ptr noundef %add.ptr) #5
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2), align 4
  %cmp.i.not = icmp eq ptr %10, getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2)
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 1)) #5
  %11 = load ptr, ptr @the_vsock_loopback, align 4
  tail call void @destroy_workqueue(ptr noundef %11) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsock_core_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_free_pkt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_loopback_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #5
  store ptr %call, ptr @the_vsock_loopback, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 1), ptr noundef nonnull @.str.1, ptr noundef nonnull @vsock_loopback_init.__key, i16 noundef signext 3) #5
  store volatile ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2), ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2), align 4
  store ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2), ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2, i32 1), align 4
  tail call void @__init_work(ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 3), i32 noundef 0) #5
  store i32 -64, ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 3), align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 3, i32 3), ptr noundef nonnull @.str.3, ptr noundef nonnull @vsock_loopback_init.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  store volatile ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 3, i32 1), ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 3, i32 1), align 4
  store ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 3, i32 1), ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 3, i32 1, i32 1), align 4
  store ptr @vsock_loopback_work, ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 3, i32 2), align 4
  %call11 = tail call i32 @vsock_core_register(ptr noundef nonnull @loopback_transport, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body.cleanup_crit_edge, label %out_wq

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_wq:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @the_vsock_loopback, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #5
  br label %cleanup

cleanup:                                          ; preds = %out_wq, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %out_wq ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_do_socket_init(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_destruct(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_loopback_cancel_pkt(ptr noundef readnone %vsk) #3 align 64 {
entry:
  %freeme = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freeme) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %freeme, i32 0, i32 1
  %1 = ptrtoint ptr %freeme to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %freeme, ptr %freeme, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %freeme, ptr %0, align 4
  call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 1)) #5
  %3 = load ptr, ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2), align 4
  %cmp.not61 = icmp eq ptr %3, getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2)
  br i1 %cmp.not61, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in62 = phi ptr [ %.pn64, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn64 = load ptr, ptr %.pn.in62, align 4
  %vsk8 = getelementptr i8, ptr %.pn.in62, i32 8
  %5 = ptrtoint ptr %vsk8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vsk8, align 4
  %cmp9.not = icmp eq ptr %6, %vsk
  br i1 %cmp9.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in62) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in62, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %13 = ptrtoint ptr %freeme to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %freeme, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in62, ptr noundef nonnull %freeme, ptr noundef %14) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn.in62, ptr %prev1.i.i2.i, align 4
  %16 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %.pn.in62, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %freeme, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %freeme to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %.pn.in62, ptr %freeme, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn64, getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2)
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 1)) #5
  %19 = ptrtoint ptr %freeme to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %freeme, align 4
  %cmp28.not65 = icmp eq ptr %20, %freeme
  br i1 %cmp28.not65, label %for.end.for.end38_crit_edge, label %for.end.for.body30_crit_edge

for.end.for.body30_crit_edge:                     ; preds = %for.end
  br label %for.body30

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.body30:                                       ; preds = %list_del.exit.for.body30_crit_edge, %for.end.for.body30_crit_edge
  %.pn52.in66 = phi ptr [ %.pn52, %list_del.exit.for.body30_crit_edge ], [ %20, %for.end.for.body30_crit_edge ]
  %pkt.1 = getelementptr i8, ptr %.pn52.in66, i32 -44
  %21 = ptrtoint ptr %.pn52.in66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn52 = load ptr, ptr %.pn52.in66, align 4
  %call.i.i55 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn52.in66) #5
  br i1 %call.i.i55, label %if.end.i.i58, label %for.body30.list_del.exit_crit_edge

for.body30.list_del.exit_crit_edge:               ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i58:                                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i56 = getelementptr inbounds %struct.list_head, ptr %.pn52.in66, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i56, align 4
  %24 = ptrtoint ptr %.pn52.in66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn52.in66, align 4
  %prev1.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i57, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i58, %for.body30.list_del.exit_crit_edge
  %28 = ptrtoint ptr %.pn52.in66 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn52.in66, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn52.in66, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @virtio_transport_free_pkt(ptr noundef %pkt.1) #5
  %cmp28.not = icmp eq ptr %.pn52, %freeme
  br i1 %cmp28.not, label %list_del.exit.for.end38_crit_edge, label %list_del.exit.for.body30_crit_edge

list_del.exit.for.body30_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30

list_del.exit.for.end38_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.end38:                                        ; preds = %list_del.exit.for.end38_crit_edge, %for.end.for.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freeme) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_connect(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_dgram_bind(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_dgram_dequeue(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_dgram_enqueue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtio_transport_dgram_allow(i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_stream_dequeue(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_stream_enqueue(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @virtio_transport_stream_has_data(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @virtio_transport_stream_has_space(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @virtio_transport_stream_rcvhiwat(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtio_transport_stream_is_active(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtio_transport_stream_allow(i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_seqpacket_dequeue(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_seqpacket_enqueue(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vsock_loopback_seqpacket_allow(i32 noundef %remote_cid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_seqpacket_has_data(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_poll_in(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_poll_out(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_recv_init(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_recv_pre_block(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_recv_pre_dequeue(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_recv_post_dequeue(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_send_init(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_send_pre_block(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_send_pre_enqueue(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_send_post_enqueue(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_notify_buffer_size(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsock_loopback_get_local_cid() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_loopback_send_pkt(ptr noundef %pkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 5
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 1)) #5
  %list = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 1
  %2 = load ptr, ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %2, ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2)) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %list, ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2, i32 1), align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 2), ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 1)) #5
  %6 = load ptr, ptr @the_vsock_loopback, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef getelementptr inbounds (%struct.vsock_loopback, ptr @the_vsock_loopback, i32 0, i32 3)) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsock_loopback_work(ptr noundef %work) #3 align 64 {
entry:
  %pkts = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pkts) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %pkts, i32 0, i32 1
  %1 = ptrtoint ptr %pkts to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pkts, ptr %pkts, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pkts, ptr %0, align 4
  %pkt_list_lock = getelementptr i8, ptr %work, i32 -52
  call void @_raw_spin_lock_bh(ptr noundef %pkt_list_lock) #5
  %pkt_list = getelementptr i8, ptr %work, i32 -8
  %3 = ptrtoint ptr %pkt_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pkt_list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %pkt_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pkts, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pkts, ptr %prev3.i.i, align 4
  store ptr %4, ptr %pkts, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %pkt_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %pkt_list, ptr %pkt_list, align 4
  store ptr %pkt_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %pkt_list_lock) #5
  %13 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pkts, align 4
  %cmp.i.not10 = icmp eq ptr %14, %pkts
  br i1 %cmp.i.not10, label %list_splice_init.exit.while.end_crit_edge, label %list_splice_init.exit.while.body_crit_edge

list_splice_init.exit.while.body_crit_edge:       ; preds = %list_splice_init.exit
  br label %while.body

list_splice_init.exit.while.end_crit_edge:        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %list_splice_init.exit.while.body_crit_edge
  %15 = phi ptr [ %25, %list_del_init.exit.while.body_crit_edge ], [ %14, %list_splice_init.exit.while.body_crit_edge ]
  %add.ptr5 = getelementptr i8, ptr %15, i32 -44
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %15, ptr %15, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %prev.i3.i, align 4
  call void @virtio_transport_deliver_tap_pkt(ptr noundef %add.ptr5) #5
  call void @virtio_transport_recv_pkt(ptr noundef nonnull @loopback_transport, ptr noundef %add.ptr5) #5
  %24 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %pkts, align 4
  %cmp.i.not = icmp eq ptr %25, %pkts
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %list_splice_init.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pkts) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsock_core_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_deliver_tap_pkt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_recv_pkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_vsock_loopback__460_187_vsock_loopback_init6, !1, !"__initcall__kmod_vsock_loopback__460_187_vsock_loopback_init6", i1 false, i1 false}
!1 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 187, i32 1}
!2 = !{ptr @__exitcall_vsock_loopback_exit, !3, !"__exitcall_vsock_loopback_exit", i1 false, i1 false}
!3 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 188, i32 1}
!4 = !{ptr @__UNIQUE_ID_file461, !5, !"__UNIQUE_ID_file461", i1 false, i1 false}
!5 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 189, i32 1}
!6 = !{ptr @__UNIQUE_ID_license462, !5, !"__UNIQUE_ID_license462", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author463, !8, !"__UNIQUE_ID_author463", i1 false, i1 false}
!8 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 190, i32 1}
!9 = !{ptr @__UNIQUE_ID_description464, !10, !"__UNIQUE_ID_description464", i1 false, i1 false}
!10 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 191, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias465, !12, !"__UNIQUE_ID_alias465", i1 false, i1 false}
!12 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 192, i32 1}
!13 = !{ptr @the_vsock_loopback, !14, !"the_vsock_loopback", i1 false, i1 false}
!14 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 23, i32 30}
!15 = !{ptr @loopback_transport, !16, !"loopback_transport", i1 false, i1 false}
!16 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 68, i32 32}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 146, i32 37}
!19 = !{ptr @vsock_loopback_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 150, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vsock_loopback_init.__key.2, !23, !"__key", i1 false, i1 false}
!23 = !{!"../net/vmw_vsock/vsock_loopback.c", i32 152, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
