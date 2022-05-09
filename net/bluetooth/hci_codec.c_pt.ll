; ModuleID = '/llk/IR_all_yes/net/bluetooth/hci_codec.c_pt.bc'
source_filename = "../net/bluetooth/hci_codec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.hci_op_read_local_codec_caps = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.1, i32, %struct.spinlock }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.2, %union.anon.105, %union.anon.106, [48 x i8], %union.anon.107, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.109, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { i64 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, ptr }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.111, i32, i32, i32, i16, i16, %union.anon.113, i32, %union.anon.114, %union.anon.115, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.111 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i16 }
%struct.hci_std_codecs = type { i8, [0 x i8] }
%struct.hci_vnd_codecs = type <{ i8, [0 x %struct.hci_vnd_codec] }>
%struct.hci_vnd_codec = type { i16, i16 }
%struct.codec_list = type { %struct.list_head, i8, i16, i16, i8, i8, i32, [0 x %struct.hci_codec_caps] }
%struct.hci_codec_caps = type { i8, [0 x i8] }
%struct.hci_rp_read_local_codec_caps = type { i8, i8 }
%struct.hci_std_codecs_v2 = type { i8, [0 x %struct.hci_std_codec_v2] }
%struct.hci_std_codec_v2 = type { i8, i8 }
%struct.hci_vnd_codecs_v2 = type { i8, [0 x %struct.hci_vnd_codec_v2] }
%struct.hci_vnd_codec_v2 = type <{ i8, i16, i16, i8 }>

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Failed to read local supported codecs (%ld)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Failed to read codec capabilities (%ld)\0A\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 134, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [29 x i8] c"../net/bluetooth/hci_codec.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 79, i32 5 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_codec_list_clear(ptr noundef readonly %codec_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %codec_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codec_list, align 4
  %cmp.not17 = icmp eq ptr %1, %codec_list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %c.018 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %c.018 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %c.018, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c.018) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %c.018, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %c.018 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c.018, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %c.018 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %c.018, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %c.018, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %c.018) #6
  %cmp.not = icmp eq ptr %n.0, %codec_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_read_supported_codecs(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %caps = alloca %struct.hci_op_read_local_codec_caps, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %caps) #6
  %0 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %caps, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %caps, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %caps, i32 0, i32 4
  %3 = call ptr @memset(ptr %caps, i32 255, i32 7)
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext 4107, i32 noundef 0, ptr noundef null, i32 noundef 200) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %4 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %4) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ult i32 %6, 3
  br i1 %cmp, label %if.end.error_crit_edge, label %if.end5

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end7, label %if.end5.error_crit_edge

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end7:                                          ; preds = %if.end5
  %call8 = tail call ptr @skb_pull(ptr noundef %call1, i32 noundef 1) #6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %12, align 1
  %conv = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv)
  %cmp12.not = icmp ugt i32 %14, %conv
  br i1 %cmp12.not, label %if.end15, label %if.end7.error_crit_edge

if.end7.error_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end15:                                         ; preds = %if.end7
  %17 = call ptr @memset(ptr %caps, i32 0, i32 7)
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp1988.not = icmp eq i8 %19, 0
  br i1 %cmp1988.not, label %if.end15.for.end_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end15.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hci_std_codecs, ptr %12, i32 0, i32 1, i32 %indvars.iv
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %22 = ptrtoint ptr %caps to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %caps, align 1
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %2, align 1
  call fastcc void @hci_read_codec_capabilities(ptr noundef %hdev, i8 noundef zeroext 1, ptr noundef nonnull %caps)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %12, align 1
  %26 = zext i8 %25 to i32
  %cmp19 = icmp ult i32 %indvars.iv.next, %26
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i8 %25 to i32
  %phi.bo = add nuw nsw i32 %phi.cast, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end15.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end.loopexit ], [ 1, %if.end15.for.end_crit_edge ]
  %call25 = call ptr @skb_pull(ptr noundef %call1, i32 noundef %.lcssa) #6
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %28, align 1
  %conv29 = zext i8 %32 to i32
  %33 = shl nuw nsw i32 %conv29, 2
  %add31 = or i32 %33, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add31)
  %cmp32 = icmp ult i32 %30, %add31
  br i1 %cmp32, label %for.end.error_crit_edge, label %for.cond36.preheader

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond36.preheader:                             ; preds = %for.end
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp4090.not = icmp eq i8 %35, 0
  br i1 %cmp4090.not, label %for.cond36.preheader.error_crit_edge, label %for.cond36.preheader.for.body42_crit_edge

for.cond36.preheader.for.body42_crit_edge:        ; preds = %for.cond36.preheader
  br label %for.body42

for.cond36.preheader.error_crit_edge:             ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.cond36.preheader.for.body42_crit_edge
  %indvars.iv93 = phi i32 [ %indvars.iv.next94, %for.body42.for.body42_crit_edge ], [ 0, %for.cond36.preheader.for.body42_crit_edge ]
  %36 = ptrtoint ptr %caps to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %caps, align 1
  %arrayidx46 = getelementptr %struct.hci_vnd_codecs, ptr %28, i32 0, i32 1, i32 %indvars.iv93
  %37 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %arrayidx46, align 1
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %0, align 1
  %vid = getelementptr %struct.hci_vnd_codecs, ptr %28, i32 0, i32 1, i32 %indvars.iv93, i32 1
  %40 = ptrtoint ptr %vid to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %vid, align 1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %1, align 1
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %2, align 1
  call fastcc void @hci_read_codec_capabilities(ptr noundef %hdev, i8 noundef zeroext 1, ptr noundef nonnull %caps)
  %indvars.iv.next94 = add nuw nsw i32 %indvars.iv93, 1
  %44 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %28, align 1
  %46 = zext i8 %45 to i32
  %cmp40 = icmp ult i32 %indvars.iv.next94, %46
  br i1 %cmp40, label %for.body42.for.body42_crit_edge, label %for.body42.error_crit_edge

for.body42.error_crit_edge:                       ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42

error:                                            ; preds = %for.body42.error_crit_edge, %for.cond36.preheader.error_crit_edge, %for.end.error_crit_edge, %if.end7.error_crit_edge, %if.end5.error_crit_edge, %if.end.error_crit_edge
  call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %caps) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_read_codec_capabilities(ptr noundef %hdev, i8 noundef zeroext %transport, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i8 %transport to i32
  %transport4 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %cmd, i32 0, i32 3
  %arrayidx = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 27, i32 45
  %lock55 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  %local_codecs56 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 198
  %cid.i104 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %cmd, i32 0, i32 1
  %vid.i106 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %cmd, i32 0, i32 2
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc64.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc64.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %indvars.iv
  %and = and i32 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc64_crit_edge, label %if.then

for.body.for.inc64_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc64

if.then:                                          ; preds = %for.body
  %0 = trunc i32 %indvars.iv to i8
  %1 = ptrtoint ptr %transport4 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %0, ptr %transport4, align 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  tail call void @mutex_lock_nested(ptr noundef %lock55, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then8.hci_codec_list_add.exit_crit_edge, label %if.end.i

if.then8.hci_codec_list_add.exit_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %hci_codec_list_add.exit

if.end.i:                                         ; preds = %if.then8
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd, align 1
  %id2.i = getelementptr inbounds %struct.codec_list, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %id2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %id2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i = icmp eq i8 %7, -1
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %cid.i104 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %cid.i104, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #6
  %cid6.i = getelementptr inbounds %struct.codec_list, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %cid6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %cid6.i, align 2
  %13 = ptrtoint ptr %vid.i106 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %vid.i106, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #6
  %vid7.i = getelementptr inbounds %struct.codec_list, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %vid7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %vid7.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %17 = ptrtoint ptr %transport4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %transport4, align 1
  %transport9.i = getelementptr inbounds %struct.codec_list, ptr %call7.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %transport9.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %transport9.i, align 2
  %len10.i = getelementptr inbounds %struct.codec_list, ptr %call7.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %len10.i, align 8
  %num_caps.i = getelementptr inbounds %struct.codec_list, ptr %call7.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %num_caps.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %num_caps.i, align 1
  %22 = ptrtoint ptr %local_codecs56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %local_codecs56, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %local_codecs56, ptr noundef %23) #6
  br i1 %call.i.i.i, label %if.end.i.i1.i, label %if.end8.i.hci_codec_list_add.exit_crit_edge

if.end8.i.hci_codec_list_add.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hci_codec_list_add.exit

if.end.i.i1.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %local_codecs56, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %local_codecs56 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i.i, ptr %local_codecs56, align 4
  br label %hci_codec_list_add.exit

hci_codec_list_add.exit:                          ; preds = %if.end.i.i1.i, %if.end8.i.hci_codec_list_add.exit_crit_edge, %if.then8.hci_codec_list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock55) #6
  br label %for.inc64

if.end:                                           ; preds = %if.then
  %call11 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext 4110, i32 noundef 7, ptr noundef %cmd, i32 noundef 200) #6
  %cmp.i98 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %28) #6
  br label %for.inc64

if.end15:                                         ; preds = %if.end
  %len16 = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 6
  %29 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp17 = icmp ult i32 %30, 2
  br i1 %cmp17, label %if.end15.error_crit_edge, label %if.end20

if.end15.error_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end20:                                         ; preds = %if.end15
  %data = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 19
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool21.not = icmp eq i8 %34, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.error_crit_edge

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end23:                                         ; preds = %if.end20
  %num_caps = getelementptr inbounds %struct.hci_rp_read_local_codec_caps, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %num_caps to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_caps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool24.not = icmp eq i8 %36, 0
  br i1 %tobool24.not, label %if.end23.skip_caps_parse_crit_edge, label %if.end26

if.end23.skip_caps_parse_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_caps_parse

if.end26:                                         ; preds = %if.end23
  %call27 = tail call ptr @skb_pull(ptr noundef %call11, i32 noundef 2) #6
  %37 = ptrtoint ptr %num_caps to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_caps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp32120.not = icmp eq i8 %38, 0
  br i1 %cmp32120.not, label %if.end26.skip_caps_parse_crit_edge, label %if.end26.for.body34_crit_edge

if.end26.for.body34_crit_edge:                    ; preds = %if.end26
  br label %for.body34

if.end26.skip_caps_parse_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_caps_parse

for.body34:                                       ; preds = %if.end47.for.body34_crit_edge, %if.end26.for.body34_crit_edge
  %len.0122 = phi i32 [ %add50, %if.end47.for.body34_crit_edge ], [ 0, %if.end26.for.body34_crit_edge ]
  %j.0121 = phi i8 [ %inc, %if.end47.for.body34_crit_edge ], [ 0, %if.end26.for.body34_crit_edge ]
  %39 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp37 = icmp eq i32 %40, 0
  br i1 %cmp37, label %for.body34.error_crit_edge, label %if.end40

for.body34.error_crit_edge:                       ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end40:                                         ; preds = %for.body34
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv43 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv43)
  %cmp44 = icmp ult i32 %40, %conv43
  br i1 %cmp44, label %if.end40.error_crit_edge, label %if.end47

if.end40.error_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end47:                                         ; preds = %if.end40
  %add = add nuw nsw i32 %conv43, 1
  %add50 = add i32 %add, %len.0122
  %call54 = tail call ptr @skb_pull(ptr noundef %call11, i32 noundef %add) #6
  %inc = add nuw i8 %j.0121, 1
  %45 = ptrtoint ptr %num_caps to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_caps, align 1
  %cmp32 = icmp ult i8 %inc, %46
  br i1 %cmp32, label %if.end47.for.body34_crit_edge, label %if.end47.skip_caps_parse_crit_edge

if.end47.skip_caps_parse_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_caps_parse

if.end47.for.body34_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34

skip_caps_parse:                                  ; preds = %if.end47.skip_caps_parse_crit_edge, %if.end26.skip_caps_parse_crit_edge, %if.end23.skip_caps_parse_crit_edge
  %len.1 = phi i32 [ 0, %if.end23.skip_caps_parse_crit_edge ], [ 0, %if.end26.skip_caps_parse_crit_edge ], [ %add50, %if.end47.skip_caps_parse_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %lock55, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %32, i32 2
  %add.i = add i32 %len.1, 20
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #10
  %tobool.not.i100 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i100, label %skip_caps_parse.hci_codec_list_add.exit118_crit_edge, label %if.end.i103

skip_caps_parse.hci_codec_list_add.exit118_crit_edge: ; preds = %skip_caps_parse
  call void @__sanitizer_cov_trace_pc() #8
  br label %hci_codec_list_add.exit118

if.end.i103:                                      ; preds = %skip_caps_parse
  %47 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cmd, align 1
  %id2.i101 = getelementptr inbounds %struct.codec_list, ptr %call9.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %id2.i101 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %id2.i101, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp.i102 = icmp eq i8 %48, -1
  br i1 %cmp.i102, label %if.then5.i108, label %if.end.i103.if.end8.i113_crit_edge

if.end.i103.if.end8.i113_crit_edge:               ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i113

if.then5.i108:                                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %cid.i104 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %cid.i104, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #6
  %cid6.i105 = getelementptr inbounds %struct.codec_list, ptr %call9.i.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %cid6.i105 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %cid6.i105, align 2
  %54 = ptrtoint ptr %vid.i106 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %vid.i106, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #6
  %vid7.i107 = getelementptr inbounds %struct.codec_list, ptr %call9.i.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %vid7.i107 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %vid7.i107, align 4
  br label %if.end8.i113

if.end8.i113:                                     ; preds = %if.then5.i108, %if.end.i103.if.end8.i113_crit_edge
  %58 = ptrtoint ptr %transport4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %transport4, align 1
  %transport9.i110 = getelementptr inbounds %struct.codec_list, ptr %call9.i.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %transport9.i110 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %transport9.i110, align 2
  %len10.i111 = getelementptr inbounds %struct.codec_list, ptr %call9.i.i.i, i32 0, i32 6
  %61 = ptrtoint ptr %len10.i111 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %len.1, ptr %len10.i111, align 16
  %num_caps.i112 = getelementptr inbounds %struct.codec_list, ptr %call9.i.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %num_caps.i112 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %num_caps.i112, align 1
  %tobool11.not.i = icmp eq ptr %32, null
  br i1 %tobool11.not.i, label %if.end8.i113.if.end16.i_crit_edge, label %if.then12.i

if.end8.i113.if.end16.i_crit_edge:                ; preds = %if.end8.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end8.i113
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %num_caps to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num_caps, align 1
  %65 = ptrtoint ptr %num_caps.i112 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %num_caps.i112, align 1
  %caps15.i = getelementptr inbounds %struct.codec_list, ptr %call9.i.i.i, i32 0, i32 7
  %66 = call ptr @memcpy(ptr %caps15.i, ptr %add.ptr, i32 %len.1)
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end8.i113.if.end16.i_crit_edge
  %67 = ptrtoint ptr %local_codecs56 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %local_codecs56, align 4
  %call.i.i.i114 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %local_codecs56, ptr noundef %68) #6
  br i1 %call.i.i.i114, label %if.end.i.i1.i117, label %if.end16.i.hci_codec_list_add.exit118_crit_edge

if.end16.i.hci_codec_list_add.exit118_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hci_codec_list_add.exit118

if.end.i.i1.i117:                                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i115 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call9.i.i.i, ptr %prev1.i.i.i115, align 4
  %70 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %call9.i.i.i, align 128
  %prev3.i.i.i116 = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %local_codecs56, ptr %prev3.i.i.i116, align 4
  %72 = ptrtoint ptr %local_codecs56 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %call9.i.i.i, ptr %local_codecs56, align 4
  br label %hci_codec_list_add.exit118

hci_codec_list_add.exit118:                       ; preds = %if.end.i.i1.i117, %if.end16.i.hci_codec_list_add.exit118_crit_edge, %skip_caps_parse.hci_codec_list_add.exit118_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock55) #6
  br label %error

error:                                            ; preds = %hci_codec_list_add.exit118, %if.end40.error_crit_edge, %for.body34.error_crit_edge, %if.end20.error_crit_edge, %if.end15.error_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %call11, i32 noundef 0) #6
  br label %for.inc64

for.inc64:                                        ; preds = %error, %if.then13, %hci_codec_list_add.exit, %for.body.for.inc64_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end66, label %for.inc64.for.body_crit_edge

for.inc64.for.body_crit_edge:                     ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end66:                                        ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_read_supported_codecs_v2(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %caps = alloca %struct.hci_op_read_local_codec_caps, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %caps) #6
  %0 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %caps, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %caps, i32 0, i32 2
  %2 = call ptr @memset(ptr %caps, i32 255, i32 7)
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext 4109, i32 noundef 0, ptr noundef null, i32 noundef 200) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %3 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %3) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ult i32 %5, 3
  br i1 %cmp, label %if.end.error_crit_edge, label %if.end5

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end7, label %if.end5.error_crit_edge

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end7:                                          ; preds = %if.end5
  %call8 = tail call ptr @skb_pull(ptr noundef %call1, i32 noundef 1) #6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %11, align 1
  %conv = zext i8 %15 to i32
  %16 = shl nuw nsw i32 %conv, 1
  %add = or i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp12 = icmp ult i32 %13, %add
  br i1 %cmp12, label %if.end7.error_crit_edge, label %if.end15

if.end7.error_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end15:                                         ; preds = %if.end7
  %17 = call ptr @memset(ptr %caps, i32 0, i32 7)
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp1999.not = icmp eq i8 %19, 0
  br i1 %cmp1999.not, label %if.end15.for.end_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end15.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hci_std_codecs_v2, ptr %11, i32 0, i32 1, i32 %indvars.iv
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %22 = ptrtoint ptr %caps to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %caps, align 1
  %transport = getelementptr %struct.hci_std_codecs_v2, ptr %11, i32 0, i32 1, i32 %indvars.iv, i32 1
  %23 = ptrtoint ptr %transport to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %transport, align 1
  call fastcc void @hci_read_codec_capabilities(ptr noundef %hdev, i8 noundef zeroext %24, ptr noundef nonnull %caps)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %11, align 1
  %27 = zext i8 %26 to i32
  %cmp19 = icmp ult i32 %indvars.iv.next, %27
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i8 %26 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 1
  %phi.bo106 = or i32 %phi.bo, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end15.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo106, %for.end.loopexit ], [ 1, %if.end15.for.end_crit_edge ]
  %call29 = call ptr @skb_pull(ptr noundef %call1, i32 noundef %.lcssa) #6
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %29, align 1
  %conv33 = zext i8 %33 to i32
  %34 = mul nuw nsw i32 %conv33, 6
  %add35 = or i32 %34, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add35)
  %cmp36 = icmp ult i32 %31, %add35
  br i1 %cmp36, label %for.end.error_crit_edge, label %for.cond40.preheader

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond40.preheader:                             ; preds = %for.end
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp44101.not = icmp eq i8 %36, 0
  br i1 %cmp44101.not, label %for.cond40.preheader.error_crit_edge, label %for.cond40.preheader.for.body46_crit_edge

for.cond40.preheader.for.body46_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body46

for.cond40.preheader.error_crit_edge:             ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.cond40.preheader.for.body46_crit_edge
  %indvars.iv104 = phi i32 [ %indvars.iv.next105, %for.body46.for.body46_crit_edge ], [ 0, %for.cond40.preheader.for.body46_crit_edge ]
  %37 = ptrtoint ptr %caps to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %caps, align 1
  %cid = getelementptr %struct.hci_vnd_codecs_v2, ptr %29, i32 0, i32 1, i32 %indvars.iv104, i32 1
  %38 = ptrtoint ptr %cid to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %cid, align 1
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %0, align 1
  %vid = getelementptr %struct.hci_vnd_codecs_v2, ptr %29, i32 0, i32 1, i32 %indvars.iv104, i32 2
  %41 = ptrtoint ptr %vid to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %vid, align 1
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %1, align 1
  %transport59 = getelementptr %struct.hci_vnd_codecs_v2, ptr %29, i32 0, i32 1, i32 %indvars.iv104, i32 3
  %44 = ptrtoint ptr %transport59 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %transport59, align 1
  call fastcc void @hci_read_codec_capabilities(ptr noundef %hdev, i8 noundef zeroext %45, ptr noundef nonnull %caps)
  %indvars.iv.next105 = add nuw nsw i32 %indvars.iv104, 1
  %46 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %29, align 1
  %48 = zext i8 %47 to i32
  %cmp44 = icmp ult i32 %indvars.iv.next105, %48
  br i1 %cmp44, label %for.body46.for.body46_crit_edge, label %for.body46.error_crit_edge

for.body46.error_crit_edge:                       ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46

error:                                            ; preds = %for.body46.error_crit_edge, %for.cond40.preheader.error_crit_edge, %for.end.error_crit_edge, %if.end7.error_crit_edge, %if.end5.error_crit_edge, %if.end.error_crit_edge
  call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %caps) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/hci_codec.c", i32 134, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bluetooth/hci_codec.c", i32 79, i32 5}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
