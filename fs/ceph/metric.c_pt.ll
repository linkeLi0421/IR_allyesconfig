; ModuleID = '/llk/IR_all_yes/fs/ceph/metric.c_pt.bc'
source_filename = "../fs/ceph/metric.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.timespec64 = type { i64, i32 }
%struct.ceph_mds_session = type { ptr, i32, i32, i32, i32, i64, %struct.mutex, [4 x i8], %struct.ceph_connection, %struct.ceph_auth_handshake, %struct.atomic_t, i32, %struct.spinlock, %struct.refcount_struct, %struct.list_head, ptr, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.list_head, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.120 }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.116 }
%union.anon.116 = type { ptr, [124 x i8] }
%union.anon.120 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.121 }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.24, %union.anon.25 }
%union.anon.24 = type { ptr }
%union.anon.25 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.113 }
%union.anon.113 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.121 = type { i8, %union.anon.122 }
%union.anon.122 = type <{ %struct.anon.123, [3 x i8] }>
%struct.anon.123 = type { i32, i32, i32 }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ceph_msg = type { %struct.ceph_msg_header, %union.anon.2, %struct.kvec, ptr, i32, ptr, i32, i32, %struct.ceph_msg_data_cursor, ptr, %struct.list_head, %struct.kref, i8, i8, i32, ptr }
%struct.ceph_msg_header = type <{ i64, i64, i16, i16, i16, i32, i32, i32, i16, %struct.ceph_entity_name, i16, i16, i32 }>
%union.anon.2 = type { %struct.ceph_msg_footer }
%struct.ceph_msg_footer = type <{ i32, i32, i32, i64, i8 }>
%struct.kref = type { %struct.refcount_struct }
%struct.ceph_metric_head = type { i32 }
%struct.ceph_metric_header = type <{ i32, i8, i8, i32 }>
%struct.ceph_metric_cap = type <{ %struct.ceph_metric_header, i64, i64, i64 }>
%struct.ceph_metric_read_latency = type <{ %struct.ceph_metric_header, i32, i32 }>
%struct.ceph_metric_write_latency = type <{ %struct.ceph_metric_header, i32, i32 }>
%struct.ceph_metric_metadata_latency = type <{ %struct.ceph_metric_header, i32, i32 }>
%struct.ceph_metric_dlease = type <{ %struct.ceph_metric_header, i64, i64, i64 }>
%struct.ceph_opened_files = type <{ %struct.ceph_metric_header, i64, i64 }>
%struct.ceph_pinned_icaps = type <{ %struct.ceph_metric_header, i64, i64 }>
%struct.ceph_opened_inodes = type <{ %struct.ceph_metric_header, i64, i64 }>
%struct.ceph_read_io_size = type <{ %struct.ceph_metric_header, i64, i64 }>
%struct.ceph_write_io_size = type <{ %struct.ceph_metric_header, i64, i64 }>

@ceph_metric_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ceph_metric_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ceph_metric_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ceph_metric_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ceph_metric_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&metric->lock\00", [18 x i8] zeroinitializer }, align 32
@ceph_metric_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ceph_metric_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ceph_metric_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&m->delayed_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@ceph_metric_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&m->delayed_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@ceph_mdsc_send_metrics._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013ceph: send metrics to mds%d, failed to allocate message\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceph_mdsc_send_metrics\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ceph/metric.c\00", [47 x i8] zeroinitializer }, align 32
@ceph_mdsc_send_metrics._entry_ptr = internal global ptr @ceph_mdsc_send_metrics._entry, section ".printk_index", align 4
@disable_send_metrics = external dso_local local_unnamed_addr global i8, align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967294]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 228, i32 8 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 232, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 237, i32 8 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 241, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 247, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 259, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 262, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 267, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [20 x i8] c"../fs/ceph/metric.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 41, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @ceph_mdsc_send_metrics._entry, ptr @ceph_mdsc_send_metrics._entry_ptr, ptr @ceph_metric_init.__key, ptr @ceph_metric_init.__key.1, ptr @ceph_metric_init.__key.2, ptr @ceph_metric_init.__key.3, ptr @ceph_metric_init.__key.4, ptr @.str, ptr @ceph_metric_init.__key.5, ptr @ceph_metric_init.__key.6, ptr @ceph_metric_init.__key.7, ptr @.str.8, ptr @ceph_metric_init.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_metric_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_metric_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_metric_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_metric_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_metric_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_metric_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_metric_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_metric_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_metric_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_mdsc_send_metrics._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_metric_init(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %m, i32 noundef 8) #5
  tail call void @generic_atomic64_set(ptr noundef nonnull %m, i64 noundef 0) #5
  %d_lease_hit = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 1
  %call = tail call i32 @__percpu_counter_init(ptr noundef %d_lease_hit, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ceph_metric_init.__key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %d_lease_mis = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 2
  %call5 = tail call i32 @__percpu_counter_init(ptr noundef %d_lease_mis, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ceph_metric_init.__key.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.err_d_lease_mis_crit_edge

if.end3.err_d_lease_mis_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_d_lease_mis

if.end8:                                          ; preds = %if.end3
  %total_caps = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 3
  %call.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_caps, i32 noundef 8) #5
  tail call void @generic_atomic64_set(ptr noundef %total_caps, i64 noundef 0) #5
  %i_caps_hit = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 4
  %call10 = tail call i32 @__percpu_counter_init(ptr noundef %i_caps_hit, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ceph_metric_init.__key.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.err_i_caps_hit_crit_edge

if.end8.err_i_caps_hit_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_i_caps_hit

if.end13:                                         ; preds = %if.end8
  %i_caps_mis = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 5
  %call15 = tail call i32 @__percpu_counter_init(ptr noundef %i_caps_mis, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ceph_metric_init.__key.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.body.preheader, label %if.end13.err_i_caps_mis_crit_edge

if.end13.err_i_caps_mis_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_i_caps_mis

for.body.preheader:                               ; preds = %if.end13
  %arrayidx = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str, ptr noundef nonnull @ceph_metric_init.__key.4, i16 noundef signext 3) #5
  %size_sum = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 0, i32 2
  %0 = ptrtoint ptr %size_sum to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %size_sum, align 8
  %size_min = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 0, i32 3
  %1 = ptrtoint ptr %size_min to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %size_min, align 8
  %size_max = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 0, i32 4
  %total = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 0, i32 1
  %2 = ptrtoint ptr %total to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %total, align 8
  %latency_min = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 0, i32 7
  %3 = call ptr @memset(ptr %size_max, i32 0, i32 24)
  %4 = ptrtoint ptr %latency_min to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 9223372036854775807, ptr %latency_min, align 8
  %latency_max = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 0, i32 8
  %5 = ptrtoint ptr %latency_max to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %latency_max, align 8
  %arrayidx.1 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.1, ptr noundef nonnull @.str, ptr noundef nonnull @ceph_metric_init.__key.4, i16 noundef signext 3) #5
  %size_sum.1 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 1, i32 2
  %6 = ptrtoint ptr %size_sum.1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %size_sum.1, align 8
  %size_min.1 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 1, i32 3
  %7 = ptrtoint ptr %size_min.1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %size_min.1, align 8
  %size_max.1 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 1, i32 4
  %total.1 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 1, i32 1
  %8 = ptrtoint ptr %total.1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %total.1, align 8
  %latency_min.1 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 1, i32 7
  %9 = call ptr @memset(ptr %size_max.1, i32 0, i32 24)
  %10 = ptrtoint ptr %latency_min.1 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 9223372036854775807, ptr %latency_min.1, align 8
  %latency_max.1 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 1, i32 8
  %11 = ptrtoint ptr %latency_max.1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %latency_max.1, align 8
  %arrayidx.2 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.2, ptr noundef nonnull @.str, ptr noundef nonnull @ceph_metric_init.__key.4, i16 noundef signext 3) #5
  %size_sum.2 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 2, i32 2
  %12 = ptrtoint ptr %size_sum.2 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %size_sum.2, align 8
  %size_min.2 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 2, i32 3
  %13 = ptrtoint ptr %size_min.2 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %size_min.2, align 8
  %size_max.2 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 2, i32 4
  %total.2 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 2, i32 1
  %14 = ptrtoint ptr %total.2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %total.2, align 8
  %latency_min.2 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 2, i32 7
  %15 = call ptr @memset(ptr %size_max.2, i32 0, i32 24)
  %16 = ptrtoint ptr %latency_min.2 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 9223372036854775807, ptr %latency_min.2, align 8
  %latency_max.2 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 2, i32 8
  %17 = ptrtoint ptr %latency_max.2 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %latency_max.2, align 8
  %arrayidx.3 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.3, ptr noundef nonnull @.str, ptr noundef nonnull @ceph_metric_init.__key.4, i16 noundef signext 3) #5
  %size_sum.3 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 3, i32 2
  %18 = ptrtoint ptr %size_sum.3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %size_sum.3, align 8
  %size_min.3 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 3, i32 3
  %19 = ptrtoint ptr %size_min.3 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %size_min.3, align 8
  %size_max.3 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 3, i32 4
  %total.3 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 3, i32 1
  %20 = ptrtoint ptr %total.3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %total.3, align 8
  %latency_min.3 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 3, i32 7
  %21 = call ptr @memset(ptr %size_max.3, i32 0, i32 24)
  %22 = ptrtoint ptr %latency_min.3 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 9223372036854775807, ptr %latency_min.3, align 8
  %latency_max.3 = getelementptr %struct.ceph_client_metric, ptr %m, i32 0, i32 6, i32 3, i32 8
  %23 = ptrtoint ptr %latency_max.3 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %latency_max.3, align 8
  %opened_files = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 7
  %call.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %opened_files, i32 noundef 8) #5
  tail call void @generic_atomic64_set(ptr noundef %opened_files, i64 noundef 0) #5
  %opened_inodes = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 8
  %call22 = tail call i32 @__percpu_counter_init(ptr noundef %opened_inodes, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ceph_metric_init.__key.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %for.body.preheader.err_opened_inodes_crit_edge

for.body.preheader.err_opened_inodes_crit_edge:   ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_opened_inodes

if.end25:                                         ; preds = %for.body.preheader
  %total_inodes = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 9
  %call27 = tail call i32 @__percpu_counter_init(ptr noundef %total_inodes, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ceph_metric_init.__key.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %err_total_inodes

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %session = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 10
  %24 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %session, align 8
  %delayed_work = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 11
  tail call void @__init_work(ptr noundef %delayed_work, i32 noundef 0) #5
  %25 = ptrtoint ptr %delayed_work to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %delayed_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @ceph_metric_init.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry39 = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 11, i32 0, i32 1
  %26 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 11, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry39, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 11, i32 0, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @metric_delayed_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @ceph_metric_init.__key.9) #5
  br label %cleanup

err_total_inodes:                                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @percpu_counter_destroy(ptr noundef %opened_inodes) #5
  br label %err_opened_inodes

err_opened_inodes:                                ; preds = %err_total_inodes, %for.body.preheader.err_opened_inodes_crit_edge
  %ret.0 = phi i32 [ %call22, %for.body.preheader.err_opened_inodes_crit_edge ], [ %call27, %err_total_inodes ]
  tail call void @percpu_counter_destroy(ptr noundef %i_caps_mis) #5
  br label %err_i_caps_mis

err_i_caps_mis:                                   ; preds = %err_opened_inodes, %if.end13.err_i_caps_mis_crit_edge
  %ret.1 = phi i32 [ %call15, %if.end13.err_i_caps_mis_crit_edge ], [ %ret.0, %err_opened_inodes ]
  tail call void @percpu_counter_destroy(ptr noundef %i_caps_hit) #5
  br label %err_i_caps_hit

err_i_caps_hit:                                   ; preds = %err_i_caps_mis, %if.end8.err_i_caps_hit_crit_edge
  %ret.2 = phi i32 [ %call10, %if.end8.err_i_caps_hit_crit_edge ], [ %ret.1, %err_i_caps_mis ]
  tail call void @percpu_counter_destroy(ptr noundef %d_lease_mis) #5
  br label %err_d_lease_mis

err_d_lease_mis:                                  ; preds = %err_i_caps_hit, %if.end3.err_d_lease_mis_crit_edge
  %ret.3 = phi i32 [ %call5, %if.end3.err_d_lease_mis_crit_edge ], [ %ret.2, %err_i_caps_hit ]
  tail call void @percpu_counter_destroy(ptr noundef %d_lease_hit) #5
  br label %cleanup

cleanup:                                          ; preds = %err_d_lease_mis, %if.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_d_lease_mis ], [ 0, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @metric_delayed_work(ptr noundef %work) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1972
  %stopping = getelementptr i8, ptr %work, i32 -1740
  %0 = ptrtoint ptr %stopping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stopping, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %session = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.if.end12_crit_edge, label %lor.lhs.false

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call zeroext i1 @check_session_state(ptr noundef nonnull %3) #5
  br i1 %call, label %lor.lhs.false.if.end13_crit_edge, label %if.then6

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then6:                                         ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %session, align 8
  %tobool8.not = icmp eq ptr %.pr, null
  br i1 %tobool8.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ceph_put_mds_session(ptr noundef nonnull %.pr) #5
  %5 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %session, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %mutex.i = getelementptr i8, ptr %work, i32 -1968
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %max_sessions.i = getelementptr i8, ptr %work, i32 -1744
  %6 = ptrtoint ptr %max_sessions.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_sessions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17.i = icmp sgt i32 %7, 0
  br i1 %cmp17.i, label %if.end12.for.body.i_crit_edge, label %if.end12.metric_get_session.exit_crit_edge

if.end12.metric_get_session.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %metric_get_session.exit

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end12.for.body.i_crit_edge ]
  %call.i = tail call ptr @__ceph_lookup_mds_session(ptr noundef %add.ptr3, i32 noundef %i.018.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call1.i = tail call zeroext i1 @check_session_state(ptr noundef nonnull %call.i) #5
  br i1 %call1.i, label %land.lhs.true.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %s_features.i = getelementptr inbounds %struct.ceph_mds_session, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %s_features.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_features.i, align 4
  %10 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %session, align 8
  br label %metric_get_session.exit

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  tail call void @ceph_put_mds_session(ptr noundef nonnull %call.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %12 = ptrtoint ptr %max_sessions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_sessions.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.metric_get_session.exit_crit_edge

for.inc.i.metric_get_session.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %metric_get_session.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

metric_get_session.exit:                          ; preds = %for.inc.i.metric_get_session.exit_crit_edge, %if.then4.i, %if.end12.metric_get_session.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  br label %if.end13

if.end13:                                         ; preds = %metric_get_session.exit, %lor.lhs.false.if.end13_crit_edge
  %14 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %session, align 8
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  %total_caps.i = getelementptr i8, ptr %work, i32 -756
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_caps.i, i32 noundef 8) #5
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %total_caps.i) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #5
  %16 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %call1.i33 = tail call ptr @ceph_msg_new(i32 noundef 29, i32 noundef 256, i32 noundef 3136, i1 noundef zeroext true) #5
  %tobool.not.i34 = icmp eq ptr %call1.i33, null
  br i1 %tobool.not.i34, label %do.end.i, label %if.end.i35

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %s_mds.i = getelementptr inbounds %struct.ceph_mds_session, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %s_mds.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_mds.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %18) #8
  br label %ceph_mdsc_send_metrics.exit

if.end.i35:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %metric.i = getelementptr i8, ptr %work, i32 -908
  %front.i = getelementptr inbounds %struct.ceph_msg, ptr %call1.i33, i32 0, i32 2
  %19 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %front.i, align 4
  %add.ptr.i = getelementptr %struct.ceph_metric_head, ptr %20, i32 1
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %add.ptr.i, align 1
  %ver.i = getelementptr %struct.ceph_metric_head, ptr %20, i32 2
  %22 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %ver.i, align 1
  %compat.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr.i, i32 0, i32 2
  %23 = ptrtoint ptr %compat.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %compat.i, align 1
  %data_len.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr.i, i32 0, i32 3
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 402653184, ptr %data_len.i, align 1
  %i_caps_hit.i = getelementptr i8, ptr %work, i32 -748
  %call.i5.i = tail call i64 @__percpu_counter_sum(ptr noundef %i_caps_hit.i) #5
  %25 = tail call i64 @llvm.bswap.i64(i64 %call.i5.i) #5
  %hit.i = getelementptr inbounds %struct.ceph_metric_cap, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %hit.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %hit.i, align 1
  %i_caps_mis.i = getelementptr i8, ptr %work, i32 -676
  %call.i6.i = tail call i64 @__percpu_counter_sum(ptr noundef %i_caps_mis.i) #5
  %27 = tail call i64 @llvm.bswap.i64(i64 %call.i6.i) #5
  %mis.i = getelementptr inbounds %struct.ceph_metric_cap, ptr %add.ptr.i, i32 0, i32 2
  %28 = ptrtoint ptr %mis.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %mis.i, align 1
  %29 = tail call i64 @llvm.bswap.i64(i64 %call.i.i) #5
  %total.i = getelementptr inbounds %struct.ceph_metric_cap, ptr %add.ptr.i, i32 0, i32 3
  %30 = ptrtoint ptr %total.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %total.i, align 1
  %add.ptr8.i = getelementptr %struct.ceph_metric_cap, ptr %add.ptr.i, i32 1
  %31 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 16777216, ptr %add.ptr8.i, align 1
  %ver12.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr8.i, i32 0, i32 1
  %32 = ptrtoint ptr %ver12.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %ver12.i, align 1
  %compat14.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr8.i, i32 0, i32 2
  %33 = ptrtoint ptr %compat14.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %compat14.i, align 1
  %data_len17.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr8.i, i32 0, i32 3
  %34 = ptrtoint ptr %data_len17.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 134217728, ptr %data_len17.i, align 1
  %latency_sum.i = getelementptr i8, ptr %work, i32 -524
  %35 = ptrtoint ptr %latency_sum.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %latency_sum.i, align 8
  %conv.i = trunc i64 %36 to i32
  call void @jiffies_to_timespec64(i32 noundef %conv.i, ptr noundef nonnull %ts.i) #5
  %37 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ts.i, align 8
  %conv19.i = trunc i64 %38 to i32
  %39 = call i32 @llvm.bswap.i32(i32 %conv19.i) #5
  %sec.i = getelementptr inbounds %struct.ceph_metric_read_latency, ptr %add.ptr8.i, i32 0, i32 1
  %40 = ptrtoint ptr %sec.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %sec.i, align 1
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %41 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tv_nsec.i, align 8
  %43 = call i32 @llvm.bswap.i32(i32 %42) #5
  %nsec.i = getelementptr inbounds %struct.ceph_metric_read_latency, ptr %add.ptr8.i, i32 0, i32 2
  %44 = ptrtoint ptr %nsec.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %nsec.i, align 1
  %add.ptr21.i = getelementptr %struct.ceph_metric_read_latency, ptr %add.ptr8.i, i32 1
  %45 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 33554432, ptr %add.ptr21.i, align 1
  %ver25.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr21.i, i32 0, i32 1
  %46 = ptrtoint ptr %ver25.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %ver25.i, align 1
  %compat27.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr21.i, i32 0, i32 2
  %47 = ptrtoint ptr %compat27.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %compat27.i, align 1
  %data_len30.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr21.i, i32 0, i32 3
  %48 = ptrtoint ptr %data_len30.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 134217728, ptr %data_len30.i, align 1
  %latency_sum33.i = getelementptr i8, ptr %work, i32 -412
  %49 = ptrtoint ptr %latency_sum33.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %latency_sum33.i, align 8
  %conv34.i = trunc i64 %50 to i32
  call void @jiffies_to_timespec64(i32 noundef %conv34.i, ptr noundef nonnull %ts.i) #5
  %51 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ts.i, align 8
  %conv36.i = trunc i64 %52 to i32
  %53 = call i32 @llvm.bswap.i32(i32 %conv36.i) #5
  %sec37.i = getelementptr inbounds %struct.ceph_metric_write_latency, ptr %add.ptr21.i, i32 0, i32 1
  %54 = ptrtoint ptr %sec37.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %sec37.i, align 1
  %55 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tv_nsec.i, align 8
  %57 = call i32 @llvm.bswap.i32(i32 %56) #5
  %nsec39.i = getelementptr inbounds %struct.ceph_metric_write_latency, ptr %add.ptr21.i, i32 0, i32 2
  %58 = ptrtoint ptr %nsec39.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %nsec39.i, align 1
  %add.ptr41.i = getelementptr %struct.ceph_metric_write_latency, ptr %add.ptr21.i, i32 1
  %59 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 50331648, ptr %add.ptr41.i, align 1
  %ver45.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr41.i, i32 0, i32 1
  %60 = ptrtoint ptr %ver45.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %ver45.i, align 1
  %compat47.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr41.i, i32 0, i32 2
  %61 = ptrtoint ptr %compat47.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %compat47.i, align 1
  %data_len50.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr41.i, i32 0, i32 3
  %62 = ptrtoint ptr %data_len50.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 134217728, ptr %data_len50.i, align 1
  %latency_sum53.i = getelementptr i8, ptr %work, i32 -300
  %63 = ptrtoint ptr %latency_sum53.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %latency_sum53.i, align 8
  %conv54.i = trunc i64 %64 to i32
  call void @jiffies_to_timespec64(i32 noundef %conv54.i, ptr noundef nonnull %ts.i) #5
  %65 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %ts.i, align 8
  %conv56.i = trunc i64 %66 to i32
  %67 = call i32 @llvm.bswap.i32(i32 %conv56.i) #5
  %sec57.i = getelementptr inbounds %struct.ceph_metric_metadata_latency, ptr %add.ptr41.i, i32 0, i32 1
  %68 = ptrtoint ptr %sec57.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %sec57.i, align 1
  %69 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tv_nsec.i, align 8
  %71 = call i32 @llvm.bswap.i32(i32 %70) #5
  %nsec59.i = getelementptr inbounds %struct.ceph_metric_metadata_latency, ptr %add.ptr41.i, i32 0, i32 2
  %72 = ptrtoint ptr %nsec59.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %71, ptr %nsec59.i, align 1
  %add.ptr61.i = getelementptr %struct.ceph_metric_metadata_latency, ptr %add.ptr41.i, i32 1
  %73 = ptrtoint ptr %add.ptr61.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 67108864, ptr %add.ptr61.i, align 1
  %ver65.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr61.i, i32 0, i32 1
  %74 = ptrtoint ptr %ver65.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %ver65.i, align 1
  %compat67.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr61.i, i32 0, i32 2
  %75 = ptrtoint ptr %compat67.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %compat67.i, align 1
  %data_len70.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr61.i, i32 0, i32 3
  %76 = ptrtoint ptr %data_len70.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 402653184, ptr %data_len70.i, align 1
  %d_lease_hit.i = getelementptr i8, ptr %work, i32 -900
  %call.i7.i = call i64 @__percpu_counter_sum(ptr noundef %d_lease_hit.i) #5
  %77 = call i64 @llvm.bswap.i64(i64 %call.i7.i) #5
  %hit72.i = getelementptr inbounds %struct.ceph_metric_dlease, ptr %add.ptr61.i, i32 0, i32 1
  %78 = ptrtoint ptr %hit72.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %77, ptr %hit72.i, align 1
  %d_lease_mis.i = getelementptr i8, ptr %work, i32 -828
  %call.i8.i = call i64 @__percpu_counter_sum(ptr noundef %d_lease_mis.i) #5
  %79 = call i64 @llvm.bswap.i64(i64 %call.i8.i) #5
  %mis74.i = getelementptr inbounds %struct.ceph_metric_dlease, ptr %add.ptr61.i, i32 0, i32 2
  %80 = ptrtoint ptr %mis74.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %79, ptr %mis74.i, align 1
  %call.i.i1.i = call zeroext i1 @__kasan_check_read(ptr noundef %metric.i, i32 noundef 8) #5
  %call.i2.i = call i64 @generic_atomic64_read(ptr noundef %metric.i) #5
  %81 = call i64 @llvm.bswap.i64(i64 %call.i2.i) #5
  %total76.i = getelementptr inbounds %struct.ceph_metric_dlease, ptr %add.ptr61.i, i32 0, i32 3
  %82 = ptrtoint ptr %total76.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %81, ptr %total76.i, align 1
  %total_inodes.i = getelementptr i8, ptr %work, i32 -76
  %call.i9.i = call i64 @__percpu_counter_sum(ptr noundef %total_inodes.i) #5
  %add.ptr79.i = getelementptr %struct.ceph_metric_dlease, ptr %add.ptr61.i, i32 1
  %83 = ptrtoint ptr %add.ptr79.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 83886080, ptr %add.ptr79.i, align 1
  %ver83.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr79.i, i32 0, i32 1
  %84 = ptrtoint ptr %ver83.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %ver83.i, align 1
  %compat85.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr79.i, i32 0, i32 2
  %85 = ptrtoint ptr %compat85.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %compat85.i, align 1
  %data_len88.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr79.i, i32 0, i32 3
  %86 = ptrtoint ptr %data_len88.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 268435456, ptr %data_len88.i, align 1
  %opened_files.i = getelementptr i8, ptr %work, i32 -156
  %call.i.i3.i = call zeroext i1 @__kasan_check_read(ptr noundef %opened_files.i, i32 noundef 8) #5
  %call.i4.i = call i64 @generic_atomic64_read(ptr noundef %opened_files.i) #5
  %87 = call i64 @llvm.bswap.i64(i64 %call.i4.i) #5
  %opened_files90.i = getelementptr inbounds %struct.ceph_opened_files, ptr %add.ptr79.i, i32 0, i32 1
  %88 = ptrtoint ptr %opened_files90.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %opened_files90.i, align 1
  %89 = call i64 @llvm.bswap.i64(i64 %call.i9.i) #5
  %total91.i = getelementptr inbounds %struct.ceph_opened_files, ptr %add.ptr79.i, i32 0, i32 2
  %90 = ptrtoint ptr %total91.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %89, ptr %total91.i, align 1
  %add.ptr93.i = getelementptr %struct.ceph_opened_files, ptr %add.ptr79.i, i32 1
  %91 = ptrtoint ptr %add.ptr93.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 100663296, ptr %add.ptr93.i, align 1
  %ver97.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr93.i, i32 0, i32 1
  %92 = ptrtoint ptr %ver97.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %ver97.i, align 1
  %compat99.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr93.i, i32 0, i32 2
  %93 = ptrtoint ptr %compat99.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %compat99.i, align 1
  %data_len102.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr93.i, i32 0, i32 3
  %94 = ptrtoint ptr %data_len102.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 268435456, ptr %data_len102.i, align 1
  %pinned_icaps.i = getelementptr inbounds %struct.ceph_pinned_icaps, ptr %add.ptr93.i, i32 0, i32 1
  %95 = ptrtoint ptr %pinned_icaps.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 %29, ptr %pinned_icaps.i, align 1
  %total103.i = getelementptr inbounds %struct.ceph_pinned_icaps, ptr %add.ptr93.i, i32 0, i32 2
  %96 = ptrtoint ptr %total103.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 %89, ptr %total103.i, align 1
  %add.ptr105.i = getelementptr %struct.ceph_pinned_icaps, ptr %add.ptr93.i, i32 1
  %97 = ptrtoint ptr %add.ptr105.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 117440512, ptr %add.ptr105.i, align 1
  %ver109.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr105.i, i32 0, i32 1
  %98 = ptrtoint ptr %ver109.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %ver109.i, align 1
  %compat111.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr105.i, i32 0, i32 2
  %99 = ptrtoint ptr %compat111.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %compat111.i, align 1
  %data_len114.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr105.i, i32 0, i32 3
  %100 = ptrtoint ptr %data_len114.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 268435456, ptr %data_len114.i, align 1
  %opened_inodes.i = getelementptr i8, ptr %work, i32 -148
  %call.i10.i = call i64 @__percpu_counter_sum(ptr noundef %opened_inodes.i) #5
  %101 = call i64 @llvm.bswap.i64(i64 %call.i10.i) #5
  %opened_inodes116.i = getelementptr inbounds %struct.ceph_opened_inodes, ptr %add.ptr105.i, i32 0, i32 1
  %102 = ptrtoint ptr %opened_inodes116.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 %101, ptr %opened_inodes116.i, align 1
  %total117.i = getelementptr inbounds %struct.ceph_opened_inodes, ptr %add.ptr105.i, i32 0, i32 2
  %103 = ptrtoint ptr %total117.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 %89, ptr %total117.i, align 1
  %add.ptr119.i = getelementptr %struct.ceph_opened_inodes, ptr %add.ptr105.i, i32 1
  %104 = ptrtoint ptr %add.ptr119.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 134217728, ptr %add.ptr119.i, align 1
  %ver123.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr119.i, i32 0, i32 1
  %105 = ptrtoint ptr %ver123.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %ver123.i, align 1
  %compat125.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr119.i, i32 0, i32 2
  %106 = ptrtoint ptr %compat125.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %compat125.i, align 1
  %data_len128.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr119.i, i32 0, i32 3
  %107 = ptrtoint ptr %data_len128.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 268435456, ptr %data_len128.i, align 1
  %total131.i = getelementptr i8, ptr %work, i32 -556
  %108 = ptrtoint ptr %total131.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %total131.i, align 8
  %110 = call i64 @llvm.bswap.i64(i64 %109) #5
  %total_ops.i = getelementptr inbounds %struct.ceph_read_io_size, ptr %add.ptr119.i, i32 0, i32 1
  %111 = ptrtoint ptr %total_ops.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 8)
  store i64 %110, ptr %total_ops.i, align 1
  %size_sum.i = getelementptr i8, ptr %work, i32 -548
  %112 = ptrtoint ptr %size_sum.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %size_sum.i, align 8
  %114 = call i64 @llvm.bswap.i64(i64 %113) #5
  %total_size.i = getelementptr inbounds %struct.ceph_read_io_size, ptr %add.ptr119.i, i32 0, i32 2
  %115 = ptrtoint ptr %total_size.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %114, ptr %total_size.i, align 1
  %add.ptr135.i = getelementptr %struct.ceph_read_io_size, ptr %add.ptr119.i, i32 1
  %116 = ptrtoint ptr %add.ptr135.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 150994944, ptr %add.ptr135.i, align 1
  %ver139.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr135.i, i32 0, i32 1
  %117 = ptrtoint ptr %ver139.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %ver139.i, align 1
  %compat141.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr135.i, i32 0, i32 2
  %118 = ptrtoint ptr %compat141.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %compat141.i, align 1
  %data_len144.i = getelementptr inbounds %struct.ceph_metric_header, ptr %add.ptr135.i, i32 0, i32 3
  %119 = ptrtoint ptr %data_len144.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 268435456, ptr %data_len144.i, align 1
  %total147.i = getelementptr i8, ptr %work, i32 -444
  %120 = ptrtoint ptr %total147.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %total147.i, align 8
  %122 = call i64 @llvm.bswap.i64(i64 %121) #5
  %total_ops148.i = getelementptr inbounds %struct.ceph_write_io_size, ptr %add.ptr135.i, i32 0, i32 1
  %123 = ptrtoint ptr %total_ops148.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 8)
  store i64 %122, ptr %total_ops148.i, align 1
  %size_sum151.i = getelementptr i8, ptr %work, i32 -436
  %124 = ptrtoint ptr %size_sum151.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %size_sum151.i, align 8
  %126 = call i64 @llvm.bswap.i64(i64 %125) #5
  %total_size152.i = getelementptr inbounds %struct.ceph_write_io_size, ptr %add.ptr135.i, i32 0, i32 2
  %127 = ptrtoint ptr %total_size152.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 8)
  store i64 %126, ptr %total_size152.i, align 1
  %128 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 167772160, ptr %20, align 1
  %iov_len.i = getelementptr inbounds %struct.ceph_msg, ptr %call1.i33, i32 0, i32 2, i32 1
  %129 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 256, ptr %iov_len.i, align 4
  %version.i = getelementptr inbounds %struct.ceph_msg_header, ptr %call1.i33, i32 0, i32 4
  %130 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 256, ptr %version.i, align 4
  %compat_version.i = getelementptr inbounds %struct.ceph_msg_header, ptr %call1.i33, i32 0, i32 10
  %131 = ptrtoint ptr %compat_version.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 256, ptr %compat_version.i, align 1
  %front_len.i = getelementptr inbounds %struct.ceph_msg_header, ptr %call1.i33, i32 0, i32 5
  %132 = ptrtoint ptr %front_len.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 65536, ptr %front_len.i, align 2
  %s_con.i = getelementptr inbounds %struct.ceph_mds_session, ptr %15, i32 0, i32 8
  call void @ceph_con_send(ptr noundef %s_con.i, ptr noundef nonnull %call1.i33) #5
  br label %ceph_mdsc_send_metrics.exit

ceph_mdsc_send_metrics.exit:                      ; preds = %if.end.i35, %do.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @disable_send_metrics to i32))
  %133 = load i8, ptr @disable_send_metrics, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i36 = icmp eq i8 %133, 0
  br i1 %tobool.not.i36, label %if.end.i39, label %ceph_mdsc_send_metrics.exit.cleanup_crit_edge

ceph_mdsc_send_metrics.exit.cleanup_crit_edge:    ; preds = %ceph_mdsc_send_metrics.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i39:                                       ; preds = %ceph_mdsc_send_metrics.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i37 = call i32 @round_jiffies_relative(i32 noundef 100) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %134 = load ptr, ptr @system_wq, align 4
  %call.i.i.i38 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %134, ptr noundef %work, i32 noundef %call.i37) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i39, %ceph_mdsc_send_metrics.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_metric_destroy(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %delayed_work = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work) #5
  %total_inodes = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 9
  tail call void @percpu_counter_destroy(ptr noundef %total_inodes) #5
  %opened_inodes = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 8
  tail call void @percpu_counter_destroy(ptr noundef %opened_inodes) #5
  %i_caps_mis = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 5
  tail call void @percpu_counter_destroy(ptr noundef %i_caps_mis) #5
  %i_caps_hit = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 4
  tail call void @percpu_counter_destroy(ptr noundef %i_caps_hit) #5
  %d_lease_mis = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 2
  tail call void @percpu_counter_destroy(ptr noundef %d_lease_mis) #5
  %d_lease_hit = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 1
  tail call void @percpu_counter_destroy(ptr noundef %d_lease_hit) #5
  %session = getelementptr inbounds %struct.ceph_client_metric, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 8
  tail call void @ceph_put_mds_session(ptr noundef %1) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_mds_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_update_metrics(ptr noundef %m, i64 noundef %r_start, i64 noundef %r_end, i32 noundef %size, i32 noundef %rc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i64 %r_end, %r_start
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc)
  %cmp = icmp slt i32 %rc, 0
  br i1 %cmp, label %switch.early.test, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.early.test:                                ; preds = %entry
  %0 = zext i32 %rc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rc, label %switch.early.test.cleanup_crit_edge [
    i32 -2, label %switch.early.test.if.end_crit_edge
    i32 -110, label %switch.early.test.if.end_crit_edge83
  ]

switch.early.test.if.end_crit_edge83:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.early.test.if.end_crit_edge:               ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %switch.early.test.if.end_crit_edge, %switch.early.test.if.end_crit_edge83, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %m) #5
  %total4 = getelementptr inbounds %struct.ceph_metric, ptr %m, i32 0, i32 1
  %1 = ptrtoint ptr %total4 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %total4, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %total4, align 8
  %conv = zext i32 %size to i64
  %size_sum = getelementptr inbounds %struct.ceph_metric, ptr %m, i32 0, i32 2
  %3 = ptrtoint ptr %size_sum to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size_sum, align 8
  %add = add i64 %4, %conv
  store i64 %add, ptr %size_sum, align 8
  %size_min = getelementptr inbounds %struct.ceph_metric, ptr %m, i32 0, i32 3
  %5 = ptrtoint ptr %size_min to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size_min, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv)
  %cmp6 = icmp ugt i64 %6, %conv
  br i1 %cmp6, label %if.then14, label %if.end.if.end17_crit_edge, !prof !36

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %size_min to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %size_min, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %size_max = getelementptr inbounds %struct.ceph_metric, ptr %m, i32 0, i32 4
  %8 = ptrtoint ptr %size_max to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size_max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp19 = icmp ult i64 %9, %conv
  br i1 %cmp19, label %if.then27, label %if.end17.if.end30_crit_edge, !prof !36

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %size_max to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %size_max, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end17.if.end30_crit_edge
  %latency_sum = getelementptr inbounds %struct.ceph_metric, ptr %m, i32 0, i32 5
  %11 = ptrtoint ptr %latency_sum to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %latency_sum, align 8
  %add31 = add i64 %12, %sub
  store i64 %add31, ptr %latency_sum, align 8
  %latency_min = getelementptr inbounds %struct.ceph_metric, ptr %m, i32 0, i32 7
  %13 = ptrtoint ptr %latency_min to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %latency_min, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %14)
  %cmp32 = icmp slt i64 %sub, %14
  br i1 %cmp32, label %if.then40, label %if.end30.if.end42_crit_edge, !prof !36

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %latency_min to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %sub, ptr %latency_min, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end30.if.end42_crit_edge
  %latency_max = getelementptr inbounds %struct.ceph_metric, ptr %m, i32 0, i32 8
  %16 = ptrtoint ptr %latency_max to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %latency_max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %17)
  %cmp43 = icmp sgt i64 %sub, %17
  br i1 %cmp43, label %if.then51, label %if.end42.if.end53_crit_edge, !prof !36

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then51:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %latency_max to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %sub, ptr %latency_max, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end42.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.i = icmp eq i64 %2, 0
  br i1 %cmp.i, label %if.end53.__update_stdev.exit_crit_edge, label %if.end.i, !prof !36

if.end53.__update_stdev.exit_crit_edge:           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %__update_stdev.exit

if.end.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %latency_sq_sum = getelementptr inbounds %struct.ceph_metric, ptr %m, i32 0, i32 6
  %div21.i = lshr i64 %2, 1
  %add.i = add i64 %12, %div21.i
  %call.i = tail call i64 @div64_u64(i64 noundef %add.i, i64 noundef %2) #5
  %sub3.i = sub i64 %sub, %call.i
  %div622.i = lshr i64 %inc, 1
  %add7.i = add i64 %add31, %div622.i
  %call8.i = tail call i64 @div64_u64(i64 noundef %add7.i, i64 noundef %inc) #5
  %sub9.i = sub i64 %sub, %call8.i
  %mul.i = mul i64 %sub9.i, %sub3.i
  %19 = ptrtoint ptr %latency_sq_sum to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %latency_sq_sum, align 8
  %add10.i = add i64 %mul.i, %20
  store i64 %add10.i, ptr %latency_sq_sum, align 8
  br label %__update_stdev.exit

__update_stdev.exit:                              ; preds = %if.end.i, %if.end53.__update_stdev.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %m) #5
  br label %cleanup

cleanup:                                          ; preds = %__update_stdev.exit, %switch.early.test.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @check_session_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ceph_lookup_mds_session(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_msg_new(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @jiffies_to_timespec64(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @ceph_metric_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/ceph/metric.c", i32 228, i32 8}
!2 = !{ptr @ceph_metric_init.__key.1, !3, !"__key", i1 false, i1 false}
!3 = !{!"../fs/ceph/metric.c", i32 232, i32 8}
!4 = !{ptr @ceph_metric_init.__key.2, !5, !"__key", i1 false, i1 false}
!5 = !{!"../fs/ceph/metric.c", i32 237, i32 8}
!6 = !{ptr @ceph_metric_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/ceph/metric.c", i32 241, i32 8}
!8 = !{ptr @ceph_metric_init.__key.4, !9, !"__key", i1 false, i1 false}
!9 = !{!"../fs/ceph/metric.c", i32 247, i32 3}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ceph_metric_init.__key.5, !12, !"__key", i1 false, i1 false}
!12 = !{!"../fs/ceph/metric.c", i32 259, i32 8}
!13 = !{ptr @ceph_metric_init.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../fs/ceph/metric.c", i32 262, i32 8}
!15 = !{ptr @ceph_metric_init.__key.7, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/ceph/metric.c", i32 267, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ceph_metric_init.__key.9, !16, !"__key", i1 false, i1 false}
!19 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ceph/metric.c", i32 41, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ceph_mdsc_send_metrics._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @ceph_mdsc_send_metrics._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
!36 = !{!"branch_weights", i32 1, i32 2000}
