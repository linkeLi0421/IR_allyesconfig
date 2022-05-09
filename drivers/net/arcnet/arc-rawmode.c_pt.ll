; ModuleID = '/llk/IR_all_yes/drivers/net/arcnet/arc-rawmode.c_pt.bc'
source_filename = "../drivers/net/arcnet/arc-rawmode.c"
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

@rawmode_proto = internal global { %struct.ArcProto, [32 x i8] } { %struct.ArcProto { i8 114, i32 508, i32 0, ptr @rx, ptr @build_header, ptr @prepare_tx, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_arc_rawmode__356_186_arcnet_raw_init6 = internal global ptr @arcnet_raw_init, section ".initcall6.init", align 4
@__exitcall_arcnet_raw_exit = internal global ptr @arcnet_raw_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file357 = internal constant [48 x i8] c"arc_rawmode.file=drivers/net/arcnet/arc-rawmode\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [24 x i8] c"arc_rawmode.license=GPL\00", section ".modinfo", align 1
@arcnet_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/arcnet/arc-rawmode.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bug!  prepare_tx with size %d (> %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@arcnet_raw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016arcnet:arc_rawmode: raw mode (`r') encapsulation support loaded\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arcnet_raw_init\00", [16 x i8] zeroinitializer }, align 32
@arcnet_raw_init._entry_ptr = internal global ptr @arcnet_raw_init._entry, section ".printk_index", align 4
@arc_proto_map = external dso_local local_unnamed_addr global [256 x ptr], align 4
@arc_proto_default = external dso_local local_unnamed_addr global ptr, align 4
@arc_bcast_proto = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"rawmode_proto\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 153, i32 24 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 47, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 128, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [36 x i8] c"../drivers/net/arcnet/arc-rawmode.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 167, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_arcnet_raw_exit, ptr @__initcall__kmod_arc_rawmode__356_186_arcnet_raw_init6, ptr @arcnet_raw_exit, ptr @arcnet_raw_init._entry, ptr @arcnet_raw_init._entry_ptr, ptr @rawmode_proto, ptr @.str.2, ptr @.str.6, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rawmode_proto to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcnet_raw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arcnet_raw_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @arcnet_unregister_proto(ptr noundef nonnull @rawmode_proto) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arcnet_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arcnet_raw_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arc_proto_default to i32))
  %0 = load ptr, ptr @arc_proto_default, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %count.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
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
  store ptr @rawmode_proto, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %count.09, 1
  %exitcond.not = icmp eq i32 %inc, 256
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
  store ptr @rawmode_proto, ptr @arc_bcast_proto, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.end.if.end5_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arc_proto_default to i32))
  store ptr @rawmode_proto, ptr @arc_proto_default, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx(ptr noundef %dev, i32 noundef %bufnum, ptr nocapture noundef readonly %pkthdr, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %length)
  %cmp = icmp sgt i32 %length, 253
  %.pn = select i1 %cmp, i32 512, i32 256
  %add = add i32 %length, 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %0 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end19:                                         ; preds = %entry
  %call21 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add) #4
  %2 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %2, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
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
  %call22 = tail call ptr @skb_pull(ptr noundef nonnull %call.i, i32 noundef 4) #4
  %9 = call ptr @memcpy(ptr %5, ptr %pkthdr, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %length)
  %cmp23 = icmp ugt i32 %length, 16
  br i1 %cmp23, label %if.then24, label %if.end19.if.end31_crit_edge

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %copy_from_card = getelementptr i8, ptr %dev, i32 4996
  %10 = ptrtoint ptr %copy_from_card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %copy_from_card, align 4
  %ofs.0 = sub i32 16, %length
  %add25 = add i32 %ofs.0, %.pn
  %add.ptr = getelementptr %struct.archdr, ptr %5, i32 1
  %sub26 = add i32 %length, -16
  tail call void %11(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %add25, ptr noundef %add.ptr, i32 noundef %sub26) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %if.end19.if.end31_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 26, ptr %protocol, align 8
  %call32 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @build_header(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, i8 noundef zeroext %daddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call, align 2
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i8 %daddr, i8 0
  %7 = getelementptr inbounds %struct.arc_hardware, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select, ptr %7, align 1
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prepare_tx(ptr noundef %dev, ptr noundef %pkt, i32 noundef %length, i32 noundef %bufnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %length, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 508, i32 %sub)
  %cmp = icmp sgt i32 %sub, 508
  br i1 %cmp, label %do.body15, label %if.end22

do.body15:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %0 = load i32, ptr @arcnet_debug, align 4
  %and16 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.if.then24_crit_edge, label %if.then18

do.body15.if.then24_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then18:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %sub, i32 noundef 508) #7
  br label %if.then24

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub)
  %cmp23 = icmp sgt i32 %sub, 256
  br i1 %cmp23, label %if.end22.if.then24_crit_edge, label %if.else

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %if.then18, %do.body15.if.then24_crit_edge
  %length.addr.0105 = phi i32 [ %sub, %if.end22.if.then24_crit_edge ], [ 508, %if.then18 ], [ 508, %do.body15.if.then24_crit_edge ]
  %offset = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %offset, align 1
  %sub25 = sub nuw nsw i32 512, %length.addr.0105
  %conv = trunc i32 %sub25 to i8
  %arrayidx27 = getelementptr %struct.arc_hardware, ptr %pkt, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx27, align 1
  br label %do.end70

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %sub)
  %cmp28 = icmp sgt i32 %sub, 253
  br i1 %cmp28, label %if.then30, label %if.else38

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %offset31 = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %3 = ptrtoint ptr %offset31 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %offset31, align 1
  %sub34 = sub nuw nsw i32 513, %length
  %conv35 = trunc i32 %sub34 to i8
  %arrayidx37 = getelementptr %struct.arc_hardware, ptr %pkt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv35, ptr %arrayidx37, align 1
  br label %do.end70

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %sub39 = sub i32 260, %length
  %conv40 = trunc i32 %sub39 to i8
  %offset41 = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %5 = ptrtoint ptr %offset41 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv40, ptr %offset41, align 1
  br label %do.end70

do.end70:                                         ; preds = %if.else38, %if.then30, %if.then24
  %length.addr.0104 = phi i32 [ %length.addr.0105, %if.then24 ], [ %sub, %if.then30 ], [ %sub, %if.else38 ]
  %ofs.0 = phi i32 [ %sub25, %if.then24 ], [ %sub34, %if.then30 ], [ %sub39, %if.else38 ]
  %copy_to_card = getelementptr i8, ptr %dev, i32 4992
  %6 = ptrtoint ptr %copy_to_card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %copy_to_card, align 4
  tail call void %7(ptr noundef %dev, i32 noundef %bufnum, i32 noundef 0, ptr noundef %pkt, i32 noundef 4) #4
  %8 = ptrtoint ptr %copy_to_card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %copy_to_card, align 4
  %soft = getelementptr inbounds %struct.archdr, ptr %pkt, i32 0, i32 1
  tail call void %9(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %ofs.0, ptr noundef %soft, i32 noundef %length.addr.0104) #4
  %dest = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 1
  %10 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dest, align 1
  %conv73 = zext i8 %11 to i32
  %lastload_dest = getelementptr i8, ptr %dev, i32 2580
  %12 = ptrtoint ptr %lastload_dest to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv73, ptr %lastload_dest, align 4
  ret i32 1
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
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_arc_rawmode__356_186_arcnet_raw_init6, !1, !"__initcall__kmod_arc_rawmode__356_186_arcnet_raw_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/arcnet/arc-rawmode.c", i32 186, i32 1}
!2 = !{ptr @__exitcall_arcnet_raw_exit, !3, !"__exitcall_arcnet_raw_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/arcnet/arc-rawmode.c", i32 187, i32 1}
!4 = !{ptr @__UNIQUE_ID_file357, !5, !"__UNIQUE_ID_file357", i1 false, i1 false}
!5 = !{!"../drivers/net/arcnet/arc-rawmode.c", i32 189, i32 1}
!6 = !{ptr @__UNIQUE_ID_license358, !5, !"__UNIQUE_ID_license358", i1 false, i1 false}
!7 = !{ptr @rawmode_proto, !8, !"rawmode_proto", i1 false, i1 false}
!8 = !{!"../drivers/net/arcnet/arc-rawmode.c", i32 153, i32 24}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/arcnet/arc-rawmode.c", i32 47, i32 2}
!11 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !10, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/arcnet/arc-rawmode.c", i32 120, i32 2}
!17 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/arcnet/arc-rawmode.c", i32 128, i32 3}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/arcnet/arc-rawmode.c", i32 142, i32 2}
!23 = distinct !{null, !22, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/arcnet/arc-rawmode.c", i32 167, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @arcnet_raw_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @arcnet_raw_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
