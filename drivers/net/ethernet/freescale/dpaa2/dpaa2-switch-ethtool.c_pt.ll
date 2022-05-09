; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.155 = type { i32, [32 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethsw_core = type { ptr, ptr, i16, %struct.dpsw_attr, i16, i16, i32, i32, ptr, ptr, [4096 x i8], ptr, [2 x %struct.dpaa2_switch_fq], ptr, i32, i16, i32, ptr, ptr, i16 }
%struct.dpsw_attr = type { i32, i64, i16, i8, i8, i16, i16, i16, i16, i16, i16, i8, i32, i32, i32 }
%struct.dpaa2_switch_fq = type { ptr, i32, ptr, %struct.dpaa2_io_notification_ctx, %struct.napi_struct, i32 }
%struct.dpaa2_io_notification_ctx = type { ptr, i32, i32, i32, i32, i64, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.145 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dpsw_link_state = type { i32, i64, i8 }
%struct.dpaa2_mac = type { ptr, %struct.dpmac_link_state, ptr, ptr, %struct.dpmac_attr, %struct.phylink_config, ptr, i32, i32, ptr, ptr }
%struct.dpmac_link_state = type { i32, i64, i32, i32, i64, i64 }
%struct.dpmac_attr = type { i16, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.dpsw_link_cfg = type { i32, i64 }

@dpaa2_switch_port_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @dpaa2_switch_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_switch_ethtool_get_strings, ptr null, ptr @dpaa2_switch_ethtool_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_switch_ethtool_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_switch_get_link_ksettings, ptr @dpaa2_switch_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_dpaa2_switch\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u.%u\00", [26 x i8] zeroinitializer }, align 32
@dpaa2_switch_ethtool_counters = internal global { [12 x %struct.anon.155], [112 x i8] } { [12 x %struct.anon.155] [%struct.anon.155 { i32 0, [32 x i8] c"[hw] rx frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 1, [32 x i8] c"[hw] rx bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 2, [32 x i8] c"[hw] rx filtered frames\00\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 3, [32 x i8] c"[hw] rx discarded frames\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 6, [32 x i8] c"[hw] rx bcast frames\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 7, [32 x i8] c"[hw] rx bcast bytes\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 4, [32 x i8] c"[hw] rx mcast frames\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 5, [32 x i8] c"[hw] rx mcast bytes\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 8, [32 x i8] c"[hw] tx frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 9, [32 x i8] c"[hw] tx bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 10, [32 x i8] c"[hw] tx discarded frames\00\00\00\00\00\00\00\00" }, %struct.anon.155 { i32 12, [32 x i8] c"[hw] rx nobuffer discards\00\00\00\00\00\00\00" }], [112 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpsw_if_get_counter[%s] err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ERROR %d getting link state\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpsw_if_disable err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dpsw_if_enable err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [30 x i8] c"dpaa2_switch_port_ethtool_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 203, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 41, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 47, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 51, i32 5 }
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"dpaa2_switch_ethtool_counters\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 17, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 195, i32 23 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 74, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 113, i32 23 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [63 x i8] c"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 138, i32 23 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @dpaa2_switch_port_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dpaa2_switch_ethtool_counters, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_ethtool_counters to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_switch_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #0 align 64 {
entry:
  %version_major = alloca i16, align 2
  %version_minor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %version_major) #5
  %0 = ptrtoint ptr %version_major to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %version_major, align 2, !annotation !27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %version_minor) #5
  %1 = ptrtoint ptr %version_minor to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %version_minor, align 2, !annotation !27
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #5
  %ethsw_data = getelementptr i8, ptr %netdev, i32 2312
  %2 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethsw_data, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_io, align 4
  %call2 = call i32 @dpsw_get_api_version(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %version_major, ptr noundef nonnull %version_minor) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %fw_version5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call i32 @strscpy(ptr noundef %fw_version5, ptr noundef nonnull @.str.1, i32 noundef 32) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %version_major to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %version_major, align 2
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %version_minor to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %version_minor, align 2
  %conv7 = zext i16 %9 to i32
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version5, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %parent10 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %parent10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent10, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %if.end.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call12 = call i32 @strscpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %version_minor) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %version_major) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_switch_ethtool_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.body.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  %0 = call ptr @memcpy(ptr %data, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 0, i32 1), i32 32)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %1 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 1, i32 1), i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %2 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 2, i32 1), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %3 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 3, i32 1), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %4 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 4, i32 1), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %5 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 5, i32 1), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %6 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 6, i32 1), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 224
  %7 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 7, i32 1), i32 32)
  %add.ptr.7 = getelementptr i8, ptr %data, i32 256
  %8 = call ptr @memcpy(ptr %add.ptr.7, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 8, i32 1), i32 32)
  %add.ptr.8 = getelementptr i8, ptr %data, i32 288
  %9 = call ptr @memcpy(ptr %add.ptr.8, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 9, i32 1), i32 32)
  %add.ptr.9 = getelementptr i8, ptr %data, i32 320
  %10 = call ptr @memcpy(ptr %add.ptr.9, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 10, i32 1), i32 32)
  %add.ptr.10 = getelementptr i8, ptr %data, i32 352
  %11 = call ptr @memcpy(ptr %add.ptr.10, ptr getelementptr inbounds ([12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 11, i32 1), i32 32)
  %mac = getelementptr i8, ptr %netdev, i32 6432
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.preheader.sw.epilog_crit_edge, label %if.then

for.body.preheader.sw.epilog_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.11 = getelementptr i8, ptr %data, i32 384
  tail call void @dpaa2_mac_get_strings(ptr noundef %add.ptr.11) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %for.body.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_switch_ethtool_get_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr i8, ptr %netdev, i32 2312
  %idx = getelementptr i8, ptr %netdev, i32 2308
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dpsw_handle, align 8
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idx, align 4
  %arrayidx = getelementptr [12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 %i.021
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i64, ptr %data, i32 %i.021
  %call3 = tail call i32 @dpsw_if_get_counter(ptr noundef %3, i32 noundef 0, i16 noundef zeroext %5, i16 noundef zeroext %7, i32 noundef %9, ptr noundef %arrayidx2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr [12 x %struct.anon.155], ptr @dpaa2_switch_ethtool_counters, i32 0, i32 %i.021, i32 1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %call3) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %mac = getelementptr i8, ptr %netdev, i32 6432
  %10 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %for.end.if.end8_crit_edge, label %if.then6

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i64, ptr %data, i32 12
  tail call void @dpaa2_mac_get_ethtool_stats(ptr noundef nonnull %11, ptr noundef %add.ptr) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_ethtool_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mac = getelementptr i8, ptr %netdev, i32 6432
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @dpaa2_mac_get_sset_count() #5
  %add = add i32 %call1, 12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then ], [ 12, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_get_link_ksettings(ptr noundef %netdev, ptr noundef %link_ksettings) #0 align 64 {
entry:
  %state = alloca %struct.dpsw_link_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #5
  %0 = call ptr @memset(ptr %state, i32 0, i32 24)
  %mac.i = getelementptr i8, ptr %netdev, i32 6432
  %1 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mac.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %link_type.i = getelementptr inbounds %struct.dpaa2_mac, ptr %2, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_type.i, align 4
  %5 = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch.i = icmp eq i32 %5, 2
  br i1 %switch.i, label %if.then, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %phylink = getelementptr inbounds %struct.dpaa2_mac, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phylink, align 8
  %call2 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %7, ptr noundef %link_ksettings) #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ethsw_data = getelementptr i8, ptr %netdev, i32 2312
  %8 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ethsw_data, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dpsw_handle, align 8
  %idx = getelementptr i8, ptr %netdev, i32 2308
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idx, align 4
  %call4 = call i32 @dpsw_if_get_link_state(ptr noundef %11, i32 noundef 0, i16 noundef zeroext %13, i16 noundef zeroext %15, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.4, i32 noundef %call4) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %options = getelementptr inbounds %struct.dpsw_link_state, ptr %state, i32 0, i32 1
  %16 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %options, align 8
  %and = and i64 %17, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool7.not = icmp eq i64 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %18 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %autoneg, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %and11 = and i64 %17, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %19 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %duplex, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 8
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then5, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %if.end15 ], [ %call4, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_set_link_ksettings(ptr noundef %netdev, ptr noundef %link_ksettings) #0 align 64 {
entry:
  %cfg = alloca %struct.dpsw_link_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfg) #5
  %2 = call ptr @memset(ptr %cfg, i32 0, i32 16)
  %mac.i = getelementptr i8, ptr %netdev, i32 6432
  %3 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mac.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %link_type.i = getelementptr inbounds %struct.dpaa2_mac, ptr %4, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %link_type.i, align 4
  %7 = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch.i = icmp eq i32 %7, 2
  br i1 %switch.i, label %if.then, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %phylink = getelementptr inbounds %struct.dpaa2_mac, ptr %4, i32 0, i32 6
  %8 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phylink, align 8
  %call2 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %9, ptr noundef %link_ksettings) #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dpsw_handle, align 8
  %idx = getelementptr i8, ptr %netdev, i32 2308
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %idx, align 4
  %call5 = tail call i32 @dpsw_if_disable(ptr noundef %13, i32 noundef 0, i16 noundef zeroext %15, i16 noundef zeroext %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %if.then7

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.5, i32 noundef %call5) #8
  br label %cleanup

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed, align 4
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cfg, align 8
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %21 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp = icmp eq i8 %22, 1
  %options = getelementptr inbounds %struct.dpsw_link_cfg, ptr %cfg, i32 0, i32 1
  %23 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %options, align 8
  %and = and i64 %24, -2
  %masksel = zext i1 %cmp to i64
  %and.sink = or i64 %and, %masksel
  store i64 %and.sink, ptr %options, align 8
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %25 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp17 = icmp eq i8 %26, 0
  %options20 = getelementptr inbounds %struct.dpsw_link_cfg, ptr %cfg, i32 0, i32 1
  %and24 = and i64 %and.sink, -3
  %masksel70 = select i1 %cmp17, i64 2, i64 0
  %and24.sink = or i64 %and24, %masksel70
  %27 = ptrtoint ptr %options20 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %and24.sink, ptr %options20, align 8
  %28 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ethsw_data, align 4
  %mc_io27 = getelementptr inbounds %struct.ethsw_core, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %mc_io27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mc_io27, align 4
  %dpsw_handle29 = getelementptr inbounds %struct.ethsw_core, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %dpsw_handle29 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dpsw_handle29, align 8
  %idx30 = getelementptr i8, ptr %netdev, i32 2308
  %34 = ptrtoint ptr %idx30 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %idx30, align 4
  %call31 = call i32 @dpsw_if_set_link_cfg(ptr noundef %31, i32 noundef 0, i16 noundef zeroext %33, i16 noundef zeroext %35, ptr noundef nonnull %cfg) #5
  br i1 %tobool.i.not, label %if.end9.cleanup_crit_edge, label %if.then33

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then33:                                        ; preds = %if.end9
  %mc_io34 = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %mc_io34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mc_io34, align 4
  %dpsw_handle35 = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %dpsw_handle35 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dpsw_handle35, align 8
  %40 = ptrtoint ptr %idx30 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %idx30, align 4
  %call37 = call i32 @dpsw_if_enable(ptr noundef %37, i32 noundef 0, i16 noundef zeroext %39, i16 noundef zeroext %41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then33.cleanup_crit_edge, label %if.then39

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.6, i32 noundef %call37) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.then33.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call5, %if.then7 ], [ %call37, %if.then39 ], [ %call31, %if.then33.cleanup_crit_edge ], [ %call31, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_get_api_version(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_mac_get_strings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_get_counter(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_mac_get_ethtool_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_mac_get_sset_count() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_get_link_state(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_disable(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_set_link_cfg(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_enable(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @dpaa2_switch_port_ethtool_ops, !1, !"dpaa2_switch_port_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c", i32 203, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c", i32 41, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c", i32 47, i32 32}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c", i32 51, i32 5}
!8 = !{ptr @dpaa2_switch_ethtool_counters, !9, !"dpaa2_switch_ethtool_counters", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c", i32 17, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c", i32 195, i32 23}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c", i32 74, i32 22}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c", i32 113, i32 23}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-ethtool.c", i32 138, i32 23}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
