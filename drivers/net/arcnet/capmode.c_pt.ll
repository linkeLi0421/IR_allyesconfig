; ModuleID = '/llk/IR_all_yes/drivers/net/arcnet/capmode.c_pt.bc'
source_filename = "../drivers/net/arcnet/capmode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ArcProto = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.archdr = type { %struct.arc_hardware, %union.anon.116 }
%struct.arc_hardware = type { i8, i8, [2 x i8] }
%union.anon.116 = type { %struct.arc_rfc1201, [12 x i8] }
%struct.arc_rfc1201 = type { i8, i8, i16, [0 x i8] }

@capmode_proto = internal global { %struct.ArcProto, [32 x i8] } { %struct.ArcProto { i8 114, i32 508, i32 0, ptr @rx, ptr @build_header, ptr @prepare_tx, ptr null, ptr @ack_tx }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_capmode__360_265_capmode_module_init6 = internal global ptr @capmode_module_init, section ".initcall6.init", align 4
@__exitcall_capmode_module_exit = internal global ptr @capmode_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file361 = internal constant [40 x i8] c"capmode.file=drivers/net/arcnet/capmode\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [20 x i8] c"capmode.license=GPL\00", section ".modinfo", align 1
@arcnet_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/arcnet/capmode.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Preparing header for cap packet %x.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sending for cap packet %x.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bug!  prepare_tx with size %d (> %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Acknowledge for cap packet %x.\0A\00", [32 x i8] zeroinitializer }, align 32
@capmode_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016arcnet:capmode: cap mode (`c') encapsulation support loaded\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"capmode_module_init\00", [44 x i8] zeroinitializer }, align 32
@capmode_module_init._entry_ptr = internal global ptr @capmode_module_init._entry, section ".printk_index", align 4
@arc_proto_map = external dso_local local_unnamed_addr global [256 x ptr], align 4
@arc_proto_default = external dso_local local_unnamed_addr global ptr, align 4
@arc_bcast_proto = external dso_local local_unnamed_addr global ptr, align 4
@arc_raw_proto = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"capmode_proto\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 232, i32 24 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 51, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 106, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 147, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 152, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 215, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [32 x i8] c"../drivers/net/arcnet/capmode.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 245, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_license362, ptr @__exitcall_capmode_module_exit, ptr @__initcall__kmod_capmode__360_265_capmode_module_init6, ptr @capmode_module_exit, ptr @capmode_module_init._entry, ptr @capmode_module_init._entry_ptr, ptr @capmode_proto, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.8, ptr @.str.12, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capmode_proto to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capmode_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @capmode_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @arcnet_unregister_proto(ptr noundef nonnull @capmode_proto) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arcnet_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @capmode_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arc_proto_default to i32))
  %0 = load ptr, ptr @arc_proto_default, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %count.09 = phi i32 [ 1, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @arc_proto_map, i32 0, i32 %count.09
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %2, %0
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @capmode_proto, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %count.09, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arc_bcast_proto to i32))
  %4 = load ptr, ptr @arc_bcast_proto, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arc_proto_default to i32))
  %5 = load ptr, ptr @arc_proto_default, align 4
  %cmp3 = icmp eq ptr %4, %5
  br i1 %cmp3, label %if.then4, label %for.end.if.end5_crit_edge

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arc_bcast_proto to i32))
  store ptr @capmode_proto, ptr @arc_bcast_proto, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.end.if.end5_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arc_proto_default to i32))
  store ptr @capmode_proto, ptr @arc_proto_default, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arc_raw_proto to i32))
  store ptr @capmode_proto, ptr @arc_raw_proto, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx(ptr noundef %dev, i32 noundef %bufnum, ptr nocapture noundef readonly %pkthdr, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %length)
  %cmp = icmp sgt i32 %length, 256
  %.pn = select i1 %cmp, i32 512, i32 256
  %add16 = add i32 %length, 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %0 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end20:                                         ; preds = %entry
  %call23 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add16) #4
  %2 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %2, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv.i72 = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i73 = getelementptr i8, ptr %7, i32 %conv.i72
  %call25 = tail call ptr @skb_pull(ptr noundef nonnull %call.i, i32 noundef 4) #4
  %9 = call ptr @memcpy(ptr %add.ptr.i73, ptr %pkthdr, i32 5)
  %add.ptr27 = getelementptr i8, ptr %add.ptr.i73, i32 9
  %add.ptr29 = getelementptr i8, ptr %pkthdr, i32 5
  %10 = call ptr @memcpy(ptr %add.ptr27, ptr %add.ptr29, i32 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %length)
  %cmp30 = icmp ugt i32 %length, 16
  br i1 %cmp30, label %if.then31, label %if.end20.if.end40_crit_edge

if.end20.if.end40_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then31:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %copy_from_card = getelementptr i8, ptr %dev, i32 4996
  %11 = ptrtoint ptr %copy_from_card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %copy_from_card, align 4
  %ofs.0 = sub i32 16, %length
  %add32 = add i32 %ofs.0, %.pn
  %add.ptr34 = getelementptr %struct.archdr, ptr %add.ptr.i73, i32 1, i32 1
  %sub35 = add i32 %length, -16
  tail call void %12(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %add32, ptr noundef %add.ptr34, i32 noundef %sub35) #4
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %if.end20.if.end40_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 26, ptr %protocol, align 8
  %call41 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @build_header(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %type, i8 noundef zeroext %daddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %0 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cookie = getelementptr inbounds %struct.archdr, ptr %call, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %cookie to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %cookie, align 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %call, align 2
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and1 = and i32 %9, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %spec.select = select i1 %tobool2.not, i8 %daddr, i8 0
  %10 = getelementptr inbounds %struct.arc_hardware, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %10, align 1
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prepare_tx(ptr noundef %dev, ptr noundef %pkt, i32 noundef %length, i32 noundef %bufnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sub2 = add i32 %length, -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %0 = load i32, ptr @arcnet_debug, align 4
  %and16 = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %entry.do.end21_crit_edge, label %if.then18

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cookie = getelementptr inbounds %struct.archdr, ptr %pkt, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %cookie to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %cookie, align 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %2) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %entry.do.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 508, i32 %sub2)
  %cmp = icmp sgt i32 %sub2, 508
  br i1 %cmp, label %do.body23, label %if.end30

do.body23:                                        ; preds = %do.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %3 = load i32, ptr @arcnet_debug, align 4
  %and24 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.if.then32_crit_edge, label %if.then26

do.body23.if.then32_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then26:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %sub2, i32 noundef 508) #7
  br label %if.then32

if.end30:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %sub2)
  %cmp31 = icmp sgt i32 %sub2, 257
  br i1 %cmp31, label %if.end30.if.then32_crit_edge, label %if.else

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then32:                                        ; preds = %if.end30.if.then32_crit_edge, %if.then26, %do.body23.if.then32_crit_edge
  %length.addr.0126 = phi i32 [ %sub2, %if.end30.if.then32_crit_edge ], [ 508, %if.then26 ], [ 508, %do.body23.if.then32_crit_edge ]
  %offset = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %offset, align 1
  %sub34 = sub nuw nsw i32 512, %length.addr.0126
  %conv = trunc i32 %sub34 to i8
  %arrayidx36 = getelementptr %struct.arc_hardware, ptr %pkt, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx36, align 1
  br label %do.end79

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %sub2)
  %cmp37 = icmp sgt i32 %sub2, 253
  br i1 %cmp37, label %if.then39, label %if.else47

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %offset40 = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %6 = ptrtoint ptr %offset40 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %offset40, align 1
  %sub43 = sub nuw nsw i32 517, %length
  %conv44 = trunc i32 %sub43 to i8
  %arrayidx46 = getelementptr %struct.arc_hardware, ptr %pkt, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv44, ptr %arrayidx46, align 1
  br label %do.end79

if.else47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %sub48 = sub i32 264, %length
  %conv49 = trunc i32 %sub48 to i8
  %offset50 = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %8 = ptrtoint ptr %offset50 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv49, ptr %offset50, align 1
  br label %do.end79

do.end79:                                         ; preds = %if.else47, %if.then39, %if.then32
  %length.addr.0127 = phi i32 [ %length.addr.0126, %if.then32 ], [ %sub2, %if.then39 ], [ %sub2, %if.else47 ]
  %ofs.0 = phi i32 [ %sub34, %if.then32 ], [ %sub43, %if.then39 ], [ %sub48, %if.else47 ]
  %copy_to_card = getelementptr i8, ptr %dev, i32 4992
  %9 = ptrtoint ptr %copy_to_card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %copy_to_card, align 4
  tail call void %10(ptr noundef %dev, i32 noundef %bufnum, i32 noundef 0, ptr noundef %pkt, i32 noundef 4) #4
  %11 = ptrtoint ptr %copy_to_card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %copy_to_card, align 4
  %soft82 = getelementptr inbounds %struct.archdr, ptr %pkt, i32 0, i32 1
  tail call void %12(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %ofs.0, ptr noundef %soft82, i32 noundef 1) #4
  %13 = ptrtoint ptr %copy_to_card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %copy_to_card, align 4
  %add = add nuw i32 %ofs.0, 1
  %mes = getelementptr inbounds %struct.archdr, ptr %pkt, i32 0, i32 1, i32 1, i32 1
  %sub86 = add i32 %length.addr.0127, -1
  tail call void %14(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %add, ptr noundef %mes, i32 noundef %sub86) #4
  %dest = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 1
  %15 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dest, align 1
  %conv87 = zext i8 %16 to i32
  %lastload_dest = getelementptr i8, ptr %dev, i32 2580
  %17 = ptrtoint ptr %lastload_dest to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv87, ptr %lastload_dest, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ack_tx(ptr noundef %dev, i32 noundef %acked) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 10, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %entry.free_outskb_crit_edge, label %if.end22

entry.free_outskb_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_outskb

if.end22:                                         ; preds = %entry
  %call24 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 10) #4
  %0 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %0, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv.i71 = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i72 = getelementptr i8, ptr %5, i32 %conv.i71
  %skb27 = getelementptr i8, ptr %dev, i32 4940
  %7 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb27, align 4
  %data.i73 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %data.i73 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i73, align 4
  %11 = call ptr @memcpy(ptr %add.ptr.i72, ptr %10, i32 9)
  %soft = getelementptr inbounds %struct.archdr, ptr %add.ptr.i72, i32 0, i32 1
  %12 = ptrtoint ptr %soft to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %soft, align 2
  %conv28 = trunc i32 %acked to i8
  %mes = getelementptr inbounds %struct.archdr, ptr %add.ptr.i72, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %mes to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv28, ptr %mes, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %14 = load i32, ptr @arcnet_debug, align 4
  %and31 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end22.do.end37_crit_edge, label %if.then33

if.end22.do.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end37

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %cookie = getelementptr inbounds %struct.archdr, ptr %add.ptr.i72, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %cookie to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %cookie, align 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %16) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %if.end22.do.end37_crit_edge
  %protocol38 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %17 = ptrtoint ptr %protocol38 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 26, ptr %protocol38, align 8
  %call43 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #4
  br label %free_outskb

free_outskb:                                      ; preds = %do.end37, %entry.free_outskb_crit_edge
  %outgoing44 = getelementptr i8, ptr %dev, i32 4936
  %skb45 = getelementptr i8, ptr %dev, i32 4940
  %18 = ptrtoint ptr %skb45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb45, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %19, i32 noundef 1) #4
  %20 = ptrtoint ptr %outgoing44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %outgoing44, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !19, !20, !21, !23, !25, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_capmode__360_265_capmode_module_init6, !1, !"__initcall__kmod_capmode__360_265_capmode_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/arcnet/capmode.c", i32 265, i32 1}
!2 = !{ptr @__exitcall_capmode_module_exit, !3, !"__exitcall_capmode_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/arcnet/capmode.c", i32 266, i32 1}
!4 = !{ptr @__UNIQUE_ID_file361, !5, !"__UNIQUE_ID_file361", i1 false, i1 false}
!5 = !{!"../drivers/net/arcnet/capmode.c", i32 268, i32 1}
!6 = !{ptr @__UNIQUE_ID_license362, !5, !"__UNIQUE_ID_license362", i1 false, i1 false}
!7 = !{ptr @capmode_proto, !8, !"capmode_proto", i1 false, i1 false}
!8 = !{!"../drivers/net/arcnet/capmode.c", i32 232, i32 24}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/arcnet/capmode.c", i32 51, i32 2}
!11 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !10, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/arcnet/capmode.c", i32 106, i32 2}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/arcnet/capmode.c", i32 144, i32 2}
!19 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !18, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/arcnet/capmode.c", i32 147, i32 2}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/arcnet/capmode.c", i32 152, i32 3}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/arcnet/capmode.c", i32 166, i32 2}
!27 = distinct !{null, !26, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/arcnet/capmode.c", i32 192, i32 2}
!30 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !29, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/arcnet/capmode.c", i32 215, i32 2}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/arcnet/capmode.c", i32 221, i32 32}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/arcnet/capmode.c", i32 245, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @capmode_module_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @capmode_module_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
