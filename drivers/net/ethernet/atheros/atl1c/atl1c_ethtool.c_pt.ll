; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.143 = type { ptr }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.151, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.151 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.142, i32 }
%struct.anon.142 = type { [3 x i32], [3 x i32], [3 x i32] }

@atl1c_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @atl1c_get_drvinfo, ptr @atl1c_get_regs_len, ptr @atl1c_get_regs, ptr @atl1c_get_wol, ptr @atl1c_set_wol, ptr @atl1c_get_msglevel, ptr @atl1c_set_msglevel, ptr @atl1c_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @atl1c_get_eeprom_len, ptr @atl1c_get_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl1c_get_link_ksettings, ptr @atl1c_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@atl1c_driver_name = external dso_local global [0 x i8], align 1
@atl1c_set_link_ksettings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"1000M half is invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atl1c_set_link_ksettings\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atl1c_set_link_ksettings._entry_ptr = internal global ptr @atl1c_set_link_ksettings._entry, section ".printk_index", align 4
@atl1c_set_link_ksettings._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ethtool speed/duplex setting failed\0A\00", [59 x i8] zeroinitializer }, align 32
@atl1c_set_link_ksettings._entry_ptr.7 = internal global ptr @atl1c_set_link_ksettings._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"atl1c_ethtool_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 276, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 76, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [54 x i8] c"../drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 99, i32 5 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @atl1c_set_link_ksettings._entry, ptr @atl1c_set_link_ksettings._entry.5, ptr @atl1c_set_link_ksettings._entry_ptr, ptr @atl1c_set_link_ksettings._entry_ptr.7, ptr @atl1c_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_set_link_ksettings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_set_link_ksettings._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @atl1c_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @atl1c_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @atl1c_driver_name, i32 noundef 32) #12
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl1c_get_regs_len(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 296
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1c_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %p) #3 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2316
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #12
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !23
  %1 = call ptr @memset(ptr %p, i32 0, i32 296)
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %version, align 4
  %hibernate = getelementptr i8, ptr %netdev, i32 2417
  %3 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1, align 4
  %add.ptr16 = getelementptr i8, ptr %6, i32 4856
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #12
  br i1 %tobool.not, label %if.else, label %if.then, !prof !25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 4856
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #12, !srcloc !27
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !28
  br label %do.body21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !29
  br label %do.body21

do.body21:                                        ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %12, %if.else ], [ %11, %if.then ]
  %p.addr.0 = getelementptr i8, ptr %p, i32 1
  %13 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %p, align 4
  %14 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1, align 4
  %add.ptr50 = getelementptr i8, ptr %17, i32 5272
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #12
  br i1 %tobool23.not, label %if.else46, label %if.then30, !prof !25

if.then30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !30
  %19 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw1, align 4
  %add.ptr41 = getelementptr i8, ptr %20, i32 5272
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #12, !srcloc !27
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !31
  br label %do.body58

if.else46:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %23 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !32
  br label %do.body58

do.body58:                                        ; preds = %if.else46, %if.then30
  %storemerge943 = phi i32 [ %23, %if.else46 ], [ %22, %if.then30 ]
  %p.addr.1 = getelementptr i8, ptr %p, i32 2
  %24 = ptrtoint ptr %p.addr.0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge943, ptr %p.addr.0, align 4
  %25 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool60.not = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw1, align 4
  %add.ptr87 = getelementptr i8, ptr %28, i32 536
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #12
  br i1 %tobool60.not, label %if.else83, label %if.then67, !prof !25

if.then67:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !33
  %30 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw1, align 4
  %add.ptr78 = getelementptr i8, ptr %31, i32 536
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #12, !srcloc !27
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !34
  br label %do.body95

if.else83:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  %34 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !35
  br label %do.body95

do.body95:                                        ; preds = %if.else83, %if.then67
  %storemerge944 = phi i32 [ %34, %if.else83 ], [ %33, %if.then67 ]
  %p.addr.2 = getelementptr i8, ptr %p, i32 3
  %35 = ptrtoint ptr %p.addr.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge944, ptr %p.addr.1, align 4
  %36 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool97.not = icmp eq i8 %37, 0
  %38 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw1, align 4
  %add.ptr124 = getelementptr i8, ptr %39, i32 540
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #12
  br i1 %tobool97.not, label %if.else120, label %if.then104, !prof !25

if.then104:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !36
  %41 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw1, align 4
  %add.ptr115 = getelementptr i8, ptr %42, i32 540
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #12, !srcloc !27
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !37
  br label %do.body132

if.else120:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #14
  %45 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !38
  br label %do.body132

do.body132:                                       ; preds = %if.else120, %if.then104
  %storemerge945 = phi i32 [ %45, %if.else120 ], [ %44, %if.then104 ]
  %p.addr.3 = getelementptr i8, ptr %p, i32 4
  %46 = ptrtoint ptr %p.addr.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %storemerge945, ptr %p.addr.2, align 4
  %47 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool134.not = icmp eq i8 %48, 0
  %49 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw1, align 4
  %add.ptr161 = getelementptr i8, ptr %50, i32 5120
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #12
  br i1 %tobool134.not, label %if.else157, label %if.then141, !prof !25

if.then141:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !39
  %52 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw1, align 4
  %add.ptr152 = getelementptr i8, ptr %53, i32 5120
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr152) #12, !srcloc !27
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !40
  br label %do.body169

if.else157:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  %56 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !41
  br label %do.body169

do.body169:                                       ; preds = %if.else157, %if.then141
  %storemerge946 = phi i32 [ %56, %if.else157 ], [ %55, %if.then141 ]
  %p.addr.4 = getelementptr i8, ptr %p, i32 5
  %57 = ptrtoint ptr %p.addr.3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %storemerge946, ptr %p.addr.3, align 4
  %58 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool171.not = icmp eq i8 %59, 0
  %60 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw1, align 4
  %add.ptr198 = getelementptr i8, ptr %61, i32 5124
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr198) #12
  br i1 %tobool171.not, label %if.else194, label %if.then178, !prof !25

if.then178:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !42
  %63 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw1, align 4
  %add.ptr189 = getelementptr i8, ptr %64, i32 5124
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #12, !srcloc !27
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !43
  br label %do.body206

if.else194:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #14
  %67 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !44
  br label %do.body206

do.body206:                                       ; preds = %if.else194, %if.then178
  %storemerge947 = phi i32 [ %67, %if.else194 ], [ %66, %if.then178 ]
  %p.addr.5 = getelementptr i8, ptr %p, i32 6
  %68 = ptrtoint ptr %p.addr.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %storemerge947, ptr %p.addr.4, align 4
  %69 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool208.not = icmp eq i8 %70, 0
  %71 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw1, align 4
  %add.ptr235 = getelementptr i8, ptr %72, i32 5128
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr235) #12
  br i1 %tobool208.not, label %if.else231, label %if.then215, !prof !25

if.then215:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !45
  %74 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw1, align 4
  %add.ptr226 = getelementptr i8, ptr %75, i32 5128
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr226) #12, !srcloc !27
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !46
  br label %do.body243

if.else231:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #14
  %78 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !47
  br label %do.body243

do.body243:                                       ; preds = %if.else231, %if.then215
  %storemerge948 = phi i32 [ %78, %if.else231 ], [ %77, %if.then215 ]
  %p.addr.6 = getelementptr i8, ptr %p, i32 7
  %79 = ptrtoint ptr %p.addr.5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %storemerge948, ptr %p.addr.5, align 4
  %80 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool245.not = icmp eq i8 %81, 0
  %82 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw1, align 4
  %add.ptr272 = getelementptr i8, ptr %83, i32 5132
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr272) #12
  br i1 %tobool245.not, label %if.else268, label %if.then252, !prof !25

if.then252:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !48
  %85 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw1, align 4
  %add.ptr263 = getelementptr i8, ptr %86, i32 5132
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr263) #12, !srcloc !27
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !49
  br label %do.body280

if.else268:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #14
  %89 = tail call i32 @llvm.bswap.i32(i32 %84)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  br label %do.body280

do.body280:                                       ; preds = %if.else268, %if.then252
  %storemerge949 = phi i32 [ %89, %if.else268 ], [ %88, %if.then252 ]
  %p.addr.7 = getelementptr i8, ptr %p, i32 8
  %90 = ptrtoint ptr %p.addr.6 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %storemerge949, ptr %p.addr.6, align 4
  %91 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool282.not = icmp eq i8 %92, 0
  %93 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw1, align 4
  %add.ptr309 = getelementptr i8, ptr %94, i32 104
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr309) #12
  br i1 %tobool282.not, label %if.else305, label %if.then289, !prof !25

if.then289:                                       ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !51
  %96 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw1, align 4
  %add.ptr300 = getelementptr i8, ptr %97, i32 104
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr300) #12, !srcloc !27
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !52
  br label %do.body317

if.else305:                                       ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #14
  %100 = tail call i32 @llvm.bswap.i32(i32 %95)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !53
  br label %do.body317

do.body317:                                       ; preds = %if.else305, %if.then289
  %storemerge950 = phi i32 [ %100, %if.else305 ], [ %99, %if.then289 ]
  %p.addr.8 = getelementptr i8, ptr %p, i32 9
  %101 = ptrtoint ptr %p.addr.7 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %storemerge950, ptr %p.addr.7, align 4
  %102 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool319.not = icmp eq i8 %103, 0
  %104 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw1, align 4
  %add.ptr346 = getelementptr i8, ptr %105, i32 5136
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr346) #12
  br i1 %tobool319.not, label %if.else342, label %if.then326, !prof !25

if.then326:                                       ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %107 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw1, align 4
  %add.ptr337 = getelementptr i8, ptr %108, i32 5136
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr337) #12, !srcloc !27
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  br label %do.body354

if.else342:                                       ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #14
  %111 = tail call i32 @llvm.bswap.i32(i32 %106)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !56
  br label %do.body354

do.body354:                                       ; preds = %if.else342, %if.then326
  %storemerge951 = phi i32 [ %111, %if.else342 ], [ %110, %if.then326 ]
  %p.addr.9 = getelementptr i8, ptr %p, i32 10
  %112 = ptrtoint ptr %p.addr.8 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %storemerge951, ptr %p.addr.8, align 4
  %113 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool356.not = icmp eq i8 %114, 0
  %115 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw1, align 4
  %add.ptr383 = getelementptr i8, ptr %116, i32 5140
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr383) #12
  br i1 %tobool356.not, label %if.else379, label %if.then363, !prof !25

if.then363:                                       ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !57
  %118 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw1, align 4
  %add.ptr374 = getelementptr i8, ptr %119, i32 5140
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr374) #12, !srcloc !27
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !58
  br label %do.body391

if.else379:                                       ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #14
  %122 = tail call i32 @llvm.bswap.i32(i32 %117)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !59
  br label %do.body391

do.body391:                                       ; preds = %if.else379, %if.then363
  %storemerge952 = phi i32 [ %122, %if.else379 ], [ %121, %if.then363 ]
  %p.addr.10 = getelementptr i8, ptr %p, i32 11
  %123 = ptrtoint ptr %p.addr.9 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %storemerge952, ptr %p.addr.9, align 4
  %124 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool393.not = icmp eq i8 %125, 0
  %126 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw1, align 4
  %add.ptr420 = getelementptr i8, ptr %127, i32 5156
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr420) #12
  br i1 %tobool393.not, label %if.else416, label %if.then400, !prof !25

if.then400:                                       ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !60
  %129 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hw1, align 4
  %add.ptr411 = getelementptr i8, ptr %130, i32 5156
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr411) #12, !srcloc !27
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !61
  br label %do.body428

if.else416:                                       ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #14
  %133 = tail call i32 @llvm.bswap.i32(i32 %128)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !62
  br label %do.body428

do.body428:                                       ; preds = %if.else416, %if.then400
  %storemerge953 = phi i32 [ %133, %if.else416 ], [ %132, %if.then400 ]
  %p.addr.11 = getelementptr i8, ptr %p, i32 12
  %134 = ptrtoint ptr %p.addr.10 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %storemerge953, ptr %p.addr.10, align 4
  %135 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool430.not = icmp eq i8 %136, 0
  %137 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw1, align 4
  %add.ptr457 = getelementptr i8, ptr %138, i32 5248
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr457) #12
  br i1 %tobool430.not, label %if.else453, label %if.then437, !prof !25

if.then437:                                       ; preds = %do.body428
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !63
  %140 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw1, align 4
  %add.ptr448 = getelementptr i8, ptr %141, i32 5248
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr448) #12, !srcloc !27
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !64
  br label %do.body465

if.else453:                                       ; preds = %do.body428
  call void @__sanitizer_cov_trace_pc() #14
  %144 = tail call i32 @llvm.bswap.i32(i32 %139)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !65
  br label %do.body465

do.body465:                                       ; preds = %if.else453, %if.then437
  %storemerge954 = phi i32 [ %144, %if.else453 ], [ %143, %if.then437 ]
  %p.addr.12 = getelementptr i8, ptr %p, i32 13
  %145 = ptrtoint ptr %p.addr.11 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %storemerge954, ptr %p.addr.11, align 4
  %146 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool467.not = icmp eq i8 %147, 0
  %148 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw1, align 4
  %add.ptr494 = getelementptr i8, ptr %149, i32 5252
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr494) #12
  br i1 %tobool467.not, label %if.else490, label %if.then474, !prof !25

if.then474:                                       ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !66
  %151 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hw1, align 4
  %add.ptr485 = getelementptr i8, ptr %152, i32 5252
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr485) #12, !srcloc !27
  %154 = tail call i32 @llvm.bswap.i32(i32 %153)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !67
  br label %do.body502

if.else490:                                       ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #14
  %155 = tail call i32 @llvm.bswap.i32(i32 %150)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !68
  br label %do.body502

do.body502:                                       ; preds = %if.else490, %if.then474
  %storemerge955 = phi i32 [ %155, %if.else490 ], [ %154, %if.then474 ]
  %p.addr.13 = getelementptr i8, ptr %p, i32 14
  %156 = ptrtoint ptr %p.addr.12 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %storemerge955, ptr %p.addr.12, align 4
  %157 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool504.not = icmp eq i8 %158, 0
  %159 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hw1, align 4
  %add.ptr531 = getelementptr i8, ptr %160, i32 5256
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr531) #12
  br i1 %tobool504.not, label %if.else527, label %if.then511, !prof !25

if.then511:                                       ; preds = %do.body502
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !69
  %162 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw1, align 4
  %add.ptr522 = getelementptr i8, ptr %163, i32 5256
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr522) #12, !srcloc !27
  %165 = tail call i32 @llvm.bswap.i32(i32 %164)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !70
  br label %do.body539

if.else527:                                       ; preds = %do.body502
  call void @__sanitizer_cov_trace_pc() #14
  %166 = tail call i32 @llvm.bswap.i32(i32 %161)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !71
  br label %do.body539

do.body539:                                       ; preds = %if.else527, %if.then511
  %storemerge956 = phi i32 [ %166, %if.else527 ], [ %165, %if.then511 ]
  %p.addr.14 = getelementptr i8, ptr %p, i32 15
  %167 = ptrtoint ptr %p.addr.13 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %storemerge956, ptr %p.addr.13, align 4
  %168 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool541.not = icmp eq i8 %169, 0
  %170 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hw1, align 4
  %add.ptr571 = getelementptr i8, ptr %171, i32 5260
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr571) #12
  br i1 %tobool541.not, label %if.else566, label %if.then548, !prof !25

if.then548:                                       ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !72
  %173 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hw1, align 4
  %add.ptr561 = getelementptr i8, ptr %174, i32 5260
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr561) #12, !srcloc !27
  %176 = tail call i32 @llvm.bswap.i32(i32 %175)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !73
  br label %do.body579

if.else566:                                       ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #14
  %177 = tail call i32 @llvm.bswap.i32(i32 %172)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !74
  br label %do.body579

do.body579:                                       ; preds = %if.else566, %if.then548
  %storemerge957 = phi i32 [ %177, %if.else566 ], [ %176, %if.then548 ]
  %p.addr.15 = getelementptr i8, ptr %p, i32 16
  %178 = ptrtoint ptr %p.addr.14 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %storemerge957, ptr %p.addr.14, align 4
  %179 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool581.not = icmp eq i8 %180, 0
  %181 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw1, align 4
  %add.ptr608 = getelementptr i8, ptr %182, i32 5264
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr608) #12
  br i1 %tobool581.not, label %if.else604, label %if.then588, !prof !25

if.then588:                                       ; preds = %do.body579
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !75
  %184 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %hw1, align 4
  %add.ptr599 = getelementptr i8, ptr %185, i32 5264
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr599) #12, !srcloc !27
  %187 = tail call i32 @llvm.bswap.i32(i32 %186)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !76
  br label %do.body616

if.else604:                                       ; preds = %do.body579
  call void @__sanitizer_cov_trace_pc() #14
  %188 = tail call i32 @llvm.bswap.i32(i32 %183)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !77
  br label %do.body616

do.body616:                                       ; preds = %if.else604, %if.then588
  %storemerge958 = phi i32 [ %188, %if.else604 ], [ %187, %if.then588 ]
  %p.addr.16 = getelementptr i8, ptr %p, i32 17
  %189 = ptrtoint ptr %p.addr.15 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %storemerge958, ptr %p.addr.15, align 4
  %190 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool618.not = icmp eq i8 %191, 0
  %192 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hw1, align 4
  %add.ptr648 = getelementptr i8, ptr %193, i32 5268
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr648) #12
  br i1 %tobool618.not, label %if.else643, label %if.then625, !prof !25

if.then625:                                       ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !78
  %195 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hw1, align 4
  %add.ptr638 = getelementptr i8, ptr %196, i32 5268
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr638) #12, !srcloc !27
  %198 = tail call i32 @llvm.bswap.i32(i32 %197)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !79
  br label %do.body656

if.else643:                                       ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #14
  %199 = tail call i32 @llvm.bswap.i32(i32 %194)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  br label %do.body656

do.body656:                                       ; preds = %if.else643, %if.then625
  %storemerge959 = phi i32 [ %199, %if.else643 ], [ %198, %if.then625 ]
  %p.addr.17 = getelementptr i8, ptr %p, i32 18
  %200 = ptrtoint ptr %p.addr.16 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %storemerge959, ptr %p.addr.16, align 4
  %201 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool658.not = icmp eq i8 %202, 0
  %203 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hw1, align 4
  %add.ptr685 = getelementptr i8, ptr %204, i32 5536
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr685) #12
  br i1 %tobool658.not, label %if.else681, label %if.then665, !prof !25

if.then665:                                       ; preds = %do.body656
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !81
  %206 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %hw1, align 4
  %add.ptr676 = getelementptr i8, ptr %207, i32 5536
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr676) #12, !srcloc !27
  %209 = tail call i32 @llvm.bswap.i32(i32 %208)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !82
  br label %do.body693

if.else681:                                       ; preds = %do.body656
  call void @__sanitizer_cov_trace_pc() #14
  %210 = tail call i32 @llvm.bswap.i32(i32 %205)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !83
  br label %do.body693

do.body693:                                       ; preds = %if.else681, %if.then665
  %storemerge960 = phi i32 [ %210, %if.else681 ], [ %209, %if.then665 ]
  %p.addr.18 = getelementptr i8, ptr %p, i32 19
  %211 = ptrtoint ptr %p.addr.17 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %storemerge960, ptr %p.addr.17, align 4
  %212 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool695.not = icmp eq i8 %213, 0
  %214 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hw1, align 4
  %add.ptr722 = getelementptr i8, ptr %215, i32 5520
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr722) #12
  br i1 %tobool695.not, label %if.else718, label %if.then702, !prof !25

if.then702:                                       ; preds = %do.body693
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !84
  %217 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hw1, align 4
  %add.ptr713 = getelementptr i8, ptr %218, i32 5520
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr713) #12, !srcloc !27
  %220 = tail call i32 @llvm.bswap.i32(i32 %219)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !85
  br label %do.body730

if.else718:                                       ; preds = %do.body693
  call void @__sanitizer_cov_trace_pc() #14
  %221 = tail call i32 @llvm.bswap.i32(i32 %216)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !86
  br label %do.body730

do.body730:                                       ; preds = %if.else718, %if.then702
  %storemerge961 = phi i32 [ %221, %if.else718 ], [ %220, %if.then702 ]
  %p.addr.19 = getelementptr i8, ptr %p, i32 20
  %222 = ptrtoint ptr %p.addr.18 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %storemerge961, ptr %p.addr.18, align 4
  %223 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool732.not = icmp eq i8 %224, 0
  %225 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %hw1, align 4
  %add.ptr759 = getelementptr i8, ptr %226, i32 5276
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr759) #12
  br i1 %tobool732.not, label %if.else755, label %if.then739, !prof !25

if.then739:                                       ; preds = %do.body730
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !87
  %228 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %hw1, align 4
  %add.ptr750 = getelementptr i8, ptr %229, i32 5276
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr750) #12, !srcloc !27
  %231 = tail call i32 @llvm.bswap.i32(i32 %230)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !88
  br label %do.body767

if.else755:                                       ; preds = %do.body730
  call void @__sanitizer_cov_trace_pc() #14
  %232 = tail call i32 @llvm.bswap.i32(i32 %227)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  br label %do.body767

do.body767:                                       ; preds = %if.else755, %if.then739
  %storemerge962 = phi i32 [ %232, %if.else755 ], [ %231, %if.then739 ]
  %233 = ptrtoint ptr %p.addr.19 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %storemerge962, ptr %p.addr.19, align 4
  %234 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %hibernate, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool769.not = icmp eq i8 %235, 0
  %236 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %hw1, align 4
  %add.ptr796 = getelementptr i8, ptr %237, i32 5280
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr796) #12
  br i1 %tobool769.not, label %if.else792, label %if.then776, !prof !25

if.then776:                                       ; preds = %do.body767
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !90
  %239 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hw1, align 4
  %add.ptr787 = getelementptr i8, ptr %240, i32 5280
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr787) #12, !srcloc !27
  %242 = tail call i32 @llvm.bswap.i32(i32 %241)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !91
  br label %do.end803

if.else792:                                       ; preds = %do.body767
  call void @__sanitizer_cov_trace_pc() #14
  %243 = tail call i32 @llvm.bswap.i32(i32 %238)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  br label %do.end803

do.end803:                                        ; preds = %if.else792, %if.then776
  %storemerge963 = phi i32 [ %243, %if.else792 ], [ %242, %if.then776 ]
  %p.addr.20 = getelementptr i8, ptr %p, i32 21
  %244 = ptrtoint ptr %p.addr.20 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %storemerge963, ptr %p.addr.20, align 4
  %call804 = call i32 @atl1c_read_phy_reg(ptr noundef %hw1, i16 noundef zeroext 0, ptr noundef nonnull %phy_data) #12
  %245 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %phy_data, align 2
  %conv = zext i16 %246 to i32
  %arrayidx = getelementptr i32, ptr %p, i32 72
  %247 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %conv, ptr %arrayidx, align 4
  %call805 = call i32 @atl1c_read_phy_reg(ptr noundef %hw1, i16 noundef zeroext 1, ptr noundef nonnull %phy_data) #12
  %248 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %phy_data, align 2
  %conv806 = zext i16 %249 to i32
  %arrayidx807 = getelementptr i32, ptr %p, i32 73
  %250 = ptrtoint ptr %arrayidx807 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %conv806, ptr %arrayidx807, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atl1c_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %wol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %wol1 = getelementptr i8, ptr %netdev, i32 2728
  %2 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol1, align 8
  %and = lshr i32 %3, 1
  %4 = and i32 %and, 2
  store i32 %4, ptr %wolopts, align 4
  %5 = load i32, ptr %wol1, align 8
  %and4 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %entry.if.end9_crit_edge, label %if.then6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or8 = or i32 %4, 4
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or8, ptr %wolopts, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry.if.end9_crit_edge
  %7 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wol1, align 8
  %and11 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 4
  %or15 = or i32 %10, 8
  store i32 %or15, ptr %wolopts, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %11 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wol1, align 8
  %and18 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end23_crit_edge, label %if.then20

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts, align 4
  %or22 = or i32 %14, 32
  store i32 %or22, ptr %wolopts, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  %15 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol1, align 8
  %and25 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts, align 4
  %or29 = or i32 %18, 1
  store i32 %or29, ptr %wolopts, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %wol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %wol1 = getelementptr i8, ptr %netdev, i32 2728
  %2 = ptrtoint ptr %wol1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wol1, align 8
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %and3 = lshr i32 %4, 4
  %5 = and i32 %and3, 2
  store i32 %5, ptr %wol1, align 8
  %6 = load i32, ptr %wolopts, align 4
  %and9 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %or13 = or i32 %5, 1
  %7 = ptrtoint ptr %wol1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or13, ptr %wol1, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wol1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16 = icmp ne i32 %11, 0
  %call17 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool16) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl1c_get_msglevel(ptr nocapture noundef readonly %netdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2720
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @atl1c_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2720
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_nway_reset(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @atl1c_reinit_locked(ptr noundef %add.ptr.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_get_eeprom_len(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %netdev, i32 2316
  %call1 = tail call i32 @atl1c_check_eeprom_exist(ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 0, i32 512
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2316
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @atl1c_check_eeprom_exist(ptr noundef %hw1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %conv = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv6 = zext i16 %7 to i32
  %shl = shl nuw i32 %conv6, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %shr = lshr i32 %10, 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %add = add i32 %10, -1
  %sub = add i32 %add, %12
  %shr9 = lshr i32 %sub, 2
  %sub10 = sub nsw i32 %shr9, %shr
  %add11 = add nsw i32 %sub10, 1
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add11, i32 4) #12
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %if.end4.cleanup_crit_edge, label %if.end7.i, !prof !93

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4
  %15 = extractvalue { i32, i1 } %13, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #15
  %cmp13 = icmp eq ptr %call8.i, null
  br i1 %cmp13, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr9, i32 %shr)
  %cmp1752 = icmp ugt i32 %shr9, %shr
  br i1 %cmp1752, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %shr9
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %shr, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl i32 %i.053, 2
  %sub19 = sub nuw nsw i32 %i.053, %shr
  %arrayidx = getelementptr i32, ptr %call8.i, i32 %sub19
  %call20 = tail call zeroext i1 @atl1c_read_eeprom(ptr noundef %hw1, i32 noundef %mul, ptr noundef %arrayidx) #12
  br i1 %call20, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %and = and i32 %17, 3
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %20 = call ptr @memcpy(ptr %bytes, ptr %add.ptr, i32 %19)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %for.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %for.end ], [ -5, %for.body.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link_cap_flags = getelementptr i8, ptr %netdev, i32 2434
  %0 = ptrtoint ptr %link_cap_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %link_cap_flags, align 2
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 2420
  %2 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %autoneg_advertised, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %port, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %5 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %phy_address, align 2
  %link_speed = getelementptr i8, ptr %netdev, i32 2732
  %6 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.not = icmp eq i16 %7, -1
  br i1 %cmp.not, label %if.else19, label %if.then7

if.then7:                                         ; preds = %entry
  %conv5 = zext i16 %7 to i32
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv5, ptr %speed, align 4
  %link_duplex = getelementptr i8, ptr %netdev, i32 2734
  %9 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %link_duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp12 = icmp eq i16 %10, 2
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %duplex, align 4
  br label %if.end24

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %duplex, align 4
  br label %if.end24

if.else19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %speed21 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %speed21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %speed21, align 4
  %duplex23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %duplex23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %duplex23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else19, %if.else, %if.then14
  %15 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  %spec.select = select i1 %tobool.not, i32 207, i32 239
  %16 = or i16 %3, 128
  %or3 = zext i16 %16 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %17 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %autoneg, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %spec.select) #12
  %advertising28 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising28, i32 noundef %or3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1c_set_link_ksettings(ptr noundef %netdev, ptr nocapture noundef readonly %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2316
  %flags = getelementptr i8, ptr %netdev, i32 2712
  %call289 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %tobool.not90 = icmp eq i32 %call289, 0
  br i1 %tobool.not90, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #12
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %while.end.if.end41_crit_edge, label %if.else

while.end.if.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.else:                                          ; preds = %while.end
  %speed5 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed5, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else30 [
    i32 1000, label %if.then8
    i32 100, label %if.then21
  ]

if.then8:                                         ; preds = %if.else
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp11.not = icmp eq i8 %6, 1
  br i1 %cmp11.not, label %if.then8.if.end41_crit_edge, label %if.then13

if.then8.if.end41_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then13:                                        ; preds = %if.then8
  %msg_enable = getelementptr i8, ptr %netdev, i32 2720
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then13.cleanup67_crit_edge, label %if.then13.cleanup67.sink.split_crit_edge

if.then13.cleanup67.sink.split_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup67.sink.split

if.then13.cleanup67_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup67

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %duplex23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %duplex23 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %duplex23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp25 = icmp eq i8 %10, 1
  %. = select i1 %cmp25, i16 8, i16 4
  br label %if.end41

if.else30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %duplex32 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %duplex32 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %duplex32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp34 = icmp eq i8 %12, 1
  %.86 = select i1 %cmp34, i16 2, i16 1
  br label %if.end41

if.end41:                                         ; preds = %if.else30, %if.then21, %if.then8.if.end41_crit_edge, %while.end.if.end41_crit_edge
  %autoneg_advertised.2 = phi i16 [ 64, %while.end.if.end41_crit_edge ], [ %.86, %if.else30 ], [ %., %if.then21 ], [ 32, %if.then8.if.end41_crit_edge ]
  %autoneg_advertised42 = getelementptr i8, ptr %netdev, i32 2420
  %13 = ptrtoint ptr %autoneg_advertised42 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %autoneg_advertised42, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %autoneg_advertised.2)
  %cmp45.not = icmp eq i16 %14, %autoneg_advertised.2
  br i1 %cmp45.not, label %if.end41.cleanup67_crit_edge, label %if.then47

if.end41.cleanup67_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup67

if.then47:                                        ; preds = %if.end41
  %15 = ptrtoint ptr %autoneg_advertised42 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %autoneg_advertised.2, ptr %autoneg_advertised42, align 4
  %call49 = tail call i32 @atl1c_restart_autoneg(ptr noundef %hw1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.then47.cleanup67_crit_edge, label %if.then52

if.then47.cleanup67_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup67

if.then52:                                        ; preds = %if.then47
  %msg_enable53 = getelementptr i8, ptr %netdev, i32 2720
  %16 = ptrtoint ptr %msg_enable53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable53, align 8
  %and54 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then52.cleanup67_crit_edge, label %if.then52.cleanup67.sink.split_crit_edge

if.then52.cleanup67.sink.split_crit_edge:         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup67.sink.split

if.then52.cleanup67_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup67

cleanup67.sink.split:                             ; preds = %if.then52.cleanup67.sink.split_crit_edge, %if.then13.cleanup67.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str, %if.then13.cleanup67.sink.split_crit_edge ], [ @.str.6, %if.then52.cleanup67.sink.split_crit_edge ]
  %pdev60 = getelementptr i8, ptr %netdev, i32 2308
  %18 = ptrtoint ptr %pdev60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev60, align 4
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev61, ptr noundef nonnull %.str.6.sink) #16
  br label %cleanup67

cleanup67:                                        ; preds = %cleanup67.sink.split, %if.then52.cleanup67_crit_edge, %if.then47.cleanup67_crit_edge, %if.end41.cleanup67_crit_edge, %if.then13.cleanup67_crit_edge
  %retval.1 = phi i32 [ -22, %if.then13.cleanup67_crit_edge ], [ -22, %if.then52.cleanup67_crit_edge ], [ 0, %if.then47.cleanup67_crit_edge ], [ 0, %if.end41.cleanup67_crit_edge ], [ -22, %cleanup67.sink.split ]
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #12
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_read_phy_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1c_reinit_locked(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_check_eeprom_exist(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atl1c_read_eeprom(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1c_restart_autoneg(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @atl1c_ethtool_ops, !1, !"atl1c_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c", i32 276, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c", i32 76, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @atl1c_set_link_ksettings._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @atl1c_set_link_ksettings._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_ethtool.c", i32 99, i32 5}
!12 = !{ptr @atl1c_set_link_ksettings._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @atl1c_set_link_ksettings._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i8 0, i8 2}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2158015528}
!27 = !{i64 6534168}
!28 = !{i64 2158016042}
!29 = !{i64 2158016556}
!30 = !{i64 2158017386}
!31 = !{i64 2158017900}
!32 = !{i64 2158018414}
!33 = !{i64 2158019236}
!34 = !{i64 2158019746}
!35 = !{i64 2158020256}
!36 = !{i64 2158021078}
!37 = !{i64 2158021588}
!38 = !{i64 2158022098}
!39 = !{i64 2158022928}
!40 = !{i64 2158023442}
!41 = !{i64 2158023956}
!42 = !{i64 2158024786}
!43 = !{i64 2158025300}
!44 = !{i64 2158025814}
!45 = !{i64 2158026644}
!46 = !{i64 2158027158}
!47 = !{i64 2158027672}
!48 = !{i64 2158028502}
!49 = !{i64 2158029016}
!50 = !{i64 2158029530}
!51 = !{i64 2158030344}
!52 = !{i64 2158030850}
!53 = !{i64 2158031356}
!54 = !{i64 2158032186}
!55 = !{i64 2158032700}
!56 = !{i64 2158033214}
!57 = !{i64 2158034044}
!58 = !{i64 2158034558}
!59 = !{i64 2158035072}
!60 = !{i64 2158035902}
!61 = !{i64 2158036416}
!62 = !{i64 2158036930}
!63 = !{i64 2158037760}
!64 = !{i64 2158038274}
!65 = !{i64 2158038788}
!66 = !{i64 2158039618}
!67 = !{i64 2158040132}
!68 = !{i64 2158040646}
!69 = !{i64 2158041476}
!70 = !{i64 2158041990}
!71 = !{i64 2158042504}
!72 = !{i64 2158043355}
!73 = !{i64 2158043881}
!74 = !{i64 2158044407}
!75 = !{i64 2158045237}
!76 = !{i64 2158045751}
!77 = !{i64 2158046265}
!78 = !{i64 2158047116}
!79 = !{i64 2158047642}
!80 = !{i64 2158048168}
!81 = !{i64 2158048998}
!82 = !{i64 2158049512}
!83 = !{i64 2158050026}
!84 = !{i64 2158050856}
!85 = !{i64 2158051370}
!86 = !{i64 2158051884}
!87 = !{i64 2158052714}
!88 = !{i64 2158053228}
!89 = !{i64 2158053742}
!90 = !{i64 2158054572}
!91 = !{i64 2158055086}
!92 = !{i64 2158055600}
!93 = !{!"branch_weights", i32 1, i32 2000}
