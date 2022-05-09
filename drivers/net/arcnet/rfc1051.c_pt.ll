; ModuleID = '/llk/IR_all_yes/drivers/net/arcnet/rfc1051.c_pt.bc'
source_filename = "../drivers/net/arcnet/rfc1051.c"
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

@rfc1051_proto = internal global { %struct.ArcProto, [32 x i8] } { %struct.ArcProto { i8 115, i32 507, i32 1, ptr @rx, ptr @build_header, ptr @prepare_tx, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_rfc1051__352_78_arcnet_rfc1051_init6 = internal global ptr @arcnet_rfc1051_init, section ".initcall6.init", align 4
@__exitcall_arcnet_rfc1051_exit = internal global ptr @arcnet_rfc1051_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file353 = internal constant [40 x i8] c"rfc1051.file=drivers/net/arcnet/rfc1051\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [20 x i8] c"rfc1051.license=GPL\00", section ".modinfo", align 1
@arcnet_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/arcnet/rfc1051.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RFC1051: I don't understand protocol %d (%Xh)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bug!  prepare_tx with size %d (> %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@arcnet_rfc1051_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016arcnet:rfc1051: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arcnet_rfc1051_init\00", [44 x i8] zeroinitializer }, align 32
@arcnet_rfc1051_init._entry_ptr = internal global ptr @arcnet_rfc1051_init._entry, section ".printk_index", align 4
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"RFC1051 \22simple standard\22 (`s') encapsulation support loaded\00", [35 x i8] zeroinitializer }, align 32
@arc_proto_map = external dso_local local_unnamed_addr global [256 x ptr], align 4
@arc_bcast_proto = external dso_local local_unnamed_addr global ptr, align 4
@arc_proto_default = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 240, i64 241]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 2054]
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"rfc1051_proto\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 47, i32 24 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 129, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 177, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 222, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [32 x i8] c"../drivers/net/arcnet/rfc1051.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 60, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_arcnet_rfc1051_exit, ptr @__initcall__kmod_rfc1051__352_78_arcnet_rfc1051_init6, ptr @arcnet_rfc1051_exit, ptr @arcnet_rfc1051_init._entry, ptr @arcnet_rfc1051_init._entry_ptr, ptr @rfc1051_proto, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc1051_proto to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcnet_rfc1051_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arcnet_rfc1051_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @arcnet_unregister_proto(ptr noundef nonnull @rfc1051_proto) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arcnet_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arcnet_rfc1051_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 241) to i32))
  store ptr @rfc1051_proto, ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 241), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 240) to i32))
  store ptr @rfc1051_proto, ptr getelementptr inbounds ([256 x ptr], ptr @arc_proto_map, i32 0, i32 240), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arc_bcast_proto to i32))
  %0 = load ptr, ptr @arc_bcast_proto, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arc_proto_default to i32))
  %1 = load ptr, ptr @arc_proto_default, align 4
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arc_bcast_proto to i32))
  store ptr @rfc1051_proto, ptr @arc_bcast_proto, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
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
  %6 = call ptr @memcpy(ptr %5, ptr %pkthdr, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %length)
  %cmp22 = icmp ugt i32 %length, 16
  br i1 %cmp22, label %if.then23, label %if.end19.if.end30_crit_edge

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %copy_from_card = getelementptr i8, ptr %dev, i32 4996
  %7 = ptrtoint ptr %copy_from_card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %copy_from_card, align 4
  %ofs.0 = sub i32 16, %length
  %add24 = add i32 %ofs.0, %.pn
  %add.ptr = getelementptr %struct.archdr, ptr %5, i32 1
  %sub25 = add i32 %length, -16
  tail call void %8(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %add24, ptr noundef %add.ptr, i32 noundef %sub25) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.end19.if.end30_crit_edge
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %soft1.i = getelementptr inbounds %struct.archdr, ptr %10, i32 0, i32 1
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %call.i58 = tail call ptr @skb_pull(ptr noundef nonnull %call.i, i32 noundef 5) #4
  %dest.i = getelementptr inbounds %struct.arc_hardware, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %dest.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dest.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  br i1 %cmp.i, label %if.end30.if.end16.sink.split.i_crit_edge, label %if.else.i

if.end30.if.end16.sink.split.i_crit_edge:         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.sink.split.i

if.else.i:                                        ; preds = %if.end30
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i.if.end16.i_crit_edge, label %if.then3.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.then3.i:                                       ; preds = %if.else.i
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr.i, align 64
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %21)
  %cmp8.not.i = icmp eq i8 %15, %21
  br i1 %cmp8.not.i, label %if.then3.i.if.end16.i_crit_edge, label %if.then3.i.if.end16.sink.split.i_crit_edge

if.then3.i.if.end16.sink.split.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.sink.split.i

if.then3.i.if.end16.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.end16.sink.split.i:                            ; preds = %if.then3.i.if.end16.sink.split.i_crit_edge, %if.end30.if.end16.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 8192, %if.end30.if.end16.sink.split.i_crit_edge ], [ 24576, %if.then3.i.if.end16.sink.split.i_crit_edge ]
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %22 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load12.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear13.i = and i16 %bf.load12.i, 8191
  %bf.set14.i = or i16 %bf.clear13.i, %.sink.i
  store i16 %bf.set14.i, ptr %pkt_type.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.sink.split.i, %if.then3.i.if.end16.i_crit_edge, %if.else.i.if.end16.i_crit_edge
  %23 = ptrtoint ptr %soft1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %soft1.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %sw.default.i [
    i8 -16, label %if.end16.i.type_trans.exit_crit_edge
    i8 -15, label %sw.bb18.i
  ]

if.end16.i.type_trans.exit_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %type_trans.exit

sw.bb18.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %type_trans.exit

sw.default.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %26 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %28 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_crc_errors.i, align 8
  %inc20.i = add i32 %29, 1
  store i32 %inc20.i, ptr %rx_crc_errors.i, align 8
  br label %type_trans.exit

type_trans.exit:                                  ; preds = %sw.default.i, %sw.bb18.i, %if.end16.i.type_trans.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %sw.default.i ], [ 2054, %sw.bb18.i ], [ 2048, %if.end16.i.type_trans.exit_crit_edge ]
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %retval.0.i, ptr %protocol, align 8
  %call32 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %type_trans.exit, %if.then18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @build_header(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %type, i8 noundef zeroext %daddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 5) #4
  %soft1 = getelementptr inbounds %struct.archdr, ptr %call, i32 0, i32 1
  %conv = zext i16 %type to i32
  %0 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %type, label %do.body [
    i16 2048, label %entry.sw.epilog_crit_edge
    i16 2054, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %1 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body.do.end_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %2 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %4 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_aborted_errors, align 8
  %inc7 = add i32 %5, 1
  store i32 %inc7, ptr %tx_aborted_errors, align 8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %storemerge = phi i8 [ -15, %sw.bb2 ], [ -16, %entry.sw.epilog_crit_edge ]
  %6 = ptrtoint ptr %soft1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge, ptr %soft1, align 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %call, align 2
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and8 = and i32 %13, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %dest14 = getelementptr inbounds %struct.arc_hardware, ptr %call, i32 0, i32 1
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %dest14 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %dest14, align 1
  br label %cleanup

if.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %dest14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %daddr, ptr %dest14, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 5, %if.then10 ], [ 5, %if.end12 ]
  ret i32 %retval.0
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
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %sub, i32 noundef 508) #7
  br label %if.then24

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %sub)
  %cmp23 = icmp sgt i32 %sub, 257
  br i1 %cmp23, label %if.end22.if.then24_crit_edge, label %if.else

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %if.then18, %do.body15.if.then24_crit_edge
  %length.addr.076 = phi i32 [ %sub, %if.end22.if.then24_crit_edge ], [ 508, %if.then18 ], [ 508, %do.body15.if.then24_crit_edge ]
  %offset = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %offset, align 1
  %sub25 = sub nuw nsw i32 512, %length.addr.076
  %conv = trunc i32 %sub25 to i8
  %arrayidx27 = getelementptr %struct.arc_hardware, ptr %pkt, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx27, align 1
  br label %if.end44

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
  br label %if.end44

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %sub39 = sub i32 260, %length
  %conv40 = trunc i32 %sub39 to i8
  %offset41 = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 2
  %5 = ptrtoint ptr %offset41 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv40, ptr %offset41, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.else38, %if.then30, %if.then24
  %length.addr.075 = phi i32 [ %length.addr.076, %if.then24 ], [ %sub, %if.then30 ], [ %sub, %if.else38 ]
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
  tail call void %9(ptr noundef %dev, i32 noundef %bufnum, i32 noundef %ofs.0, ptr noundef %soft, i32 noundef %length.addr.075) #4
  %dest = getelementptr inbounds %struct.arc_hardware, ptr %pkt, i32 0, i32 1
  %10 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dest, align 1
  %conv47 = zext i8 %11 to i32
  %lastload_dest = getelementptr i8, ptr %dev, i32 2580
  %12 = ptrtoint ptr %lastload_dest to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv47, ptr %lastload_dest, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !19, !20, !21, !23, !25, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_rfc1051__352_78_arcnet_rfc1051_init6, !1, !"__initcall__kmod_rfc1051__352_78_arcnet_rfc1051_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/arcnet/rfc1051.c", i32 78, i32 1}
!2 = !{ptr @__exitcall_arcnet_rfc1051_exit, !3, !"__exitcall_arcnet_rfc1051_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/arcnet/rfc1051.c", i32 79, i32 1}
!4 = !{ptr @__UNIQUE_ID_file353, !5, !"__UNIQUE_ID_file353", i1 false, i1 false}
!5 = !{!"../drivers/net/arcnet/rfc1051.c", i32 81, i32 1}
!6 = !{ptr @__UNIQUE_ID_license354, !5, !"__UNIQUE_ID_license354", i1 false, i1 false}
!7 = !{ptr @rfc1051_proto, !8, !"rfc1051_proto", i1 false, i1 false}
!8 = !{!"../drivers/net/arcnet/rfc1051.c", i32 47, i32 24}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/arcnet/rfc1051.c", i32 129, i32 2}
!11 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !10, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/arcnet/rfc1051.c", i32 177, i32 3}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/arcnet/rfc1051.c", i32 214, i32 2}
!19 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !18, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/arcnet/rfc1051.c", i32 222, i32 3}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/arcnet/rfc1051.c", i32 60, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @arcnet_rfc1051_init._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @arcnet_rfc1051_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
