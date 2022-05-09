; ModuleID = '/llk/IR_all_yes/net/ethtool/eeprom.c_pt.bc'
source_filename = "../net/ethtool/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.anon.49 = type { i16, i16 }
%struct.eeprom_req_info = type { %struct.ethnl_req_info, i32, i32, i8, i8, i8 }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_module_eeprom = type { i32, i32, i8, i8, i8, ptr }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.142 = type { ptr }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.eeprom_reply_data = type { %struct.ethnl_reply_data, i32, ptr }
%struct.ethnl_reply_data = type { ptr }

@ethnl_module_eeprom_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 31, i8 32, i16 1, i32 24, i32 12, i8 0, ptr @eeprom_parse_request, ptr @eeprom_prepare_data, ptr @eeprom_reply_size, ptr @eeprom_fill_reply, ptr @eeprom_cleanup_data }, [60 x i8] zeroinitializer }, align 32
@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_module_eeprom_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, { i8, i8, i16, { %struct.anon.49 } }, { i8, i8, i16, { %struct.anon.49 } }, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } } }>, [40 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, { i8, i8, i16, { %struct.anon.49 } }, { i8, i8, i16, { %struct.anon.49 } }, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, { i8, i8, i16, { %struct.anon.49 } } { i8 3, i8 4, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 0, i16 255 } } }, { i8, i8, i16, { %struct.anon.49 } } { i8 3, i8 1, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 1, i16 128 } } }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, { i8, i8, i16, { %struct.anon.49 } } { i8 1, i8 1, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 0, i16 127 } } } }>, [40 x i8] zeroinitializer }, align 32
@eeprom_parse_request.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"reading from lower half page is allowed for page 0 only\00", [40 x i8] zeroinitializer }, align 32
@eeprom_parse_request.__msg.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"reading cross half page boundary is illegal\00", [52 x i8] zeroinitializer }, align 32
@eeprom_parse_request.__msg.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"reading cross page boundary is illegal\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [32 x i8] c"ethnl_module_eeprom_request_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 216, i32 32 }
@___asan_gen_.6 = private unnamed_addr constant [31 x i8] c"ethnl_module_eeprom_get_policy\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 230, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 170, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 177, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.16 = private constant [24 x i8] c"../net/ethtool/eeprom.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 181, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @ethnl_module_eeprom_request_ops, ptr @ethnl_module_eeprom_get_policy, ptr @eeprom_parse_request.__msg, ptr @eeprom_parse_request.__msg.1, ptr @eeprom_parse_request.__msg.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_module_eeprom_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_module_eeprom_get_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_parse_request.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_parse_request.__msg.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_parse_request.__msg.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_parse_request(ptr nocapture noundef %req_info, ptr nocapture noundef readonly %tb, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 6
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i, align 1
  %i2c_address = getelementptr inbounds %struct.eeprom_req_info, ptr %req_info, i32 0, i32 5
  %10 = ptrtoint ptr %i2c_address to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %i2c_address, align 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i107 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i107, align 4
  %offset = getelementptr inbounds %struct.eeprom_req_info, ptr %req_info, i32 0, i32 1
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %offset, align 4
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i108 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i108, align 4
  %length = getelementptr inbounds %struct.eeprom_req_info, ptr %req_info, i32 0, i32 2
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %length, align 4
  %21 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx4, align 4
  %add.ptr.i.i109 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i109 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i109, align 1
  %page = getelementptr inbounds %struct.eeprom_req_info, ptr %req_info, i32 0, i32 3
  %25 = ptrtoint ptr %page to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp eq i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %14)
  %cmp27 = icmp ult i32 %14, 128
  br i1 %tobool17.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %cmp27, label %do.body, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = add i32 %19, %14
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @eeprom_parse_request.__msg) #5
  %tobool21.not = icmp eq ptr %extack, null
  br i1 %tobool21.not, label %do.body.cleanup_crit_edge, label %if.then22

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @eeprom_parse_request.__msg, ptr %extack, align 4
  %27 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx4, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %29 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %30 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %policy, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %add = add i32 %19, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp32 = icmp ugt i32 %add, 128
  %or.cond = select i1 %cmp27, i1 %cmp32, i1 false
  br i1 %or.cond, label %do.body35, label %if.end25.if.else_crit_edge

if.end25.if.else_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.body35:                                        ; preds = %if.end25
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @eeprom_parse_request.__msg.1) #5
  %tobool37.not = icmp eq ptr %extack, null
  br i1 %tobool37.not, label %do.body35.cleanup_crit_edge, label %if.then38

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @eeprom_parse_request.__msg.1, ptr %extack, align 4
  %32 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx1, align 4
  %bad_attr41 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %34 = ptrtoint ptr %bad_attr41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %bad_attr41, align 4
  %policy42 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %35 = ptrtoint ptr %policy42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %policy42, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end25.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %add48.pre-phi = phi i32 [ %.pre, %land.lhs.true.if.else_crit_edge ], [ %add, %if.end25.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add48.pre-phi)
  %cmp49 = icmp ugt i32 %add48.pre-phi, 256
  br i1 %cmp49, label %do.body52, label %if.end64

do.body52:                                        ; preds = %if.else
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @eeprom_parse_request.__msg.2) #5
  %tobool54.not = icmp eq ptr %extack, null
  br i1 %tobool54.not, label %do.body52.cleanup_crit_edge, label %if.then55

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then55:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @eeprom_parse_request.__msg.2, ptr %extack, align 4
  %37 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx1, align 4
  %bad_attr58 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %39 = ptrtoint ptr %bad_attr58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %bad_attr58, align 4
  %policy59 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %40 = ptrtoint ptr %policy59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %policy59, align 4
  br label %cleanup

if.end64:                                         ; preds = %if.else
  %arrayidx65 = getelementptr ptr, ptr %tb, i32 5
  %41 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %42, null
  br i1 %tobool66.not, label %if.end64.cleanup_crit_edge, label %if.then67

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i110 = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i110 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.i.i110, align 1
  %bank = getelementptr inbounds %struct.eeprom_req_info, ptr %req_info, i32 0, i32 4
  %45 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %bank, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.end64.cleanup_crit_edge, %if.then55, %do.body52.cleanup_crit_edge, %if.then38, %do.body35.cleanup_crit_edge, %if.then22, %do.body.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then22 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then38 ], [ -22, %do.body35.cleanup_crit_edge ], [ -22, %if.then55 ], [ -22, %do.body52.cleanup_crit_edge ], [ 0, %if.then67 ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_prepare_data(ptr nocapture noundef readonly %req_base, ptr nocapture noundef %reply_base, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %modinfo.i = alloca %struct.ethtool_modinfo, align 4
  %eeprom.i = alloca %struct.ethtool_eeprom, align 4
  %page_data = alloca %struct.ethtool_module_eeprom, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %page_data) #5
  %0 = getelementptr inbounds i8, ptr %page_data, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply_base, align 4
  %offset = getelementptr inbounds %struct.eeprom_req_info, ptr %req_base, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %6 = ptrtoint ptr %page_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %page_data, align 4
  %length = getelementptr inbounds %struct.eeprom_req_info, ptr %req_base, i32 0, i32 2
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %length6 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page_data, i32 0, i32 1
  %9 = ptrtoint ptr %length6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %length6, align 4
  %i2c_address = getelementptr inbounds %struct.eeprom_req_info, ptr %req_base, i32 0, i32 5
  %10 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_address, align 2
  %i2c_address7 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page_data, i32 0, i32 4
  %12 = ptrtoint ptr %i2c_address7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %i2c_address7, align 2
  %page = getelementptr inbounds %struct.eeprom_req_info, ptr %req_base, i32 0, i32 3
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %page, align 4
  %page8 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page_data, i32 0, i32 2
  %15 = ptrtoint ptr %page8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %page8, align 4
  %bank = getelementptr inbounds %struct.eeprom_req_info, ptr %req_base, i32 0, i32 4
  %16 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bank, align 1
  %bank9 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page_data, i32 0, i32 3
  %18 = ptrtoint ptr %bank9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %bank9, align 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #8
  %data = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page_data, i32 0, i32 5
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = tail call i32 @ethnl_ops_begin(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.err_free_crit_edge

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end15:                                         ; preds = %if.end
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack, align 4
  %sfp_bus.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 146
  %22 = ptrtoint ptr %sfp_bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sfp_bus.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i48, label %if.then.i47

if.then.i47:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 @sfp_get_module_eeprom_by_page(ptr noundef nonnull %23, ptr noundef nonnull %page_data, ptr noundef %21) #5
  br label %get_module_eeprom_by_page.exit

if.end.i48:                                       ; preds = %if.end15
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 44
  %24 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ethtool_ops.i, align 16
  %get_module_eeprom_by_page.i = getelementptr inbounds %struct.ethtool_ops, ptr %25, i32 0, i32 64
  %26 = ptrtoint ptr %get_module_eeprom_by_page.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_module_eeprom_by_page.i, align 4
  %tobool2.not.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i, label %if.end.i48.err_ops_crit_edge, label %if.then3.i

if.end.i48.err_ops_crit_edge:                     ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ops

if.then3.i:                                       ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i32 %27(ptr noundef %3, ptr noundef nonnull %page_data, ptr noundef %21) #5
  br label %get_module_eeprom_by_page.exit

get_module_eeprom_by_page.exit:                   ; preds = %if.then3.i, %if.then.i47
  %retval.0.i = phi i32 [ %call.i, %if.then.i47 ], [ %call5.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %get_module_eeprom_by_page.exit.err_ops_crit_edge, label %if.end18

get_module_eeprom_by_page.exit.err_ops_crit_edge: ; preds = %get_module_eeprom_by_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ops

if.end18:                                         ; preds = %get_module_eeprom_by_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  %length19 = getelementptr inbounds %struct.eeprom_reply_data, ptr %reply_base, i32 0, i32 1
  %28 = ptrtoint ptr %length19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i, ptr %length19, align 4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %data21 = getelementptr inbounds %struct.eeprom_reply_data, ptr %reply_base, i32 0, i32 2
  %31 = ptrtoint ptr %data21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %data21, align 4
  call void @ethnl_ops_complete(ptr noundef %3) #5
  br label %cleanup

err_ops:                                          ; preds = %get_module_eeprom_by_page.exit.err_ops_crit_edge, %if.end.i48.err_ops_crit_edge
  %retval.0.i67 = phi i32 [ %retval.0.i, %get_module_eeprom_by_page.exit.err_ops_crit_edge ], [ -95, %if.end.i48.err_ops_crit_edge ]
  call void @ethnl_ops_complete(ptr noundef %3) #5
  br label %err_free

err_free:                                         ; preds = %err_ops, %if.end.err_free_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end.err_free_crit_edge ], [ %retval.0.i67, %err_ops ]
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  call void @kfree(ptr noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %ret.0)
  %cmp23 = icmp eq i32 %ret.0, -95
  br i1 %cmp23, label %if.then24, label %err_free.cleanup_crit_edge

err_free.cleanup_crit_edge:                       ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then24:                                        ; preds = %err_free
  %34 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reply_base, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %modinfo.i) #5
  %36 = getelementptr inbounds i8, ptr %modinfo.i, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eeprom.i) #5
  %38 = getelementptr inbounds i8, ptr %eeprom.i, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %38, align 4
  %40 = ptrtoint ptr %modinfo.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 66, ptr %modinfo.i, align 4
  %call.i49 = call i32 @ethtool_get_module_info_call(ptr noundef %35, ptr noundef nonnull %modinfo.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp.i50 = icmp slt i32 %call.i49, 0
  br i1 %cmp.i50, label %if.then24.eeprom_fallback.exit_crit_edge, label %if.end.i52

if.then24.eeprom_fallback.exit_crit_edge:         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_fallback.exit

if.end.i52:                                       ; preds = %if.then24
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset, align 4
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length, align 4
  %45 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i51 = icmp eq i8 %46, 0
  %conv.i.i = zext i8 %46 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 7
  %add.i.i = select i1 %tobool.not.i.i51, i32 0, i32 %mul.i.i
  %offset.0.i.i = add i32 %add.i.i, %42
  %47 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i1.i = icmp eq i32 %48, 1
  br i1 %cmp.i1.i, label %land.lhs.true.i.i, label %if.end.i52.if.end10.i.i_crit_edge

if.end.i52.if.end10.i.i_crit_edge:                ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %i2c_address, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %50)
  %cmp6.i.i = icmp eq i8 %50, 81
  %add9.i.i = add i32 %offset.0.i.i, 256
  %spec.select.i.i53 = select i1 %cmp6.i.i, i32 %add9.i.i, i32 %offset.0.i.i
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %land.lhs.true.i.i, %if.end.i52.if.end10.i.i_crit_edge
  %offset.1.i.i = phi i32 [ %offset.0.i.i, %if.end.i52.if.end10.i.i_crit_edge ], [ %spec.select.i.i53, %land.lhs.true.i.i ]
  %eeprom_len.i.i = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo.i, i32 0, i32 2
  %51 = ptrtoint ptr %eeprom_len.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %eeprom_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1.i.i, i32 %52)
  %cmp11.not.i.i = icmp ult i32 %offset.1.i.i, %52
  br i1 %cmp11.not.i.i, label %if.end5.i, label %if.end10.i.i.eeprom_fallback.exit_crit_edge

if.end10.i.i.eeprom_fallback.exit_crit_edge:      ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_fallback.exit

if.end5.i:                                        ; preds = %if.end10.i.i
  %53 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 67, ptr %eeprom.i, align 4
  %len.i.i = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom.i, i32 0, i32 3
  %54 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %44, ptr %len.i.i, align 4
  %offset15.i.i = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom.i, i32 0, i32 2
  %55 = ptrtoint ptr %offset15.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %offset.1.i.i, ptr %offset15.i.i, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3264) #8
  %tobool.not.i57 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i57, label %if.end5.i.eeprom_fallback.exit_crit_edge, label %if.end8.i59

if.end5.i.eeprom_fallback.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %eeprom_fallback.exit

if.end8.i59:                                      ; preds = %if.end5.i
  %call9.i58 = call i32 @ethtool_get_module_eeprom_call(ptr noundef %35, ptr noundef nonnull %eeprom.i, ptr noundef nonnull %call9.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i58)
  %cmp10.i = icmp slt i32 %call9.i58, 0
  br i1 %cmp10.i, label %err_out.i, label %if.end12.i

if.end12.i:                                       ; preds = %if.end8.i59
  call void @__sanitizer_cov_trace_pc() #7
  %data13.i = getelementptr inbounds %struct.eeprom_reply_data, ptr %reply_base, i32 0, i32 2
  %56 = ptrtoint ptr %data13.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call9.i.i, ptr %data13.i, align 4
  %57 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i.i, align 4
  %length.i = getelementptr inbounds %struct.eeprom_reply_data, ptr %reply_base, i32 0, i32 1
  %59 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %length.i, align 4
  br label %eeprom_fallback.exit

err_out.i:                                        ; preds = %if.end8.i59
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call9.i.i) #5
  br label %eeprom_fallback.exit

eeprom_fallback.exit:                             ; preds = %err_out.i, %if.end12.i, %if.end5.i.eeprom_fallback.exit_crit_edge, %if.end10.i.i.eeprom_fallback.exit_crit_edge, %if.then24.eeprom_fallback.exit_crit_edge
  %retval.0.i60 = phi i32 [ %call9.i58, %err_out.i ], [ 0, %if.end12.i ], [ %call.i49, %if.then24.eeprom_fallback.exit_crit_edge ], [ -12, %if.end5.i.eeprom_fallback.exit_crit_edge ], [ -22, %if.end10.i.i.eeprom_fallback.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eeprom.i) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %modinfo.i) #5
  br label %cleanup

cleanup:                                          ; preds = %eeprom_fallback.exit, %err_free.cleanup_crit_edge, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i60, %eeprom_fallback.exit ], [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %err_free.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %page_data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @eeprom_reply_size(ptr nocapture noundef readonly %req_base, ptr nocapture noundef readnone %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.eeprom_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %sub.i = add i32 %1, 7
  %and.i = and i32 %sub.i, -4
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_fill_reply(ptr noundef %skb, ptr nocapture noundef readnone %req_base, ptr nocapture noundef readonly %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.eeprom_reply_data, ptr %reply_base, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %data = getelementptr inbounds %struct.eeprom_reply_data, ptr %reply_base, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef %1, ptr noundef %3) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eeprom_cleanup_data(ptr nocapture noundef readonly %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.eeprom_reply_data, ptr %reply_base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sfp_get_module_eeprom_by_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_get_module_info_call(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_get_module_eeprom_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @ethnl_module_eeprom_request_ops, !1, !"ethnl_module_eeprom_request_ops", i1 false, i1 false}
!1 = !{!"../net/ethtool/eeprom.c", i32 216, i32 32}
!2 = !{ptr @ethnl_module_eeprom_get_policy, !3, !"ethnl_module_eeprom_get_policy", i1 false, i1 false}
!3 = !{!"../net/ethtool/eeprom.c", i32 230, i32 25}
!4 = !{ptr @eeprom_parse_request.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../net/ethtool/eeprom.c", i32 170, i32 3}
!6 = !{ptr @eeprom_parse_request.__msg.1, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/eeprom.c", i32 177, i32 3}
!8 = !{ptr @eeprom_parse_request.__msg.2, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ethtool/eeprom.c", i32 181, i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
