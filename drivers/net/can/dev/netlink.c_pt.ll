; ModuleID = '/llk/IR_all_yes/drivers/net/can/dev/netlink.c_pt.bc'
source_filename = "../drivers/net/can/dev/netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.can_tdc_const = type { i32, i32, i32, i32, i32, i32 }
%struct.can_ctrlmode = type { i32, i32 }
%struct.can_berr_counter = type { i16, i16 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"can\00", [28 x i8] zeroinitializer }, align 32
@can_policy = internal constant { [18 x %struct.nla_policy], [48 x i8] } { [18 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 32, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 48, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 32, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 48, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@can_link_ops = dso_local global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 0, ptr null, ptr @can_setup, i8 1, i32 17, ptr @can_policy, ptr @can_validate, ptr @can_newlink, ptr @can_changelink, ptr @can_dellink, ptr @can_get_size, ptr @can_fill_info, ptr @can_get_xstats_size, ptr @can_fill_xstats, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@can_tdc_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@can_changelink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/can/dev/netlink.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"arbitration bitrate surpasses transceiver capabilities of %d bps\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"canfd data bitrate surpasses transceiver capabilities of %d bps\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 601, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"can_policy\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 11, i32 32 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"can_tdc_policy\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 27, i32 32 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1208, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 165, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 191, i32 20 }
@___asan_gen_.28 = private constant [33 x i8] c"../drivers/net/can/dev/netlink.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 294, i32 20 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 991, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @can_policy, ptr @can_tdc_policy, ptr @nla_parse_nested.__msg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_policy to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_tdc_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_setup(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_validate(ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr noundef %extack) #1 align 64 {
entry:
  %tb_tdc = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup71_crit_edge, label %if.end

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end60.thread, label %if.then2

if.then2:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %flags = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1536
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and5 = and i32 %3, 32
  %and6 = and i32 %and5, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7 = icmp ne i32 %and6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %and)
  %cmp = icmp eq i32 %and, 1536
  br i1 %cmp, label %if.then2.cleanup71_crit_edge, label %if.end9

if.then2.cleanup71_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end9:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10 = icmp eq i32 %and, 0
  %arrayidx12 = getelementptr ptr, ptr %data, i32 16
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx12, align 4
  %tobool13 = icmp ne ptr %7, null
  %cmp18.not = xor i1 %tobool10, %tobool13
  br i1 %cmp18.not, label %if.end20, label %if.end9.cleanup71_crit_edge

if.end9.cleanup71_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end20:                                         ; preds = %if.end9
  br i1 %tobool13, label %if.then23, label %if.end20.if.end51_crit_edge

if.end20.if.end51_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then23:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tb_tdc) #6
  %8 = call ptr @memset(ptr %tb_tdc, i32 255, i32 40)
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %tobool.not.i = icmp sgt i16 %10, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.then23
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #6
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup.thread_crit_edge, label %if.then2.i

do.body.i.cleanup.thread_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %12 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %7, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %13 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup.thread

nla_parse_nested.exit:                            ; preds = %if.then23
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %7, align 2
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb_tdc, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @can_tdc_policy, i32 noundef 31, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool26.not = icmp eq i32 %call6.i, 0
  br i1 %tobool26.not, label %if.end28, label %nla_parse_nested.exit.cleanup.thread_crit_edge

nla_parse_nested.exit.cleanup.thread_crit_edge:   ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end28:                                         ; preds = %nla_parse_nested.exit
  %arrayidx29 = getelementptr inbounds [10 x ptr], ptr %tb_tdc, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  %and32 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then31.cleanup_crit_edge, label %if.then31.cleanup.thread_crit_edge

if.then31.cleanup.thread_crit_edge:               ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end28
  %and36 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.else.cleanup.thread_crit_edge, %if.then31.cleanup.thread_crit_edge, %nla_parse_nested.exit.cleanup.thread_crit_edge, %if.then2.i, %do.body.i.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -95, %if.else.cleanup.thread_crit_edge ], [ -95, %if.then31.cleanup.thread_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup.thread_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tb_tdc) #6
  br label %cleanup71

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then31.cleanup_crit_edge
  %arrayidx41 = getelementptr inbounds [10 x ptr], ptr %tb_tdc, i32 0, i32 8
  %18 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not.not = icmp eq ptr %19, null
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tb_tdc) #6
  br i1 %tobool42.not.not, label %cleanup.cleanup71_crit_edge, label %cleanup.if.end51_crit_edge

cleanup.if.end51_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

cleanup.cleanup71_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end51:                                         ; preds = %cleanup.if.end51_crit_edge, %if.end20.if.end51_crit_edge
  br i1 %tobool7, label %if.then53, label %if.end60.thread105

if.then53:                                        ; preds = %if.end51
  %arrayidx54 = getelementptr ptr, ptr %data, i32 1
  %20 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %21, null
  br i1 %tobool55.not, label %if.then53.cleanup71_crit_edge, label %lor.lhs.false

if.then53.cleanup71_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

lor.lhs.false:                                    ; preds = %if.then53
  %arrayidx56 = getelementptr ptr, ptr %data, i32 9
  %22 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx56, align 4
  %tobool57.not = icmp eq ptr %23, null
  br i1 %tobool57.not, label %lor.lhs.false.cleanup71_crit_edge, label %if.end60

lor.lhs.false.cleanup71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end60:                                         ; preds = %lor.lhs.false
  %arrayidx61 = getelementptr ptr, ptr %data, i32 9
  %24 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq ptr %25, null
  br i1 %tobool62.not, label %if.end60.lor.lhs.false63_crit_edge, label %if.end60.if.end70_crit_edge

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.end60.lor.lhs.false63_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false63

if.end60.thread105:                               ; preds = %if.end51
  %arrayidx61106 = getelementptr ptr, ptr %data, i32 9
  %26 = ptrtoint ptr %arrayidx61106 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx61106, align 4
  %tobool62.not107 = icmp eq ptr %27, null
  br i1 %tobool62.not107, label %if.end60.thread105.lor.lhs.false63_crit_edge, label %if.end60.thread105.cleanup71_crit_edge

if.end60.thread105.cleanup71_crit_edge:           ; preds = %if.end60.thread105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end60.thread105.lor.lhs.false63_crit_edge:     ; preds = %if.end60.thread105
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false63

if.end60.thread:                                  ; preds = %if.end
  %arrayidx61100 = getelementptr ptr, ptr %data, i32 9
  %28 = ptrtoint ptr %arrayidx61100 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx61100, align 4
  %tobool62.not101 = icmp eq ptr %29, null
  br i1 %tobool62.not101, label %if.end60.thread.lor.lhs.false63_crit_edge, label %if.end60.thread.cleanup71_crit_edge

if.end60.thread.cleanup71_crit_edge:              ; preds = %if.end60.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end60.thread.lor.lhs.false63_crit_edge:        ; preds = %if.end60.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.end60.thread.lor.lhs.false63_crit_edge, %if.end60.thread105.lor.lhs.false63_crit_edge, %if.end60.lor.lhs.false63_crit_edge
  %is_can_fd.0.off098103 = phi i1 [ false, %if.end60.thread.lor.lhs.false63_crit_edge ], [ %tobool7, %if.end60.lor.lhs.false63_crit_edge ], [ false, %if.end60.thread105.lor.lhs.false63_crit_edge ]
  %arrayidx64 = getelementptr ptr, ptr %data, i32 16
  %30 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %31, null
  %brmerge = select i1 %tobool65.not, i1 true, i1 %is_can_fd.0.off098103
  br i1 %brmerge, label %lor.lhs.false63.if.end70_crit_edge, label %lor.lhs.false63.cleanup71_crit_edge

lor.lhs.false63.cleanup71_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

lor.lhs.false63.if.end70_crit_edge:               ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.end70:                                         ; preds = %lor.lhs.false63.if.end70_crit_edge, %if.end60.if.end70_crit_edge
  br label %cleanup71

cleanup71:                                        ; preds = %if.end70, %lor.lhs.false63.cleanup71_crit_edge, %if.end60.thread.cleanup71_crit_edge, %if.end60.thread105.cleanup71_crit_edge, %lor.lhs.false.cleanup71_crit_edge, %if.then53.cleanup71_crit_edge, %cleanup.cleanup71_crit_edge, %cleanup.thread, %if.end9.cleanup71_crit_edge, %if.then2.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.3 = phi i32 [ 0, %if.end70 ], [ 0, %entry.cleanup71_crit_edge ], [ -95, %lor.lhs.false.cleanup71_crit_edge ], [ -95, %if.then53.cleanup71_crit_edge ], [ -95, %lor.lhs.false63.cleanup71_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ -95, %if.end9.cleanup71_crit_edge ], [ -95, %if.then2.cleanup71_crit_edge ], [ -95, %cleanup.cleanup71_crit_edge ], [ -95, %if.end60.thread.cleanup71_crit_edge ], [ -95, %if.end60.thread105.cleanup71_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @can_newlink(ptr nocapture noundef readnone %src_net, ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %tb, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_changelink(ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr nocapture noundef readonly %data, ptr noundef %extack) #1 align 64 {
entry:
  %bt = alloca %struct.can_bittiming, align 4
  %dbt = alloca %struct.can_bittiming, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @rtnl_is_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b360 = load i1, ptr @can_changelink.__already_done, align 1
  br i1 %.b360, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !29

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_changelink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 165) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool38.not = icmp eq ptr %1, null
  br i1 %tobool38.not, label %if.end30.if.end69_crit_edge, label %if.then39

if.end30.if.end69_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then39:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bt) #6
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = call ptr @memset(ptr %bt, i32 255, i32 32)
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end42, label %if.then39.cleanup.thread_crit_edge

if.then39.cleanup.thread_crit_edge:               ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end42:                                         ; preds = %if.then39
  %bittiming_const = getelementptr i8, ptr %dev, i32 2332
  %5 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bittiming_const, align 4
  %tobool43.not = icmp eq ptr %6, null
  br i1 %tobool43.not, label %land.lhs.true, label %if.end42.if.end46_crit_edge

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end42
  %do_set_bittiming = getelementptr i8, ptr %dev, i32 2588
  %7 = ptrtoint ptr %do_set_bittiming to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %do_set_bittiming, align 4
  %tobool44.not = icmp eq ptr %8, null
  br i1 %tobool44.not, label %land.lhs.true.cleanup.thread_crit_edge, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end42.if.end46_crit_edge
  %add.ptr.i361 = getelementptr i8, ptr %1, i32 4
  %9 = call ptr @memcpy(ptr %bt, ptr %add.ptr.i361, i32 32)
  %bitrate_const = getelementptr i8, ptr %dev, i32 2424
  %10 = ptrtoint ptr %bitrate_const to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitrate_const, align 4
  %bitrate_const_cnt = getelementptr i8, ptr %dev, i32 2420
  %12 = ptrtoint ptr %bitrate_const_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bitrate_const_cnt, align 4
  %call50 = call i32 @can_get_bittiming(ptr noundef %dev, ptr noundef nonnull %bt, ptr noundef %6, ptr noundef %11, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end46.cleanup.thread_crit_edge

if.end46.cleanup.thread_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end53:                                         ; preds = %if.end46
  %bitrate_max = getelementptr i8, ptr %dev, i32 2436
  %14 = ptrtoint ptr %bitrate_max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bitrate_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool54.not = icmp eq i32 %15, 0
  br i1 %tobool54.not, label %if.end53.if.end59_crit_edge, label %land.lhs.true55

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

land.lhs.true55:                                  ; preds = %if.end53
  %16 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp = icmp ugt i32 %17, %15
  br i1 %cmp, label %if.then57, label %land.lhs.true55.if.end59_crit_edge

land.lhs.true55.if.end59_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %15) #9
  br label %cleanup.thread

if.end59:                                         ; preds = %land.lhs.true55.if.end59_crit_edge, %if.end53.if.end59_crit_edge
  %bittiming = getelementptr i8, ptr %dev, i32 2340
  %18 = call ptr @memcpy(ptr %bittiming, ptr %bt, i32 32)
  %do_set_bittiming60 = getelementptr i8, ptr %dev, i32 2588
  %19 = ptrtoint ptr %do_set_bittiming60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %do_set_bittiming60, align 4
  %tobool61.not = icmp eq ptr %20, null
  br i1 %tobool61.not, label %if.end59.cleanup_crit_edge, label %if.then62

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then62:                                        ; preds = %if.end59
  %call64 = call i32 %20(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then62.cleanup_crit_edge, label %if.then62.cleanup.thread_crit_edge

if.then62.cleanup.thread_crit_edge:               ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then62.cleanup.thread_crit_edge, %if.then57, %if.end46.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge, %if.then39.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call64, %if.then62.cleanup.thread_crit_edge ], [ %call50, %if.end46.cleanup.thread_crit_edge ], [ -95, %land.lhs.true.cleanup.thread_crit_edge ], [ -16, %if.then39.cleanup.thread_crit_edge ], [ -22, %if.then57 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bt) #6
  br label %cleanup241

cleanup:                                          ; preds = %if.then62.cleanup_crit_edge, %if.end59.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bt) #6
  br label %if.end69

if.end69:                                         ; preds = %cleanup, %if.end30.if.end69_crit_edge
  %arrayidx70 = getelementptr ptr, ptr %data, i32 5
  %21 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx70, align 4
  %tobool71.not = icmp eq ptr %22, null
  br i1 %tobool71.not, label %if.end69.if.end123_crit_edge, label %if.then72

if.end69.if.end123_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then72:                                        ; preds = %if.end69
  %flags73 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %23 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags73, align 8
  %and74 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end77, label %if.then72.cleanup241_crit_edge

if.then72.cleanup241_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.end77:                                         ; preds = %if.then72
  %add.ptr.i362 = getelementptr i8, ptr %22, i32 4
  %ctrlmode.i = getelementptr i8, ptr %dev, i32 2476
  %25 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrlmode.i, align 4
  %ctrlmode_supported.i = getelementptr i8, ptr %dev, i32 2480
  %27 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctrlmode_supported.i, align 4
  %flags81 = getelementptr i8, ptr %22, i32 8
  %29 = ptrtoint ptr %flags81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags81, align 4
  %31 = ptrtoint ptr %add.ptr.i362 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i362, align 4
  %and82 = and i32 %32, %30
  %or = or i32 %28, %26
  %neg = xor i32 %or, -1
  %and83 = and i32 %and82, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end77.cleanup241_crit_edge

if.end77.cleanup241_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.end86:                                         ; preds = %if.end77
  %neg.i = xor i32 %28, -1
  %and.i = and i32 %26, %neg.i
  %and87 = and i32 %and82, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %and90 = and i32 %and.i, -129
  %spec.select = select i1 %tobool88.not, i32 %and90, i32 %and.i
  %and92 = and i32 %spec.select, %and82
  call void @__sanitizer_cov_trace_cmp4(i32 %and92, i32 %spec.select)
  %cmp93.not = icmp eq i32 %and92, %spec.select
  br i1 %cmp93.not, label %if.end95, label %if.end86.cleanup241_crit_edge

if.end86.cleanup241_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.end95:                                         ; preds = %if.end86
  %neg97 = xor i32 %32, -1
  %and98 = and i32 %26, %neg97
  %or100 = or i32 %and98, %and82
  %33 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or100, ptr %ctrlmode.i, align 4
  %and102 = and i32 %or100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.else, label %if.end95.if.end108_crit_edge

if.end95.if.end108_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.else:                                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %data_bittiming = getelementptr i8, ptr %dev, i32 2372
  %34 = call ptr @memset(ptr %data_bittiming, i32 0, i32 32)
  %and107 = and i32 %or100, -1537
  %35 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and107, ptr %ctrlmode.i, align 4
  %tdc = getelementptr i8, ptr %dev, i32 2408
  %36 = call ptr @memset(ptr %tdc, i32 0, i32 12)
  br label %if.end108

if.end108:                                        ; preds = %if.else, %if.end95.if.end108_crit_edge
  %.sink = phi i32 [ 16, %if.else ], [ 72, %if.end95.if.end108_crit_edge ]
  %37 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %37, align 4
  %39 = ptrtoint ptr %add.ptr.i362 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i362, align 4
  %and110 = and i32 %40, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end108.if.end123_crit_edge, label %if.then112

if.end108.if.end123_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %flags81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags81, align 4
  %or114 = or i32 %42, -1537
  %43 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrlmode.i, align 4
  %and116 = and i32 %44, %or114
  store i32 %and116, ptr %ctrlmode.i, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then112, %if.end108.if.end123_crit_edge, %if.end69.if.end123_crit_edge
  %tobool189.not = phi i1 [ false, %if.then112 ], [ true, %if.end108.if.end123_crit_edge ], [ true, %if.end69.if.end123_crit_edge ]
  %arrayidx124 = getelementptr ptr, ptr %data, i32 6
  %45 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx124, align 4
  %tobool125.not = icmp eq ptr %46, null
  br i1 %tobool125.not, label %if.end123.if.end134_crit_edge, label %if.then126

if.end123.if.end134_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then126:                                       ; preds = %if.end123
  %flags127 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %47 = ptrtoint ptr %flags127 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags127, align 8
  %and128 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end131, label %if.then126.cleanup241_crit_edge

if.then126.cleanup241_crit_edge:                  ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.end131:                                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i, align 4
  %restart_ms = getelementptr i8, ptr %dev, i32 2484
  %51 = ptrtoint ptr %restart_ms to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %restart_ms, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.end131, %if.end123.if.end134_crit_edge
  %arrayidx135 = getelementptr ptr, ptr %data, i32 7
  %52 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx135, align 4
  %tobool136.not = icmp eq ptr %53, null
  br i1 %tobool136.not, label %if.end134.if.end147_crit_edge, label %if.then137

if.end134.if.end147_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then137:                                       ; preds = %if.end134
  %flags138 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %54 = ptrtoint ptr %flags138 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags138, align 8
  %and139 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.then137.cleanup241_crit_edge, label %if.end142

if.then137.cleanup241_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.end142:                                        ; preds = %if.then137
  %call143 = call i32 @can_restart_now(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end142.if.end147_crit_edge, label %if.end142.cleanup241_crit_edge

if.end142.cleanup241_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.end142.if.end147_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.end147:                                        ; preds = %if.end142.if.end147_crit_edge, %if.end134.if.end147_crit_edge
  %arrayidx148 = getelementptr ptr, ptr %data, i32 9
  %56 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx148, align 4
  %tobool149.not = icmp eq ptr %57, null
  br i1 %tobool149.not, label %if.end147.if.end210_crit_edge, label %if.then150

if.end147.if.end210_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end210

if.then150:                                       ; preds = %if.end147
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dbt) #6
  %flags151 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %58 = ptrtoint ptr %flags151 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags151, align 8
  %and152 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end155, label %if.then150.cleanup207.thread_crit_edge

if.then150.cleanup207.thread_crit_edge:           ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup207.thread

if.end155:                                        ; preds = %if.then150
  %data_bittiming_const = getelementptr i8, ptr %dev, i32 2336
  %60 = ptrtoint ptr %data_bittiming_const to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data_bittiming_const, align 4
  %tobool156.not = icmp eq ptr %61, null
  br i1 %tobool156.not, label %land.lhs.true157, label %if.end155.if.end160_crit_edge

if.end155.if.end160_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

land.lhs.true157:                                 ; preds = %if.end155
  %do_set_data_bittiming = getelementptr i8, ptr %dev, i32 2592
  %62 = ptrtoint ptr %do_set_data_bittiming to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %do_set_data_bittiming, align 4
  %tobool158.not = icmp eq ptr %63, null
  br i1 %tobool158.not, label %land.lhs.true157.cleanup207.thread_crit_edge, label %land.lhs.true157.if.end160_crit_edge

land.lhs.true157.if.end160_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

land.lhs.true157.cleanup207.thread_crit_edge:     ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup207.thread

if.end160:                                        ; preds = %land.lhs.true157.if.end160_crit_edge, %if.end155.if.end160_crit_edge
  %add.ptr.i363 = getelementptr i8, ptr %57, i32 4
  %64 = call ptr @memcpy(ptr %dbt, ptr %add.ptr.i363, i32 32)
  %data_bitrate_const = getelementptr i8, ptr %dev, i32 2428
  %65 = ptrtoint ptr %data_bitrate_const to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data_bitrate_const, align 4
  %data_bitrate_const_cnt = getelementptr i8, ptr %dev, i32 2432
  %67 = ptrtoint ptr %data_bitrate_const_cnt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_bitrate_const_cnt, align 4
  %call164 = call i32 @can_get_bittiming(ptr noundef %dev, ptr noundef nonnull %dbt, ptr noundef %61, ptr noundef %66, i32 noundef %68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.end160.cleanup207.thread_crit_edge

if.end160.cleanup207.thread_crit_edge:            ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup207.thread

if.end167:                                        ; preds = %if.end160
  %bitrate_max168 = getelementptr i8, ptr %dev, i32 2436
  %69 = ptrtoint ptr %bitrate_max168 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bitrate_max168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool169.not = icmp eq i32 %70, 0
  br i1 %tobool169.not, label %if.end167.if.end176_crit_edge, label %land.lhs.true170

if.end167.if.end176_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

land.lhs.true170:                                 ; preds = %if.end167
  %71 = ptrtoint ptr %dbt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dbt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %70)
  %cmp173 = icmp ugt i32 %72, %70
  br i1 %cmp173, label %if.then174, label %land.lhs.true170.if.end176_crit_edge

land.lhs.true170.if.end176_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

if.then174:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %70) #9
  br label %cleanup207.thread

if.end176:                                        ; preds = %land.lhs.true170.if.end176_crit_edge, %if.end167.if.end176_crit_edge
  %tdc177 = getelementptr i8, ptr %dev, i32 2408
  %73 = call ptr @memset(ptr %tdc177, i32 0, i32 12)
  %arrayidx178 = getelementptr ptr, ptr %data, i32 16
  %74 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx178, align 4
  %tobool179.not = icmp eq ptr %75, null
  br i1 %tobool179.not, label %if.else188, label %if.then180

if.then180:                                       ; preds = %if.end176
  %call182 = call fastcc i32 @can_tdc_changelink(ptr noundef %add.ptr.i, ptr noundef nonnull %75, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.then180.if.end196_crit_edge, label %if.then184

if.then180.if.end196_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196

if.then184:                                       ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #8
  %ctrlmode185 = getelementptr i8, ptr %dev, i32 2476
  %76 = ptrtoint ptr %ctrlmode185 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ctrlmode185, align 4
  %and186 = and i32 %77, -1537
  store i32 %and186, ptr %ctrlmode185, align 4
  br label %cleanup207.thread

if.else188:                                       ; preds = %if.end176
  br i1 %tobool189.not, label %if.then190, label %if.else188.if.end196_crit_edge

if.else188.if.end196_crit_edge:                   ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196

if.then190:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #8
  %tdc_const = getelementptr i8, ptr %dev, i32 2404
  %78 = ptrtoint ptr %tdc_const to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tdc_const, align 4
  %data_bittiming192 = getelementptr i8, ptr %dev, i32 2372
  %ctrlmode193 = getelementptr i8, ptr %dev, i32 2476
  %ctrlmode_supported194 = getelementptr i8, ptr %dev, i32 2480
  %80 = ptrtoint ptr %ctrlmode_supported194 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ctrlmode_supported194, align 4
  call void @can_calc_tdco(ptr noundef %tdc177, ptr noundef %79, ptr noundef %data_bittiming192, ptr noundef %ctrlmode193, i32 noundef %81) #6
  br label %if.end196

if.end196:                                        ; preds = %if.then190, %if.else188.if.end196_crit_edge, %if.then180.if.end196_crit_edge
  %data_bittiming197 = getelementptr i8, ptr %dev, i32 2372
  %82 = call ptr @memcpy(ptr %data_bittiming197, ptr %dbt, i32 32)
  %do_set_data_bittiming198 = getelementptr i8, ptr %dev, i32 2592
  %83 = ptrtoint ptr %do_set_data_bittiming198 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %do_set_data_bittiming198, align 4
  %tobool199.not = icmp eq ptr %84, null
  br i1 %tobool199.not, label %if.end196.cleanup207_crit_edge, label %if.then200

if.end196.cleanup207_crit_edge:                   ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup207

if.then200:                                       ; preds = %if.end196
  %call202 = call i32 %84(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.then200.cleanup207_crit_edge, label %if.then200.cleanup207.thread_crit_edge

if.then200.cleanup207.thread_crit_edge:           ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup207.thread

if.then200.cleanup207_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup207

cleanup207.thread:                                ; preds = %if.then200.cleanup207.thread_crit_edge, %if.then184, %if.then174, %if.end160.cleanup207.thread_crit_edge, %land.lhs.true157.cleanup207.thread_crit_edge, %if.then150.cleanup207.thread_crit_edge
  %retval.4.ph = phi i32 [ %call202, %if.then200.cleanup207.thread_crit_edge ], [ %call164, %if.end160.cleanup207.thread_crit_edge ], [ -95, %land.lhs.true157.cleanup207.thread_crit_edge ], [ -16, %if.then150.cleanup207.thread_crit_edge ], [ %call182, %if.then184 ], [ -22, %if.then174 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dbt) #6
  br label %cleanup241

cleanup207:                                       ; preds = %if.then200.cleanup207_crit_edge, %if.end196.cleanup207_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dbt) #6
  br label %if.end210

if.end210:                                        ; preds = %cleanup207, %if.end147.if.end210_crit_edge
  %arrayidx211 = getelementptr ptr, ptr %data, i32 11
  %85 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx211, align 4
  %tobool212.not = icmp eq ptr %86, null
  br i1 %tobool212.not, label %if.end210.cleanup241_crit_edge, label %if.then213

if.end210.cleanup241_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

if.then213:                                       ; preds = %if.end210
  %add.ptr.i.i364 = getelementptr i8, ptr %86, i32 4
  %87 = ptrtoint ptr %add.ptr.i.i364 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr.i.i364, align 2
  %termination_const_cnt = getelementptr i8, ptr %dev, i32 2444
  %89 = ptrtoint ptr %termination_const_cnt to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %termination_const_cnt, align 4
  %do_set_termination = getelementptr i8, ptr %dev, i32 2600
  %91 = ptrtoint ptr %do_set_termination to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %do_set_termination, align 4
  %tobool216.not = icmp eq ptr %92, null
  br i1 %tobool216.not, label %if.then213.cleanup241_crit_edge, label %for.cond.preheader

if.then213.cleanup241_crit_edge:                  ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

for.cond.preheader:                               ; preds = %if.then213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp219374.not = icmp eq i32 %90, 0
  br i1 %cmp219374.not, label %for.cond.preheader.cleanup241_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup241_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %termination_const = getelementptr i8, ptr %dev, i32 2448
  %93 = ptrtoint ptr %termination_const to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %termination_const, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0375, 1
  %exitcond.not = icmp eq i32 %inc, %90
  br i1 %exitcond.not, label %for.cond.cleanup241_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup241_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0375 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx220 = getelementptr i16, ptr %94, i32 %i.0375
  %95 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx220, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %96)
  %cmp222 = icmp eq i16 %88, %96
  br i1 %cmp222, label %if.end229, label %for.cond

if.end229:                                        ; preds = %for.body
  %call231 = call i32 %92(ptr noundef %dev, i16 noundef zeroext %88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %cleanup235, label %if.end229.cleanup241_crit_edge

if.end229.cleanup241_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup241

cleanup235:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #8
  %termination = getelementptr i8, ptr %dev, i32 2452
  %97 = ptrtoint ptr %termination to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %88, ptr %termination, align 4
  br label %cleanup241

cleanup241:                                       ; preds = %cleanup235, %if.end229.cleanup241_crit_edge, %for.cond.cleanup241_crit_edge, %for.cond.preheader.cleanup241_crit_edge, %if.then213.cleanup241_crit_edge, %if.end210.cleanup241_crit_edge, %cleanup207.thread, %if.end142.cleanup241_crit_edge, %if.then137.cleanup241_crit_edge, %if.then126.cleanup241_crit_edge, %if.end86.cleanup241_crit_edge, %if.end77.cleanup241_crit_edge, %if.then72.cleanup241_crit_edge, %cleanup.thread
  %retval.7 = phi i32 [ -16, %if.then126.cleanup241_crit_edge ], [ -22, %if.then137.cleanup241_crit_edge ], [ %call143, %if.end142.cleanup241_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %retval.4.ph, %cleanup207.thread ], [ 0, %cleanup235 ], [ 0, %if.end210.cleanup241_crit_edge ], [ -95, %if.end86.cleanup241_crit_edge ], [ -95, %if.end77.cleanup241_crit_edge ], [ -16, %if.then72.cleanup241_crit_edge ], [ %call231, %if.end229.cleanup241_crit_edge ], [ -95, %if.then213.cleanup241_crit_edge ], [ -22, %for.cond.preheader.cleanup241_crit_edge ], [ -22, %for.cond.cleanup241_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @can_dellink(ptr nocapture noundef %dev, ptr nocapture noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @can_get_size(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bittiming = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %bittiming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bittiming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 36
  %bittiming_const = getelementptr i8, ptr %dev, i32 2332
  %2 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bittiming_const, align 4
  %tobool2.not = icmp eq ptr %3, null
  %add5 = add nuw nsw i32 %spec.select, 52
  %size.1 = select i1 %tobool2.not, i32 %spec.select, i32 %add5
  %do_get_berr_counter = getelementptr i8, ptr %dev, i32 2608
  %4 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %do_get_berr_counter, align 4
  %tobool15.not = icmp eq ptr %5, null
  %size.2.v = select i1 %tobool15.not, i32 36, i32 44
  %size.2 = add nuw nsw i32 %size.1, %size.2.v
  %data_bittiming = getelementptr i8, ptr %dev, i32 2372
  %6 = ptrtoint ptr %data_bittiming to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_bittiming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool21.not = icmp eq i32 %7, 0
  %add24 = add nuw nsw i32 %size.2, 36
  %size.3 = select i1 %tobool21.not, i32 %size.2, i32 %add24
  %data_bittiming_const = getelementptr i8, ptr %dev, i32 2336
  %8 = ptrtoint ptr %data_bittiming_const to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_bittiming_const, align 4
  %tobool26.not = icmp eq ptr %9, null
  %add29 = add nuw nsw i32 %size.3, 52
  %size.4 = select i1 %tobool26.not, i32 %size.3, i32 %add29
  %termination_const = getelementptr i8, ptr %dev, i32 2448
  %10 = ptrtoint ptr %termination_const to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %termination_const, align 4
  %tobool31.not = icmp eq ptr %11, null
  br i1 %tobool31.not, label %entry.if.end37_crit_edge, label %if.then32

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add34 = add nuw nsw i32 %size.4, 8
  %termination_const_cnt = getelementptr i8, ptr %dev, i32 2444
  %12 = ptrtoint ptr %termination_const_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %termination_const_cnt, align 4
  %mul = shl i32 %13, 1
  %sub.i = add i32 %mul, 7
  %and.i = and i32 %sub.i, -4
  %add36 = add i32 %add34, %and.i
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %entry.if.end37_crit_edge
  %size.5 = phi i32 [ %add36, %if.then32 ], [ %size.4, %entry.if.end37_crit_edge ]
  %bitrate_const = getelementptr i8, ptr %dev, i32 2424
  %14 = ptrtoint ptr %bitrate_const to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitrate_const, align 4
  %tobool38.not = icmp eq ptr %15, null
  br i1 %tobool38.not, label %if.end37.if.end43_crit_edge, label %if.then39

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %bitrate_const_cnt = getelementptr i8, ptr %dev, i32 2420
  %16 = ptrtoint ptr %bitrate_const_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bitrate_const_cnt, align 4
  %mul40 = shl i32 %17, 2
  %sub.i82 = add i32 %mul40, 7
  %and.i83 = and i32 %sub.i82, -4
  %add42 = add i32 %and.i83, %size.5
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end37.if.end43_crit_edge
  %size.6 = phi i32 [ %add42, %if.then39 ], [ %size.5, %if.end37.if.end43_crit_edge ]
  %data_bitrate_const = getelementptr i8, ptr %dev, i32 2428
  %18 = ptrtoint ptr %data_bitrate_const to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data_bitrate_const, align 4
  %tobool44.not = icmp eq ptr %19, null
  br i1 %tobool44.not, label %if.end43.if.end49_crit_edge, label %if.then45

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %data_bitrate_const_cnt = getelementptr i8, ptr %dev, i32 2432
  %20 = ptrtoint ptr %data_bitrate_const_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_bitrate_const_cnt, align 4
  %mul46 = shl i32 %21, 2
  %sub.i84 = add i32 %mul46, 7
  %and.i85 = and i32 %sub.i84, -4
  %add48 = add i32 %and.i85, %size.6
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end43.if.end49_crit_edge
  %size.7 = phi i32 [ %add48, %if.then45 ], [ %size.6, %if.end43.if.end49_crit_edge ]
  %tdc_const.i = getelementptr i8, ptr %dev, i32 2404
  %22 = ptrtoint ptr %tdc_const.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tdc_const.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end49.can_tdc_get_size.exit_crit_edge, label %if.end.i

if.end49.can_tdc_get_size.exit_crit_edge:         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_tdc_get_size.exit

if.end.i:                                         ; preds = %if.end49
  %ctrlmode_supported.i = getelementptr i8, ptr %dev, i32 2480
  %24 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrlmode_supported.i, align 4
  %and.i86 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %tobool2.not.i = icmp eq i32 %and.i86, 0
  %add11.i = select i1 %tobool2.not.i, i32 20, i32 36
  %tdcf_max.i = getelementptr inbounds %struct.can_tdc_const, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %tdcf_max.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tdcf_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not.i = icmp eq i32 %27, 0
  %add18.i = add nuw nsw i32 %add11.i, 16
  %size.1.i = select i1 %tobool13.not.i, i32 %add11.i, i32 %add18.i
  %ctrlmode.i.i = getelementptr i8, ptr %dev, i32 2476
  %28 = ptrtoint ptr %ctrlmode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctrlmode.i.i, align 4
  %and.i.i = and i32 %29, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.can_tdc_get_size.exit_crit_edge, label %if.then21.i

if.end.i.can_tdc_get_size.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_tdc_get_size.exit

if.then21.i:                                      ; preds = %if.end.i
  %and22.i = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i, label %if.then21.i.if.then25.i_crit_edge

if.then21.i.if.then25.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25.i

lor.lhs.false.i:                                  ; preds = %if.then21.i
  %do_get_auto_tdcv.i = getelementptr i8, ptr %dev, i32 2612
  %30 = ptrtoint ptr %do_get_auto_tdcv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %do_get_auto_tdcv.i, align 4
  %tobool24.not.i = icmp eq ptr %31, null
  br i1 %tobool24.not.i, label %lor.lhs.false.i.if.end28.i_crit_edge, label %lor.lhs.false.i.if.then25.i_crit_edge

lor.lhs.false.i.if.then25.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25.i

lor.lhs.false.i.if.end28.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then25.i:                                      ; preds = %lor.lhs.false.i.if.then25.i_crit_edge, %if.then21.i.if.then25.i_crit_edge
  %add27.i = or i32 %size.1.i, 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %lor.lhs.false.i.if.end28.i_crit_edge
  %size.2.i = phi i32 [ %add27.i, %if.then25.i ], [ %size.1.i, %lor.lhs.false.i.if.end28.i_crit_edge ]
  %spec.select55.v.i = select i1 %tobool13.not.i, i32 8, i32 16
  %spec.select55.i = add nuw nsw i32 %size.2.i, %spec.select55.v.i
  br label %can_tdc_get_size.exit

can_tdc_get_size.exit:                            ; preds = %if.end28.i, %if.end.i.can_tdc_get_size.exit_crit_edge, %if.end49.can_tdc_get_size.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end49.can_tdc_get_size.exit_crit_edge ], [ %size.1.i, %if.end.i.can_tdc_get_size.exit_crit_edge ], [ %spec.select55.i, %if.end28.i ]
  %add52 = add i32 %size.7, 16
  %add54 = add i32 %add52, %retval.0.i
  ret i32 %add54
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_fill_info(ptr noundef %skb, ptr noundef %dev) #1 align 64 {
entry:
  %tmp.i136 = alloca i16, align 2
  %tmp.i134 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %cm = alloca %struct.can_ctrlmode, align 4
  %bec = alloca %struct.can_berr_counter, align 4
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cm) #6
  %0 = getelementptr inbounds %struct.can_ctrlmode, ptr %cm, i32 0, i32 1
  %1 = ptrtoint ptr %cm to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cm, align 4
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %2 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrlmode, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bec) #6
  %5 = ptrtoint ptr %bec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bec, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #6
  %state1 = getelementptr i8, ptr %dev, i32 2472
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state1, align 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %state, align 4
  %do_get_state = getelementptr i8, ptr %dev, i32 2604
  %9 = ptrtoint ptr %do_get_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %do_get_state, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 %10(ptr noundef %dev, ptr noundef nonnull %state) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bittiming = getelementptr i8, ptr %dev, i32 2340
  %11 = ptrtoint ptr %bittiming to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bittiming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %call6 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef %bittiming) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %bittiming_const = getelementptr i8, ptr %dev, i32 2332
  %13 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bittiming_const, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %lor.lhs.false.lor.lhs.false13_crit_edge, label %land.lhs.true9

lor.lhs.false.lor.lhs.false13_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false13

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %call11 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 48, ptr noundef nonnull %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true9.lor.lhs.false13_crit_edge, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true9.lor.lhs.false13_crit_edge:         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true9.lor.lhs.false13_crit_edge, %lor.lhs.false.lor.lhs.false13_crit_edge
  %clock = getelementptr i8, ptr %dev, i32 2440
  %call14 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef %clock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %call20 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %cm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %restart_ms = getelementptr i8, ptr %dev, i32 2484
  %18 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %restart_ms, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i134) #6
  %20 = ptrtoint ptr %tmp.i134 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i134, align 4
  %call.i135 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i134) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i134) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool24.not = icmp eq i32 %call.i135, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %do_get_berr_counter = getelementptr i8, ptr %dev, i32 2608
  %21 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %do_get_berr_counter, align 4
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %lor.lhs.false25.lor.lhs.false34_crit_edge, label %land.lhs.true27

lor.lhs.false25.lor.lhs.false34_crit_edge:        ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false34

land.lhs.true27:                                  ; preds = %lor.lhs.false25
  %call29 = call i32 %22(ptr noundef %dev, ptr noundef nonnull %bec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %land.lhs.true27.lor.lhs.false34_crit_edge

land.lhs.true27.lor.lhs.false34_crit_edge:        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false34

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %call32 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %bec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.lor.lhs.false34_crit_edge, label %land.lhs.true31.cleanup_crit_edge

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true31.lor.lhs.false34_crit_edge:        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true31.lor.lhs.false34_crit_edge, %land.lhs.true27.lor.lhs.false34_crit_edge, %lor.lhs.false25.lor.lhs.false34_crit_edge
  %data_bittiming = getelementptr i8, ptr %dev, i32 2372
  %23 = ptrtoint ptr %data_bittiming to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_bittiming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool36.not = icmp eq i32 %24, 0
  br i1 %tobool36.not, label %lor.lhs.false34.lor.lhs.false41_crit_edge, label %land.lhs.true37

lor.lhs.false34.lor.lhs.false41_crit_edge:        ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false41

land.lhs.true37:                                  ; preds = %lor.lhs.false34
  %call39 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 32, ptr noundef %data_bittiming) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true37.lor.lhs.false41_crit_edge, label %land.lhs.true37.cleanup_crit_edge

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true37.lor.lhs.false41_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %land.lhs.true37.lor.lhs.false41_crit_edge, %lor.lhs.false34.lor.lhs.false41_crit_edge
  %data_bittiming_const = getelementptr i8, ptr %dev, i32 2336
  %25 = ptrtoint ptr %data_bittiming_const to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data_bittiming_const, align 4
  %tobool42.not = icmp eq ptr %26, null
  br i1 %tobool42.not, label %lor.lhs.false41.lor.lhs.false47_crit_edge, label %land.lhs.true43

lor.lhs.false41.lor.lhs.false47_crit_edge:        ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false47

land.lhs.true43:                                  ; preds = %lor.lhs.false41
  %call45 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 48, ptr noundef nonnull %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true43.lor.lhs.false47_crit_edge, label %land.lhs.true43.cleanup_crit_edge

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true43.lor.lhs.false47_crit_edge:        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %land.lhs.true43.lor.lhs.false47_crit_edge, %lor.lhs.false41.lor.lhs.false47_crit_edge
  %termination_const = getelementptr i8, ptr %dev, i32 2448
  %27 = ptrtoint ptr %termination_const to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %termination_const, align 4
  %tobool48.not = icmp eq ptr %28, null
  br i1 %tobool48.not, label %lor.lhs.false47.lor.lhs.false56_crit_edge, label %land.lhs.true49

lor.lhs.false47.lor.lhs.false56_crit_edge:        ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false56

land.lhs.true49:                                  ; preds = %lor.lhs.false47
  %termination = getelementptr i8, ptr %dev, i32 2452
  %29 = ptrtoint ptr %termination to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %termination, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i136) #6
  %31 = ptrtoint ptr %tmp.i136 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %tmp.i136, align 2
  %call.i137 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %tmp.i136) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i136) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool51.not = icmp eq i32 %call.i137, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %land.lhs.true49.cleanup_crit_edge

land.lhs.true49.cleanup_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false52:                                  ; preds = %land.lhs.true49
  %termination_const_cnt = getelementptr i8, ptr %dev, i32 2444
  %32 = ptrtoint ptr %termination_const_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %termination_const_cnt, align 4
  %mul = shl i32 %33, 1
  %34 = ptrtoint ptr %termination_const to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %termination_const, align 4
  %call54 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef %mul, ptr noundef %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %lor.lhs.false52.lor.lhs.false56_crit_edge, label %lor.lhs.false52.cleanup_crit_edge

lor.lhs.false52.cleanup_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false52.lor.lhs.false56_crit_edge:        ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false52.lor.lhs.false56_crit_edge, %lor.lhs.false47.lor.lhs.false56_crit_edge
  %bitrate_const = getelementptr i8, ptr %dev, i32 2424
  %36 = ptrtoint ptr %bitrate_const to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bitrate_const, align 4
  %tobool57.not = icmp eq ptr %37, null
  br i1 %tobool57.not, label %lor.lhs.false56.lor.lhs.false63_crit_edge, label %land.lhs.true58

lor.lhs.false56.lor.lhs.false63_crit_edge:        ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false63

land.lhs.true58:                                  ; preds = %lor.lhs.false56
  %bitrate_const_cnt = getelementptr i8, ptr %dev, i32 2420
  %38 = ptrtoint ptr %bitrate_const_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bitrate_const_cnt, align 4
  %mul59 = shl i32 %39, 2
  %call61 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef %mul59, ptr noundef nonnull %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true58.lor.lhs.false63_crit_edge, label %land.lhs.true58.cleanup_crit_edge

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true58.lor.lhs.false63_crit_edge:        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %land.lhs.true58.lor.lhs.false63_crit_edge, %lor.lhs.false56.lor.lhs.false63_crit_edge
  %data_bitrate_const = getelementptr i8, ptr %dev, i32 2428
  %40 = ptrtoint ptr %data_bitrate_const to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data_bitrate_const, align 4
  %tobool64.not = icmp eq ptr %41, null
  br i1 %tobool64.not, label %lor.lhs.false63.lor.lhs.false70_crit_edge, label %land.lhs.true65

lor.lhs.false63.lor.lhs.false70_crit_edge:        ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false70

land.lhs.true65:                                  ; preds = %lor.lhs.false63
  %data_bitrate_const_cnt = getelementptr i8, ptr %dev, i32 2432
  %42 = ptrtoint ptr %data_bitrate_const_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_bitrate_const_cnt, align 4
  %mul66 = shl i32 %43, 2
  %call68 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef %mul66, ptr noundef nonnull %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true65.lor.lhs.false70_crit_edge, label %land.lhs.true65.cleanup_crit_edge

land.lhs.true65.cleanup_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true65.lor.lhs.false70_crit_edge:        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %land.lhs.true65.lor.lhs.false70_crit_edge, %lor.lhs.false63.lor.lhs.false70_crit_edge
  %bitrate_max = getelementptr i8, ptr %dev, i32 2436
  %call71 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef %bitrate_max) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %lor.lhs.false73, label %lor.lhs.false70.cleanup_crit_edge

lor.lhs.false70.cleanup_crit_edge:                ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false73:                                  ; preds = %lor.lhs.false70
  %call74 = call fastcc i32 @can_tdc_fill_info(ptr noundef %skb, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %lor.lhs.false76, label %lor.lhs.false73.cleanup_crit_edge

lor.lhs.false73.cleanup_crit_edge:                ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false76:                                  ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #8
  %call77 = call fastcc i32 @can_ctrlmode_ext_fill_info(ptr noundef %skb, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  %spec.select = select i1 %tobool78.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false76, %lor.lhs.false73.cleanup_crit_edge, %lor.lhs.false70.cleanup_crit_edge, %land.lhs.true65.cleanup_crit_edge, %land.lhs.true58.cleanup_crit_edge, %lor.lhs.false52.cleanup_crit_edge, %land.lhs.true49.cleanup_crit_edge, %land.lhs.true43.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false73.cleanup_crit_edge ], [ -90, %lor.lhs.false70.cleanup_crit_edge ], [ -90, %land.lhs.true65.cleanup_crit_edge ], [ -90, %land.lhs.true58.cleanup_crit_edge ], [ -90, %lor.lhs.false52.cleanup_crit_edge ], [ -90, %land.lhs.true49.cleanup_crit_edge ], [ -90, %land.lhs.true43.cleanup_crit_edge ], [ -90, %land.lhs.true37.cleanup_crit_edge ], [ -90, %land.lhs.true31.cleanup_crit_edge ], [ -90, %lor.lhs.false22.cleanup_crit_edge ], [ -90, %lor.lhs.false19.cleanup_crit_edge ], [ -90, %lor.lhs.false16.cleanup_crit_edge ], [ -90, %lor.lhs.false13.cleanup_crit_edge ], [ -90, %land.lhs.true9.cleanup_crit_edge ], [ -90, %land.lhs.true.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bec) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cm) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @can_get_xstats_size(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_fill_xstats(ptr noundef %skb, ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %can_stats = getelementptr i8, ptr %dev, i32 2308
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 24, ptr noundef %can_stats) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 0, i32 -90
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @can_netlink_register() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_link_register(ptr noundef nonnull @can_link_ops) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_netlink_unregister() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_link_unregister(ptr noundef nonnull @can_link_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_bittiming(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_restart_now(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @can_tdc_changelink(ptr nocapture noundef %priv, ptr noundef %nla, ptr noundef %extack) unnamed_addr #1 align 64 {
entry:
  %tb_tdc = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tb_tdc) #6
  %0 = call ptr @memset(ptr %tb_tdc, i32 255, i32 40)
  %tdc_const1 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 6
  %1 = ptrtoint ptr %tdc_const1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tdc_const1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup47_crit_edge, label %lor.lhs.false

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

lor.lhs.false:                                    ; preds = %entry
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %3 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %4, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup47_crit_edge, label %if.end

lor.lhs.false.cleanup47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end:                                           ; preds = %lor.lhs.false
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %5 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool.not.i = icmp sgt i16 %6, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #6
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup47_crit_edge, label %if.then2.i

do.body.i.cleanup47_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %8 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nla, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %9 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup47

nla_parse_nested.exit:                            ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %10 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb_tdc, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @can_tdc_policy, i32 noundef 31, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool3.not = icmp eq i32 %call6.i, 0
  br i1 %tobool3.not, label %if.end5, label %nla_parse_nested.exit.cleanup47_crit_edge

nla_parse_nested.exit.cleanup47_crit_edge:        ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end5:                                          ; preds = %nla_parse_nested.exit
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %tb_tdc, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end5.if.end15_crit_edge, label %if.then7

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then7:                                         ; preds = %if.end5
  %add.ptr.i.i78 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i78 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i78, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp ult i32 %15, %17
  br i1 %cmp, label %if.then7.cleanup47_crit_edge, label %cleanup

if.then7.cleanup47_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

cleanup:                                          ; preds = %if.then7
  %tdcv_max = getelementptr inbounds %struct.can_tdc_const, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %tdcv_max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tdcv_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp11 = icmp ugt i32 %15, %19
  br i1 %cmp11, label %cleanup.cleanup47_crit_edge, label %cleanup.if.end15_crit_edge

cleanup.if.end15_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

cleanup.cleanup47_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end15:                                         ; preds = %cleanup.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %tdc.sroa.0.1 = phi i32 [ %15, %cleanup.if.end15_crit_edge ], [ 0, %if.end5.if.end15_crit_edge ]
  %arrayidx16 = getelementptr inbounds [10 x ptr], ptr %tb_tdc, i32 0, i32 8
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %if.end15.if.end30_crit_edge, label %if.then18

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then18:                                        ; preds = %if.end15
  %add.ptr.i.i79 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i79, align 4
  %tdco_min = getelementptr inbounds %struct.can_tdc_const, ptr %2, i32 0, i32 2
  %24 = ptrtoint ptr %tdco_min to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tdco_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp21 = icmp ult i32 %23, %25
  br i1 %cmp21, label %if.then18.cleanup47_crit_edge, label %cleanup27

if.then18.cleanup47_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

cleanup27:                                        ; preds = %if.then18
  %tdco_max = getelementptr inbounds %struct.can_tdc_const, ptr %2, i32 0, i32 3
  %26 = ptrtoint ptr %tdco_max to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tdco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %27)
  %cmp23 = icmp ugt i32 %23, %27
  br i1 %cmp23, label %cleanup27.cleanup47_crit_edge, label %cleanup27.if.end30_crit_edge

cleanup27.if.end30_crit_edge:                     ; preds = %cleanup27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

cleanup27.cleanup47_crit_edge:                    ; preds = %cleanup27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end30:                                         ; preds = %cleanup27.if.end30_crit_edge, %if.end15.if.end30_crit_edge
  %tdc.sroa.5.1 = phi i32 [ %23, %cleanup27.if.end30_crit_edge ], [ 0, %if.end15.if.end30_crit_edge ]
  %arrayidx31 = getelementptr inbounds [10 x ptr], ptr %tb_tdc, i32 0, i32 9
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %29, null
  br i1 %tobool32.not, label %if.end30.if.end45_crit_edge, label %if.then33

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then33:                                        ; preds = %if.end30
  %add.ptr.i.i80 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i80, align 4
  %tdcf_min = getelementptr inbounds %struct.can_tdc_const, ptr %2, i32 0, i32 4
  %32 = ptrtoint ptr %tdcf_min to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tdcf_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp36 = icmp ult i32 %31, %33
  br i1 %cmp36, label %if.then33.cleanup47_crit_edge, label %cleanup42

if.then33.cleanup47_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

cleanup42:                                        ; preds = %if.then33
  %tdcf_max = getelementptr inbounds %struct.can_tdc_const, ptr %2, i32 0, i32 5
  %34 = ptrtoint ptr %tdcf_max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tdcf_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %35)
  %cmp38 = icmp ugt i32 %31, %35
  br i1 %cmp38, label %cleanup42.cleanup47_crit_edge, label %cleanup42.if.end45_crit_edge

cleanup42.if.end45_crit_edge:                     ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

cleanup42.cleanup47_crit_edge:                    ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end45:                                         ; preds = %cleanup42.if.end45_crit_edge, %if.end30.if.end45_crit_edge
  %tdc.sroa.6.1 = phi i32 [ %31, %cleanup42.if.end45_crit_edge ], [ 0, %if.end30.if.end45_crit_edge ]
  %tdc46 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 7
  %36 = ptrtoint ptr %tdc46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %tdc.sroa.0.1, ptr %tdc46, align 4
  %tdc.sroa.5.0.tdc46.sroa_idx = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %tdc.sroa.5.0.tdc46.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %tdc.sroa.5.1, ptr %tdc.sroa.5.0.tdc46.sroa_idx, align 4
  %tdc.sroa.6.0.tdc46.sroa_idx = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %tdc.sroa.6.0.tdc46.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %tdc.sroa.6.1, ptr %tdc.sroa.6.0.tdc46.sroa_idx, align 4
  br label %cleanup47

cleanup47:                                        ; preds = %if.end45, %cleanup42.cleanup47_crit_edge, %if.then33.cleanup47_crit_edge, %cleanup27.cleanup47_crit_edge, %if.then18.cleanup47_crit_edge, %cleanup.cleanup47_crit_edge, %if.then7.cleanup47_crit_edge, %nla_parse_nested.exit.cleanup47_crit_edge, %if.then2.i, %do.body.i.cleanup47_crit_edge, %lor.lhs.false.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.5 = phi i32 [ 0, %if.end45 ], [ -22, %cleanup42.cleanup47_crit_edge ], [ -22, %cleanup27.cleanup47_crit_edge ], [ -22, %cleanup.cleanup47_crit_edge ], [ -95, %lor.lhs.false.cleanup47_crit_edge ], [ -95, %entry.cleanup47_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup47_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup47_crit_edge ], [ -22, %if.then7.cleanup47_crit_edge ], [ -22, %if.then18.cleanup47_crit_edge ], [ -22, %if.then33.cleanup47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tb_tdc) #6
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_calc_tdco(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @can_tdc_fill_info(ptr noundef %skb, ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  %tmp.i113 = alloca i32, align 4
  %tmp.i111 = alloca i32, align 4
  %tmp.i109 = alloca i32, align 4
  %tmp.i107 = alloca i32, align 4
  %tmp.i105 = alloca i32, align 4
  %tmp.i103 = alloca i32, align 4
  %tmp.i101 = alloca i32, align 4
  %tmp.i99 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %tdcv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tdc1 = getelementptr i8, ptr %dev, i32 2408
  %tdc_const2 = getelementptr i8, ptr %dev, i32 2404
  %0 = ptrtoint ptr %tdc_const2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tdc_const2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end:                                           ; preds = %entry
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32784, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool4.not118 = icmp eq ptr %3, null
  %tobool4.not = select i1 %cmp.i.i, i1 true, i1 %tobool4.not118
  br i1 %tobool4.not, label %if.end.cleanup63_crit_edge, label %if.end6

if.end.cleanup63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end6:                                          ; preds = %if.end
  %ctrlmode_supported = getelementptr i8, ptr %dev, i32 2480
  %4 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrlmode_supported, align 4
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end13_crit_edge, label %land.lhs.true

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tdcv_max = getelementptr inbounds %struct.can_tdc_const, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %tdcv_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tdcv_max, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i99) #6
  %11 = ptrtoint ptr %tmp.i99 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i99, align 4
  %call.i100 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i99) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i99) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool11.not = icmp eq i32 %call.i100, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %lor.lhs.false.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %tdco_min = getelementptr inbounds %struct.can_tdc_const, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %tdco_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tdco_min, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i101) #6
  %14 = ptrtoint ptr %tmp.i101 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i101, align 4
  %call.i102 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i101) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i101) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool15.not = icmp eq i32 %call.i102, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %if.end13.if.then.i.i_crit_edge

if.end13.if.then.i.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false16:                                  ; preds = %if.end13
  %tdco_max = getelementptr inbounds %struct.can_tdc_const, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %tdco_max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tdco_max, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i103) #6
  %17 = ptrtoint ptr %tmp.i103 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i103, align 4
  %call.i104 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i103) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i103) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool18.not = icmp eq i32 %call.i104, 0
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false16.if.then.i.i_crit_edge

lor.lhs.false16.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end20:                                         ; preds = %lor.lhs.false16
  %tdcf_max = getelementptr inbounds %struct.can_tdc_const, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %tdcf_max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tdcf_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.end20.if.end30_crit_edge, label %land.lhs.true22

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true22:                                  ; preds = %if.end20
  %tdcf_min = getelementptr inbounds %struct.can_tdc_const, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %tdcf_min to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tdcf_min, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i105) #6
  %22 = ptrtoint ptr %tmp.i105 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i105, align 4
  %call.i106 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i105) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool24.not = icmp eq i32 %call.i106, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %land.lhs.true22.if.then.i.i_crit_edge

land.lhs.true22.if.then.i.i_crit_edge:            ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false25:                                  ; preds = %land.lhs.true22
  %23 = ptrtoint ptr %tdcf_max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tdcf_max, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i107) #6
  %25 = ptrtoint ptr %tmp.i107 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i107, align 4
  %call.i108 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i107) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i107) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool28.not = icmp eq i32 %call.i108, 0
  br i1 %tobool28.not, label %lor.lhs.false25.if.end30_crit_edge, label %lor.lhs.false25.if.then.i.i_crit_edge

lor.lhs.false25.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false25.if.end30_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end30:                                         ; preds = %lor.lhs.false25.if.end30_crit_edge, %if.end20.if.end30_crit_edge
  %ctrlmode.i = getelementptr i8, ptr %dev, i32 2476
  %26 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %27, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end30.if.end61_crit_edge, label %if.then32

if.end30.if.end61_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then32:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tdcv) #6
  %28 = ptrtoint ptr %tdcv to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %tdcv, align 4, !annotation !30
  %and33 = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %tdc1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tdc1, align 4
  %31 = ptrtoint ptr %tdcv to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tdcv, align 4
  br label %land.lhs.true44

if.else:                                          ; preds = %if.then32
  %do_get_auto_tdcv = getelementptr i8, ptr %dev, i32 2612
  %32 = ptrtoint ptr %do_get_auto_tdcv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %do_get_auto_tdcv, align 4
  %tobool37.not = icmp eq ptr %33, null
  br i1 %tobool37.not, label %if.else.if.end48_crit_edge, label %if.then38

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then38:                                        ; preds = %if.else
  %call40 = call i32 %33(ptr noundef %dev, ptr noundef nonnull %tdcv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %phi.cmp = icmp eq i32 %call40, 0
  br i1 %phi.cmp, label %if.then38.land.lhs.true44_crit_edge, label %if.then38.if.end48_crit_edge

if.then38.if.end48_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then38.land.lhs.true44_crit_edge:              ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.then38.land.lhs.true44_crit_edge, %if.then35
  %34 = ptrtoint ptr %tdcv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tdcv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i109) #6
  %36 = ptrtoint ptr %tmp.i109 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tmp.i109, align 4
  %call.i110 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i109) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool46.not = icmp eq i32 %call.i110, 0
  br i1 %tobool46.not, label %land.lhs.true44.if.end48_crit_edge, label %land.lhs.true44.cleanup.thread_crit_edge

land.lhs.true44.cleanup.thread_crit_edge:         ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

land.lhs.true44.if.end48_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true44.if.end48_crit_edge, %if.then38.if.end48_crit_edge, %if.else.if.end48_crit_edge
  %tdco = getelementptr i8, ptr %dev, i32 2412
  %37 = ptrtoint ptr %tdco to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tdco, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i111) #6
  %39 = ptrtoint ptr %tmp.i111 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tmp.i111, align 4
  %call.i112 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i111) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i111) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool50.not = icmp eq i32 %call.i112, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup.thread_crit_edge

if.end48.cleanup.thread_crit_edge:                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end52:                                         ; preds = %if.end48
  %40 = ptrtoint ptr %tdcf_max to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tdcf_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool54.not = icmp eq i32 %41, 0
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %land.lhs.true55

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true55:                                  ; preds = %if.end52
  %tdcf = getelementptr i8, ptr %dev, i32 2416
  %42 = ptrtoint ptr %tdcf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tdcf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i113) #6
  %44 = ptrtoint ptr %tmp.i113 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i113, align 4
  %call.i114 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i113) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i113) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool57.not = icmp eq i32 %call.i114, 0
  br i1 %tobool57.not, label %land.lhs.true55.cleanup_crit_edge, label %land.lhs.true55.cleanup.thread_crit_edge

land.lhs.true55.cleanup.thread_crit_edge:         ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.thread:                                   ; preds = %land.lhs.true55.cleanup.thread_crit_edge, %if.end48.cleanup.thread_crit_edge, %land.lhs.true44.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tdcv) #6
  br label %if.then.i.i

cleanup:                                          ; preds = %land.lhs.true55.cleanup_crit_edge, %if.end52.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tdcv) #6
  br label %if.end61

if.end61:                                         ; preds = %cleanup, %if.end30.if.end61_crit_edge
  %45 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %3, align 2
  br label %cleanup63

if.then.i.i:                                      ; preds = %cleanup.thread, %lor.lhs.false25.if.then.i.i_crit_edge, %land.lhs.true22.if.then.i.i_crit_edge, %lor.lhs.false16.if.then.i.i_crit_edge, %if.end13.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i115 = icmp ugt ptr %49, %3
  br i1 %cmp.i.i115, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !31

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %cleanup63

cleanup63:                                        ; preds = %nla_nest_cancel.exit, %if.end61, %if.end.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %if.end61 ], [ 0, %entry.cleanup63_crit_edge ], [ -90, %if.end.cleanup63_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @can_ctrlmode_ext_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %priv) unnamed_addr #1 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32785, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not12 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not12
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrlmode_supported = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 23
  %2 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrlmode_supported, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i11 = icmp ugt ptr %6, %1
  br i1 %cmp.i.i11, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !31

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %nla_nest_cancel.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %if.end4 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/dev/netlink.c", i32 601, i32 11}
!2 = !{ptr @can_link_ops, !3, !"can_link_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/can/dev/netlink.c", i32 600, i32 22}
!4 = !{ptr @can_policy, !5, !"can_policy", i1 false, i1 false}
!5 = !{!"../drivers/net/can/dev/netlink.c", i32 11, i32 32}
!6 = !{ptr @nla_parse_nested.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!8 = !{ptr @can_tdc_policy, !9, !"can_tdc_policy", i1 false, i1 false}
!9 = !{!"../drivers/net/can/dev/netlink.c", i32 27, i32 32}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/can/dev/netlink.c", i32 165, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/can/dev/netlink.c", i32 191, i32 20}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/dev/netlink.c", i32 294, i32 20}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/net/netlink.h", i32 991, i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!"auto-init"}
!31 = !{!"branch_weights", i32 1, i32 2000}
