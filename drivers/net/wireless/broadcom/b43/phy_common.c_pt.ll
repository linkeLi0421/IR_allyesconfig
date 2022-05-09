; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/phy_common.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/phy_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.138, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.138 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.b43_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.b43_leds = type { %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led, i8, %struct.work_struct }
%struct.b43_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8], %struct.atomic_t, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.101, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.101 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.139, %struct.spinlock, i32, %union.anon.140, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { ptr }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@b43_phyops_g = external dso_local constant %struct.b43_phy_operations, align 4
@b43_phyops_n = external dso_local constant %struct.b43_phy_operations, align 4
@b43_phyops_lp = external dso_local constant %struct.b43_phy_operations, align 4
@b43_phyops_ht = external dso_local constant %struct.b43_phy_operations, align 4
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/broadcom/b43/phy_common.c\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PHY init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"PHY init: Channel switch to default failed\0A\00", [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PHY/RADIO register access with enabled MAC.\0A\00", [51 x i8] zeroinitializer }, align 32
@switch.table.b43_phy_allocate = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @b43_phyops_g, ptr @b43_phyops_g, ptr @b43_phyops_n, ptr @b43_phyops_lp, ptr @b43_phyops_g, ptr @b43_phyops_ht], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 127]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 127]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 127]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 7, i64 11]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 67, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 102, i32 19 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 109, i32 19 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [50 x i8] c"../drivers/net/wireless/broadcom/b43/phy_common.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 209, i32 19 }
@___asan_gen_.25 = private unnamed_addr constant [30 x i8] c"switch.table.b43_phy_allocate\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @switch.table.b43_phy_allocate], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_phy_allocate to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_phy_allocate(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %phy1, align 4
  %type = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type, align 1
  %switch.tableidx = add i8 %2, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %3 = icmp ult i8 %switch.tableidx, 6
  br i1 %3, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i8 45, %switch.tableidx
  %4 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.lobit.not = icmp eq i8 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.b43_phy_allocate, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %phy1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %switch.load, ptr %phy1, align 4
  %8 = ptrtoint ptr %switch.load to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %switch.load, align 4
  %call = tail call i32 %9(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool34.not = icmp eq i32 %call, 0
  br i1 %tobool34.not, label %switch.lookup.cleanup_crit_edge, label %if.then35

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then35:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %phy1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %phy1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call, %if.then35 ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_free(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %free = getelementptr inbounds %struct.b43_phy_operations, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free, align 4
  tail call void %3(ptr noundef %dev) #4
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %phy, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_phy_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %chandef = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 17
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %chandef3 = getelementptr inbounds %struct.ieee80211_conf, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %chandef to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chandef3, ptr %chandef, align 4
  %9 = ptrtoint ptr %chandef3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chandef3, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %12 to i32
  %channel = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 18
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %channel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %switch_analog = getelementptr inbounds %struct.b43_phy_operations, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %switch_analog to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %switch_analog, align 4
  tail call void %15(ptr noundef %dev, i1 noundef zeroext true) #4
  tail call void @b43_mac_suspend(ptr noundef %dev) #4
  %16 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy1, align 4
  %software_rfkill.i = getelementptr inbounds %struct.b43_phy_operations, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %software_rfkill.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %software_rfkill.i, align 4
  tail call void %19(ptr noundef %dev, i1 noundef zeroext false) #4
  %radio_on.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 13
  %20 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %radio_on.i, align 1
  tail call void @b43_mac_enable(ptr noundef %dev) #4
  %init = getelementptr inbounds %struct.b43_phy_operations, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init, align 4
  %call = tail call i32 %22(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %wl9 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %wl9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wl9, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %24, ptr noundef nonnull @.str.1) #4
  br label %err_block_rf

if.end10:                                         ; preds = %if.end
  %do_full_init = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 5
  %25 = ptrtoint ptr %do_full_init to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %do_full_init, align 1
  %channel11 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 18
  %26 = ptrtoint ptr %channel11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel11, align 4
  %conv.i = trunc i32 %27 to i16
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %28 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wl.i, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw.i.i, align 4
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chandef.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i = icmp eq i32 %35, 1
  %conv4.i = or i16 %conv.i, 256
  %channelcookie.0.i = select i1 %cmp.i, i16 %conv4.i, i16 %conv.i
  %call5.i = tail call zeroext i16 @b43_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 160) #4
  tail call void @b43_shm_write16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 160, i16 noundef zeroext %channelcookie.0.i) #4
  %36 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy1, align 4
  %switch_channel.i = getelementptr inbounds %struct.b43_phy_operations, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %switch_channel.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %switch_channel.i, align 4
  %call6.i = tail call i32 %39(ptr noundef %dev, i32 noundef %27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %b43_switch_channel.exit.thread, label %if.then14

b43_switch_channel.exit.thread:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 8) #4
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  tail call void @b43_shm_write16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 160, i16 noundef zeroext %call5.i) #4
  %40 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %41, ptr noundef nonnull @.str.2) #4
  %42 = ptrtoint ptr %do_full_init to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %do_full_init, align 1
  %exit = getelementptr inbounds %struct.b43_phy_operations, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %exit, align 4
  %tobool18.not = icmp eq ptr %44, null
  br i1 %tobool18.not, label %if.then14.err_block_rf_crit_edge, label %if.then19

if.then14.err_block_rf_crit_edge:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_block_rf

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %44(ptr noundef %dev) #4
  br label %err_block_rf

err_block_rf:                                     ; preds = %if.then19, %if.then14.err_block_rf_crit_edge, %if.then8
  %err.0 = phi i32 [ %call, %if.then8 ], [ %call6.i, %if.then19 ], [ %call6.i, %if.then14.err_block_rf_crit_edge ]
  tail call void @b43_mac_suspend(ptr noundef %dev) #4
  %45 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy1, align 4
  %software_rfkill.i47 = getelementptr inbounds %struct.b43_phy_operations, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %software_rfkill.i47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %software_rfkill.i47, align 4
  tail call void %48(ptr noundef %dev, i1 noundef zeroext true) #4
  %49 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %radio_on.i, align 1
  tail call void @b43_mac_enable(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %err_block_rf, %b43_switch_channel.exit.thread
  %retval.0 = phi i32 [ %err.0, %err_block_rf ], [ 0, %b43_switch_channel.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_software_rfkill(ptr noundef %dev, i1 noundef zeroext %blocked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  tail call void @b43_mac_suspend(ptr noundef %dev) #4
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %software_rfkill = getelementptr inbounds %struct.b43_phy_operations, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %software_rfkill to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %software_rfkill, align 4
  tail call void %3(ptr noundef %dev, i1 noundef zeroext %blocked) #4
  %lnot = xor i1 %blocked, true
  %radio_on = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 13
  %frombool3 = zext i1 %lnot to i8
  %4 = ptrtoint ptr %radio_on to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool3, ptr %radio_on, align 1
  tail call void @b43_mac_enable(ptr noundef %dev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_switch_channel(ptr noundef %dev, i32 noundef %new_channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %conv = trunc i32 %new_channel to i16
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %conv4 = or i16 %conv, 256
  %channelcookie.0 = select i1 %cmp, i16 %conv4, i16 %conv
  %call5 = tail call zeroext i16 @b43_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 160) #4
  tail call void @b43_shm_write16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 160, i16 noundef zeroext %channelcookie.0) #4
  %8 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy1, align 4
  %switch_channel = getelementptr inbounds %struct.b43_phy_operations, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %switch_channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %switch_channel, align 4
  %call6 = tail call i32 %11(ptr noundef %dev, i32 noundef %new_channel) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %err_restore_cookie

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 8) #4
  br label %cleanup

err_restore_cookie:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @b43_shm_write16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 160, i16 noundef zeroext %call5) #4
  br label %cleanup

cleanup:                                          ; preds = %err_restore_cookie, %if.end8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_exit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  tail call void @b43_mac_suspend(ptr noundef %dev) #4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %software_rfkill.i = getelementptr inbounds %struct.b43_phy_operations, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %software_rfkill.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %software_rfkill.i, align 4
  tail call void %5(ptr noundef %dev, i1 noundef zeroext true) #4
  %radio_on.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 13
  %6 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %radio_on.i, align 1
  tail call void @b43_mac_enable(ptr noundef %dev) #4
  %do_full_init = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 5
  %7 = ptrtoint ptr %do_full_init to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %do_full_init, align 1
  %exit = getelementptr inbounds %struct.b43_phy_operations, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %9(ptr noundef %dev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @b43_has_hardware_pctl(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware_power_control = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 15
  %0 = ptrtoint ptr %hardware_power_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hardware_power_control, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %phy = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %supports_hwpctl = getelementptr inbounds %struct.b43_phy_operations, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %supports_hwpctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supports_hwpctl, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i1 %5(ptr noundef %dev) #4
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end4 ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_radio_lock(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_locked = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 21
  %0 = ptrtoint ptr %radio_locked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %radio_locked, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !18

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %radio_locked to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %radio_locked, align 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %read32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %6(ptr noundef %4, i16 noundef zeroext 288) #4
  %or = or i32 %call.i, 524288
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %write32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i, align 4
  tail call void %10(ptr noundef %8, i16 noundef zeroext 288, i32 noundef %or) #4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %read32.i29 = getelementptr inbounds %struct.b43_bus_dev, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %read32.i29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i29, align 4
  %call.i30 = tail call i32 %14(ptr noundef %12, i16 noundef zeroext 288) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_radio_unlock(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_locked = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 21
  %0 = ptrtoint ptr %radio_locked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %radio_locked, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !19

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %radio_locked to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %radio_locked, align 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %read16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %6(ptr noundef %4, i16 noundef zeroext 992) #4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %read32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i, align 4
  %call.i30 = tail call i32 %10(ptr noundef %8, i16 noundef zeroext 288) #4
  %and = and i32 %call.i30, -524289
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %write32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32.i, align 4
  tail call void %14(ptr noundef %12, i16 noundef zeroext 288, i32 noundef %and) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_lock(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_locked = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 20
  %0 = ptrtoint ptr %phy_locked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_locked, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !18

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %phy_locked to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %phy_locked, align 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %core_rev = getelementptr inbounds %struct.b43_bus_dev, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %core_rev to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %core_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %do.end40, label %if.end.if.end46_crit_edge, !prof !19

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef null) #4
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end.if.end46_crit_edge
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wl, align 4
  %operating.i = getelementptr inbounds %struct.b43_wl, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %operating.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %operating.i, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end46.if.then55_crit_edge, label %b43_is_mode.exit

if.end46.if.then55_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

b43_is_mode.exit:                                 ; preds = %if.end46
  %if_type.i = getelementptr inbounds %struct.b43_wl, ptr %8, i32 0, i32 8
  %11 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 3
  br i1 %cmp.i.not, label %b43_is_mode.exit.if.end56_crit_edge, label %b43_is_mode.exit.if.then55_crit_edge

b43_is_mode.exit.if.then55_crit_edge:             ; preds = %b43_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

b43_is_mode.exit.if.end56_crit_edge:              ; preds = %b43_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then55:                                        ; preds = %b43_is_mode.exit.if.then55_crit_edge, %if.end46.if.then55_crit_edge
  tail call void @b43_power_saving_ctl_bits(ptr noundef %dev, i32 noundef 4) #4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %b43_is_mode.exit.if.end56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_power_saving_ctl_bits(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_unlock(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_locked = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 20
  %0 = ptrtoint ptr %phy_locked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_locked, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !19

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %phy_locked to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %phy_locked, align 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %core_rev = getelementptr inbounds %struct.b43_bus_dev, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %core_rev to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %core_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %do.end41, label %if.end.if.end47_crit_edge, !prof !19

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 9, ptr noundef null) #4
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wl, align 4
  %operating.i = getelementptr inbounds %struct.b43_wl, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %operating.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %operating.i, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end47.if.then56_crit_edge, label %b43_is_mode.exit

if.end47.if.then56_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

b43_is_mode.exit:                                 ; preds = %if.end47
  %if_type.i = getelementptr inbounds %struct.b43_wl, ptr %8, i32 0, i32 8
  %11 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 3
  br i1 %cmp.i.not, label %b43_is_mode.exit.if.end57_crit_edge, label %b43_is_mode.exit.if.then56_crit_edge

b43_is_mode.exit.if.then56_crit_edge:             ; preds = %b43_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

b43_is_mode.exit.if.end57_crit_edge:              ; preds = %b43_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then56:                                        ; preds = %b43_is_mode.exit.if.then56_crit_edge, %if.end47.if.then56_crit_edge
  tail call void @b43_power_saving_ctl_bits(ptr noundef %dev, i32 noundef 0) #4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %b43_is_mode.exit.if.end57_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i, i32 noundef 4) #4
  %0 = ptrtoint ptr %__init_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.assert_mac_suspended.exit_crit_edge

entry.assert_mac_suspended.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

land.lhs.true.i:                                  ; preds = %entry
  %mac_suspended.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %mac_suspended.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp slt i32 %3, 1
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.assert_mac_suspended.exit_crit_edge

land.lhs.true.i.assert_mac_suspended.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %5, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit

assert_mac_suspended.exit:                        ; preds = %if.then.i, %land.lhs.true.i.assert_mac_suspended.exit_crit_edge, %entry.assert_mac_suspended.exit_crit_edge
  %phy = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %writes_counter = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %6 = ptrtoint ptr %writes_counter to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %writes_counter, align 1
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 4
  %radio_read = getelementptr inbounds %struct.b43_phy_operations, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %radio_read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %radio_read, align 4
  %call = tail call zeroext i16 %10(ptr noundef %dev, i16 noundef zeroext %reg) #4
  ret i16 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %reg, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i, i32 noundef 4) #4
  %0 = ptrtoint ptr %__init_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.assert_mac_suspended.exit_crit_edge

entry.assert_mac_suspended.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

land.lhs.true.i:                                  ; preds = %entry
  %mac_suspended.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %mac_suspended.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp slt i32 %3, 1
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.assert_mac_suspended.exit_crit_edge

land.lhs.true.i.assert_mac_suspended.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %5, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit

assert_mac_suspended.exit:                        ; preds = %if.then.i, %land.lhs.true.i.assert_mac_suspended.exit_crit_edge, %entry.assert_mac_suspended.exit_crit_edge
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %assert_mac_suspended.exit.if.end_crit_edge [
    i32 0, label %if.then.i13
    i32 1, label %if.then4.i
  ]

assert_mac_suspended.exit.if.end_crit_edge:       ; preds = %assert_mac_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i13:                                      ; preds = %assert_mac_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  %11 = getelementptr inbounds %struct.b43_bus_dev, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 3
  br label %b43_bus_host_is_pci.exit

if.then4.i:                                       ; preds = %assert_mac_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = getelementptr inbounds %struct.b43_bus_dev, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %bus5.i = getelementptr inbounds %struct.ssb_device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus5.i, align 4
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %20, i32 0, i32 5
  br label %b43_bus_host_is_pci.exit

b43_bus_host_is_pci.exit:                         ; preds = %if.then4.i, %if.then.i13
  %bustype.sink.i = phi ptr [ %bustype.i, %if.then4.i ], [ %hosttype.i, %if.then.i13 ]
  %21 = ptrtoint ptr %bustype.sink.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bustype.sink.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %9)
  %cmp6.i = icmp eq i32 %22, %9
  br i1 %cmp6.i, label %land.lhs.true, label %b43_bus_host_is_pci.exit.if.end_crit_edge

b43_bus_host_is_pci.exit.if.end_crit_edge:        ; preds = %b43_bus_host_is_pci.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %b43_bus_host_is_pci.exit
  %writes_counter = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %23 = ptrtoint ptr %writes_counter to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %writes_counter, align 1
  %inc = add i8 %24, 1
  store i8 %inc, ptr %writes_counter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %inc)
  %cmp = icmp ugt i8 %inc, 24
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %7, i32 0, i32 8
  %25 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %26(ptr noundef %7, i16 noundef zeroext 288) #4
  %27 = ptrtoint ptr %writes_counter to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %writes_counter, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %b43_bus_host_is_pci.exit.if.end_crit_edge, %assert_mac_suspended.exit.if.end_crit_edge
  %phy6 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %28 = ptrtoint ptr %phy6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy6, align 4
  %radio_write = getelementptr inbounds %struct.b43_phy_operations, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %radio_write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %radio_write, align 4
  tail call void %31(ptr noundef %dev, i16 noundef zeroext %reg, i16 noundef zeroext %value) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i.i, i32 noundef 4) #4
  %0 = ptrtoint ptr %__init_status.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp sgt i32 %1, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %entry.b43_radio_read.exit_crit_edge

entry.b43_radio_read.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_radio_read.exit

land.lhs.true.i.i:                                ; preds = %entry
  %mac_suspended.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %mac_suspended.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i.i = icmp slt i32 %3, 1
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.b43_radio_read.exit_crit_edge

land.lhs.true.i.i.b43_radio_read.exit_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_radio_read.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %5, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %b43_radio_read.exit

b43_radio_read.exit:                              ; preds = %if.then.i.i, %land.lhs.true.i.i.b43_radio_read.exit_crit_edge, %entry.b43_radio_read.exit_crit_edge
  %phy.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %writes_counter.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %6 = ptrtoint ptr %writes_counter.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %writes_counter.i, align 1
  %7 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy.i, align 4
  %radio_read.i = getelementptr inbounds %struct.b43_phy_operations, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %radio_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %radio_read.i, align 4
  %call.i = tail call zeroext i16 %10(ptr noundef %dev, i16 noundef zeroext %offset) #4
  %and5 = and i16 %call.i, %mask
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %and5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i.i, i32 noundef 4) #4
  %0 = ptrtoint ptr %__init_status.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp sgt i32 %1, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %entry.b43_radio_read.exit_crit_edge

entry.b43_radio_read.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_radio_read.exit

land.lhs.true.i.i:                                ; preds = %entry
  %mac_suspended.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %mac_suspended.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i.i = icmp slt i32 %3, 1
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.b43_radio_read.exit_crit_edge

land.lhs.true.i.i.b43_radio_read.exit_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_radio_read.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %5, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %b43_radio_read.exit

b43_radio_read.exit:                              ; preds = %if.then.i.i, %land.lhs.true.i.i.b43_radio_read.exit_crit_edge, %entry.b43_radio_read.exit_crit_edge
  %phy.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %writes_counter.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %6 = ptrtoint ptr %writes_counter.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %writes_counter.i, align 1
  %7 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy.i, align 4
  %radio_read.i = getelementptr inbounds %struct.b43_phy_operations, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %radio_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %radio_read.i, align 4
  %call.i = tail call zeroext i16 %10(ptr noundef %dev, i16 noundef zeroext %offset) #4
  %or5 = or i16 %call.i, %set
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %or5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %mask, i16 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i.i, i32 noundef 4) #4
  %0 = ptrtoint ptr %__init_status.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp sgt i32 %1, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %entry.b43_radio_read.exit_crit_edge

entry.b43_radio_read.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_radio_read.exit

land.lhs.true.i.i:                                ; preds = %entry
  %mac_suspended.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %mac_suspended.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i.i = icmp slt i32 %3, 1
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.b43_radio_read.exit_crit_edge

land.lhs.true.i.i.b43_radio_read.exit_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_radio_read.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %5, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %b43_radio_read.exit

b43_radio_read.exit:                              ; preds = %if.then.i.i, %land.lhs.true.i.i.b43_radio_read.exit_crit_edge, %entry.b43_radio_read.exit_crit_edge
  %phy.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %writes_counter.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %6 = ptrtoint ptr %writes_counter.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %writes_counter.i, align 1
  %7 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy.i, align 4
  %radio_read.i = getelementptr inbounds %struct.b43_phy_operations, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %radio_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %radio_read.i, align 4
  %call.i = tail call zeroext i16 %10(ptr noundef %dev, i16 noundef zeroext %offset) #4
  %and6 = and i16 %call.i, %mask
  %or7 = or i16 %and6, %set
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %or7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @b43_radio_wait_value(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %mask, i16 noundef zeroext %value, i32 noundef %delay, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp17 = icmp sgt i32 %timeout, 0
  br i1 %cmp17, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %__init_status.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %mac_suspended.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %phy.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %writes_counter.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  br label %for.body

for.body:                                         ; preds = %cond.false8.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cond.false8.for.body_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i.i, i32 noundef 4) #4
  %0 = ptrtoint ptr %__init_status.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp sgt i32 %1, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.b43_radio_read.exit_crit_edge

for.body.b43_radio_read.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_radio_read.exit

land.lhs.true.i.i:                                ; preds = %for.body
  %2 = ptrtoint ptr %mac_suspended.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i.i = icmp slt i32 %3, 1
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.b43_radio_read.exit_crit_edge

land.lhs.true.i.i.b43_radio_read.exit_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_radio_read.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %5, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %b43_radio_read.exit

b43_radio_read.exit:                              ; preds = %if.then.i.i, %land.lhs.true.i.i.b43_radio_read.exit_crit_edge, %for.body.b43_radio_read.exit_crit_edge
  %6 = ptrtoint ptr %writes_counter.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %writes_counter.i, align 1
  %7 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy.i, align 4
  %radio_read.i = getelementptr inbounds %struct.b43_phy_operations, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %radio_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %radio_read.i, align 4
  %call.i = tail call zeroext i16 %10(ptr noundef %dev, i16 noundef zeroext %offset) #4
  %and16 = and i16 %call.i, %mask
  call void @__sanitizer_cov_trace_cmp2(i16 %and16, i16 %value)
  %cmp3 = icmp eq i16 %and16, %value
  br i1 %cmp3, label %b43_radio_read.exit.cleanup_crit_edge, label %cond.false8

b43_radio_read.exit.cleanup_crit_edge:            ; preds = %b43_radio_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false8:                                      ; preds = %b43_radio_read.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %delay) #4
  %add = add i32 %i.018, %delay
  %cmp = icmp slt i32 %add, %timeout
  br i1 %cmp, label %cond.false8.for.body_crit_edge, label %cond.false8.cleanup_crit_edge

cond.false8.cleanup_crit_edge:                    ; preds = %cond.false8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false8.for.body_crit_edge:                   ; preds = %cond.false8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %cond.false8.cleanup_crit_edge, %b43_radio_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp3, %cond.false8.cleanup_crit_edge ], [ %cmp3, %b43_radio_read.exit.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i, i32 noundef 4) #4
  %0 = ptrtoint ptr %__init_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.assert_mac_suspended.exit_crit_edge

entry.assert_mac_suspended.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

land.lhs.true.i:                                  ; preds = %entry
  %mac_suspended.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %mac_suspended.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp slt i32 %3, 1
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.assert_mac_suspended.exit_crit_edge

land.lhs.true.i.assert_mac_suspended.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %5, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit

assert_mac_suspended.exit:                        ; preds = %if.then.i, %land.lhs.true.i.assert_mac_suspended.exit_crit_edge, %entry.assert_mac_suspended.exit_crit_edge
  %phy = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %writes_counter = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %6 = ptrtoint ptr %writes_counter to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %writes_counter, align 1
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 4
  %phy_read = getelementptr inbounds %struct.b43_phy_operations, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %phy_read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_read, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %assert_mac_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i16 %10(ptr noundef %dev, i16 noundef zeroext %reg) #4
  br label %return

if.end:                                           ; preds = %assert_mac_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write16.i.i, align 4
  tail call void %14(ptr noundef %12, i16 noundef zeroext 1020, i16 noundef zeroext %reg) #4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %read16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %18(ptr noundef %16, i16 noundef zeroext 1022) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i16 [ %call, %if.then ], [ %call.i, %if.end ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext %reg, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i, i32 noundef 4) #4
  %0 = ptrtoint ptr %__init_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.assert_mac_suspended.exit_crit_edge

entry.assert_mac_suspended.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

land.lhs.true.i:                                  ; preds = %entry
  %mac_suspended.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %mac_suspended.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp slt i32 %3, 1
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.assert_mac_suspended.exit_crit_edge

land.lhs.true.i.assert_mac_suspended.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %5, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit

assert_mac_suspended.exit:                        ; preds = %if.then.i, %land.lhs.true.i.assert_mac_suspended.exit_crit_edge, %entry.assert_mac_suspended.exit_crit_edge
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %9, label %assert_mac_suspended.exit.if.end_crit_edge [
    i32 0, label %if.then.i23
    i32 1, label %if.then4.i
  ]

assert_mac_suspended.exit.if.end_crit_edge:       ; preds = %assert_mac_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i23:                                      ; preds = %assert_mac_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  %11 = getelementptr inbounds %struct.b43_bus_dev, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 3
  br label %b43_bus_host_is_pci.exit

if.then4.i:                                       ; preds = %assert_mac_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = getelementptr inbounds %struct.b43_bus_dev, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %bus5.i = getelementptr inbounds %struct.ssb_device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus5.i, align 4
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %20, i32 0, i32 5
  br label %b43_bus_host_is_pci.exit

b43_bus_host_is_pci.exit:                         ; preds = %if.then4.i, %if.then.i23
  %bustype.sink.i = phi ptr [ %bustype.i, %if.then4.i ], [ %hosttype.i, %if.then.i23 ]
  %21 = ptrtoint ptr %bustype.sink.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bustype.sink.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %9)
  %cmp6.i = icmp eq i32 %22, %9
  br i1 %cmp6.i, label %land.lhs.true, label %b43_bus_host_is_pci.exit.if.end_crit_edge

b43_bus_host_is_pci.exit.if.end_crit_edge:        ; preds = %b43_bus_host_is_pci.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %b43_bus_host_is_pci.exit
  %writes_counter = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %23 = ptrtoint ptr %writes_counter to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %writes_counter, align 1
  %inc = add i8 %24, 1
  store i8 %inc, ptr %writes_counter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %inc)
  %cmp = icmp ugt i8 %inc, 24
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %7, i32 0, i32 7
  %25 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %26(ptr noundef %7, i16 noundef zeroext 992) #4
  %27 = ptrtoint ptr %writes_counter to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %writes_counter, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %b43_bus_host_is_pci.exit.if.end_crit_edge, %assert_mac_suspended.exit.if.end_crit_edge
  %phy6 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %28 = ptrtoint ptr %phy6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy6, align 4
  %phy_write = getelementptr inbounds %struct.b43_phy_operations, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %phy_write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_write, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %31(ptr noundef %dev, i16 noundef zeroext %reg, i16 noundef zeroext %value) #4
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i, align 4
  tail call void %35(ptr noundef %33, i16 noundef zeroext 1020, i16 noundef zeroext %reg) #4
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %write16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write16.i, align 4
  tail call void %39(ptr noundef %37, i16 noundef zeroext 1022, i16 noundef zeroext %value) #4
  br label %return

return:                                           ; preds = %if.end11, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_copy(ptr noundef %dev, i16 noundef zeroext %destreg, i16 noundef zeroext %srcreg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i.i, i32 noundef 4) #4
  %0 = ptrtoint ptr %__init_status.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp sgt i32 %1, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %entry.assert_mac_suspended.exit.i_crit_edge

entry.assert_mac_suspended.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %mac_suspended.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %mac_suspended.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i.i = icmp slt i32 %3, 1
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge

land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %5, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit.i

assert_mac_suspended.exit.i:                      ; preds = %if.then.i.i, %land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge, %entry.assert_mac_suspended.exit.i_crit_edge
  %phy.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %writes_counter.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %6 = ptrtoint ptr %writes_counter.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %writes_counter.i, align 1
  %7 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy.i, align 4
  %phy_read.i = getelementptr inbounds %struct.b43_phy_operations, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %phy_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_read.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %assert_mac_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call zeroext i16 %10(ptr noundef %dev, i16 noundef zeroext %srcreg) #4
  br label %b43_phy_read.exit

if.end.i:                                         ; preds = %assert_mac_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %14(ptr noundef %12, i16 noundef zeroext 1020, i16 noundef zeroext %srcreg) #4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %read16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %18(ptr noundef %16, i16 noundef zeroext 1022) #4
  br label %b43_phy_read.exit

b43_phy_read.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %call.i.i, %if.end.i ]
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext %destreg, i16 noundef zeroext %retval.0.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %phy_maskset = getelementptr inbounds %struct.b43_phy_operations, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phy_maskset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_maskset, align 4
  %tobool.not = icmp eq ptr %3, null
  %__init_status.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i.i, i32 noundef 4) #4
  %4 = ptrtoint ptr %__init_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp sgt i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.then.assert_mac_suspended.exit_crit_edge

if.then.assert_mac_suspended.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

land.lhs.true.i:                                  ; preds = %if.then
  %mac_suspended.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %mac_suspended.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i = icmp slt i32 %7, 1
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.assert_mac_suspended.exit_crit_edge

land.lhs.true.i.assert_mac_suspended.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %9, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit

assert_mac_suspended.exit:                        ; preds = %if.then.i, %land.lhs.true.i.assert_mac_suspended.exit_crit_edge, %if.then.assert_mac_suspended.exit_crit_edge
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %phy_maskset3 = getelementptr inbounds %struct.b43_phy_operations, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %phy_maskset3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_maskset3, align 4
  tail call void %13(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %mask, i16 noundef zeroext 0) #4
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else.assert_mac_suspended.exit.i_crit_edge

if.else.assert_mac_suspended.exit.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit.i

land.lhs.true.i.i:                                ; preds = %if.else
  %mac_suspended.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %14 = ptrtoint ptr %mac_suspended.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp1.i.i = icmp slt i32 %15, 1
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge

land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %17, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit.i

assert_mac_suspended.exit.i:                      ; preds = %if.then.i.i, %land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge, %if.else.assert_mac_suspended.exit.i_crit_edge
  %writes_counter.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %18 = ptrtoint ptr %writes_counter.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %writes_counter.i, align 1
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %phy_read.i = getelementptr inbounds %struct.b43_phy_operations, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %phy_read.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_read.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i15

if.then.i15:                                      ; preds = %assert_mac_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call zeroext i16 %22(ptr noundef %dev, i16 noundef zeroext %offset) #4
  br label %b43_phy_read.exit

if.end.i:                                         ; preds = %assert_mac_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %26(ptr noundef %24, i16 noundef zeroext 1020, i16 noundef zeroext %offset) #4
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %read16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %30(ptr noundef %28, i16 noundef zeroext 1022) #4
  br label %b43_phy_read.exit

b43_phy_read.exit:                                ; preds = %if.end.i, %if.then.i15
  %retval.0.i = phi i16 [ %call.i, %if.then.i15 ], [ %call.i.i, %if.end.i ]
  %and14 = and i16 %retval.0.i, %mask
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %and14)
  br label %if.end

if.end:                                           ; preds = %b43_phy_read.exit, %assert_mac_suspended.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %phy_maskset = getelementptr inbounds %struct.b43_phy_operations, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phy_maskset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_maskset, align 4
  %tobool.not = icmp eq ptr %3, null
  %__init_status.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i.i, i32 noundef 4) #4
  %4 = ptrtoint ptr %__init_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp sgt i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.then.assert_mac_suspended.exit_crit_edge

if.then.assert_mac_suspended.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

land.lhs.true.i:                                  ; preds = %if.then
  %mac_suspended.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %mac_suspended.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i = icmp slt i32 %7, 1
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.assert_mac_suspended.exit_crit_edge

land.lhs.true.i.assert_mac_suspended.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %9, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit

assert_mac_suspended.exit:                        ; preds = %if.then.i, %land.lhs.true.i.assert_mac_suspended.exit_crit_edge, %if.then.assert_mac_suspended.exit_crit_edge
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %phy_maskset3 = getelementptr inbounds %struct.b43_phy_operations, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %phy_maskset3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_maskset3, align 4
  tail call void %13(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext -1, i16 noundef zeroext %set) #4
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else.assert_mac_suspended.exit.i_crit_edge

if.else.assert_mac_suspended.exit.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit.i

land.lhs.true.i.i:                                ; preds = %if.else
  %mac_suspended.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %14 = ptrtoint ptr %mac_suspended.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp1.i.i = icmp slt i32 %15, 1
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge

land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %17, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit.i

assert_mac_suspended.exit.i:                      ; preds = %if.then.i.i, %land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge, %if.else.assert_mac_suspended.exit.i_crit_edge
  %writes_counter.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %18 = ptrtoint ptr %writes_counter.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %writes_counter.i, align 1
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %phy_read.i = getelementptr inbounds %struct.b43_phy_operations, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %phy_read.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_read.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i15

if.then.i15:                                      ; preds = %assert_mac_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call zeroext i16 %22(ptr noundef %dev, i16 noundef zeroext %offset) #4
  br label %b43_phy_read.exit

if.end.i:                                         ; preds = %assert_mac_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %26(ptr noundef %24, i16 noundef zeroext 1020, i16 noundef zeroext %offset) #4
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %read16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %30(ptr noundef %28, i16 noundef zeroext 1022) #4
  br label %b43_phy_read.exit

b43_phy_read.exit:                                ; preds = %if.end.i, %if.then.i15
  %retval.0.i = phi i16 [ %call.i, %if.then.i15 ], [ %call.i.i, %if.end.i ]
  %or14 = or i16 %retval.0.i, %set
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %or14)
  br label %if.end

if.end:                                           ; preds = %b43_phy_read.exit, %assert_mac_suspended.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %mask, i16 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %phy_maskset = getelementptr inbounds %struct.b43_phy_operations, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phy_maskset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_maskset, align 4
  %tobool.not = icmp eq ptr %3, null
  %__init_status.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i.i, i32 noundef 4) #4
  %4 = ptrtoint ptr %__init_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp sgt i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.then.assert_mac_suspended.exit_crit_edge

if.then.assert_mac_suspended.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

land.lhs.true.i:                                  ; preds = %if.then
  %mac_suspended.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %mac_suspended.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i = icmp slt i32 %7, 1
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.assert_mac_suspended.exit_crit_edge

land.lhs.true.i.assert_mac_suspended.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %9, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit

assert_mac_suspended.exit:                        ; preds = %if.then.i, %land.lhs.true.i.assert_mac_suspended.exit_crit_edge, %if.then.assert_mac_suspended.exit_crit_edge
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %phy_maskset3 = getelementptr inbounds %struct.b43_phy_operations, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %phy_maskset3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_maskset3, align 4
  tail call void %13(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %mask, i16 noundef zeroext %set) #4
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else.assert_mac_suspended.exit.i_crit_edge

if.else.assert_mac_suspended.exit.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit.i

land.lhs.true.i.i:                                ; preds = %if.else
  %mac_suspended.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 18
  %14 = ptrtoint ptr %mac_suspended.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_suspended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp1.i.i = icmp slt i32 %15, 1
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge

land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %assert_mac_suspended.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %17, ptr noundef nonnull @.str.3) #4
  tail call void @dump_stack() #7
  br label %assert_mac_suspended.exit.i

assert_mac_suspended.exit.i:                      ; preds = %if.then.i.i, %land.lhs.true.i.i.assert_mac_suspended.exit.i_crit_edge, %if.else.assert_mac_suspended.exit.i_crit_edge
  %writes_counter.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 9
  %18 = ptrtoint ptr %writes_counter.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %writes_counter.i, align 1
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %phy_read.i = getelementptr inbounds %struct.b43_phy_operations, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %phy_read.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_read.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i18

if.then.i18:                                      ; preds = %assert_mac_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call zeroext i16 %22(ptr noundef %dev, i16 noundef zeroext %offset) #4
  br label %b43_phy_read.exit

if.end.i:                                         ; preds = %assert_mac_suspended.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %26(ptr noundef %24, i16 noundef zeroext 1020, i16 noundef zeroext %offset) #4
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %read16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %30(ptr noundef %28, i16 noundef zeroext 1022) #4
  br label %b43_phy_read.exit

b43_phy_read.exit:                                ; preds = %if.end.i, %if.then.i18
  %retval.0.i = phi i16 [ %call.i, %if.then.i18 ], [ %call.i.i, %if.end.i ]
  %and16 = and i16 %retval.0.i, %mask
  %or17 = or i16 %and16, %set
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %or17)
  br label %if.end

if.end:                                           ; preds = %b43_phy_read.exit, %assert_mac_suspended.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_put_into_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aread32.i, align 4
  %call.i = tail call i32 %13(ptr noundef %7, i16 noundef zeroext 1032) #4
  %and = and i32 %call.i, -8203
  %or3 = or i32 %and, 10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = getelementptr inbounds %struct.b43_bus_dev, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %ops.i39 = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ops.i39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i39, align 4
  %awrite32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %awrite32.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %awrite32.i, align 4
  tail call void %24(ptr noundef %18, i16 noundef zeroext 1032, i32 noundef %or3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #4
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = getelementptr inbounds %struct.b43_bus_dev, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %ops.i40 = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ops.i40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i40, align 4
  %aread32.i41 = getelementptr inbounds %struct.bcma_host_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %aread32.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aread32.i41, align 4
  %call.i42 = tail call i32 %36(ptr noundef %30, i16 noundef zeroext 1032) #4
  %and7 = and i32 %call.i42, -3
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %39 = getelementptr inbounds %struct.b43_bus_dev, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %ops.i43 = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i43, align 4
  %awrite32.i44 = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %awrite32.i44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %awrite32.i44, align 4
  tail call void %47(ptr noundef %41, i16 noundef zeroext 1032, i32 noundef %and7) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %49 = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read32.i, align 4
  %call.i45 = tail call i32 %55(ptr noundef %51, i16 noundef zeroext 3992) #4
  %and12 = and i32 %call.i45, -537526273
  %or14 = or i32 %and12, 655360
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %58 = getelementptr inbounds %struct.b43_bus_dev, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32.i, align 4
  tail call void %64(ptr noundef %60, i16 noundef zeroext 3992, i32 noundef %or14) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  %67 = getelementptr inbounds %struct.b43_bus_dev, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %read32.i46 = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %read32.i46 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read32.i46, align 4
  %call.i47 = tail call i32 %73(ptr noundef %69, i16 noundef zeroext 3992) #4
  %and18 = and i32 %call.i47, -131073
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %76 = getelementptr inbounds %struct.b43_bus_dev, ptr %75, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %write32.i48 = getelementptr inbounds %struct.ssb_bus_ops, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %write32.i48 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write32.i48, align 4
  tail call void %82(ptr noundef %78, i16 noundef zeroext 3992, i32 noundef %and18) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_take_out_of_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aread32.i, align 4
  %call.i = tail call i32 %13(ptr noundef %7, i16 noundef zeroext 1032) #4
  %and3 = and i32 %call.i, -15
  %or = or i32 %and3, 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = getelementptr inbounds %struct.b43_bus_dev, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %ops.i49 = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ops.i49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i49, align 4
  %awrite32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %awrite32.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %awrite32.i, align 4
  tail call void %24(ptr noundef %18, i16 noundef zeroext 1032, i32 noundef %or) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #4
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = getelementptr inbounds %struct.b43_bus_dev, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %ops.i50 = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ops.i50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i50, align 4
  %aread32.i51 = getelementptr inbounds %struct.bcma_host_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %aread32.i51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aread32.i51, align 4
  %call.i52 = tail call i32 %36(ptr noundef %30, i16 noundef zeroext 1032) #4
  %and7 = and i32 %call.i52, -7
  %or8 = or i32 %and7, 4
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %39 = getelementptr inbounds %struct.b43_bus_dev, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %ops.i53 = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i53, align 4
  %awrite32.i54 = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %awrite32.i54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %awrite32.i54, align 4
  tail call void %47(ptr noundef %41, i16 noundef zeroext 1032, i32 noundef %or8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %49 = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read32.i, align 4
  %call.i55 = tail call i32 %55(ptr noundef %51, i16 noundef zeroext 3992) #4
  %and14 = and i32 %call.i55, -917505
  %or15 = or i32 %and14, 131072
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %58 = getelementptr inbounds %struct.b43_bus_dev, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32.i, align 4
  tail call void %64(ptr noundef %60, i16 noundef zeroext 3992, i32 noundef %or15) #4
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  %67 = getelementptr inbounds %struct.b43_bus_dev, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %read32.i56 = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %read32.i56 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read32.i56, align 4
  %call.i57 = tail call i32 %73(ptr noundef %69, i16 noundef zeroext 3992) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %76 = getelementptr inbounds %struct.b43_bus_dev, ptr %75, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %read32.i58 = getelementptr inbounds %struct.ssb_bus_ops, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %read32.i58 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32.i58, align 4
  %call.i59 = tail call i32 %82(ptr noundef %78, i16 noundef zeroext 3992) #4
  %and21 = and i32 %call.i59, -393217
  %or22 = or i32 %and21, 262144
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  %85 = getelementptr inbounds %struct.b43_bus_dev, ptr %84, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %write32.i60 = getelementptr inbounds %struct.ssb_bus_ops, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %write32.i60 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i60, align 4
  tail call void %91(ptr noundef %87, i16 noundef zeroext 3992, i32 noundef %or22) #4
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %94 = getelementptr inbounds %struct.b43_bus_dev, ptr %93, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %read32.i61 = getelementptr inbounds %struct.ssb_bus_ops, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %read32.i61 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read32.i61, align 4
  %call.i62 = tail call i32 %100(ptr noundef %96, i16 noundef zeroext 3992) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_shm_read16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_shm_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_mac_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_mac_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_txpower_adjust_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -480
  %mutex = getelementptr i8, ptr %work, i32 -472
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !prof !19

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %__init_status = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #4
  %2 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %land.rhs.if.end_crit_edge, !prof !18

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %phy = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %adjust_txpower = getelementptr inbounds %struct.b43_phy_operations, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %adjust_txpower to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adjust_txpower, align 4
  tail call void %7(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_txpower_check(ptr noundef %dev, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  %next_txpwr_check_time = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 16
  %1 = ptrtoint ptr %next_txpwr_check_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %next_txpwr_check_time, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %add = add i32 %0, 200
  %call = tail call i32 @round_jiffies(i32 noundef %add) #4
  %next_txpwr_check_time4 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 16
  %3 = ptrtoint ptr %next_txpwr_check_time4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %next_txpwr_check_time4, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %board_vendor = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %board_vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %board_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5348, i16 %7)
  %cmp6 = icmp eq i16 %7, 5348
  br i1 %cmp6, label %land.lhs.true, label %if.end3.if.end13_crit_edge

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end3
  %board_type = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %board_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %board_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1046, i16 %9)
  %cmp10 = icmp eq i16 %9, 1046
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %10 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy1, align 4
  %recalc_txpower = getelementptr inbounds %struct.b43_phy_operations, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %recalc_txpower to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %recalc_txpower, align 4
  %and14 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15 = icmp ne i32 %and14, 0
  %call17 = tail call i32 %13(ptr noundef %dev, i1 noundef zeroext %tobool15) #4
  %14 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call17, label %do.end [
    i32 1, label %if.end13.cleanup_crit_edge
    i32 0, label %if.end13.if.end39_crit_edge
  ], !prof !20

if.end13.if.end39_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 502, i32 noundef 9, ptr noundef null) #4
  br label %if.end39

if.end39:                                         ; preds = %do.end, %if.end13.if.end39_crit_edge
  %15 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy1, align 4
  %adjust_txpower = getelementptr inbounds %struct.b43_phy_operations, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %adjust_txpower to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adjust_txpower, align 4
  %cmp48 = icmp eq ptr %18, null
  br i1 %cmp48, label %do.end65, label %if.end39.if.end71_crit_edge, !prof !19

if.end39.if.end71_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

do.end65:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #4
  br label %if.end71

if.end71:                                         ; preds = %do.end65, %if.end39.if.end71_crit_edge
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %19 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wl, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %txpower_adjust_work = getelementptr inbounds %struct.b43_wl, ptr %20, i32 0, i32 24
  tail call void @ieee80211_queue_work(ptr noundef %22, ptr noundef %txpower_adjust_work) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_phy_shm_tssi_read(ptr noundef %dev, i16 noundef zeroext %shm_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 88, i16 %shm_offset)
  %cmp.not = icmp eq i16 %shm_offset, 88
  %call = tail call i32 @b43_shm_read32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext %shm_offset) #4
  %and = and i32 %call, 255
  %shr = lshr i32 %call, 8
  %and2 = and i32 %shr, 255
  %shr3 = lshr i32 %call, 16
  %and4 = and i32 %shr3, 255
  %shr5 = lshr i32 %call, 24
  %trunc = trunc i32 %call to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %trunc, label %lor.lhs.false11 [
    i8 0, label %entry.cleanup_crit_edge
    i8 127, label %entry.cleanup_crit_edge94
  ]

entry.cleanup_crit_edge94:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false11:                                  ; preds = %entry
  %trunc92 = trunc i32 %shr to i8
  %1 = zext i8 %trunc92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %trunc92, label %lor.lhs.false17 [
    i8 0, label %lor.lhs.false11.cleanup_crit_edge
    i8 127, label %lor.lhs.false11.cleanup_crit_edge95
  ]

lor.lhs.false11.cleanup_crit_edge95:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %trunc93 = trunc i32 %shr3 to i8
  %2 = zext i8 %trunc93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %trunc93, label %lor.lhs.false23 [
    i8 0, label %lor.lhs.false17.cleanup_crit_edge
    i8 127, label %lor.lhs.false17.cleanup_crit_edge96
  ]

lor.lhs.false17.cleanup_crit_edge96:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %call)
  %cmp24 = icmp ult i32 %call, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %shr5)
  %cmp27 = icmp eq i32 %shr5, 127
  %or.cond = or i1 %cmp24, %cmp27
  br i1 %or.cond, label %lor.lhs.false23.cleanup_crit_edge, label %if.end

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false23
  tail call void @b43_shm_write32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext %shm_offset, i32 noundef 2139062143) #4
  br i1 %cmp.not, label %if.end37.thread, label %if.then43

if.end37.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add3887 = add nuw nsw i32 %and, 2
  %add3988 = add nuw nsw i32 %add3887, %shr5
  %add4089 = add nuw nsw i32 %add3988, %and2
  %add4190 = add nuw nsw i32 %add4089, %and4
  %div8291 = lshr i32 %add4190, 2
  br label %cleanup

if.then43:                                        ; preds = %if.end
  %add = add i32 %call, 32
  %and30 = and i32 %add, 63
  %add31 = add nuw nsw i32 %shr, 32
  %and32 = and i32 %add31, 63
  %add33 = add nuw nsw i32 %shr3, 32
  %and34 = and i32 %add33, 63
  %add35 = add nuw nsw i32 %shr5, 32
  %and36 = and i32 %add35, 63
  %add38 = add nuw nsw i32 %and32, %and30
  %add39 = add nuw nsw i32 %add38, %and34
  %add40 = add nuw nsw i32 %add39, %and36
  %add41 = add nuw nsw i32 %add40, 2
  %div82 = lshr i32 %add41, 2
  %call44 = tail call zeroext i16 @b43_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 94) #4
  %3 = and i16 %call44, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool47.not = icmp eq i16 %3, 0
  br i1 %tobool47.not, label %if.then43.cleanup_crit_edge, label %if.then48

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %add40)
  %cmp49 = icmp ugt i32 %add40, 49
  %sub = add nsw i32 %div82, -13
  %spec.select = select i1 %cmp49, i32 %sub, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.then43.cleanup_crit_edge, %if.end37.thread, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge96, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge95, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge94
  %retval.0 = phi i32 [ -2, %lor.lhs.false17.cleanup_crit_edge ], [ -2, %lor.lhs.false17.cleanup_crit_edge96 ], [ -2, %lor.lhs.false11.cleanup_crit_edge ], [ -2, %lor.lhs.false11.cleanup_crit_edge95 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge94 ], [ -2, %lor.lhs.false23.cleanup_crit_edge ], [ %spec.select, %if.then48 ], [ %div82, %if.then43.cleanup_crit_edge ], [ %div8291, %if.end37.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43_shm_read32(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_shm_write32(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phyop_switch_analog_generic(ptr nocapture noundef readonly %dev, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %on, i16 0, i16 244
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %write16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16.i, align 4
  tail call void %3(ptr noundef %1, i16 noundef zeroext 998, i16 noundef zeroext %conv) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @b43_is_40mhz(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 17
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_force_clock(ptr nocapture noundef readonly %dev, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %1, label %do.end.critedge [
    i8 4, label %entry.if.end_crit_edge
    i8 7, label %entry.if.end_crit_edge64
    i8 11, label %entry.if.end_crit_edge65
  ]

entry.if.end_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 569, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end.critedge, %entry.if.end_crit_edge, %entry.if.end_crit_edge64, %entry.if.end_crit_edge65
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb37
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = getelementptr inbounds %struct.b43_bus_dev, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aread32.i, align 4
  %call.i = tail call i32 %16(ptr noundef %10, i16 noundef zeroext 1032) #4
  %and = and i32 %call.i, -3
  %masksel63 = select i1 %force, i32 2, i32 0
  %tmp.0 = or i32 %and, %masksel63
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = getelementptr inbounds %struct.b43_bus_dev, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %ops.i61 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ops.i61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i61, align 4
  %awrite32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %awrite32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %awrite32.i, align 4
  tail call void %27(ptr noundef %21, i16 noundef zeroext 1032, i32 noundef %tmp.0) #4
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %28 = getelementptr inbounds %struct.b43_bus_dev, ptr %4, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i, align 4
  %call.i62 = tail call i32 %34(ptr noundef %30, i16 noundef zeroext 3992) #4
  %and44 = and i32 %call.i62, -131073
  %masksel = select i1 %force, i32 131072, i32 0
  %tmp.1 = or i32 %and44, %masksel
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = getelementptr inbounds %struct.b43_bus_dev, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i, align 4
  tail call void %43(ptr noundef %39, i16 noundef zeroext 3992, i32 noundef %tmp.1) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/phy_common.c", i32 67, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/phy_common.c", i32 102, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/phy_common.c", i32 109, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/phy_common.c", i32 209, i32 19}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
