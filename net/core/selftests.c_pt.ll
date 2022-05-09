; ModuleID = '/llk/IR_all_yes/net/core/selftests.c_pt.bc'
source_filename = "../net/core/selftests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+net_selftest\22, \22a\22\09"
module asm "\09.weak\09__crc_net_selftest\09\09\09\09"
module asm "\09.long\09__crc_net_selftest\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_selftest:\09\09\09\09\09"
module asm "\09.asciz \09\22net_selftest\22\09\09\09\09\09"
module asm "__kstrtabns_net_selftest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+net_selftest_get_count\22, \22a\22\09"
module asm "\09.weak\09__crc_net_selftest_get_count\09\09\09\09"
module asm "\09.long\09__crc_net_selftest_get_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_selftest_get_count:\09\09\09\09\09"
module asm "\09.asciz \09\22net_selftest_get_count\22\09\09\09\09\09"
module asm "__kstrtabns_net_selftest_get_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+net_selftest_get_strings\22, \22a\22\09"
module asm "\09.weak\09__crc_net_selftest_get_strings\09\09\09\09"
module asm "\09.long\09__crc_net_selftest_get_strings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_selftest_get_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22net_selftest_get_strings\22\09\09\09\09\09"
module asm "__kstrtabns_net_selftest_get_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.net_test = type { [32 x i8], ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_packet_attrs = type { ptr, ptr, i32, i32, i8, i16, i16, i32, i32, i32, i8, i16 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.186, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
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
%union.anon.186 = type { ptr }
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
%struct.net_test_priv = type { ptr, %struct.packet_type, %struct.completion, i32, i32, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.netsfhdr = type <{ i32, i64, i8 }>
%struct.anon.156 = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@net_test_next_id = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Only offline tests are supported\0A\00", [62 x i8] zeroinitializer }, align 32
@net_selftests = internal constant { [7 x %struct.net_test], [36 x i8] } { [7 x %struct.net_test] [%struct.net_test { [32 x i8] c"Carrier                       \00\00", ptr @net_test_netif_carrier }, %struct.net_test { [32 x i8] c"PHY dev is present            \00\00", ptr @net_test_phy_phydev }, %struct.net_test { [32 x i8] c"PHY internal loopback, enable \00\00", ptr @net_test_phy_loopback_enable }, %struct.net_test { [32 x i8] c"PHY internal loopback, UDP    \00\00", ptr @net_test_phy_loopback_udp }, %struct.net_test { [32 x i8] c"PHY internal loopback, MTU    \00\00", ptr @net_test_phy_loopback_udp_mtu }, %struct.net_test { [32 x i8] c"PHY internal loopback, TCP    \00\00", ptr @net_test_phy_loopback_tcp }, %struct.net_test { [32 x i8] c"PHY internal loopback, disable\00\00", ptr @net_test_phy_loopback_disable }], [36 x i8] zeroinitializer }, align 32
@__kstrtab_net_selftest = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_selftest = external dso_local constant [0 x i8], align 1
@__ksymtab_net_selftest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_selftest to i32), ptr @__kstrtab_net_selftest, ptr @__kstrtabns_net_selftest }, section "___ksymtab_gpl+net_selftest", align 4
@__kstrtab_net_selftest_get_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_selftest_get_count = external dso_local constant [0 x i8], align 1
@__ksymtab_net_selftest_get_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_selftest_get_count to i32), ptr @__kstrtab_net_selftest_get_count, ptr @__kstrtabns_net_selftest_get_count }, section "___ksymtab_gpl+net_selftest_get_count", align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%2d. %s\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_net_selftest_get_strings = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_selftest_get_strings = external dso_local constant [0 x i8], align 1
@__ksymtab_net_selftest_get_strings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_selftest_get_strings to i32), ptr @__kstrtab_net_selftest_get_strings, ptr @__kstrtabns_net_selftest_get_strings }, section "___ksymtab_gpl+net_selftest_get_strings", align 4
@__UNIQUE_ID_file604 = internal constant [34 x i8] c"selftests.file=net/core/selftests\00", section ".modinfo", align 1
@__UNIQUE_ID_license605 = internal constant [25 x i8] c"selftests.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author606 = internal constant [58 x i8] c"selftests.author=Oleksij Rempel <o.rempel@pengutronix.de>\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"net_test_next_id\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 47, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 378, i32 20 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"net_selftests\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 342, i32 3 }
@___asan_gen_.18 = private constant [24 x i8] c"../net/core/selftests.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 404, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 87, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author606, ptr @__UNIQUE_ID_file604, ptr @__UNIQUE_ID_license605, ptr @__ksymtab_net_selftest, ptr @__ksymtab_net_selftest_get_count, ptr @__ksymtab_net_selftest_get_strings, ptr @net_test_next_id, ptr @.str, ptr @net_selftests, ptr @.str.1, ptr @init_completion.__key, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_test_next_id to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_selftests to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @net_selftest(ptr noundef %ndev, ptr nocapture noundef %etest, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %attr.i35 = alloca %struct.net_packet_attrs, align 4
  %attr.i31 = alloca %struct.net_packet_attrs, align 4
  %attr.i = alloca %struct.net_packet_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %buf, i32 0, i32 56)
  store i8 0, ptr @net_test_next_id, align 1
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %etest, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %for.body.preheader, label %if.then

for.body.preheader:                               ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  %cond.i = select i1 %tobool.not.i.i, i32 0, i32 -67
  %conv = sext i32 %cond.i to i64
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %buf, align 8
  br i1 %tobool.not.i.i, label %for.body.preheader.for.inc_crit_edge, label %if.then9

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str) #14
  br label %cleanup.sink.split

if.then9:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or11 = or i32 %8, 2
  store i32 %or11, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.preheader.for.inc_crit_edge
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %9 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i = icmp eq ptr %10, null
  %conv.1 = select i1 %tobool.not.i, i64 -95, i64 0
  %arrayidx4.1 = getelementptr i64, ptr %buf, i32 1
  %11 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv.1, ptr %arrayidx4.1, align 8
  %12 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i29 = icmp eq ptr %12, null
  br i1 %tobool.not.i29, label %net_test_phy_loopback_enable.exit.thread, label %net_test_phy_loopback_enable.exit

net_test_phy_loopback_enable.exit.thread:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.246 = getelementptr i64, ptr %buf, i32 2
  %13 = ptrtoint ptr %arrayidx4.246 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -95, ptr %arrayidx4.246, align 8
  br label %for.inc.2

net_test_phy_loopback_enable.exit:                ; preds = %for.inc
  %call.i = tail call i32 @phy_loopback(ptr noundef nonnull %12, i1 noundef zeroext true) #11
  %conv.2 = sext i32 %call.i to i64
  %arrayidx4.2 = getelementptr i64, ptr %buf, i32 2
  %14 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.2, ptr %arrayidx4.2, align 8
  %15 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.then9.2 [
    i32 0, label %net_test_phy_loopback_enable.exit.for.inc.2_crit_edge
    i32 -95, label %net_test_phy_loopback_enable.exit.for.inc.2_crit_edge50
  ]

net_test_phy_loopback_enable.exit.for.inc.2_crit_edge50: ; preds = %net_test_phy_loopback_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

net_test_phy_loopback_enable.exit.for.inc.2_crit_edge: ; preds = %net_test_phy_loopback_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then9.2:                                       ; preds = %net_test_phy_loopback_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or11.2 = or i32 %17, 2
  store i32 %or11.2, ptr %flags, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then9.2, %net_test_phy_loopback_enable.exit.for.inc.2_crit_edge, %net_test_phy_loopback_enable.exit.for.inc.2_crit_edge50, %net_test_phy_loopback_enable.exit.thread
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %attr.i) #11
  %18 = call ptr @memset(ptr %attr.i, i32 0, i32 40)
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr.i, align 64
  %dst.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr.i, i32 0, i32 1
  %21 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %dst.i, align 4
  %call.i30 = call fastcc i32 @__net_test_loopback(ptr noundef %ndev, ptr noundef nonnull %attr.i) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %attr.i) #11
  %conv.3 = sext i32 %call.i30 to i64
  %arrayidx4.3 = getelementptr i64, ptr %buf, i32 3
  %22 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv.3, ptr %arrayidx4.3, align 8
  %23 = zext i32 %call.i30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call.i30, label %if.then9.3 [
    i32 0, label %for.inc.2.for.inc.3_crit_edge
    i32 -95, label %for.inc.2.for.inc.3_crit_edge51
  ]

for.inc.2.for.inc.3_crit_edge51:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then9.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or11.3 = or i32 %25, 2
  store i32 %or11.3, ptr %flags, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then9.3, %for.inc.2.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge51
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %attr.i31) #11
  %26 = call ptr @memset(ptr %attr.i31, i32 0, i32 40)
  %27 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr.i, align 64
  %dst.i33 = getelementptr inbounds %struct.net_packet_attrs, ptr %attr.i31, i32 0, i32 1
  %29 = ptrtoint ptr %dst.i33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dst.i33, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %30 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mtu.i, align 4
  %max_size.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr.i31, i32 0, i32 9
  %32 = ptrtoint ptr %max_size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_size.i, align 4
  %call.i34 = call fastcc i32 @__net_test_loopback(ptr noundef %ndev, ptr noundef nonnull %attr.i31) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %attr.i31) #11
  %conv.4 = sext i32 %call.i34 to i64
  %arrayidx4.4 = getelementptr i64, ptr %buf, i32 4
  %33 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv.4, ptr %arrayidx4.4, align 8
  %34 = zext i32 %call.i34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call.i34, label %if.then9.4 [
    i32 0, label %for.inc.3.for.inc.4_crit_edge
    i32 -95, label %for.inc.3.for.inc.4_crit_edge52
  ]

for.inc.3.for.inc.4_crit_edge52:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.then9.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %or11.4 = or i32 %36, 2
  store i32 %or11.4, ptr %flags, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then9.4, %for.inc.3.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %attr.i35) #11
  %37 = call ptr @memset(ptr %attr.i35, i32 0, i32 40)
  %38 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr.i, align 64
  %dst.i37 = getelementptr inbounds %struct.net_packet_attrs, ptr %attr.i35, i32 0, i32 1
  %40 = ptrtoint ptr %dst.i37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %dst.i37, align 4
  %tcp.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr.i35, i32 0, i32 4
  %41 = ptrtoint ptr %tcp.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %tcp.i, align 4
  %call.i38 = call fastcc i32 @__net_test_loopback(ptr noundef %ndev, ptr noundef nonnull %attr.i35) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %attr.i35) #11
  %conv.5 = sext i32 %call.i38 to i64
  %arrayidx4.5 = getelementptr i64, ptr %buf, i32 5
  %42 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv.5, ptr %arrayidx4.5, align 8
  %43 = zext i32 %call.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call.i38, label %if.then9.5 [
    i32 0, label %for.inc.4.for.inc.5_crit_edge
    i32 -95, label %for.inc.4.for.inc.5_crit_edge53
  ]

for.inc.4.for.inc.5_crit_edge53:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.then9.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %or11.5 = or i32 %45, 2
  store i32 %or11.5, ptr %flags, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then9.5, %for.inc.4.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge53
  %46 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i40 = icmp eq ptr %47, null
  br i1 %tobool.not.i40, label %net_test_phy_loopback_disable.exit.thread, label %net_test_phy_loopback_disable.exit

net_test_phy_loopback_disable.exit.thread:        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.649 = getelementptr i64, ptr %buf, i32 6
  %48 = ptrtoint ptr %arrayidx4.649 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 -95, ptr %arrayidx4.649, align 8
  br label %cleanup

net_test_phy_loopback_disable.exit:               ; preds = %for.inc.5
  %call.i41 = tail call i32 @phy_loopback(ptr noundef nonnull %47, i1 noundef zeroext false) #11
  %conv.6 = sext i32 %call.i41 to i64
  %arrayidx4.6 = getelementptr i64, ptr %buf, i32 6
  %49 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv.6, ptr %arrayidx4.6, align 8
  %50 = zext i32 %call.i41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call.i41, label %net_test_phy_loopback_disable.exit.cleanup.sink.split_crit_edge [
    i32 0, label %net_test_phy_loopback_disable.exit.cleanup_crit_edge
    i32 -95, label %net_test_phy_loopback_disable.exit.cleanup_crit_edge54
  ]

net_test_phy_loopback_disable.exit.cleanup_crit_edge54: ; preds = %net_test_phy_loopback_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

net_test_phy_loopback_disable.exit.cleanup_crit_edge: ; preds = %net_test_phy_loopback_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

net_test_phy_loopback_disable.exit.cleanup.sink.split_crit_edge: ; preds = %net_test_phy_loopback_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %net_test_phy_loopback_disable.exit.cleanup.sink.split_crit_edge, %if.then
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %or11.6 = or i32 %52, 2
  store i32 %or11.6, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %net_test_phy_loopback_disable.exit.cleanup_crit_edge, %net_test_phy_loopback_disable.exit.cleanup_crit_edge54, %net_test_phy_loopback_disable.exit.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @net_selftest_get_count() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @net_selftest_get_strings(ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull @net_selftests)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %call1.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 1))
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %call1.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 3, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 2))
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %call1.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.2, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 4, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 3))
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %call1.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.3, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 5, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 4))
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %call1.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.4, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 6, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 5))
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %call1.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.5, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 7, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 6))
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @net_test_netif_carrier(ptr noundef %ndev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %cond = select i1 %tobool.not.i, i32 0, i32 -67
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @net_test_phy_phydev(ptr nocapture noundef readonly %ndev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  %cond = select i1 %tobool.not, i32 -95, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_test_phy_loopback_enable(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @phy_loopback(ptr noundef nonnull %1, i1 noundef zeroext true) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_test_phy_loopback_udp(ptr noundef %ndev) #0 align 64 {
entry:
  %attr = alloca %struct.net_packet_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 0, i32 40)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %1 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %dst, align 4
  %call = call fastcc i32 @__net_test_loopback(ptr noundef %ndev, ptr noundef nonnull %attr)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %attr) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_test_phy_loopback_udp_mtu(ptr noundef %ndev) #0 align 64 {
entry:
  %attr = alloca %struct.net_packet_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 0, i32 40)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %1 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %dst, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %max_size = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 9
  %6 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %max_size, align 4
  %call = call fastcc i32 @__net_test_loopback(ptr noundef %ndev, ptr noundef nonnull %attr)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %attr) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_test_phy_loopback_tcp(ptr noundef %ndev) #0 align 64 {
entry:
  %attr = alloca %struct.net_packet_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 0, i32 40)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %1 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %dst, align 4
  %tcp = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %tcp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %tcp, align 4
  %call = call fastcc i32 @__net_test_loopback(ptr noundef %ndev, ptr noundef nonnull %attr)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %attr) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_test_phy_loopback_disable(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @phy_loopback(ptr noundef nonnull %1, i1 noundef zeroext false) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_loopback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__net_test_loopback(ptr noundef %ndev, ptr noundef %attr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup26

if.end:                                           ; preds = %entry
  %ok = getelementptr inbounds %struct.net_test_priv, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ok, align 4
  %comp = getelementptr inbounds %struct.net_test_priv, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.net_test_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #11
  %pt = getelementptr inbounds %struct.net_test_priv, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pt to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2048, ptr %pt, align 4
  %func = getelementptr inbounds %struct.net_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @net_test_loopback_validate, ptr %func, align 8
  %dev = getelementptr inbounds %struct.net_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ndev, ptr %dev, align 8
  %af_packet_priv = getelementptr inbounds %struct.net_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %af_packet_priv, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %attr, ptr %call7.i.i, align 8
  tail call void @dev_add_pack(ptr noundef %pt) #11
  %size1.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 8
  %8 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size1.i, align 4
  %tcp.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 4
  %10 = ptrtoint ptr %tcp.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tcp.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %size.0.v.i = select i1 %tobool.not.i, i32 55, i32 67
  %size.0.i = add i32 %size.0.v.i, %9
  %max_size.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 9
  %12 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %size.0.i)
  %cmp.i = icmp sgt i32 %13, %size.0.i
  %or.cond.i = select i1 %tobool4.not.i, i1 %cmp.i, i1 false
  %size.1.i = select i1 %or.cond.i, i32 %13, i32 %size.0.i
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef %size.1.i, i32 noundef 2592) #11
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end.cleanup_crit_edge, label %if.end11.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11.i:                                       ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #11
  %call12.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 14) #11
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %20 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %23 = trunc i32 %22 to i16
  %conv1.i.i = add i16 %conv.i.i, %23
  %24 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv1.i.i, ptr %network_header.i.i.i, align 4
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #11
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %29 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i234.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i235.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i236.i = sub i32 %sub.ptr.lhs.cast.i.i234.i, %sub.ptr.rhs.cast.i.i235.i
  %conv.i.i237.i = trunc i32 %sub.ptr.sub.i.i236.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %31 = trunc i32 %26 to i16
  %conv1.i238.i = add i16 %conv.i.i237.i, %31
  %32 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv1.i238.i, ptr %transport_header.i.i.i, align 2
  %33 = ptrtoint ptr %tcp.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tcp.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool16.not.i = icmp eq i8 %34, 0
  br i1 %tobool16.not.i, label %if.else19.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #11
  br label %if.end21.i

if.else19.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else19.i, %if.then17.i
  %uhdr.0.i = phi ptr [ null, %if.then17.i ], [ %call20.i, %if.else19.i ]
  %thdr.0.i = phi ptr [ %call18.i, %if.then17.i ], [ null, %if.else19.i ]
  %35 = call ptr @memset(ptr %call12.i, i32 0, i32 6)
  %36 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %attr, align 4
  %tobool22.not.i = icmp eq ptr %37, null
  br i1 %tobool22.not.i, label %if.end21.i.if.end26.i_crit_edge, label %if.then23.i

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call12.i, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %h_source.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ethhdr, ptr %call12.i, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %add.ptr1.i.i, align 2
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end21.i.if.end26.i_crit_edge
  %dst.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 1
  %44 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dst.i, align 4
  %tobool27.not.i = icmp eq ptr %45, null
  br i1 %tobool27.not.i, label %if.end26.i.if.end32.i_crit_edge, label %if.then28.i

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %48 = ptrtoint ptr %call12.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %call12.i, align 4
  %add.ptr.i239.i = getelementptr i8, ptr %45, i32 4
  %49 = ptrtoint ptr %add.ptr.i239.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i239.i, align 2
  %add.ptr1.i240.i = getelementptr i8, ptr %call12.i, i32 4
  %51 = ptrtoint ptr %add.ptr1.i240.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %add.ptr1.i240.i, align 2
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end32.i_crit_edge
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call12.i, i32 0, i32 2
  %52 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 2048, ptr %h_proto.i, align 1
  %53 = ptrtoint ptr %tcp.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tcp.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool34.not.i = icmp eq i8 %54, 0
  %sport37.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 5
  %55 = ptrtoint ptr %sport37.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sport37.i, align 2
  br i1 %tobool34.not.i, label %if.else36.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %thdr.0.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %thdr.0.i, align 4
  %dport.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 6
  %58 = ptrtoint ptr %dport.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %dport.i, align 4
  %dest.i = getelementptr inbounds %struct.tcphdr, ptr %thdr.0.i, i32 0, i32 1
  %60 = ptrtoint ptr %dest.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %dest.i, align 2
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %thdr.0.i, i32 0, i32 4
  %61 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %bf.clear.i = and i16 %bf.load.i, 4095
  %bf.set.i = or i16 %bf.clear.i, 20480
  store i16 %bf.set.i, ptr %doff.i, align 4
  %check.i = getelementptr inbounds %struct.tcphdr, ptr %thdr.0.i, i32 0, i32 6
  %62 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %check.i, align 4
  br label %if.end52.i

if.else36.i:                                      ; preds = %if.end32.i
  %63 = ptrtoint ptr %uhdr.0.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %56, ptr %uhdr.0.i, align 2
  %dport39.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 6
  %64 = ptrtoint ptr %dport39.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %dport39.i, align 4
  %dest40.i = getelementptr inbounds %struct.udphdr, ptr %uhdr.0.i, i32 0, i32 1
  %66 = ptrtoint ptr %dest40.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %dest40.i, align 2
  %67 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size1.i, align 4
  %69 = trunc i32 %68 to i16
  %conv.i = add i16 %69, 21
  %len43.i = getelementptr inbounds %struct.udphdr, ptr %uhdr.0.i, i32 0, i32 2
  %70 = ptrtoint ptr %len43.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i, ptr %len43.i, align 2
  %71 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool45.not.i = icmp eq i32 %72, 0
  br i1 %tobool45.not.i, label %if.else36.i.if.end50.i_crit_edge, label %if.then46.i

if.else36.i.if.end50.i_crit_edge:                 ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

if.then46.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #13
  %73 = trunc i32 %72 to i16
  %conv48.i = add i16 %73, -34
  %74 = ptrtoint ptr %len43.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv48.i, ptr %len43.i, align 2
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then46.i, %if.else36.i.if.end50.i_crit_edge
  %check51.i = getelementptr inbounds %struct.udphdr, ptr %uhdr.0.i, i32 0, i32 3
  %75 = ptrtoint ptr %check51.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %check51.i, align 2
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end50.i, %if.then35.i
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %call13.i, i32 0, i32 5
  %76 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 32, ptr %ttl.i, align 4
  %77 = ptrtoint ptr %call13.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 69, ptr %call13.i, align 4
  %78 = ptrtoint ptr %tcp.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %tcp.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool60.not.i = icmp eq i8 %79, 0
  %spec.select.i = select i1 %tobool60.not.i, i8 17, i8 6
  %80 = getelementptr inbounds %struct.iphdr, ptr %call13.i, i32 0, i32 6
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %spec.select.i, ptr %80, align 1
  %82 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size1.i, align 4
  %84 = ptrtoint ptr %tcp.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tcp.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool68.not.i = icmp eq i8 %85, 0
  %iplen.0.v.i = select i1 %tobool68.not.i, i32 41, i32 53
  %iplen.0.i = add i32 %iplen.0.v.i, %83
  %86 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool75.not.i = icmp eq i32 %87, 0
  %sub78.i = add i32 %87, 65522
  %iplen.1.i = select i1 %tobool75.not.i, i32 %iplen.0.i, i32 %sub78.i
  %conv80.i = trunc i32 %iplen.1.i to i16
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %call13.i, i32 0, i32 2
  %88 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv80.i, ptr %tot_len.i, align 2
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %call13.i, i32 0, i32 4
  %89 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %frag_off.i, align 2
  %ip_src.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 2
  %90 = ptrtoint ptr %ip_src.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ip_src.i, align 4
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %call13.i, i32 0, i32 8
  %92 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %saddr.i, align 4
  %ip_dst.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 3
  %93 = ptrtoint ptr %ip_dst.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ip_dst.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %call13.i, i32 0, i32 9
  %95 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %daddr.i, align 4
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %call13.i, i32 0, i32 1
  %96 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %tos.i, align 1
  %id.i = getelementptr inbounds %struct.iphdr, ptr %call13.i, i32 0, i32 3
  %97 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %id.i, align 4
  tail call void @ip_send_check(ptr noundef %call13.i) #11
  %call81.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 13) #11
  %98 = ptrtoint ptr %call81.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 0, ptr %call81.i, align 1
  %magic.i = getelementptr inbounds %struct.netsfhdr, ptr %call81.i, i32 0, i32 1
  %99 = ptrtoint ptr %magic.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 -2401039830642401619, ptr %magic.i, align 1
  %100 = load i8, ptr @net_test_next_id, align 1
  %id82.i = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 10
  %101 = ptrtoint ptr %id82.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %id82.i, align 4
  %inc.i = add i8 %100, 1
  store i8 %inc.i, ptr @net_test_next_id, align 1
  %id83.i = getelementptr inbounds %struct.netsfhdr, ptr %call81.i, i32 0, i32 2
  %102 = ptrtoint ptr %id83.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %100, ptr %id83.i, align 1
  %103 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool85.not.i = icmp eq i32 %104, 0
  br i1 %tobool85.not.i, label %if.end52.i.if.end89.i_crit_edge, label %if.then86.i

if.end52.i.if.end89.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.then86.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  %call88.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %104) #11
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then86.i, %if.end52.i.if.end89.i_crit_edge
  %105 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool91.not.i = icmp eq i32 %106, 0
  br i1 %tobool91.not.i, label %if.end89.i.if.end102.i_crit_edge, label %land.lhs.true92.i

if.end89.i.if.end102.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102.i

land.lhs.true92.i:                                ; preds = %if.end89.i
  %107 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp95.i = icmp ugt i32 %106, %108
  br i1 %cmp95.i, label %if.then97.i, label %land.lhs.true92.i.if.end102.i_crit_edge

land.lhs.true92.i.if.end102.i_crit_edge:          ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102.i

if.then97.i:                                      ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub100.i = sub i32 %106, %108
  %call101.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub100.i) #11
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then97.i, %land.lhs.true92.i.if.end102.i_crit_edge, %if.end89.i.if.end102.i_crit_edge
  %109 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 5
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %109, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %111 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load103.i = load i16, ptr %ip_summed.i, align 8
  %bf.set105.i = or i16 %bf.load103.i, 1536
  store i16 %bf.set105.i, ptr %ip_summed.i, align 8
  %112 = ptrtoint ptr %tcp.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %tcp.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool107.not.i = icmp eq i8 %113, 0
  br i1 %tobool107.not.i, label %if.else118.i, label %if.then108.i

if.then108.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len.i, align 4
  %116 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %saddr.i, align 4
  %118 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %daddr.i, align 4
  %add.i.i.i.i = add i32 %115, 6
  %120 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %119, i32 %117, i32 %add.i.i.i.i) #16, !srcloc !34
  %121 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %120) #16, !srcloc !35
  %neg.i.i.i.i = xor i32 %121, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %neg.i = xor i16 %conv.i.i.i.i, -1
  %check115.i = getelementptr inbounds %struct.tcphdr, ptr %thdr.0.i, i32 0, i32 6
  %122 = ptrtoint ptr %check115.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %neg.i, ptr %check115.i, align 4
  %123 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %transport_header.i.i.i, align 2
  %125 = ptrtoint ptr %109 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %109, align 8
  %csum_offset.i = getelementptr inbounds %struct.anon.156, ptr %109, i32 0, i32 1
  %126 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 16, ptr %csum_offset.i, align 2
  br label %if.end8

if.else118.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %saddr.i, align 4
  %129 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %daddr.i, align 4
  tail call void @udp4_hwcsum(ptr noundef nonnull %call.i.i, i32 noundef %128, i32 noundef %130) #11
  br label %if.end8

if.end8:                                          ; preds = %if.else118.i, %if.then108.i
  %protocol122.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %131 = ptrtoint ptr %protocol122.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 2048, ptr %protocol122.i, align 8
  %132 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %bf.load123.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear124.i = and i16 %bf.load123.i, 8191
  store i16 %bf.clear124.i, ptr %ip_summed.i, align 8
  %133 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %ndev, ptr %133, align 8
  %queue_mapping = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 11
  %135 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %queue_mapping, align 2
  %call.i = tail call i32 @__dev_direct_xmit(ptr noundef nonnull %call.i.i, i16 noundef zeroext %136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i)
  %cmp.i.i = icmp slt i32 %call.i, 15
  br i1 %cmp.i.i, label %dev_direct_xmit.exit, label %if.else.thread

if.else.thread:                                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  br label %cleanup

dev_direct_xmit.exit:                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %dev_direct_xmit.exit.cleanup_crit_edge, label %if.else

dev_direct_xmit.exit.cleanup_crit_edge:           ; preds = %dev_direct_xmit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %dev_direct_xmit.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.not = icmp eq i32 %call.i, 0
  br i1 %cmp11.not, label %if.end14, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %timeout = getelementptr inbounds %struct.net_packet_attrs, ptr %attr, i32 0, i32 7
  %137 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool15.not = icmp eq i32 %138, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 20, ptr %timeout, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  %140 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %timeout, align 4
  %call22 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef %141) #11
  %142 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool24.not = icmp eq i32 %143, 0
  %cond = select i1 %tobool24.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.else.cleanup_crit_edge, %dev_direct_xmit.exit.cleanup_crit_edge, %if.else.thread, %if.end.cleanup_crit_edge
  %ret.0 = phi i32 [ %call.i, %dev_direct_xmit.exit.cleanup_crit_edge ], [ %cond, %if.end19 ], [ -101, %if.else.cleanup_crit_edge ], [ -101, %if.else.thread ], [ -12, %if.end.cleanup_crit_edge ]
  tail call void @dev_remove_pack(ptr noundef %pt) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup, %entry.cleanup26_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ -12, %entry.cleanup26_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_test_loopback_validate(ptr noundef %skb, ptr nocapture noundef readnone %ndev, ptr nocapture noundef readonly %pt, ptr nocapture noundef readnone %orig_ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %af_packet_priv = getelementptr inbounds %struct.packet_type, ptr %pt, i32 0, i32 8
  %0 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %af_packet_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dst3 = getelementptr inbounds %struct.net_packet_attrs, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dst3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst3, align 4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %8 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_unshare.exit_crit_edge, label %skb_cloned.exit.i

entry.skb_unshare.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_unshare.exit

skb_cloned.exit.i:                                ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %12, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.skb_unshare.exit_crit_edge, label %if.then6.i

skb_cloned.exit.i.skb_unshare.exit_crit_edge:     ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_unshare.exit

if.then6.i:                                       ; preds = %skb_cloned.exit.i
  %call7.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #11
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_unshare.exit.thread, label %skb_unshare.exit.thread124, !prof !36

skb_unshare.exit.thread124:                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %if.end

skb_unshare.exit.thread:                          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %out

skb_unshare.exit:                                 ; preds = %skb_cloned.exit.i.skb_unshare.exit_crit_edge, %entry.skb_unshare.exit_crit_edge
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_unshare.exit.out_crit_edge, label %skb_unshare.exit.if.end_crit_edge

skb_unshare.exit.if.end_crit_edge:                ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

skb_unshare.exit.out_crit_edge:                   ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %skb_unshare.exit.if.end_crit_edge, %skb_unshare.exit.thread124
  %skb.addr.0.i127 = phi ptr [ %call7.i, %skb_unshare.exit.thread124 ], [ %skb, %skb_unshare.exit.if.end_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i127, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %if.end.if.end7_crit_edge, label %cond.true.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

cond.true.i:                                      ; preds = %if.end
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i127, i32 noundef %14) #11
  %tobool.not.i.i108 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i108, label %cond.true.i.out_crit_edge, label %cond.true.i.if.end7_crit_edge

cond.true.i.if.end7_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

cond.true.i.out_crit_edge:                        ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %cond.true.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i127, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  %sub.i = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 33
  br i1 %cmp, label %if.end7.out_crit_edge, label %if.end10

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end10:                                         ; preds = %if.end7
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i127, i32 0, i32 18
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i127, i32 0, i32 15, i32 0, i32 21
  %21 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %22 to i32
  %add.ptr.i = getelementptr i8, ptr %20, i32 %conv.i
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %7, align 4
  %xor.i.i = xor i32 %26, %24
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 4
  %29 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %30, %28
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then13.if.end17_crit_edge, label %if.then13.out_crit_edge

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %if.then13.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %5, null
  br i1 %tobool18.not, label %if.end17.if.end24_crit_edge, label %if.then19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %31 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %h_source, align 4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %5, align 4
  %xor.i.i109 = xor i32 %34, %32
  %add.ptr.i.i110 = getelementptr i8, ptr %h_source, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i110 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i110, align 2
  %add.ptr1.i.i111 = getelementptr i8, ptr %5, i32 4
  %37 = ptrtoint ptr %add.ptr1.i.i111 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr1.i.i111, align 2
  %xor37.i.i112 = xor i16 %38, %36
  %xor3.i.i113 = zext i16 %xor37.i.i112 to i32
  %or.i.i114 = or i32 %xor.i.i109, %xor3.i.i113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i114)
  %cmp.i.i115 = icmp eq i32 %or.i.i114, 0
  br i1 %cmp.i.i115, label %if.then19.if.end24_crit_edge, label %if.then19.out_crit_edge

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i127, i32 0, i32 15, i32 0, i32 20
  %39 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %40 to i32
  %add.ptr.i.i116 = getelementptr i8, ptr %20, i32 %conv.i.i
  %double_vlan = getelementptr inbounds %struct.net_test_priv, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %double_vlan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %double_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool26.not = icmp eq i32 %42, 0
  %spec.select.idx = select i1 %tobool26.not, i32 0, i32 4
  %spec.select = getelementptr i8, ptr %add.ptr.i.i116, i32 %spec.select.idx
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %tcp = getelementptr inbounds %struct.net_packet_attrs, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %tcp to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tcp, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool31.not = icmp eq i8 %46, 0
  %protocol47 = getelementptr inbounds %struct.iphdr, ptr %spec.select, i32 0, i32 6
  %47 = ptrtoint ptr %protocol47 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %protocol47, align 1
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %48)
  %cmp33.not = icmp eq i8 %48, 6
  br i1 %cmp33.not, label %if.end36, label %if.then32.out_crit_edge

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end36:                                         ; preds = %if.then32
  %49 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load = load i8, ptr %spec.select, align 4
  %bf.clear = shl i8 %bf.load, 2
  %50 = and i8 %bf.clear, 60
  %mul = zext i8 %50 to i32
  %add.ptr38 = getelementptr i8, ptr %spec.select, i32 %mul
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr38, i32 0, i32 1
  %51 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %dest, align 2
  %dport = getelementptr inbounds %struct.net_packet_attrs, ptr %44, i32 0, i32 6
  %53 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %dport, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp42.not = icmp eq i16 %52, %54
  br i1 %cmp42.not, label %if.end45, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr46 = getelementptr i8, ptr %add.ptr38, i32 20
  br label %if.end68

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %48)
  %cmp49.not = icmp eq i8 %48, 17
  br i1 %cmp49.not, label %if.end52, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end52:                                         ; preds = %if.else
  %55 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load53 = load i8, ptr %spec.select, align 4
  %bf.clear54 = shl i8 %bf.load53, 2
  %56 = and i8 %bf.clear54, 60
  %mul56 = zext i8 %56 to i32
  %add.ptr57 = getelementptr i8, ptr %spec.select, i32 %mul56
  %dest58 = getelementptr inbounds %struct.udphdr, ptr %add.ptr57, i32 0, i32 1
  %57 = ptrtoint ptr %dest58 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %dest58, align 2
  %dport61 = getelementptr inbounds %struct.net_packet_attrs, ptr %44, i32 0, i32 6
  %59 = ptrtoint ptr %dport61 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %dport61, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %60)
  %cmp63.not = icmp eq i16 %58, %60
  br i1 %cmp63.not, label %if.end66, label %if.end52.out_crit_edge

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end66:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr67 = getelementptr i8, ptr %add.ptr57, i32 8
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %if.end45
  %shdr.0 = phi ptr [ %add.ptr46, %if.end45 ], [ %add.ptr67, %if.end66 ]
  %magic = getelementptr inbounds %struct.netsfhdr, ptr %shdr.0, i32 0, i32 1
  %61 = ptrtoint ptr %magic to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %magic, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401039830642401619, i64 %62)
  %cmp69.not = icmp eq i64 %62, -2401039830642401619
  br i1 %cmp69.not, label %if.end72, label %if.end68.out_crit_edge

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end72:                                         ; preds = %if.end68
  %id = getelementptr inbounds %struct.net_packet_attrs, ptr %44, i32 0, i32 10
  %63 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %id, align 4
  %id75 = getelementptr inbounds %struct.netsfhdr, ptr %shdr.0, i32 0, i32 2
  %65 = ptrtoint ptr %id75 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %id75, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp77.not = icmp eq i8 %64, %66
  br i1 %cmp77.not, label %if.end80, label %if.end72.out_crit_edge

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %ok = getelementptr inbounds %struct.net_test_priv, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %ok, align 4
  %comp = getelementptr inbounds %struct.net_test_priv, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %comp) #11
  br label %out

out:                                              ; preds = %if.end80, %if.end72.out_crit_edge, %if.end68.out_crit_edge, %if.end52.out_crit_edge, %if.else.out_crit_edge, %if.end36.out_crit_edge, %if.then32.out_crit_edge, %if.then19.out_crit_edge, %if.then13.out_crit_edge, %if.end7.out_crit_edge, %cond.true.i.out_crit_edge, %skb_unshare.exit.out_crit_edge, %skb_unshare.exit.thread
  %skb.addr.0.i123 = phi ptr [ null, %skb_unshare.exit.thread ], [ %skb.addr.0.i127, %if.end72.out_crit_edge ], [ %skb.addr.0.i127, %if.end68.out_crit_edge ], [ %skb.addr.0.i127, %if.end52.out_crit_edge ], [ %skb.addr.0.i127, %if.else.out_crit_edge ], [ %skb.addr.0.i127, %if.end36.out_crit_edge ], [ %skb.addr.0.i127, %if.then32.out_crit_edge ], [ %skb.addr.0.i127, %if.then19.out_crit_edge ], [ %skb.addr.0.i127, %if.then13.out_crit_edge ], [ %skb.addr.0.i127, %if.end7.out_crit_edge ], [ null, %skb_unshare.exit.out_crit_edge ], [ %skb.addr.0.i127, %if.end80 ], [ %skb.addr.0.i127, %cond.true.i.out_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i123, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp4_hwcsum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_direct_xmit(ptr noundef, i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/core/selftests.c", i32 378, i32 20}
!2 = !{ptr @__ksymtab_net_selftest, !3, !"__ksymtab_net_selftest", i1 false, i1 false}
!3 = !{!"../net/core/selftests.c", i32 390, i32 1}
!4 = !{ptr @__ksymtab_net_selftest_get_count, !5, !"__ksymtab_net_selftest_get_count", i1 false, i1 false}
!5 = !{!"../net/core/selftests.c", i32 396, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/core/selftests.c", i32 404, i32 32}
!8 = !{ptr @__ksymtab_net_selftest_get_strings, !9, !"__ksymtab_net_selftest_get_strings", i1 false, i1 false}
!9 = !{!"../net/core/selftests.c", i32 409, i32 1}
!10 = !{ptr @__UNIQUE_ID_file604, !11, !"__UNIQUE_ID_file604", i1 false, i1 false}
!11 = !{!"../net/core/selftests.c", i32 411, i32 1}
!12 = !{ptr @__UNIQUE_ID_license605, !11, !"__UNIQUE_ID_license605", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author606, !14, !"__UNIQUE_ID_author606", i1 false, i1 false}
!14 = !{!"../net/core/selftests.c", i32 412, i32 1}
!15 = !{ptr @net_test_next_id, !16, !"net_test_next_id", i1 false, i1 false}
!16 = !{!"../net/core/selftests.c", i32 47, i32 11}
!17 = !{ptr @net_selftests, !18, !"net_selftests", i1 false, i1 false}
!18 = !{!"../net/core/selftests.c", i32 342, i32 3}
!19 = !{ptr @init_completion.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../include/linux/completion.h", i32 87, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/skbuff.h", i32 1846, i32 2}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i8 0, i8 2}
!34 = !{i64 6621773, i64 6621814, i64 6621859}
!35 = !{i64 6620671}
!36 = !{!"branch_weights", i32 1, i32 2000}
