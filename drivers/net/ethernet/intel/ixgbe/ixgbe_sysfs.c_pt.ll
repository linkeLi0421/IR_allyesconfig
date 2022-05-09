; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.118, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.125, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.127, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.118 = type { ptr }
%union.anon.125 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.127 = type { %struct.ixgbe_rx_queue_stats }
%struct.ixgbe_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_addr_filter_info, %struct.ixgbe_fc_info, %struct.ixgbe_phy_info, %struct.ixgbe_link_info, %struct.ixgbe_eeprom_info, %struct.ixgbe_bus_info, %struct.ixgbe_mbx_info, ptr, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, i32, [6 x i8], [6 x i8], [6 x i8], i16, i16, i16, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.ixgbe_thermal_sensor_data, i8, i8 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_thermal_sensor_data = type { [3 x %struct.ixgbe_thermal_diode_data] }
%struct.ixgbe_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.ixgbe_addr_filter_info = type { i32, i32, i32, i32, i8, i8 }
%struct.ixgbe_fc_info = type { [8 x i32], [8 x i32], i16, i8, i8, i8, i8, i32, i32 }
%struct.ixgbe_phy_info = type { %struct.ixgbe_phy_operations, %struct.mdio_if_info, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ixgbe_link_info = type { %struct.ixgbe_link_operations, i8 }
%struct.ixgbe_link_operations = type { ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_info = type { %struct.ixgbe_eeprom_operations, i32, i32, i16, i16, i16, i16 }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_bus_info = type { i32, i32, i32, i8, i8, i8 }
%struct.ixgbe_mbx_info = type { ptr, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.ixgbe_hw_stats = type { i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64], [8 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%union.ixgbe_atr_input = type { %struct.anon.128 }
%struct.anon.128 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.ixgbe_fcoe = type { ptr, %struct.atomic_t, %struct.spinlock, [2048 x %struct.ixgbe_fcoe_ddp], ptr, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.ixgbe_fcoe_ddp = type { i32, i32, i32, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.vf_macvlans = type { %struct.list_head, i32, i8, i8, [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.117, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.117 = type { ptr }
%struct.hwmon_buff = type { %struct.attribute_group, [2 x ptr], [13 x ptr], [12 x %struct.hwmon_attr], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_attr = type { %struct.device_attribute, ptr, ptr, [12 x i8] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ixgbe\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%u_label\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%u_input\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp%u_max\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp%u_crit\00", [20 x i8] zeroinitializer }, align 32
@ixgbe_add_hwmon_attr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loc%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 197, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 97, i32 5 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 102, i32 5 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 107, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 112, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 126, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 23, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [50 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 43, i32 22 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ixgbe_add_hwmon_attr.__key, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_add_hwmon_attr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ixgbe_sysfs_exit(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_sysfs_init(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_thermal_sensor_thresh = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 0, i32 57
  %0 = ptrtoint ptr %init_thermal_sensor_thresh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_thermal_sensor_thresh, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %call = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end7:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 660, i32 noundef 3520) #5
  %cmp9 = icmp eq ptr %call.i, null
  br i1 %cmp9, label %if.end7.exit_crit_edge, label %if.end11

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end11:                                         ; preds = %if.end7
  %ixgbe_hwmon_buff = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 109
  %4 = ptrtoint ptr %ixgbe_hwmon_buff to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %ixgbe_hwmon_buff, align 32
  %thermal_sensor_data = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11
  %i.0132 = phi i32 [ 0, %if.end11 ], [ %inc.pre-phi, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.ixgbe_thermal_diode_data], ptr %thermal_sensor_data, i32 0, i32 %i.0132
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp15 = icmp eq i8 %6, 0
  br i1 %cmp15, label %for.body.for.inc_crit_edge, label %if.end30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = add nuw nsw i32 %i.0132, 1
  br label %for.inc

if.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %ixgbe_hwmon_buff to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %n_hwmon.i = getelementptr inbounds %struct.hwmon_buff, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %n_hwmon.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_hwmon.i, align 4
  %arrayidx.i = getelementptr %struct.hwmon_buff, ptr %8, i32 0, i32 3, i32 %10
  %show18.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i, i32 0, i32 1
  %11 = ptrtoint ptr %show18.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ixgbe_hwmon_show_cautionthresh, ptr %show18.i, align 4
  %name19.i = getelementptr %struct.hwmon_buff, ptr %8, i32 0, i32 3, i32 %10, i32 3
  %add21.i = add nuw nsw i32 %i.0132, 1
  %call22.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name19.i, i32 noundef 12, ptr noundef nonnull @.str.3, i32 noundef %add21.i) #5
  %sensor24.i = getelementptr %struct.hwmon_buff, ptr %8, i32 0, i32 3, i32 %10, i32 2
  %12 = ptrtoint ptr %sensor24.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %sensor24.i, align 4
  %hw26.i = getelementptr %struct.hwmon_buff, ptr %8, i32 0, i32 3, i32 %10, i32 1
  %13 = ptrtoint ptr %hw26.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hw, ptr %hw26.i, align 4
  %store.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i, i32 0, i32 2
  %14 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %store.i, align 4
  %mode.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 1
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 292, ptr %mode.i, align 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %name19.i, ptr %arrayidx.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 3
  %17 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ixgbe_add_hwmon_attr.__key, ptr %key.i, align 4
  %18 = ptrtoint ptr %ixgbe_hwmon_buff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %arrayidx39.i = getelementptr %struct.hwmon_buff, ptr %19, i32 0, i32 2, i32 %10
  %20 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.i, ptr %arrayidx39.i, align 4
  %21 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %n_hwmon41.i = getelementptr inbounds %struct.hwmon_buff, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %n_hwmon41.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_hwmon41.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %n_hwmon41.i, align 4
  %24 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %n_hwmon.i76 = getelementptr inbounds %struct.hwmon_buff, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %n_hwmon.i76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_hwmon.i76, align 4
  %arrayidx.i77 = getelementptr %struct.hwmon_buff, ptr %24, i32 0, i32 3, i32 %26
  %show18.i78 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i77, i32 0, i32 1
  %27 = ptrtoint ptr %show18.i78 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ixgbe_hwmon_show_location, ptr %show18.i78, align 4
  %name19.i79 = getelementptr %struct.hwmon_buff, ptr %24, i32 0, i32 3, i32 %26, i32 3
  %call22.i81 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name19.i79, i32 noundef 12, ptr noundef nonnull @.str.1, i32 noundef %add21.i) #5
  %sensor24.i85 = getelementptr %struct.hwmon_buff, ptr %24, i32 0, i32 3, i32 %26, i32 2
  %28 = ptrtoint ptr %sensor24.i85 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx, ptr %sensor24.i85, align 4
  %hw26.i86 = getelementptr %struct.hwmon_buff, ptr %24, i32 0, i32 3, i32 %26, i32 1
  %29 = ptrtoint ptr %hw26.i86 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %hw, ptr %hw26.i86, align 4
  %store.i87 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i77, i32 0, i32 2
  %30 = ptrtoint ptr %store.i87 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %store.i87, align 4
  %mode.i88 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i77, i32 0, i32 1
  %31 = ptrtoint ptr %mode.i88 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 292, ptr %mode.i88, align 4
  %32 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %name19.i79, ptr %arrayidx.i77, align 4
  %key.i90 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i77, i32 0, i32 3
  %33 = ptrtoint ptr %key.i90 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ixgbe_add_hwmon_attr.__key, ptr %key.i90, align 4
  %34 = ptrtoint ptr %ixgbe_hwmon_buff to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %arrayidx39.i91 = getelementptr %struct.hwmon_buff, ptr %35, i32 0, i32 2, i32 %26
  %36 = ptrtoint ptr %arrayidx39.i91 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.i77, ptr %arrayidx39.i91, align 4
  %37 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %n_hwmon41.i92 = getelementptr inbounds %struct.hwmon_buff, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %n_hwmon41.i92 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_hwmon41.i92, align 4
  %inc.i93 = add i32 %39, 1
  store i32 %inc.i93, ptr %n_hwmon41.i92, align 4
  %40 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %n_hwmon.i95 = getelementptr inbounds %struct.hwmon_buff, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %n_hwmon.i95 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_hwmon.i95, align 4
  %arrayidx.i96 = getelementptr %struct.hwmon_buff, ptr %40, i32 0, i32 3, i32 %42
  %show18.i97 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i96, i32 0, i32 1
  %43 = ptrtoint ptr %show18.i97 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ixgbe_hwmon_show_temp, ptr %show18.i97, align 4
  %name19.i98 = getelementptr %struct.hwmon_buff, ptr %40, i32 0, i32 3, i32 %42, i32 3
  %call22.i100 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name19.i98, i32 noundef 12, ptr noundef nonnull @.str.2, i32 noundef %add21.i) #5
  %sensor24.i104 = getelementptr %struct.hwmon_buff, ptr %40, i32 0, i32 3, i32 %42, i32 2
  %44 = ptrtoint ptr %sensor24.i104 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx, ptr %sensor24.i104, align 4
  %hw26.i105 = getelementptr %struct.hwmon_buff, ptr %40, i32 0, i32 3, i32 %42, i32 1
  %45 = ptrtoint ptr %hw26.i105 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %hw, ptr %hw26.i105, align 4
  %store.i106 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i96, i32 0, i32 2
  %46 = ptrtoint ptr %store.i106 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %store.i106, align 4
  %mode.i107 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i96, i32 0, i32 1
  %47 = ptrtoint ptr %mode.i107 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 292, ptr %mode.i107, align 4
  %48 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %name19.i98, ptr %arrayidx.i96, align 4
  %key.i109 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i96, i32 0, i32 3
  %49 = ptrtoint ptr %key.i109 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ixgbe_add_hwmon_attr.__key, ptr %key.i109, align 4
  %50 = ptrtoint ptr %ixgbe_hwmon_buff to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %arrayidx39.i110 = getelementptr %struct.hwmon_buff, ptr %51, i32 0, i32 2, i32 %42
  %52 = ptrtoint ptr %arrayidx39.i110 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx.i96, ptr %arrayidx39.i110, align 4
  %53 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %n_hwmon41.i111 = getelementptr inbounds %struct.hwmon_buff, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %n_hwmon41.i111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_hwmon41.i111, align 4
  %inc.i112 = add i32 %55, 1
  store i32 %inc.i112, ptr %n_hwmon41.i111, align 4
  %56 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %n_hwmon.i114 = getelementptr inbounds %struct.hwmon_buff, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %n_hwmon.i114 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_hwmon.i114, align 4
  %arrayidx.i115 = getelementptr %struct.hwmon_buff, ptr %56, i32 0, i32 3, i32 %58
  %show18.i116 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i115, i32 0, i32 1
  %59 = ptrtoint ptr %show18.i116 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ixgbe_hwmon_show_maxopthresh, ptr %show18.i116, align 4
  %name19.i117 = getelementptr %struct.hwmon_buff, ptr %56, i32 0, i32 3, i32 %58, i32 3
  %call22.i119 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name19.i117, i32 noundef 12, ptr noundef nonnull @.str.4, i32 noundef %add21.i) #5
  %sensor24.i123 = getelementptr %struct.hwmon_buff, ptr %56, i32 0, i32 3, i32 %58, i32 2
  %60 = ptrtoint ptr %sensor24.i123 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx, ptr %sensor24.i123, align 4
  %hw26.i124 = getelementptr %struct.hwmon_buff, ptr %56, i32 0, i32 3, i32 %58, i32 1
  %61 = ptrtoint ptr %hw26.i124 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %hw, ptr %hw26.i124, align 4
  %store.i125 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i115, i32 0, i32 2
  %62 = ptrtoint ptr %store.i125 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %store.i125, align 4
  %mode.i126 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i115, i32 0, i32 1
  %63 = ptrtoint ptr %mode.i126 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 292, ptr %mode.i126, align 4
  %64 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %name19.i117, ptr %arrayidx.i115, align 4
  %key.i128 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i115, i32 0, i32 3
  %65 = ptrtoint ptr %key.i128 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @ixgbe_add_hwmon_attr.__key, ptr %key.i128, align 4
  %66 = ptrtoint ptr %ixgbe_hwmon_buff to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %arrayidx39.i129 = getelementptr %struct.hwmon_buff, ptr %67, i32 0, i32 2, i32 %58
  %68 = ptrtoint ptr %arrayidx39.i129 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx.i115, ptr %arrayidx39.i129, align 4
  %69 = load ptr, ptr %ixgbe_hwmon_buff, align 32
  %n_hwmon41.i130 = getelementptr inbounds %struct.hwmon_buff, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %n_hwmon41.i130 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_hwmon41.i130, align 4
  %inc.i131 = add i32 %71, 1
  store i32 %inc.i131, ptr %n_hwmon41.i130, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %for.body.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add21.i, %if.end30 ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %groups = getelementptr inbounds %struct.hwmon_buff, ptr %call.i, i32 0, i32 1
  %72 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i, ptr %groups, align 4
  %attrs = getelementptr inbounds %struct.hwmon_buff, ptr %call.i, i32 0, i32 2
  %attrs37 = getelementptr inbounds %struct.attribute_group, ptr %call.i, i32 0, i32 3
  %73 = ptrtoint ptr %attrs37 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %attrs, ptr %attrs37, align 4
  %74 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %call42 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev39, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, ptr noundef %groups) #5
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  %76 = ptrtoint ptr %call42 to i32
  %spec.select = select i1 %cmp.i, i32 %76, i32 0
  br label %exit

exit:                                             ; preds = %for.end, %if.end7.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %rc.2 = phi i32 [ 0, %entry.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ], [ -12, %if.end7.exit_crit_edge ], [ %spec.select, %for.end ]
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_hwmon_show_location(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.hwmon_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_hwmon_show_temp(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %get_thermal_sensor_data = getelementptr inbounds %struct.ixgbe_hw, ptr %1, i32 0, i32 2, i32 0, i32 56
  %2 = ptrtoint ptr %get_thermal_sensor_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_thermal_sensor_data, align 4
  %call = tail call i32 %3(ptr noundef %1) #5
  %sensor = getelementptr inbounds %struct.hwmon_attr, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor, align 4
  %temp = getelementptr inbounds %struct.ixgbe_thermal_diode_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %temp, align 1
  %conv = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %mul)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_hwmon_show_cautionthresh(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.hwmon_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %caution_thresh = getelementptr inbounds %struct.ixgbe_thermal_diode_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %caution_thresh to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %caution_thresh, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_hwmon_show_maxopthresh(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.hwmon_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %max_op_thresh = getelementptr inbounds %struct.ixgbe_thermal_diode_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %max_op_thresh to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_op_thresh, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c", i32 197, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c", i32 97, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c", i32 102, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c", i32 107, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c", i32 112, i32 5}
!10 = !{ptr @ixgbe_add_hwmon_attr.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c", i32 126, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c", i32 23, i32 22}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c", i32 43, i32 22}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
