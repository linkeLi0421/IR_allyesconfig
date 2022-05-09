; ModuleID = '/llk/IR_all_yes/net/8021q/vlan_netlink.c_pt.bc'
source_filename = "../net/8021q/vlan_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ifla_vlan_flags = type { i32, i32 }
%struct.ifla_vlan_qos_mapping = type { i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
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
%struct.vlan_dev_priv = type { i32, [8 x i32], i32, [16 x ptr], i16, i16, i16, ptr, ptr, [6 x i8], ptr, ptr, ptr }
%struct.vlan_priority_tci_mapping = type { i32, i16, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vlan\00", [27 x i8] zeroinitializer }, align 32
@vlan_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.22 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@vlan_link_ops = dso_local global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 140, ptr null, ptr @vlan_setup, i8 0, i32 5, ptr @vlan_policy, ptr @vlan_validate, ptr @vlan_newlink, ptr @vlan_changelink, ptr @unregister_vlan_dev, ptr @vlan_get_size, ptr @vlan_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @vlan_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@__UNIQUE_ID_alias343 = internal constant [27 x i8] c"8021q.alias=rtnl-link-vlan\00", section ".modinfo", align 1
@vlan_validate.__msg = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"8021q: Invalid link address\00", [36 x i8] zeroinitializer }, align 32
@vlan_validate.__msg.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"8021q: Invalid link address\00", [36 x i8] zeroinitializer }, align 32
@vlan_validate.__msg.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"8021q: VLAN properties not specified\00", [59 x i8] zeroinitializer }, align 32
@vlan_validate.__msg.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"8021q: Invalid VLAN protocol\00", [35 x i8] zeroinitializer }, align 32
@vlan_validate.__msg.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"8021q: Invalid VLAN id\00", [41 x i8] zeroinitializer }, align 32
@vlan_validate.__msg.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"8021q: Invalid VLAN flags\00", [38 x i8] zeroinitializer }, align 32
@vlan_validate.__msg.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"8021q: Invalid ingress QOS map\00", [33 x i8] zeroinitializer }, align 32
@vlan_validate.__msg.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"8021q: Invalid egress QOS map\00", [34 x i8] zeroinitializer }, align 32
@vlan_map_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.22 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@vlan_newlink.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"8021q: VLAN id not specified\00", [35 x i8] zeroinitializer }, align 32
@vlan_newlink.__msg.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"8021q: link not specified\00", [38 x i8] zeroinitializer }, align 32
@vlan_newlink.__msg.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"8021q: link does not exist\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 284, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"vlan_policy\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 18, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 48, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 52, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 58, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 68, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 76, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 86, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 93, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 98, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"vlan_map_policy\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 26, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 147, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 152, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.50 = private constant [28 x i8] c"../net/8021q/vlan_netlink.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 158, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias343, ptr @vlan_netlink_fini, ptr @.str, ptr @vlan_policy, ptr @vlan_validate.__msg, ptr @vlan_validate.__msg.1, ptr @vlan_validate.__msg.2, ptr @vlan_validate.__msg.3, ptr @vlan_validate.__msg.4, ptr @vlan_validate.__msg.5, ptr @vlan_validate.__msg.6, ptr @vlan_validate.__msg.7, ptr @vlan_map_policy, ptr @vlan_newlink.__msg, ptr @vlan_newlink.__msg.8, ptr @vlan_newlink.__msg.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_validate.__msg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_validate.__msg.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_validate.__msg.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_validate.__msg.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_validate.__msg.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_validate.__msg.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_validate.__msg.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_validate.__msg.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_map_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_newlink.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_newlink.__msg.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_newlink.__msg.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_setup(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_validate(ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr noundef writeonly %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_validate.__msg) #6
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end5.do.body10_crit_edge

if.end5.do.body10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

is_valid_ether_addr.exit:                         ; preds = %if.end5
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body10_crit_edge, label %is_valid_ether_addr.exit.if.end19_crit_edge

is_valid_ether_addr.exit.if.end19_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

is_valid_ether_addr.exit.do.body10_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

do.body10:                                        ; preds = %is_valid_ether_addr.exit.do.body10_crit_edge, %if.end5.do.body10_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_validate.__msg.1) #6
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %do.body10.cleanup.sink.split_crit_edge

do.body10.cleanup.sink.split_crit_edge:           ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %is_valid_ether_addr.exit.if.end19_crit_edge, %entry.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %data, null
  br i1 %tobool20.not, label %do.body22, label %if.end30

do.body22:                                        ; preds = %if.end19
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_validate.__msg.2) #6
  %tobool24.not = icmp eq ptr %extack, null
  br i1 %tobool24.not, label %do.body22.cleanup_crit_edge, label %do.body22.cleanup.sink.split_crit_edge

do.body22.cleanup.sink.split_crit_edge:           ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  %arrayidx31 = getelementptr ptr, ptr %data, i32 5
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %10, null
  br i1 %tobool32.not, label %if.end30.if.end44_crit_edge, label %if.then33

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then33:                                        ; preds = %if.end30
  %add.ptr.i.i145 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i145 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i145, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %do.body36 [
    i16 -32512, label %if.then33.if.end44_crit_edge
    i16 -30552, label %if.then33.if.end44_crit_edge160
  ]

if.then33.if.end44_crit_edge160:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then33.if.end44_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.body36:                                        ; preds = %if.then33
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_validate.__msg.3) #6
  %tobool38.not = icmp eq ptr %extack, null
  br i1 %tobool38.not, label %do.body36.cleanup_crit_edge, label %do.body36.cleanup.sink.split_crit_edge

do.body36.cleanup.sink.split_crit_edge:           ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.then33.if.end44_crit_edge, %if.then33.if.end44_crit_edge160, %if.end30.if.end44_crit_edge
  %arrayidx45 = getelementptr ptr, ptr %data, i32 1
  %14 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %15, null
  br i1 %tobool46.not, label %if.end44.if.end63_crit_edge, label %if.then47

if.end44.if.end63_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then47:                                        ; preds = %if.end44
  %add.ptr.i.i146 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i146 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i146, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %17)
  %cmp51 = icmp ugt i16 %17, 4094
  br i1 %cmp51, label %do.body54, label %if.then47.if.end63_crit_edge

if.then47.if.end63_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.body54:                                        ; preds = %if.then47
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_validate.__msg.4) #6
  %tobool56.not = icmp eq ptr %extack, null
  br i1 %tobool56.not, label %do.body54.cleanup_crit_edge, label %do.body54.cleanup.sink.split_crit_edge

do.body54.cleanup.sink.split_crit_edge:           ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %if.then47.if.end63_crit_edge, %if.end44.if.end63_crit_edge
  %arrayidx64 = getelementptr ptr, ptr %data, i32 2
  %18 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %19, null
  br i1 %tobool65.not, label %if.end63.if.end82_crit_edge, label %if.then66

if.end63.if.end82_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then66:                                        ; preds = %if.end63
  %add.ptr.i147 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i147 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i147, align 4
  %mask = getelementptr i8, ptr %19, i32 8
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask, align 4
  %and = and i32 %23, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %tobool71.not = icmp ult i32 %and, 32
  br i1 %tobool71.not, label %if.then66.if.end82_crit_edge, label %do.body73

if.then66.if.end82_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

do.body73:                                        ; preds = %if.then66
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_validate.__msg.5) #6
  %tobool75.not = icmp eq ptr %extack, null
  br i1 %tobool75.not, label %do.body73.cleanup_crit_edge, label %do.body73.cleanup.sink.split_crit_edge

do.body73.cleanup.sink.split_crit_edge:           ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body73.cleanup_crit_edge:                      ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82:                                         ; preds = %if.then66.if.end82_crit_edge, %if.end63.if.end82_crit_edge
  %arrayidx83 = getelementptr ptr, ptr %data, i32 4
  %24 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx83, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end82.if.end96_crit_edge, label %vlan_validate_qos_map.exit

if.end82.if.end96_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

vlan_validate_qos_map.exit:                       ; preds = %if.end82
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %conv.i.i.i.i = zext i16 %27 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  %call2.i.i.i = tail call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub.i.i.i.i, i32 noundef 1, ptr noundef nonnull @vlan_map_policy, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp85 = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp85, label %do.body88, label %vlan_validate_qos_map.exit.if.end96_crit_edge

vlan_validate_qos_map.exit.if.end96_crit_edge:    ; preds = %vlan_validate_qos_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

do.body88:                                        ; preds = %vlan_validate_qos_map.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_validate.__msg.6) #6
  %tobool90.not = icmp eq ptr %extack, null
  br i1 %tobool90.not, label %do.body88.cleanup_crit_edge, label %do.body88.cleanup.sink.split_crit_edge

do.body88.cleanup.sink.split_crit_edge:           ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body88.cleanup_crit_edge:                      ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end96:                                         ; preds = %vlan_validate_qos_map.exit.if.end96_crit_edge, %if.end82.if.end96_crit_edge
  %arrayidx97 = getelementptr ptr, ptr %data, i32 3
  %28 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx97, align 4
  %tobool.not.i148 = icmp eq ptr %29, null
  br i1 %tobool.not.i148, label %if.end96.cleanup_crit_edge, label %vlan_validate_qos_map.exit155

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

vlan_validate_qos_map.exit155:                    ; preds = %if.end96
  %add.ptr.i.i.i.i149 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 2
  %conv.i.i.i.i150 = zext i16 %31 to i32
  %sub.i.i.i.i151 = add nsw i32 %conv.i.i.i.i150, -4
  %call2.i.i.i152 = tail call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i.i149, i32 noundef %sub.i.i.i.i151, i32 noundef 1, ptr noundef nonnull @vlan_map_policy, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i152)
  %cmp99 = icmp slt i32 %call2.i.i.i152, 0
  br i1 %cmp99, label %do.body102, label %vlan_validate_qos_map.exit155.cleanup_crit_edge

vlan_validate_qos_map.exit155.cleanup_crit_edge:  ; preds = %vlan_validate_qos_map.exit155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body102:                                       ; preds = %vlan_validate_qos_map.exit155
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_validate.__msg.7) #6
  %tobool104.not = icmp eq ptr %extack, null
  br i1 %tobool104.not, label %do.body102.cleanup_crit_edge, label %do.body102.cleanup.sink.split_crit_edge

do.body102.cleanup.sink.split_crit_edge:          ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body102.cleanup_crit_edge:                     ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body102.cleanup.sink.split_crit_edge, %do.body88.cleanup.sink.split_crit_edge, %do.body73.cleanup.sink.split_crit_edge, %do.body54.cleanup.sink.split_crit_edge, %do.body36.cleanup.sink.split_crit_edge, %do.body22.cleanup.sink.split_crit_edge, %do.body10.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %vlan_validate.__msg.7.sink = phi ptr [ @vlan_validate.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @vlan_validate.__msg.1, %do.body10.cleanup.sink.split_crit_edge ], [ @vlan_validate.__msg.2, %do.body22.cleanup.sink.split_crit_edge ], [ @vlan_validate.__msg.3, %do.body36.cleanup.sink.split_crit_edge ], [ @vlan_validate.__msg.4, %do.body54.cleanup.sink.split_crit_edge ], [ @vlan_validate.__msg.5, %do.body73.cleanup.sink.split_crit_edge ], [ @vlan_validate.__msg.6, %do.body88.cleanup.sink.split_crit_edge ], [ @vlan_validate.__msg.7, %do.body102.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %do.body.cleanup.sink.split_crit_edge ], [ -99, %do.body10.cleanup.sink.split_crit_edge ], [ -22, %do.body22.cleanup.sink.split_crit_edge ], [ -93, %do.body36.cleanup.sink.split_crit_edge ], [ -34, %do.body54.cleanup.sink.split_crit_edge ], [ -22, %do.body73.cleanup.sink.split_crit_edge ], [ %call2.i.i.i, %do.body88.cleanup.sink.split_crit_edge ], [ %call2.i.i.i152, %do.body102.cleanup.sink.split_crit_edge ]
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vlan_validate.__msg.7.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body102.cleanup_crit_edge, %vlan_validate_qos_map.exit155.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %do.body88.cleanup_crit_edge, %do.body73.cleanup_crit_edge, %do.body54.cleanup_crit_edge, %do.body36.cleanup_crit_edge, %do.body22.cleanup_crit_edge, %do.body10.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -99, %do.body10.cleanup_crit_edge ], [ -22, %do.body22.cleanup_crit_edge ], [ -93, %do.body36.cleanup_crit_edge ], [ -34, %do.body54.cleanup_crit_edge ], [ -22, %do.body73.cleanup_crit_edge ], [ %call2.i.i.i, %do.body88.cleanup_crit_edge ], [ %call2.i.i.i152, %do.body102.cleanup_crit_edge ], [ 0, %vlan_validate_qos_map.exit155.cleanup_crit_edge ], [ 0, %if.end96.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_newlink(ptr noundef %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr nocapture noundef readonly %data, ptr noundef %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_newlink.__msg) #6
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vlan_newlink.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 5
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %do.body7, label %if.end15

do.body7:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_newlink.__msg.8) #6
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %if.then10

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vlan_newlink.__msg.8, ptr %extack, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end3
  %add.ptr.i.i108 = getelementptr i8, ptr %4, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i108 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i108, align 4
  %call18 = tail call ptr @__dev_get_by_index(ptr noundef %src_net, i32 noundef %7) #6
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.body21, label %if.end29

do.body21:                                        ; preds = %if.end15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_newlink.__msg.9) #6
  %tobool23.not = icmp eq ptr %extack, null
  br i1 %tobool23.not, label %do.body21.cleanup_crit_edge, label %if.then24

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vlan_newlink.__msg.9, ptr %extack, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  %arrayidx30 = getelementptr ptr, ptr %data, i32 5
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %10, null
  br i1 %tobool31.not, label %if.end29.if.end35_crit_edge, label %if.then32

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i109 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i109 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i109, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29.if.end35_crit_edge
  %proto.0 = phi i16 [ %12, %if.then32 ], [ -32512, %if.end29.if.end35_crit_edge ]
  %vlan_proto = getelementptr i8, ptr %dev, i32 2408
  %13 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %proto.0, ptr %vlan_proto, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i110 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i110, align 2
  %vlan_id = getelementptr i8, ptr %dev, i32 2410
  %18 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %vlan_id, align 2
  %real_dev38 = getelementptr i8, ptr %dev, i32 2416
  %19 = ptrtoint ptr %real_dev38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18, ptr %real_dev38, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call18, i32 0, i32 15
  %20 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %priv_flags, align 16
  %and = and i64 %21, 32
  %priv_flags39 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %22 = ptrtoint ptr %priv_flags39 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %priv_flags39, align 16
  %or = or i64 %23, %and
  store i64 %or, ptr %priv_flags39, align 16
  %flags = getelementptr i8, ptr %dev, i32 2412
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %flags, align 4
  %call42 = tail call i32 @vlan_check_real_dev(ptr noundef nonnull %call18, i16 noundef zeroext %proto.0, i16 noundef zeroext %17, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  br i1 %cmp, label %if.end35.cleanup_crit_edge, label %if.end44

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  %25 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %priv_flags, align 16
  %and.i.i = and i64 %26, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  %mtu46 = getelementptr inbounds %struct.net_device, ptr %call18, i32 0, i32 20
  %27 = ptrtoint ptr %mtu46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mtu46, align 4
  %sub = add i32 %28, -4
  %cond = select i1 %tobool.i.i.not, i32 %28, i32 %sub
  %arrayidx47 = getelementptr ptr, ptr %tb, i32 4
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %30, null
  %mtu50 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  br i1 %tobool48.not, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %mtu50 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond, ptr %mtu50, align 4
  br label %if.end56

if.else51:                                        ; preds = %if.end44
  %32 = ptrtoint ptr %mtu50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mtu50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %cond)
  %cmp53 = icmp ugt i32 %33, %cond
  br i1 %cmp53, label %if.else51.cleanup_crit_edge, label %if.else51.if.end56_crit_edge

if.else51.if.end56_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.else51.cleanup_crit_edge:                      ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.else51.if.end56_crit_edge, %if.then49
  %call57 = tail call i32 @vlan_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef %data, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  %call61 = tail call i32 @register_vlan_dev(ptr noundef %dev, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %if.then63

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vlan_dev_free_egress_priority(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end60.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.else51.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then24, %do.body21.cleanup_crit_edge, %if.then10, %do.body7.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then10 ], [ -22, %do.body7.cleanup_crit_edge ], [ -19, %if.then24 ], [ -19, %do.body21.cleanup_crit_edge ], [ %call42, %if.end35.cleanup_crit_edge ], [ -22, %if.else51.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call61, %if.then63 ], [ 0, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_changelink(ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %data, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %mask = getelementptr i8, ptr %1, i32 8
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %call3 = tail call i32 @vlan_dev_change_flags(ptr noundef %dev, i32 noundef %3, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %arrayidx7 = getelementptr ptr, ptr %data, i32 4
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end6.if.end18_crit_edge, label %if.then9

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then9:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %9)
  %cmp.i98 = icmp ugt i16 %9, 7
  br i1 %cmp.i98, label %land.lhs.true.i.preheader, label %if.then9.if.end18_crit_edge

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true.i.preheader:                        ; preds = %if.then9
  %conv.i = zext i16 %9 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i69 = getelementptr i8, ptr %7, i32 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %attr.0100 = phi ptr [ %add.ptr.i74, %for.body.land.lhs.true.i_crit_edge ], [ %add.ptr.i69, %land.lhs.true.i.preheader ]
  %rem.099 = phi i32 [ %sub1.i, %for.body.land.lhs.true.i_crit_edge ], [ %sub.i, %land.lhs.true.i.preheader ]
  %10 = ptrtoint ptr %attr.0100 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %attr.0100, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %cmp1.i = icmp ult i16 %11, 4
  %conv.i70 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.099, i32 %conv.i70)
  %cmp5.i.not = icmp ult i32 %rem.099, %conv.i70
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.if.end18_crit_edge, label %for.body

land.lhs.true.i.if.end18_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.body:                                         ; preds = %land.lhs.true.i
  %add.ptr.i71 = getelementptr i8, ptr %attr.0100, i32 4
  %to = getelementptr i8, ptr %attr.0100, i32 8
  %12 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %to, align 4
  %14 = ptrtoint ptr %add.ptr.i71 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i71, align 4
  %conv = trunc i32 %15 to i16
  tail call void @vlan_dev_set_ingress_priority(ptr noundef %dev, i32 noundef %13, i16 noundef zeroext %conv) #6
  %16 = ptrtoint ptr %attr.0100 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %attr.0100, align 2
  %conv.i72 = zext i16 %17 to i32
  %sub.i73 = add nuw nsw i32 %conv.i72, 3
  %and.i = and i32 %sub.i73, 131068
  %sub1.i = sub nsw i32 %rem.099, %and.i
  %add.ptr.i74 = getelementptr i8, ptr %attr.0100, i32 %and.i
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.body.land.lhs.true.i_crit_edge, label %for.body.if.end18_crit_edge

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.body.land.lhs.true.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

if.end18:                                         ; preds = %for.body.if.end18_crit_edge, %land.lhs.true.i.if.end18_crit_edge, %if.then9.if.end18_crit_edge, %if.end6.if.end18_crit_edge
  %arrayidx19 = getelementptr ptr, ptr %data, i32 3
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %21)
  %cmp.i78101 = icmp ugt i16 %21, 7
  br i1 %cmp.i78101, label %land.lhs.true.i80.preheader, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i80.preheader:                      ; preds = %if.then21
  %conv.i76 = zext i16 %21 to i32
  %sub.i77 = add nsw i32 %conv.i76, -4
  %add.ptr.i75 = getelementptr i8, ptr %19, i32 4
  br label %land.lhs.true.i80

land.lhs.true.i80:                                ; preds = %for.inc38.land.lhs.true.i80_crit_edge, %land.lhs.true.i80.preheader
  %attr.1103 = phi ptr [ %add.ptr.i91, %for.inc38.land.lhs.true.i80_crit_edge ], [ %add.ptr.i75, %land.lhs.true.i80.preheader ]
  %rem.1102 = phi i32 [ %sub1.i90, %for.inc38.land.lhs.true.i80_crit_edge ], [ %sub.i77, %land.lhs.true.i80.preheader ]
  %22 = ptrtoint ptr %attr.1103 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %attr.1103, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %23)
  %cmp1.i79 = icmp ult i16 %23, 4
  %conv.i81 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.1102, i32 %conv.i81)
  %cmp5.i82.not = icmp ult i32 %rem.1102, %conv.i81
  %or.cond97 = select i1 %cmp1.i79, i1 true, i1 %cmp5.i82.not
  br i1 %or.cond97, label %land.lhs.true.i80.cleanup_crit_edge, label %for.body29

land.lhs.true.i80.cleanup_crit_edge:              ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body29:                                       ; preds = %land.lhs.true.i80
  %add.ptr.i86 = getelementptr i8, ptr %attr.1103, i32 4
  %24 = ptrtoint ptr %add.ptr.i86 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i86, align 4
  %to32 = getelementptr i8, ptr %attr.1103, i32 8
  %26 = ptrtoint ptr %to32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %to32, align 4
  %conv33 = trunc i32 %27 to i16
  %call34 = tail call i32 @vlan_dev_set_egress_priority(ptr noundef %dev, i32 noundef %25, i16 noundef zeroext %conv33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.inc38, label %for.body29.cleanup_crit_edge

for.body29.cleanup_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc38:                                        ; preds = %for.body29
  %28 = ptrtoint ptr %attr.1103 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %attr.1103, align 2
  %conv.i87 = zext i16 %29 to i32
  %sub.i88 = add nuw nsw i32 %conv.i87, 3
  %and.i89 = and i32 %sub.i88, 131068
  %sub1.i90 = sub nsw i32 %rem.1102, %and.i89
  %add.ptr.i91 = getelementptr i8, ptr %attr.1103, i32 %and.i89
  %cmp.i78 = icmp sgt i32 %sub1.i90, 3
  br i1 %cmp.i78, label %for.inc38.land.lhs.true.i80_crit_edge, label %for.inc38.cleanup_crit_edge

for.inc38.cleanup_crit_edge:                      ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc38.land.lhs.true.i80_crit_edge:            ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i80

cleanup:                                          ; preds = %for.inc38.cleanup_crit_edge, %for.body29.cleanup_crit_edge, %land.lhs.true.i80.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.then21.cleanup_crit_edge ], [ %call34, %for.body29.cleanup_crit_edge ], [ 0, %land.lhs.true.i80.cleanup_crit_edge ], [ 0, %for.inc38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_vlan_dev(ptr noundef, ptr noundef) #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vlan_get_size(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %mul.i = mul i32 %1, 12
  %add.i.op = add i32 %mul.i, 36
  %add6 = select i1 %cmp.i, i32 28, i32 %add.i.op
  %nr_egress_mappings = getelementptr i8, ptr %dev, i32 2340
  %2 = ptrtoint ptr %nr_egress_mappings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_egress_mappings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i10 = icmp eq i32 %3, 0
  %mul.i11 = mul i32 %3, 12
  %add.i12 = add i32 %mul.i11, 8
  %retval.0.i13 = select i1 %cmp.i10, i32 0, i32 %add.i12
  %add8 = add i32 %retval.0.i13, %add6
  ret i32 %add8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  %tmp.i100 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %f = alloca %struct.ifla_vlan_flags, align 4
  %m = alloca %struct.ifla_vlan_qos_mapping, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f) #6
  %0 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %f, align 4, !annotation !41
  %1 = getelementptr inbounds %struct.ifla_vlan_flags, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m) #6
  %3 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %m, align 4, !annotation !41
  %4 = getelementptr inbounds %struct.ifla_vlan_qos_mapping, ptr %m, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !41
  %vlan_proto = getelementptr i8, ptr %dev, i32 2408
  %6 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vlan_proto, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #6
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vlan_id = getelementptr i8, ptr %dev, i32 2410
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i100) #6
  %11 = ptrtoint ptr %tmp.i100 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tmp.i100, align 2
  %call.i101 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i100) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool3.not = icmp eq i32 %call.i101, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr i8, ptr %dev, i32 2412
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool4.not = icmp eq i16 %13, 0
  br i1 %tobool4.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %conv = zext i16 %13 to i32
  %14 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %f, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %1, align 4
  %call8 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %f) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.if.end12_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %if.then5.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %if.end12.if.end31_crit_edge, label %if.then14

if.end12.if.end31_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then14:                                        ; preds = %if.end12
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp120 = icmp eq ptr %19, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp120
  br i1 %cmp, label %if.then14.cleanup_crit_edge, label %for.body.preheader

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.then14
  %arrayidx = getelementptr i8, ptr %dev, i32 2308
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool21.not = icmp eq i32 %21, 0
  br i1 %tobool21.not, label %for.body.preheader.for.inc_crit_edge, label %if.end23

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end23:                                         ; preds = %for.body.preheader
  %22 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %m, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %4, align 4
  %call26 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end23.for.inc_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 2312
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool21.not.1 = icmp eq i32 %25, 0
  br i1 %tobool21.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end23.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end23.1:                                       ; preds = %for.inc
  %26 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %m, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %4, align 4
  %call26.1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.1)
  %tobool27.not.1 = icmp eq i32 %call26.1, 0
  br i1 %tobool27.not.1, label %if.end23.1.for.inc.1_crit_edge, label %if.end23.1.cleanup_crit_edge

if.end23.1.cleanup_crit_edge:                     ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.1.for.inc.1_crit_edge:                   ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end23.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 2316
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool21.not.2 = icmp eq i32 %29, 0
  br i1 %tobool21.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end23.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end23.2:                                       ; preds = %for.inc.1
  %30 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %m, align 4
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %4, align 4
  %call26.2 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.2)
  %tobool27.not.2 = icmp eq i32 %call26.2, 0
  br i1 %tobool27.not.2, label %if.end23.2.for.inc.2_crit_edge, label %if.end23.2.cleanup_crit_edge

if.end23.2.cleanup_crit_edge:                     ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.2.for.inc.2_crit_edge:                   ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end23.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 2320
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool21.not.3 = icmp eq i32 %33, 0
  br i1 %tobool21.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end23.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end23.3:                                       ; preds = %for.inc.2
  %34 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %m, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %4, align 4
  %call26.3 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.3)
  %tobool27.not.3 = icmp eq i32 %call26.3, 0
  br i1 %tobool27.not.3, label %if.end23.3.for.inc.3_crit_edge, label %if.end23.3.cleanup_crit_edge

if.end23.3.cleanup_crit_edge:                     ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.3.for.inc.3_crit_edge:                   ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end23.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %dev, i32 2324
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool21.not.4 = icmp eq i32 %37, 0
  br i1 %tobool21.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end23.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.end23.4:                                       ; preds = %for.inc.3
  %38 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %m, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %4, align 4
  %call26.4 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.4)
  %tobool27.not.4 = icmp eq i32 %call26.4, 0
  br i1 %tobool27.not.4, label %if.end23.4.for.inc.4_crit_edge, label %if.end23.4.cleanup_crit_edge

if.end23.4.cleanup_crit_edge:                     ; preds = %if.end23.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.4.for.inc.4_crit_edge:                   ; preds = %if.end23.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end23.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %dev, i32 2328
  %40 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool21.not.5 = icmp eq i32 %41, 0
  br i1 %tobool21.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end23.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.end23.5:                                       ; preds = %for.inc.4
  %42 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %m, align 4
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %4, align 4
  %call26.5 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.5)
  %tobool27.not.5 = icmp eq i32 %call26.5, 0
  br i1 %tobool27.not.5, label %if.end23.5.for.inc.5_crit_edge, label %if.end23.5.cleanup_crit_edge

if.end23.5.cleanup_crit_edge:                     ; preds = %if.end23.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.5.for.inc.5_crit_edge:                   ; preds = %if.end23.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end23.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr i8, ptr %dev, i32 2332
  %44 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool21.not.6 = icmp eq i32 %45, 0
  br i1 %tobool21.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end23.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.end23.6:                                       ; preds = %for.inc.5
  %46 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6, ptr %m, align 4
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %4, align 4
  %call26.6 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.6)
  %tobool27.not.6 = icmp eq i32 %call26.6, 0
  br i1 %tobool27.not.6, label %if.end23.6.for.inc.6_crit_edge, label %if.end23.6.cleanup_crit_edge

if.end23.6.cleanup_crit_edge:                     ; preds = %if.end23.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.6.for.inc.6_crit_edge:                   ; preds = %if.end23.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end23.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr i8, ptr %dev, i32 2336
  %48 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool21.not.7 = icmp eq i32 %49, 0
  br i1 %tobool21.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end23.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.end23.7:                                       ; preds = %for.inc.6
  %50 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 7, ptr %m, align 4
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %4, align 4
  %call26.7 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.7)
  %tobool27.not.7 = icmp eq i32 %call26.7, 0
  br i1 %tobool27.not.7, label %if.end23.7.for.inc.7_crit_edge, label %if.end23.7.cleanup_crit_edge

if.end23.7.cleanup_crit_edge:                     ; preds = %if.end23.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.7.for.inc.7_crit_edge:                   ; preds = %if.end23.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end23.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %54 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i, ptr %19, align 2
  br label %if.end31

if.end31:                                         ; preds = %for.inc.7, %if.end12.if.end31_crit_edge
  %nr_egress_mappings = getelementptr i8, ptr %dev, i32 2340
  %55 = ptrtoint ptr %nr_egress_mappings to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_egress_mappings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool32.not = icmp eq i32 %56, 0
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.then33

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %if.end31
  %tail.i.i103 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %57 = ptrtoint ptr %tail.i.i103 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i103, align 8
  %call1.i104 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %cmp.i105 = icmp slt i32 %call1.i104, 0
  %cmp35121 = icmp eq ptr %58, null
  %cmp35 = select i1 %cmp.i105, i1 true, i1 %cmp35121
  br i1 %cmp35, label %if.then33.cleanup_crit_edge, label %if.then33.for.body42_crit_edge

if.then33.for.body42_crit_edge:                   ; preds = %if.then33
  br label %for.body42

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body42:                                       ; preds = %for.inc60.for.body42_crit_edge, %if.then33.for.body42_crit_edge
  %i.1118 = phi i32 [ %inc61, %for.inc60.for.body42_crit_edge ], [ 0, %if.then33.for.body42_crit_edge ]
  %arrayidx43 = getelementptr %struct.vlan_dev_priv, ptr %add.ptr.i.i, i32 0, i32 3, i32 %i.1118
  %59 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %59)
  %pm.0115 = load ptr, ptr %arrayidx43, align 4
  %tobool45.not116 = icmp eq ptr %pm.0115, null
  br i1 %tobool45.not116, label %for.body42.for.inc60_crit_edge, label %for.body42.for.body46_crit_edge

for.body42.for.body46_crit_edge:                  ; preds = %for.body42
  br label %for.body46

for.body42.for.inc60_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc60

for.body46:                                       ; preds = %for.inc58.for.body46_crit_edge, %for.body42.for.body46_crit_edge
  %pm.0117 = phi ptr [ %pm.0, %for.inc58.for.body46_crit_edge ], [ %pm.0115, %for.body42.for.body46_crit_edge ]
  %vlan_qos = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %pm.0117, i32 0, i32 1
  %60 = ptrtoint ptr %vlan_qos to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vlan_qos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool47.not = icmp eq i16 %61, 0
  br i1 %tobool47.not, label %for.body46.for.inc58_crit_edge, label %if.end49

for.body46.for.inc58_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc58

if.end49:                                         ; preds = %for.body46
  %62 = ptrtoint ptr %pm.0117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pm.0117, align 4
  %64 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %m, align 4
  %65 = lshr i16 %61, 13
  %66 = zext i16 %65 to i32
  %67 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %4, align 4
  %call54 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end49.for.inc58_crit_edge, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49.for.inc58_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc58

for.inc58:                                        ; preds = %if.end49.for.inc58_crit_edge, %for.body46.for.inc58_crit_edge
  %next = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %pm.0117, i32 0, i32 2
  %68 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %68)
  %pm.0 = load ptr, ptr %next, align 4
  %tobool45.not = icmp eq ptr %pm.0, null
  br i1 %tobool45.not, label %for.inc58.for.inc60_crit_edge, label %for.inc58.for.body46_crit_edge

for.inc58.for.body46_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46

for.inc58.for.inc60_crit_edge:                    ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc60

for.inc60:                                        ; preds = %for.inc58.for.inc60_crit_edge, %for.body42.for.inc60_crit_edge
  %inc61 = add nuw nsw i32 %i.1118, 1
  %exitcond.not = icmp eq i32 %inc61, 16
  br i1 %exitcond.not, label %for.end62, label %for.inc60.for.body42_crit_edge

for.inc60.for.body42_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42

for.end62:                                        ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %tail.i.i103 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i103, align 8
  %sub.ptr.lhs.cast.i108 = ptrtoint ptr %70 to i32
  %sub.ptr.rhs.cast.i109 = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i110 = sub i32 %sub.ptr.lhs.cast.i108, %sub.ptr.rhs.cast.i109
  %conv.i111 = trunc i32 %sub.ptr.sub.i110 to i16
  %71 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i111, ptr %58, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end62, %if.end49.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end23.7.cleanup_crit_edge, %if.end23.6.cleanup_crit_edge, %if.end23.5.cleanup_crit_edge, %if.end23.4.cleanup_crit_edge, %if.end23.3.cleanup_crit_edge, %if.end23.2.cleanup_crit_edge, %if.end23.1.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end62 ], [ 0, %if.end31.cleanup_crit_edge ], [ -90, %if.then33.cleanup_crit_edge ], [ -90, %if.then14.cleanup_crit_edge ], [ -90, %if.then5.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %if.end23.7.cleanup_crit_edge ], [ -90, %if.end23.6.cleanup_crit_edge ], [ -90, %if.end23.5.cleanup_crit_edge ], [ -90, %if.end23.4.cleanup_crit_edge ], [ -90, %if.end23.3.cleanup_crit_edge ], [ -90, %if.end23.2.cleanup_crit_edge ], [ -90, %if.end23.1.cleanup_crit_edge ], [ -90, %if.end23.cleanup_crit_edge ], [ -90, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @vlan_get_link_net(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  ret ptr %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vlan_netlink_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_link_register(ptr noundef nonnull @vlan_link_ops) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @vlan_netlink_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtnl_link_unregister(ptr noundef nonnull @vlan_link_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_check_real_dev(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_vlan_dev(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_dev_free_egress_priority(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_dev_change_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_dev_set_ingress_priority(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_dev_set_egress_priority(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/8021q/vlan_netlink.c", i32 284, i32 11}
!2 = !{ptr @vlan_link_ops, !3, !"vlan_link_ops", i1 false, i1 false}
!3 = !{!"../net/8021q/vlan_netlink.c", i32 283, i32 22}
!4 = !{ptr @__UNIQUE_ID_alias343, !5, !"__UNIQUE_ID_alias343", i1 false, i1 false}
!5 = !{!"../net/8021q/vlan_netlink.c", i32 308, i32 1}
!6 = !{ptr @vlan_policy, !7, !"vlan_policy", i1 false, i1 false}
!7 = !{!"../net/8021q/vlan_netlink.c", i32 18, i32 32}
!8 = !{ptr @vlan_validate.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/8021q/vlan_netlink.c", i32 48, i32 4}
!10 = !{ptr @vlan_validate.__msg.1, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../net/8021q/vlan_netlink.c", i32 52, i32 4}
!12 = !{ptr @vlan_validate.__msg.2, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/8021q/vlan_netlink.c", i32 58, i32 3}
!14 = !{ptr @vlan_validate.__msg.3, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../net/8021q/vlan_netlink.c", i32 68, i32 4}
!16 = !{ptr @vlan_validate.__msg.4, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../net/8021q/vlan_netlink.c", i32 76, i32 4}
!18 = !{ptr @vlan_validate.__msg.5, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../net/8021q/vlan_netlink.c", i32 86, i32 4}
!20 = !{ptr @vlan_validate.__msg.6, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../net/8021q/vlan_netlink.c", i32 93, i32 3}
!22 = !{ptr @vlan_validate.__msg.7, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../net/8021q/vlan_netlink.c", i32 98, i32 3}
!24 = !{ptr @vlan_map_policy, !25, !"vlan_map_policy", i1 false, i1 false}
!25 = !{!"../net/8021q/vlan_netlink.c", i32 26, i32 32}
!26 = !{ptr @vlan_newlink.__msg, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../net/8021q/vlan_netlink.c", i32 147, i32 3}
!28 = !{ptr @vlan_newlink.__msg.8, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../net/8021q/vlan_netlink.c", i32 152, i32 3}
!30 = !{ptr @vlan_newlink.__msg.9, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../net/8021q/vlan_netlink.c", i32 158, i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
