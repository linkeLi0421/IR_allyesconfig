; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/phy_ht.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/phy_ht.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
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
%struct.b43_phy_ht = type { [3 x i16], i8, [3 x i8], [3 x i32], [3 x i8] }
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
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.b43_phy_ht_channeltab_e_radio2059 = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.b43_phy_ht_channeltab_e_phy }
%struct.b43_phy_ht_channeltab_e_phy = type { i16, i16, i16, i16, i16, i16 }
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

@b43_phyops_ht = dso_local constant { %struct.b43_phy_operations, [40 x i8] } { %struct.b43_phy_operations { ptr @b43_phy_ht_op_allocate, ptr @b43_phy_ht_op_free, ptr @b43_phy_ht_op_prepare_structs, ptr null, ptr @b43_phy_ht_op_init, ptr null, ptr null, ptr null, ptr @b43_phy_ht_op_maskset, ptr @b43_phy_ht_op_radio_read, ptr @b43_phy_ht_op_radio_write, ptr null, ptr @b43_phy_ht_op_software_rfkill, ptr @b43_phy_ht_op_switch_analog, ptr @b43_phy_ht_op_switch_channel, ptr @b43_phy_ht_op_get_default_chan, ptr null, ptr null, ptr @b43_phy_ht_op_recalc_txpower, ptr @b43_phy_ht_op_adjust_txpower, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HT-PHY is supported only on BCMA bus!\0A\00", [57 x i8] zeroinitializer }, align 32
@b43_httab_0x1a_0xc0_late = external dso_local constant [0 x i32], align 4
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Forcing RF sequence timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"run samples timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAC not suspended\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/broadcom/b43/phy_ht.c\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Radio 0x2059 rcal timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Radio 0x2059 rccal timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@b43_radio_2059_channel_setup.routing = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 0, i16 1024, i16 2048], [26 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"b43_phyops_ht\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1123, i32 33 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 877, i32 19 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 191, i32 19 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 410, i32 19 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1023, i32 19 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1032, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 98, i32 19 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 125, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 778, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [8 x i8] c"routing\00", align 1
@___asan_gen_.38 = private constant [46 x i8] c"../drivers/net/wireless/broadcom/b43/phy_ht.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 38, i32 19 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @b43_phyops_ht, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @b43_radio_2059_channel_setup.routing], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_phyops_ht to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_radio_2059_channel_setup.routing to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_phy_ht_op_allocate(ptr nocapture noundef writeonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ht = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 3
  %1 = ptrtoint ptr %ht to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ht, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_phy_ht_op_free(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ht = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 3
  %0 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ht, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %ht to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ht, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_phy_ht_op_prepare_structs(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ht = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 3
  %0 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ht, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 28)
  %tx_pwr_ctl = getelementptr inbounds %struct.b43_phy_ht, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %tx_pwr_ctl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %tx_pwr_ctl, align 2
  %uglygep = getelementptr i8, ptr %1, i32 7
  %4 = call ptr @memset(ptr %uglygep, i32 128, i32 3)
  %uglygep19 = getelementptr i8, ptr %1, i32 12
  %5 = call ptr @memset(ptr %uglygep19, i32 255, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_phy_ht_op_init(ptr noundef %dev) #0 align 64 {
entry:
  %regval.i = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ht = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 3
  %0 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ht, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %7, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @b43_phy_ht_tables_init(ptr noundef %dev) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 190, i16 noundef zeroext -3) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 575, i16 noundef zeroext 2047) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 576, i16 noundef zeroext 2047) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 577, i16 noundef zeroext 2047) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2112, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2113, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2114, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2115, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2144, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2145, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2146, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2147, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2176, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2177, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2178, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2179, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2124, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2156, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2188, i16 noundef zeroext 0) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2048, i16 noundef zeroext -4) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2320, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2324, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2328, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2307, i16 noundef zeroext 32) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2305, i16 noundef zeroext 32) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 525, i16 noundef zeroext 184) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2383, i16 noundef zeroext 200) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 112, i16 noundef zeroext 80) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 511, i16 noundef zeroext 48) #8
  %wl2 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %wl2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl2, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chandef.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp3 = icmp ne i32 %15, 1
  %call.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 176) #8
  %and5.i = and i16 %call.i, 6
  %or2.i = zext i1 %cmp3 to i16
  %or2.i.sink = or i16 %and5.i, %or2.i
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 176, i16 noundef zeroext -8, i16 noundef zeroext %or2.i.sink) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 177, i16 noundef zeroext 145) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 815, i16 noundef zeroext 3) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 119, i16 noundef zeroext 16) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 180, i16 noundef zeroext 600) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 382, i16 noundef zeroext -16385) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 185, i16 noundef zeroext 114) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536878414, i32 noundef 2, i32 noundef 271, i32 noundef 271) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536878430, i32 noundef 2, i32 noundef 271, i32 noundef 271) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536878446, i32 noundef 2, i32 noundef 271, i32 noundef 271) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2321, i16 noundef zeroext 4) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2320, i16 noundef zeroext 4) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2321, i16 noundef zeroext -2) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2320, i16 noundef zeroext 1) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536879109, i32 noundef 0) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2320, i16 noundef zeroext -5) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2325, i16 noundef zeroext 4) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2324, i16 noundef zeroext 4) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2325, i16 noundef zeroext -2) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2324, i16 noundef zeroext 1) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536879125, i32 noundef 0) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2324, i16 noundef zeroext -5) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2329, i16 noundef zeroext 4) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2328, i16 noundef zeroext 4) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2329, i16 noundef zeroext -2) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2328, i16 noundef zeroext 1) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536879141, i32 noundef 0) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2328, i16 noundef zeroext -5) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536878384, i32 noundef 9, i32 noundef 1911, i32 noundef 273, i32 noundef 273, i32 noundef 1911, i32 noundef 273, i32 noundef 273, i32 noundef 1911, i32 noundef 273, i32 noundef 273) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536878368, i32 noundef 1911) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536878372, i32 noundef 1911) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536879104, i32 noundef 2) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536879120, i32 noundef 2) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536879136, i32 noundef 2) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536879112, i32 noundef 4, i32 noundef 142, i32 noundef 150, i32 noundef 150, i32 noundef 150) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536879128, i32 noundef 4, i32 noundef 143, i32 noundef 159, i32 noundef 159, i32 noundef 159) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536879144, i32 noundef 4, i32 noundef 143, i32 noundef 159, i32 noundef 159, i32 noundef 159) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536879116, i32 noundef 4, i32 noundef 2, i32 noundef 2, i32 noundef 2, i32 noundef 2) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536879132, i32 noundef 4, i32 noundef 2, i32 noundef 2, i32 noundef 2, i32 noundef 2) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536879148, i32 noundef 4, i32 noundef 2, i32 noundef 2, i32 noundef 2, i32 noundef 2) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 640, i16 noundef zeroext -256, i16 noundef zeroext 62) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 643, i16 noundef zeroext -256, i16 noundef zeroext 62) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1345, i16 noundef zeroext -256, i16 noundef zeroext 70) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 643, i16 noundef zeroext -256, i16 noundef zeroext 64) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536870920, i32 noundef 4, i32 noundef 9, i32 noundef 14, i32 noundef 19, i32 noundef 24) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536871944, i32 noundef 4, i32 noundef 9, i32 noundef 14, i32 noundef 19, i32 noundef 24) #8
  tail call void (ptr, i32, i32, ...) @b43_httab_write_few(ptr noundef %dev, i32 noundef 536911880, i32 noundef 4, i32 noundef 9, i32 noundef 14, i32 noundef 19, i32 noundef 24) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1060, i16 noundef zeroext 63, i16 noundef zeroext 13) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1124, i16 noundef zeroext 63, i16 noundef zeroext 13) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1188, i16 noundef zeroext 63, i16 noundef zeroext 13) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2144, i16 noundef zeroext 1) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2148, i16 noundef zeroext 1) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2176, i16 noundef zeroext 1) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2180, i16 noundef zeroext 1) #8
  %call8 = tail call i32 @b43_httab_read(ptr noundef %dev, i32 noundef 536878404) #8
  %conv9 = and i32 %call8, 65535
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536878410, i32 noundef %conv9) #8
  %call10 = tail call i32 @b43_httab_read(ptr noundef %dev, i32 noundef 536878420) #8
  %conv12 = and i32 %call10, 65535
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536878426, i32 noundef %conv12) #8
  %call13 = tail call i32 @b43_httab_read(ptr noundef %dev, i32 noundef 536878436) #8
  %conv15 = and i32 %call13, 65535
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536878442, i32 noundef %conv15) #8
  tail call void @b43_phy_force_clock(ptr noundef %dev, i1 noundef zeroext true) #8
  %call16 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1) #8
  %or = or i16 %call16, 16384
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext %or) #8
  %16 = and i16 %call16, -16385
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext %16) #8
  tail call void @b43_phy_force_clock(ptr noundef %dev, i1 noundef zeroext false) #8
  tail call void @b43_mac_phy_clock_set(ptr noundef %dev, i1 noundef zeroext true) #8
  %17 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ht, align 4
  %call.i122 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2124) #8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call.i122, ptr %18, align 2
  %call.1.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2156) #8
  %arrayidx7.1.i = getelementptr [3 x i16], ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %call.1.i, ptr %arrayidx7.1.i, align 2
  %call.2.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2188) #8
  %arrayidx7.2.i = getelementptr [3 x i16], ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %call.2.i, ptr %arrayidx7.2.i, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2124, i16 noundef zeroext 1024) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2156, i16 noundef zeroext 1024) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2188, i16 noundef zeroext 1024) #8
  tail call fastcc void @b43_phy_ht_force_rf_sequence(ptr noundef %dev, i16 noundef zeroext 1)
  tail call fastcc void @b43_phy_ht_force_rf_sequence(ptr noundef %dev, i16 noundef zeroext 32)
  %22 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ht, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2124, i16 noundef zeroext %25) #8
  %arrayidx1.1.i = getelementptr [3 x i16], ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx1.1.i, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2156, i16 noundef zeroext %27) #8
  %arrayidx1.2.i = getelementptr [3 x i16], ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx1.2.i, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2188, i16 noundef zeroext %29) #8
  %call.i124 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 176) #8
  %and5.i125 = and i16 %call.i124, 7
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 176, i16 noundef zeroext -8, i16 noundef zeroext %and5.i125) #8
  %call.i126 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1038) #8
  %call1.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1102) #8
  %call3.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1166) #8
  %30 = ptrtoint ptr %wl2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wl2, align 4
  %hw.i127 = getelementptr inbounds %struct.b43_wl, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %hw.i127 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.i127, align 4
  %chandef.i128 = getelementptr inbounds %struct.ieee80211_conf, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %chandef.i128 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chandef.i128, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp24 = icmp eq i32 %37, 0
  br i1 %cmp24, label %if.then26, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3208, i16 noundef zeroext 7711) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3209, i16 noundef zeroext 7197) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3210, i16 noundef zeroext 6683) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3211, i16 noundef zeroext 6169) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3212, i16 noundef zeroext 5655) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3213, i16 noundef zeroext 5141) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3214, i16 noundef zeroext 4627) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3215, i16 noundef zeroext 4113) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3216, i16 noundef zeroext 3599) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3217, i16 noundef zeroext 3085) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3218, i16 noundef zeroext 2571) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3219, i16 noundef zeroext 2057) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3220, i16 noundef zeroext 1543) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3221, i16 noundef zeroext 1029) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3222, i16 noundef zeroext 515) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3223, i16 noundef zeroext 1) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3224, i16 noundef zeroext 15935) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3225, i16 noundef zeroext 15421) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3226, i16 noundef zeroext 14907) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3227, i16 noundef zeroext 14393) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3228, i16 noundef zeroext 13879) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3229, i16 noundef zeroext 13365) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3230, i16 noundef zeroext 12851) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3231, i16 noundef zeroext 12337) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3232, i16 noundef zeroext 11823) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3233, i16 noundef zeroext 11309) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3234, i16 noundef zeroext 10795) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3235, i16 noundef zeroext 10281) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3236, i16 noundef zeroext 9767) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3237, i16 noundef zeroext 9253) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3238, i16 noundef zeroext 8739) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3239, i16 noundef zeroext 8225) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 3128, i16 noundef zeroext 1640) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end.if.end27_crit_edge
  tail call void @b43_httab_write_bulk(ptr noundef %dev, i32 noundef 805333184, i32 noundef 128, ptr noundef nonnull @b43_httab_0x1a_0xc0_late) #8
  %tx_pwr_ctl = getelementptr inbounds %struct.b43_phy_ht, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %tx_pwr_ctl to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_pwr_ctl, align 2, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not = icmp eq i8 %39, 0
  tail call fastcc void @b43_phy_ht_tx_power_fix(ptr noundef %dev)
  %40 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ht, align 4
  %call.i130 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 487) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %call.i130)
  %tobool2.not.i = icmp ult i16 %call.i130, 8192
  br i1 %tobool2.not.i, label %if.end27.b43_phy_ht_tx_power_ctl.exit_crit_edge, label %for.body.preheader.i

if.end27.b43_phy_ht_tx_power_ctl.exit_crit_edge:  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_phy_ht_tx_power_ctl.exit

for.body.preheader.i:                             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 493) #8
  %conv6.i = trunc i16 %call5.i to i8
  %arrayidx7.i = getelementptr %struct.b43_phy_ht, ptr %41, i32 0, i32 2, i32 0
  %42 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %call5.1.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 494) #8
  %conv6.1.i = trunc i16 %call5.1.i to i8
  %arrayidx7.1.i131 = getelementptr %struct.b43_phy_ht, ptr %41, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx7.1.i131 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv6.1.i, ptr %arrayidx7.1.i131, align 1
  %call5.2.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2409) #8
  %conv6.2.i = trunc i16 %call5.2.i to i8
  %arrayidx7.2.i132 = getelementptr %struct.b43_phy_ht, ptr %41, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %arrayidx7.2.i132 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv6.2.i, ptr %arrayidx7.2.i132, align 1
  br label %b43_phy_ht_tx_power_ctl.exit

b43_phy_ht_tx_power_ctl.exit:                     ; preds = %for.body.preheader.i, %if.end27.b43_phy_ht_tx_power_ctl.exit_crit_edge
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 487, i16 noundef zeroext 8191) #8
  %tx_pwr_ctl.i = getelementptr inbounds %struct.b43_phy_ht, ptr %41, i32 0, i32 1
  %45 = ptrtoint ptr %tx_pwr_ctl.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %tx_pwr_ctl.i, align 2
  %46 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ht, align 4
  %call.i134 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2118) #8
  %call8.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2119) #8
  %call15.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2112) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2118, i16 noundef zeroext 0) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2119, i16 noundef zeroext -16) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2112, i16 noundef zeroext 1024) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2112, i16 noundef zeroext 4096) #8
  %call.1.i135 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2150) #8
  %call8.1.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2151) #8
  %call15.1.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2144) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2150, i16 noundef zeroext 0) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2151, i16 noundef zeroext -16) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2144, i16 noundef zeroext 1024) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2144, i16 noundef zeroext 4096) #8
  %call.2.i136 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2182) #8
  %call8.2.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2183) #8
  %call15.2.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2176) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2182, i16 noundef zeroext 0) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2183, i16 noundef zeroext -16) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2176, i16 noundef zeroext 1024) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2176, i16 noundef zeroext 4096) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 17408) #8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %b43_phy_ht_tx_power_ctl.exit
  %i.01.i.i.i = phi i32 [ 0, %b43_phy_ht_tx_power_ctl.exit ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 0) #8
  %inc.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 160
  br i1 %exitcond.not.i.i.i, label %b43_phy_ht_load_samples.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

b43_phy_ht_load_samples.exit.i.i:                 ; preds = %for.body.i.i.i
  %48 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ht, align 4
  %arrayidx.i.i.i = getelementptr %struct.b43_phy_ht, ptr %49, i32 0, i32 3, i32 0
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp1.i.i.i = icmp slt i32 %51, 0
  br i1 %cmp1.i.i.i, label %if.then.i.i.i, label %b43_phy_ht_load_samples.exit.i.i.for.inc.i.i.i_crit_edge

b43_phy_ht_load_samples.exit.i.i.for.inc.i.i.i_crit_edge: ; preds = %b43_phy_ht_load_samples.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %b43_phy_ht_load_samples.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @b43_httab_read(ptr noundef %dev, i32 noundef 536884323) #8
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i.i.i, ptr %arrayidx.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %b43_phy_ht_load_samples.exit.i.i.for.inc.i.i.i_crit_edge
  %arrayidx.1.i.i.i = getelementptr %struct.b43_phy_ht, ptr %49, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp1.1.i.i.i = icmp slt i32 %54, 0
  br i1 %cmp1.1.i.i.i, label %if.then.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.1.i.i.i = tail call i32 @b43_httab_read(ptr noundef %dev, i32 noundef 536884327) #8
  %55 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.1.i.i.i, ptr %arrayidx.1.i.i.i, align 4
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.then.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %arrayidx.2.i.i.i = getelementptr %struct.b43_phy_ht, ptr %49, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp1.2.i.i.i = icmp slt i32 %57, 0
  br i1 %cmp1.2.i.i.i, label %if.then.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i.i

if.then.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.2.i.i.i = tail call i32 @b43_httab_read(ptr noundef %dev, i32 noundef 536884331) #8
  %58 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call.2.i.i.i, ptr %arrayidx.2.i.i.i, align 4
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.then.2.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 198, i16 noundef zeroext 159) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 196, i16 noundef zeroext -1) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 197, i16 noundef zeroext 0) #8
  %call11.i.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2048) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2048, i16 noundef zeroext 1) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 195, i16 noundef zeroext -1) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 195, i16 noundef zeroext -1) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 194, i16 noundef zeroext -1) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 195, i16 noundef zeroext 1) #8
  br label %for.body15.i.i.i

for.body15.i.i.i:                                 ; preds = %if.end19.i.i.i.for.body15.i.i.i_crit_edge, %for.inc.2.i.i.i
  %i.15.i.i.i = phi i32 [ 0, %for.inc.2.i.i.i ], [ %inc21.i.i.i, %if.end19.i.i.i.for.body15.i.i.i_crit_edge ]
  %call16.i.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2052) #8
  %59 = and i16 %call16.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool.not.i.i.i = icmp eq i16 %59, 0
  br i1 %tobool.not.i.i.i, label %for.body15.i.i.i.b43_phy_ht_tx_tone.exit.i_crit_edge, label %if.end19.i.i.i

for.body15.i.i.i.b43_phy_ht_tx_tone.exit.i_crit_edge: ; preds = %for.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_phy_ht_tx_tone.exit.i

if.end19.i.i.i:                                   ; preds = %for.body15.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #8
  %inc21.i.i.i = add nuw nsw i32 %i.15.i.i.i, 1
  %exitcond.not.i2.i.i = icmp eq i32 %inc21.i.i.i, 100
  br i1 %exitcond.not.i2.i.i, label %if.then24.i.i.i, label %if.end19.i.i.i.for.body15.i.i.i_crit_edge

if.end19.i.i.i.for.body15.i.i.i_crit_edge:        ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %wl2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wl2, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %62, ptr noundef nonnull @.str.2) #8
  br label %b43_phy_ht_tx_tone.exit.i

b43_phy_ht_tx_tone.exit.i:                        ; preds = %if.then24.i.i.i, %for.body15.i.i.i.b43_phy_ht_tx_tone.exit.i_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2048, i16 noundef zeroext %call11.i.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 4294960) #8
  %call.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2321) #8
  %call.1.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2320) #8
  %call.2.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2120) #8
  %call.3.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2113) #8
  %call.4.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2325) #8
  %call.5.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2324) #8
  %call.6.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2152) #8
  %call.7.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2145) #8
  %call.8.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2329) #8
  %call.9.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2328) #8
  %call.10.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2184) #8
  %call.11.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2177) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2321, i16 noundef zeroext 768) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2321, i16 noundef zeroext 3072) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2320, i16 noundef zeroext 512) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2320, i16 noundef zeroext 1024) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 2239, i16 noundef zeroext 1) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 345, i16 noundef zeroext 17) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2325, i16 noundef zeroext 768) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2325, i16 noundef zeroext 3072) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2324, i16 noundef zeroext 512) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2324, i16 noundef zeroext 1024) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 2239, i16 noundef zeroext 1) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 1369, i16 noundef zeroext 17) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2329, i16 noundef zeroext 768) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2329, i16 noundef zeroext 3072) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2328, i16 noundef zeroext 512) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2328, i16 noundef zeroext 1024) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 2239, i16 noundef zeroext 1) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 2393, i16 noundef zeroext 17) #8
  %call13.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 537) #8
  %call15.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 538) #8
  %call17.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 539) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2321, i16 noundef zeroext %call.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2320, i16 noundef zeroext %call.1.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2120, i16 noundef zeroext %call.2.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2113, i16 noundef zeroext %call.3.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2325, i16 noundef zeroext %call.4.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2324, i16 noundef zeroext %call.5.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2152, i16 noundef zeroext %call.6.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2145, i16 noundef zeroext %call.7.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2329, i16 noundef zeroext %call.8.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2328, i16 noundef zeroext %call.9.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2184, i16 noundef zeroext %call.10.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2177, i16 noundef zeroext %call.11.i.i) #8
  %64 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ht, align 4
  %call.i107.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 199) #8
  %conv.i.i = zext i16 %call.i107.i to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %b43_phy_ht_tx_tone.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 195, i16 noundef zeroext 2) #8
  br label %if.end5.i.i

if.else.i.i:                                      ; preds = %b43_phy_ht_tx_tone.exit.i
  %and2.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.else.i.i.if.end5.i.i_crit_edge, label %if.then4.i.i

if.else.i.i.if.end5.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 194, i16 noundef zeroext 32767) #8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.else.i.i.if.end5.i.i_crit_edge, %if.then.i.i
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 195, i16 noundef zeroext -5) #8
  %arrayidx.i.i = getelementptr %struct.b43_phy_ht, ptr %65, i32 0, i32 3, i32 0
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp7.i.i = icmp sgt i32 %67, -1
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end5.i.i.for.inc.i.i_crit_edge

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536884323, i32 noundef %67) #8
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i, align 4
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536884327, i32 noundef %69) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then9.i.i, %if.end5.i.i.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.b43_phy_ht, ptr %65, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp7.1.i.i = icmp sgt i32 %71, -1
  br i1 %cmp7.1.i.i, label %if.then9.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.then9.1.i.i:                                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536884327, i32 noundef %71) #8
  %72 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.1.i.i, align 4
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536884331, i32 noundef %73) #8
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then9.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr %struct.b43_phy_ht, ptr %65, i32 0, i32 3, i32 2
  %74 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp7.2.i.i = icmp sgt i32 %75, -1
  br i1 %cmp7.2.i.i, label %if.then9.2.i.i, label %for.inc.1.i.i.b43_phy_ht_tx_power_ctl_idle_tssi.exit_crit_edge

for.inc.1.i.i.b43_phy_ht_tx_power_ctl_idle_tssi.exit_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_phy_ht_tx_power_ctl_idle_tssi.exit

if.then9.2.i.i:                                   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536884331, i32 noundef %75) #8
  %76 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.2.i.i, align 4
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536884335, i32 noundef %77) #8
  br label %b43_phy_ht_tx_power_ctl_idle_tssi.exit

b43_phy_ht_tx_power_ctl_idle_tssi.exit:           ; preds = %if.then9.2.i.i, %for.inc.1.i.i.b43_phy_ht_tx_power_ctl_idle_tssi.exit_crit_edge
  %call17.tr.i.i = trunc i16 %call17.i.i to i8
  %conv57.i.i = shl i8 %call17.tr.i.i, 2
  %78 = ashr exact i8 %conv57.i.i, 2
  %call15.tr.i.i = trunc i16 %call15.i.i to i8
  %conv38.i.i = shl i8 %call15.tr.i.i, 2
  %79 = ashr exact i8 %conv38.i.i, 2
  %call13.tr.i.i = trunc i16 %call13.i.i to i8
  %conv21.i.i = shl i8 %call13.tr.i.i, 2
  %80 = ashr exact i8 %conv21.i.i, 2
  tail call void @b43_phy_force_clock(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i108.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1) #8
  %or.i.i = or i16 %call.i108.i, 16384
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext %or.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748) #8
  %82 = and i16 %call.i108.i, -16385
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext %82) #8
  tail call void @b43_phy_force_clock(ptr noundef %dev, i1 noundef zeroext false) #8
  tail call fastcc void @b43_phy_ht_force_rf_sequence(ptr noundef %dev, i16 noundef zeroext 32) #8
  %idle_tssi.i = getelementptr inbounds %struct.b43_phy_ht, ptr %47, i32 0, i32 4
  %83 = ptrtoint ptr %idle_tssi.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %80, ptr %idle_tssi.i, align 4
  %arrayidx41.i = getelementptr %struct.b43_phy_ht, ptr %47, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %79, ptr %arrayidx41.i, align 1
  %arrayidx46.i = getelementptr %struct.b43_phy_ht, ptr %47, i32 0, i32 4, i32 2
  %85 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %78, ptr %arrayidx46.i, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2112, i16 noundef zeroext %call15.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2118, i16 noundef zeroext %call.i134) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2119, i16 noundef zeroext %call8.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2144, i16 noundef zeroext %call15.1.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2150, i16 noundef zeroext %call.1.i135) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2151, i16 noundef zeroext %call8.1.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2176, i16 noundef zeroext %call15.2.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2182, i16 noundef zeroext %call.2.i136) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2183, i16 noundef zeroext %call8.2.i) #8
  %86 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ht, align 4
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  %bus_sprom.i = getelementptr inbounds %struct.b43_bus_dev, ptr %89, i32 0, i32 23
  %90 = ptrtoint ptr %bus_sprom.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus_sprom.i, align 4
  %idle_tssi.i138 = getelementptr inbounds %struct.b43_phy_ht, ptr %87, i32 0, i32 4
  %92 = ptrtoint ptr %wl2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wl2, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw.i.i, align 4
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chandef.i.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i = icmp eq i32 %99, 0
  br i1 %cmp.i, label %for.body.preheader.i139, label %if.else.i

for.body.preheader.i139:                          ; preds = %b43_phy_ht_tx_power_ctl_idle_tssi.exit
  call void @__sanitizer_cov_trace_pc() #10
  %maxpwr_2g.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 2
  %pa_2g.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 6
  %arrayidx14.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 6, i32 1
  %arrayidx19.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 6, i32 2
  %maxpwr_2g.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 2
  %pa_2g.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 6
  %arrayidx14.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 6, i32 1
  %arrayidx19.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 6, i32 2
  %maxpwr_2g.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 2
  %pa_2g.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 6
  %arrayidx14.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 6, i32 1
  %arrayidx19.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 6, i32 2
  br label %if.end129.sink.split.i

if.else.i:                                        ; preds = %b43_phy_ht_tx_power_ctl_idle_tssi.exit
  %chandef.i140 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 17
  %100 = ptrtoint ptr %chandef.i140 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %chandef.i140, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %center_freq.i, align 4
  %conv21.i = and i32 %105, 65535
  %106 = add nsw i32 %conv21.i, -4900
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %106)
  %107 = icmp ult i32 %106, 200
  br i1 %107, label %for.body31.preheader.i, label %if.else52.i

for.body31.preheader.i:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %maxpwr_5gl.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 3
  %pa_5gl.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 7
  %arrayidx42.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 7, i32 1
  %arrayidx47.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 7, i32 2
  %maxpwr_5gl.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 3
  %pa_5gl.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 7
  %arrayidx42.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 7, i32 1
  %arrayidx47.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 7, i32 2
  %maxpwr_5gl.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 3
  %pa_5gl.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 7
  %arrayidx42.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 7, i32 1
  %arrayidx47.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 7, i32 2
  br label %if.end129.sink.split.i

if.else52.i:                                      ; preds = %if.else.i
  %108 = add nsw i32 %conv21.i, -5100
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %108)
  %109 = icmp ult i32 %108, 400
  br i1 %109, label %for.body64.preheader.i, label %if.else85.i

for.body64.preheader.i:                           ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #10
  %maxpwr_5g.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 4
  %pa_5g.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 8
  %arrayidx75.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 8, i32 1
  %arrayidx80.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 8, i32 2
  %maxpwr_5g.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 4
  %pa_5g.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 8
  %arrayidx75.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 8, i32 1
  %arrayidx80.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 8, i32 2
  %maxpwr_5g.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 4
  %pa_5g.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 8
  %arrayidx75.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 8, i32 1
  %arrayidx80.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 8, i32 2
  br label %if.end129.sink.split.i

if.else85.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5499, i32 %conv21.i)
  %cmp87.i = icmp ugt i32 %conv21.i, 5499
  br i1 %cmp87.i, label %for.body93.preheader.i, label %if.else85.i.if.end129.i_crit_edge

if.else85.i.if.end129.i_crit_edge:                ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129.i

for.body93.preheader.i:                           ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #10
  %maxpwr_5gh.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 5
  %pa_5gh.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 9
  %arrayidx104.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 9, i32 1
  %arrayidx109.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 0, i32 9, i32 2
  %maxpwr_5gh.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 5
  %pa_5gh.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 9
  %arrayidx104.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 9, i32 1
  %arrayidx109.1.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 1, i32 9, i32 2
  %maxpwr_5gh.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 5
  %pa_5gh.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 9
  %arrayidx104.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 9, i32 1
  %arrayidx109.2.i = getelementptr %struct.ssb_sprom, ptr %91, i32 0, i32 74, i32 2, i32 9, i32 2
  br label %if.end129.sink.split.i

if.end129.sink.split.i:                           ; preds = %for.body93.preheader.i, %for.body64.preheader.i, %for.body31.preheader.i, %for.body.preheader.i139
  %arrayidx109.2.sink.i = phi ptr [ %arrayidx109.2.i, %for.body93.preheader.i ], [ %arrayidx80.2.i, %for.body64.preheader.i ], [ %arrayidx47.2.i, %for.body31.preheader.i ], [ %arrayidx19.2.i, %for.body.preheader.i139 ]
  %target.sroa.16.0.ph.in.i = phi ptr [ %maxpwr_5gh.2.i, %for.body93.preheader.i ], [ %maxpwr_5g.2.i, %for.body64.preheader.i ], [ %maxpwr_5gl.2.i, %for.body31.preheader.i ], [ %maxpwr_2g.2.i, %for.body.preheader.i139 ]
  %target.sroa.9.0.ph.in.i = phi ptr [ %maxpwr_5gh.1.i, %for.body93.preheader.i ], [ %maxpwr_5g.1.i, %for.body64.preheader.i ], [ %maxpwr_5gl.1.i, %for.body31.preheader.i ], [ %maxpwr_2g.1.i, %for.body.preheader.i139 ]
  %target.sroa.0.0.ph.in.i = phi ptr [ %maxpwr_5gh.i, %for.body93.preheader.i ], [ %maxpwr_5g.i, %for.body64.preheader.i ], [ %maxpwr_5gl.i, %for.body31.preheader.i ], [ %maxpwr_2g.i, %for.body.preheader.i139 ]
  %a1.sroa.16.0.ph.in.i = phi ptr [ %pa_5gh.2.i, %for.body93.preheader.i ], [ %pa_5g.2.i, %for.body64.preheader.i ], [ %pa_5gl.2.i, %for.body31.preheader.i ], [ %pa_2g.2.i, %for.body.preheader.i139 ]
  %a1.sroa.9.0.ph.in.i = phi ptr [ %pa_5gh.1.i, %for.body93.preheader.i ], [ %pa_5g.1.i, %for.body64.preheader.i ], [ %pa_5gl.1.i, %for.body31.preheader.i ], [ %pa_2g.1.i, %for.body.preheader.i139 ]
  %a1.sroa.0.0.ph.in.i = phi ptr [ %pa_5gh.i, %for.body93.preheader.i ], [ %pa_5g.i, %for.body64.preheader.i ], [ %pa_5gl.i, %for.body31.preheader.i ], [ %pa_2g.i, %for.body.preheader.i139 ]
  %b0.sroa.16.0.ph.in.i = phi ptr [ %arrayidx104.2.i, %for.body93.preheader.i ], [ %arrayidx75.2.i, %for.body64.preheader.i ], [ %arrayidx42.2.i, %for.body31.preheader.i ], [ %arrayidx14.2.i, %for.body.preheader.i139 ]
  %b0.sroa.9.0.ph.in.i = phi ptr [ %arrayidx104.1.i, %for.body93.preheader.i ], [ %arrayidx75.1.i, %for.body64.preheader.i ], [ %arrayidx42.1.i, %for.body31.preheader.i ], [ %arrayidx14.1.i, %for.body.preheader.i139 ]
  %b0.sroa.0.0.ph.in.i = phi ptr [ %arrayidx104.i, %for.body93.preheader.i ], [ %arrayidx75.i, %for.body64.preheader.i ], [ %arrayidx42.i, %for.body31.preheader.i ], [ %arrayidx14.i, %for.body.preheader.i139 ]
  %b1.sroa.9.0.ph.in.i = phi ptr [ %arrayidx109.1.i, %for.body93.preheader.i ], [ %arrayidx80.1.i, %for.body64.preheader.i ], [ %arrayidx47.1.i, %for.body31.preheader.i ], [ %arrayidx19.1.i, %for.body.preheader.i139 ]
  %b1.sroa.0.0.ph.in.i = phi ptr [ %arrayidx109.i, %for.body93.preheader.i ], [ %arrayidx80.i, %for.body64.preheader.i ], [ %arrayidx47.i, %for.body31.preheader.i ], [ %arrayidx19.i, %for.body.preheader.i139 ]
  %110 = ptrtoint ptr %b1.sroa.0.0.ph.in.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %b1.sroa.0.0.ph.i = load i16, ptr %b1.sroa.0.0.ph.in.i, align 2
  %111 = ptrtoint ptr %b1.sroa.9.0.ph.in.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %b1.sroa.9.0.ph.i = load i16, ptr %b1.sroa.9.0.ph.in.i, align 2
  %112 = ptrtoint ptr %b0.sroa.0.0.ph.in.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %b0.sroa.0.0.ph.i = load i16, ptr %b0.sroa.0.0.ph.in.i, align 2
  %113 = ptrtoint ptr %b0.sroa.9.0.ph.in.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %b0.sroa.9.0.ph.i = load i16, ptr %b0.sroa.9.0.ph.in.i, align 2
  %114 = ptrtoint ptr %b0.sroa.16.0.ph.in.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %b0.sroa.16.0.ph.i = load i16, ptr %b0.sroa.16.0.ph.in.i, align 2
  %115 = ptrtoint ptr %a1.sroa.0.0.ph.in.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %a1.sroa.0.0.ph.i = load i16, ptr %a1.sroa.0.0.ph.in.i, align 2
  %116 = ptrtoint ptr %a1.sroa.9.0.ph.in.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %a1.sroa.9.0.ph.i = load i16, ptr %a1.sroa.9.0.ph.in.i, align 2
  %117 = ptrtoint ptr %a1.sroa.16.0.ph.in.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %a1.sroa.16.0.ph.i = load i16, ptr %a1.sroa.16.0.ph.in.i, align 2
  %118 = ptrtoint ptr %target.sroa.0.0.ph.in.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %target.sroa.0.0.ph.i = load i8, ptr %target.sroa.0.0.ph.in.i, align 1
  %119 = ptrtoint ptr %target.sroa.9.0.ph.in.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %target.sroa.9.0.ph.i = load i8, ptr %target.sroa.9.0.ph.in.i, align 1
  %120 = ptrtoint ptr %target.sroa.16.0.ph.in.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %target.sroa.16.0.ph.i = load i8, ptr %target.sroa.16.0.ph.in.i, align 1
  %121 = ptrtoint ptr %arrayidx109.2.sink.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx109.2.sink.i, align 2
  %phi.cast.i = sext i16 %122 to i32
  %phi.cast293.i = sext i16 %b0.sroa.0.0.ph.i to i32
  %phi.bo.i = shl nsw i32 %phi.cast293.i, 4
  %phi.cast294.i = sext i16 %b1.sroa.0.0.ph.i to i32
  %phi.cast295.i = sext i16 %a1.sroa.0.0.ph.i to i32
  %phi.cast296.i = sext i16 %b0.sroa.9.0.ph.i to i32
  %phi.bo297.i = shl nsw i32 %phi.cast296.i, 4
  %phi.cast298.i = sext i16 %b1.sroa.9.0.ph.i to i32
  %phi.cast299.i = sext i16 %a1.sroa.9.0.ph.i to i32
  %phi.cast300.i = sext i16 %b0.sroa.16.0.ph.i to i32
  %phi.bo301.i = shl nsw i32 %phi.cast300.i, 4
  %phi.cast302.i = sext i16 %a1.sroa.16.0.ph.i to i32
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.end129.sink.split.i, %if.else85.i.if.end129.i_crit_edge
  %target.sroa.16.0.i = phi i8 [ 52, %if.else85.i.if.end129.i_crit_edge ], [ %target.sroa.16.0.ph.i, %if.end129.sink.split.i ]
  %target.sroa.9.0.i = phi i8 [ 52, %if.else85.i.if.end129.i_crit_edge ], [ %target.sroa.9.0.ph.i, %if.end129.sink.split.i ]
  %target.sroa.0.0.i = phi i8 [ 52, %if.else85.i.if.end129.i_crit_edge ], [ %target.sroa.0.0.ph.i, %if.end129.sink.split.i ]
  %a1.sroa.16.0.i = phi i32 [ -424, %if.else85.i.if.end129.i_crit_edge ], [ %phi.cast302.i, %if.end129.sink.split.i ]
  %a1.sroa.9.0.i = phi i32 [ -424, %if.else85.i.if.end129.i_crit_edge ], [ %phi.cast299.i, %if.end129.sink.split.i ]
  %a1.sroa.0.0.i = phi i32 [ -424, %if.else85.i.if.end129.i_crit_edge ], [ %phi.cast295.i, %if.end129.sink.split.i ]
  %b0.sroa.16.0.i = phi i32 [ 89792, %if.else85.i.if.end129.i_crit_edge ], [ %phi.bo301.i, %if.end129.sink.split.i ]
  %b0.sroa.9.0.i = phi i32 [ 89792, %if.else85.i.if.end129.i_crit_edge ], [ %phi.bo297.i, %if.end129.sink.split.i ]
  %b0.sroa.0.0.i = phi i32 [ 89792, %if.else85.i.if.end129.i_crit_edge ], [ %phi.bo.i, %if.end129.sink.split.i ]
  %b1.sroa.16.0.i = phi i32 [ -1393, %if.else85.i.if.end129.i_crit_edge ], [ %phi.cast.i, %if.end129.sink.split.i ]
  %b1.sroa.9.0.i = phi i32 [ -1393, %if.else85.i.if.end129.i_crit_edge ], [ %phi.cast298.i, %if.end129.sink.split.i ]
  %b1.sroa.0.0.i = phi i32 [ -1393, %if.else85.i.if.end129.i_crit_edge ], [ %phi.cast294.i, %if.end129.sink.split.i ]
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 290, i16 noundef zeroext 1) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 487, i16 noundef zeroext 32767) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 489, i16 noundef zeroext 16384) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 487, i16 noundef zeroext -128, i16 noundef zeroext 25) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 546, i16 noundef zeroext -128, i16 noundef zeroext 25) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 2404, i16 noundef zeroext -128, i16 noundef zeroext 25) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 489, i16 noundef zeroext -32768) #8
  %123 = ptrtoint ptr %idle_tssi.i138 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %idle_tssi.i138, align 1
  %conv132.i = zext i8 %124 to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 489, i16 noundef zeroext -64, i16 noundef zeroext %conv132.i) #8
  %arrayidx133.i = getelementptr %struct.b43_phy_ht, ptr %87, i32 0, i32 4, i32 1
  %125 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx133.i, align 1
  %conv134.i = zext i8 %126 to i16
  %shl135.i = shl nuw i16 %conv134.i, 8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 489, i16 noundef zeroext -16129, i16 noundef zeroext %shl135.i) #8
  %arrayidx137.i = getelementptr %struct.b43_phy_ht, ptr %87, i32 0, i32 4, i32 2
  %127 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx137.i, align 1
  %conv140.i = zext i8 %128 to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 2405, i16 noundef zeroext -64, i16 noundef zeroext %conv140.i) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 488, i16 noundef zeroext -256, i16 noundef zeroext 240) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 488, i16 noundef zeroext -1793, i16 noundef zeroext 768) #8
  %conv144.i = zext i8 %target.sroa.0.0.i to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 490, i16 noundef zeroext -256, i16 noundef zeroext %conv144.i) #8
  %conv146.i = zext i8 %target.sroa.9.0.i to i16
  %shl147.i = shl nuw i16 %conv146.i, 8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 490, i16 noundef zeroext 255, i16 noundef zeroext %shl147.i) #8
  %conv152.i = zext i8 %target.sroa.16.0.i to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 2406, i16 noundef zeroext -256, i16 noundef zeroext %conv152.i) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %regval.i) #8
  %129 = call ptr @memset(ptr %regval.i, i32 255, i32 256)
  br label %for.body160.i

for.body160.i:                                    ; preds = %for.body160.i.for.body160.i_crit_edge, %if.end129.i
  %i.0287.i = phi i32 [ 0, %if.end129.i ], [ %inc178.i, %for.body160.i.for.body160.i_crit_edge ]
  %mul165.i = mul nsw i32 %i.0287.i, %b1.sroa.0.0.i
  %add.i = add nsw i32 %mul165.i, %b0.sroa.0.0.i
  %mul169.i = mul nsw i32 %i.0287.i, %a1.sroa.0.0.i
  %add170.i = add nsw i32 %mul169.i, 32768
  %mul171.i = shl i32 %add.i, 5
  %div.i = sdiv i32 %add170.i, 2
  %add172.i = add i32 %div.i, %mul171.i
  %div173.i = sdiv i32 %add172.i, %add170.i
  %130 = tail call i32 @llvm.smax.i32(i32 %div173.i, i32 -8) #8
  %arrayidx176.i = getelementptr [64 x i32], ptr %regval.i, i32 0, i32 %i.0287.i
  %131 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx176.i, align 4
  %inc178.i = add nuw nsw i32 %i.0287.i, 1
  %exitcond.not.i = icmp eq i32 %inc178.i, 64
  br i1 %exitcond.not.i, label %for.end179.i, label %for.body160.i.for.body160.i_crit_edge

for.body160.i.for.body160.i_crit_edge:            ; preds = %for.body160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body160.i

for.end179.i:                                     ; preds = %for.body160.i
  call void @b43_httab_write_bulk(ptr noundef %dev, i32 noundef 536897536, i32 noundef 64, ptr noundef nonnull %regval.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %regval.i) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %regval.i) #8
  %132 = call ptr @memset(ptr %regval.i, i32 255, i32 256)
  br label %for.body160.1.i

for.body160.1.i:                                  ; preds = %for.body160.1.i.for.body160.1.i_crit_edge, %for.end179.i
  %i.0287.1.i = phi i32 [ 0, %for.end179.i ], [ %inc178.1.i, %for.body160.1.i.for.body160.1.i_crit_edge ]
  %mul165.1.i = mul nsw i32 %i.0287.1.i, %b1.sroa.9.0.i
  %add.1.i = add nsw i32 %mul165.1.i, %b0.sroa.9.0.i
  %mul169.1.i = mul nsw i32 %i.0287.1.i, %a1.sroa.9.0.i
  %add170.1.i = add nsw i32 %mul169.1.i, 32768
  %mul171.1.i = shl i32 %add.1.i, 5
  %div.1.i = sdiv i32 %add170.1.i, 2
  %add172.1.i = add i32 %div.1.i, %mul171.1.i
  %div173.1.i = sdiv i32 %add172.1.i, %add170.1.i
  %133 = call i32 @llvm.smax.i32(i32 %div173.1.i, i32 -8) #8
  %arrayidx176.1.i = getelementptr [64 x i32], ptr %regval.i, i32 0, i32 %i.0287.1.i
  %134 = ptrtoint ptr %arrayidx176.1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx176.1.i, align 4
  %inc178.1.i = add nuw nsw i32 %i.0287.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc178.1.i, 64
  br i1 %exitcond.1.not.i, label %for.end179.1.i, label %for.body160.1.i.for.body160.1.i_crit_edge

for.body160.1.i.for.body160.1.i_crit_edge:        ; preds = %for.body160.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body160.1.i

for.end179.1.i:                                   ; preds = %for.body160.1.i
  call void @b43_httab_write_bulk(ptr noundef %dev, i32 noundef 536898560, i32 noundef 64, ptr noundef nonnull %regval.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %regval.i) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %regval.i) #8
  %135 = call ptr @memset(ptr %regval.i, i32 255, i32 256)
  br label %for.body160.2.i

for.body160.2.i:                                  ; preds = %for.body160.2.i.for.body160.2.i_crit_edge, %for.end179.1.i
  %i.0287.2.i = phi i32 [ 0, %for.end179.1.i ], [ %inc178.2.i, %for.body160.2.i.for.body160.2.i_crit_edge ]
  %mul165.2.i = mul nsw i32 %i.0287.2.i, %b1.sroa.16.0.i
  %add.2.i = add nsw i32 %mul165.2.i, %b0.sroa.16.0.i
  %mul169.2.i = mul nsw i32 %i.0287.2.i, %a1.sroa.16.0.i
  %add170.2.i = add nsw i32 %mul169.2.i, 32768
  %mul171.2.i = shl i32 %add.2.i, 5
  %div.2.i = sdiv i32 %add170.2.i, 2
  %add172.2.i = add i32 %div.2.i, %mul171.2.i
  %div173.2.i = sdiv i32 %add172.2.i, %add170.2.i
  %136 = call i32 @llvm.smax.i32(i32 %div173.2.i, i32 -8) #8
  %arrayidx176.2.i = getelementptr [64 x i32], ptr %regval.i, i32 0, i32 %i.0287.2.i
  %137 = ptrtoint ptr %arrayidx176.2.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %arrayidx176.2.i, align 4
  %inc178.2.i = add nuw nsw i32 %i.0287.2.i, 1
  %exitcond.2.not.i = icmp eq i32 %inc178.2.i, 64
  br i1 %exitcond.2.not.i, label %b43_phy_ht_tx_power_ctl_setup.exit, label %for.body160.2.i.for.body160.2.i_crit_edge

for.body160.2.i.for.body160.2.i_crit_edge:        ; preds = %for.body160.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body160.2.i

b43_phy_ht_tx_power_ctl_setup.exit:               ; preds = %for.body160.2.i
  call void @b43_httab_write_bulk(ptr noundef %dev, i32 noundef 536899584, i32 noundef 64, ptr noundef nonnull %regval.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %regval.i) #8
  call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 2239, i16 noundef zeroext 1) #8
  call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 345, i16 noundef zeroext 17) #8
  call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 2239, i16 noundef zeroext 1) #8
  call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 1369, i16 noundef zeroext 17) #8
  call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 2239, i16 noundef zeroext 1) #8
  call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 2393, i16 noundef zeroext 17) #8
  %138 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ht, align 4
  br i1 %tobool.not, label %if.then.i, label %if.else.i157

if.then.i:                                        ; preds = %b43_phy_ht_tx_power_ctl_setup.exit
  %call.i142 = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 487) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %call.i142)
  %tobool2.not.i143 = icmp ult i16 %call.i142, 8192
  br i1 %tobool2.not.i143, label %if.then.i.if.end.i_crit_edge, label %for.body.preheader.i153

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body.preheader.i153:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i144 = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 493) #8
  %conv6.i145 = trunc i16 %call5.i144 to i8
  %arrayidx7.i146 = getelementptr %struct.b43_phy_ht, ptr %139, i32 0, i32 2, i32 0
  %140 = ptrtoint ptr %arrayidx7.i146 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv6.i145, ptr %arrayidx7.i146, align 1
  %call5.1.i147 = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 494) #8
  %conv6.1.i148 = trunc i16 %call5.1.i147 to i8
  %arrayidx7.1.i149 = getelementptr %struct.b43_phy_ht, ptr %139, i32 0, i32 2, i32 1
  %141 = ptrtoint ptr %arrayidx7.1.i149 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv6.1.i148, ptr %arrayidx7.1.i149, align 1
  %call5.2.i150 = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2409) #8
  %conv6.2.i151 = trunc i16 %call5.2.i150 to i8
  %arrayidx7.2.i152 = getelementptr %struct.b43_phy_ht, ptr %139, i32 0, i32 2, i32 2
  %142 = ptrtoint ptr %arrayidx7.2.i152 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv6.2.i151, ptr %arrayidx7.2.i152, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.preheader.i153, %if.then.i.if.end.i_crit_edge
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 487, i16 noundef zeroext 8191) #8
  br label %b43_phy_ht_tx_power_ctl.exit159

if.else.i157:                                     ; preds = %b43_phy_ht_tx_power_ctl_setup.exit
  call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 487, i16 noundef zeroext -8192) #8
  %143 = ptrtoint ptr %wl2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %wl2, align 4
  %hw.i.i155 = getelementptr inbounds %struct.b43_wl, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %hw.i.i155 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw.i.i155, align 4
  %chandef.i.i156 = getelementptr inbounds %struct.ieee80211_conf, ptr %146, i32 0, i32 7
  %147 = ptrtoint ptr %chandef.i.i156 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %chandef.i.i156, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %cmp11.i = icmp eq i32 %150, 1
  br i1 %cmp11.i, label %for.body17.preheader.i, label %if.else.i157.if.end22.i_crit_edge

if.else.i157.if.end22.i_crit_edge:                ; preds = %if.else.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

for.body17.preheader.i:                           ; preds = %if.else.i157
  call void @__sanitizer_cov_trace_pc() #10
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 487, i16 noundef zeroext 50) #8
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 546, i16 noundef zeroext 50) #8
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2404, i16 noundef zeroext 50) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %for.body17.preheader.i, %if.else.i157.if.end22.i_crit_edge
  %arrayidx28.i = getelementptr %struct.b43_phy_ht, ptr %139, i32 0, i32 2, i32 0
  %151 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %152)
  %cmp30.i = icmp sgt i8 %152, -1
  br i1 %cmp30.i, label %if.then32.i, label %if.end22.i.for.inc38.i_crit_edge

if.end22.i.for.inc38.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38.i

if.then32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv36.i = zext i8 %152 to i16
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 487, i16 noundef zeroext %conv36.i) #8
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %if.then32.i, %if.end22.i.for.inc38.i_crit_edge
  %arrayidx28.1.i = getelementptr %struct.b43_phy_ht, ptr %139, i32 0, i32 2, i32 1
  %153 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx28.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %154)
  %cmp30.1.i = icmp sgt i8 %154, -1
  br i1 %cmp30.1.i, label %if.then32.1.i, label %for.inc38.i.for.inc38.1.i_crit_edge

for.inc38.i.for.inc38.1.i_crit_edge:              ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38.1.i

if.then32.1.i:                                    ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv36.1.i = zext i8 %154 to i16
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 546, i16 noundef zeroext %conv36.1.i) #8
  br label %for.inc38.1.i

for.inc38.1.i:                                    ; preds = %if.then32.1.i, %for.inc38.i.for.inc38.1.i_crit_edge
  %arrayidx28.2.i = getelementptr %struct.b43_phy_ht, ptr %139, i32 0, i32 2, i32 2
  %155 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx28.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %156)
  %cmp30.2.i = icmp sgt i8 %156, -1
  br i1 %cmp30.2.i, label %if.then32.2.i, label %for.inc38.1.i.b43_phy_ht_tx_power_ctl.exit159_crit_edge

for.inc38.1.i.b43_phy_ht_tx_power_ctl.exit159_crit_edge: ; preds = %for.inc38.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_phy_ht_tx_power_ctl.exit159

if.then32.2.i:                                    ; preds = %for.inc38.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv36.2.i = zext i8 %156 to i16
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2404, i16 noundef zeroext %conv36.2.i) #8
  br label %b43_phy_ht_tx_power_ctl.exit159

b43_phy_ht_tx_power_ctl.exit159:                  ; preds = %if.then32.2.i, %for.inc38.1.i.b43_phy_ht_tx_power_ctl.exit159_crit_edge, %if.end.i
  %tx_pwr_ctl.i158 = getelementptr inbounds %struct.b43_phy_ht, ptr %139, i32 0, i32 1
  %157 = ptrtoint ptr %tx_pwr_ctl.i158 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %39, ptr %tx_pwr_ctl.i158, align 2
  br label %cleanup

cleanup:                                          ; preds = %b43_phy_ht_tx_power_ctl.exit159, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ 0, %b43_phy_ht_tx_power_ctl.exit159 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_phy_ht_op_maskset(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg, i16 noundef zeroext %mask, i16 noundef zeroext %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16.i.i, align 4
  tail call void %3(ptr noundef %1, i16 noundef zeroext 1020, i16 noundef zeroext %reg) #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %read16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %7(ptr noundef %5, i16 noundef zeroext 1022) #8
  %and6 = and i16 %call.i, %mask
  %or7 = or i16 %and6, %set
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %write16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i, align 4
  tail call void %11(ptr noundef %9, i16 noundef zeroext 1022, i16 noundef zeroext %or7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @b43_phy_ht_op_radio_read(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %reg, 512
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write16.i.i, align 4
  tail call void %4(ptr noundef %2, i16 noundef zeroext 984, i16 noundef zeroext %0) #8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %read16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %8(ptr noundef %6, i16 noundef zeroext 986) #8
  ret i16 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_phy_ht_op_radio_write(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16.i.i, align 4
  tail call void %3(ptr noundef %1, i16 noundef zeroext 984, i16 noundef zeroext %reg) #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %write16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16.i, align 4
  tail call void %7(ptr noundef %5, i16 noundef zeroext 986, i16 noundef zeroext %value) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_phy_ht_op_software_rfkill(ptr noundef %dev, i1 noundef zeroext %blocked) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %read32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i16 noundef zeroext 288) #8
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %5, ptr noundef nonnull @.str.5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %blocked, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2064, i16 noundef zeroext -3) #8
  br label %if.end26

if.else:                                          ; preds = %if.end
  %radio_ver = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %6 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %radio_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8281, i16 %7)
  %cmp = icmp eq i16 %7, 8281
  br i1 %cmp, label %if.then4, label %do.end

if.then4:                                         ; preds = %if.else
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2064, i16 noundef zeroext -3) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2064, i16 noundef zeroext 1) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2064, i16 noundef zeroext -2) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2064, i16 noundef zeroext 2) #8
  tail call void @r2059_upload_inittabs(ptr noundef %dev) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 326, i16 noundef zeroext 3) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 1350, i16 noundef zeroext 3) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 2374, i16 noundef zeroext 3) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 46, i16 noundef zeroext 120) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 192, i16 noundef zeroext 128) #8
  tail call void @msleep(i32 noundef 2) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 46, i16 noundef zeroext -121) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 192, i16 noundef zeroext -129) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 2052, i16 noundef zeroext 1) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 2239, i16 noundef zeroext 1) #8
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 2459, i16 noundef zeroext 3, i16 noundef zeroext 2) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 2052, i16 noundef zeroext 2) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 2052, i16 noundef zeroext -3) #8
  %call.i.i = tail call zeroext i1 @b43_radio_wait_value(ptr noundef %dev, i16 noundef zeroext 2373, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef 100, i32 noundef 1000000) #8
  br i1 %call.i.i, label %if.then4.b43_radio_2059_rcal.exit.i_crit_edge, label %if.then.i.i

if.then4.b43_radio_2059_rcal.exit.i_crit_edge:    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_radio_2059_rcal.exit.i

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %9, ptr noundef nonnull @.str.7) #8
  br label %b43_radio_2059_rcal.exit.i

b43_radio_2059_rcal.exit.i:                       ; preds = %if.then.i.i, %if.then4.b43_radio_2059_rcal.exit.i_crit_edge
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 2052, i16 noundef zeroext -2) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 10, i16 noundef zeroext 96) #8
  %wl.i13.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 383, i16 noundef zeroext 97) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 317, i16 noundef zeroext 110) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 318, i16 noundef zeroext 233) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 316, i16 noundef zeroext 85) #8
  %call.i14.i = tail call zeroext i1 @b43_radio_wait_value(ptr noundef %dev, i16 noundef zeroext 320, i16 noundef zeroext 2, i16 noundef zeroext 2, i32 noundef 500, i32 noundef 5000000) #8
  br i1 %call.i14.i, label %b43_radio_2059_rcal.exit.i.if.end.i.i_crit_edge, label %if.then.i15.i

b43_radio_2059_rcal.exit.i.if.end.i.i_crit_edge:  ; preds = %b43_radio_2059_rcal.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i15.i:                                    ; preds = %b43_radio_2059_rcal.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %wl.i13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wl.i13.i, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %11, ptr noundef nonnull @.str.8) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i15.i, %b43_radio_2059_rcal.exit.i.if.end.i.i_crit_edge
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 316, i16 noundef zeroext 21) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 383, i16 noundef zeroext 105) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 317, i16 noundef zeroext 110) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 318, i16 noundef zeroext 213) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 316, i16 noundef zeroext 85) #8
  %call.1.i.i = tail call zeroext i1 @b43_radio_wait_value(ptr noundef %dev, i16 noundef zeroext 320, i16 noundef zeroext 2, i16 noundef zeroext 2, i32 noundef 500, i32 noundef 5000000) #8
  br i1 %call.1.i.i, label %if.end.i.i.if.end.1.i.i_crit_edge, label %if.then.1.i.i

if.end.i.i.if.end.1.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1.i.i

if.then.1.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %wl.i13.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wl.i13.i, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %13, ptr noundef nonnull @.str.8) #8
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %if.then.1.i.i, %if.end.i.i.if.end.1.i.i_crit_edge
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 316, i16 noundef zeroext 21) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 383, i16 noundef zeroext 115) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 317, i16 noundef zeroext 110) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 318, i16 noundef zeroext 153) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 316, i16 noundef zeroext 85) #8
  %call.2.i.i = tail call zeroext i1 @b43_radio_wait_value(ptr noundef %dev, i16 noundef zeroext 320, i16 noundef zeroext 2, i16 noundef zeroext 2, i32 noundef 500, i32 noundef 5000000) #8
  br i1 %call.2.i.i, label %if.end.1.i.i.b43_radio_2059_init.exit_crit_edge, label %if.then.2.i.i

if.end.1.i.i.b43_radio_2059_init.exit_crit_edge:  ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_radio_2059_init.exit

if.then.2.i.i:                                    ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %wl.i13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wl.i13.i, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %15, ptr noundef nonnull @.str.8) #8
  br label %b43_radio_2059_init.exit

b43_radio_2059_init.exit:                         ; preds = %if.then.2.i.i, %if.end.1.i.i.b43_radio_2059_init.exit_crit_edge
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 316, i16 noundef zeroext 21) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 383, i16 noundef zeroext -2) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 17, i16 noundef zeroext -9) #8
  br label %if.end23

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1032, i32 noundef 9, ptr noundef null) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end, %b43_radio_2059_init.exit
  %channel = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 18
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel, align 4
  %call25 = tail call i32 @b43_switch_channel(ptr noundef %dev, i32 noundef %17) #8
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_phy_ht_op_switch_analog(ptr noundef %dev, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2321, i16 noundef zeroext 205) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2320, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2325, i16 noundef zeroext 205) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2324, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2329, i16 noundef zeroext 205) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2328, i16 noundef zeroext 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2320, i16 noundef zeroext 2047) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2321, i16 noundef zeroext 253) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2324, i16 noundef zeroext 2047) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2325, i16 noundef zeroext 253) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2328, i16 noundef zeroext 2047) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2329, i16 noundef zeroext 253) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_phy_ht_op_switch_channel(ptr noundef %dev, i32 noundef %new_channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %switch.i = icmp ult i32 %7, 3
  br i1 %switch.i, label %entry.cfg80211_get_chandef_type.exit_crit_edge, label %do.end.i

entry.cfg80211_get_chandef_type.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cfg80211_get_chandef_type.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 778, i32 noundef 9, ptr noundef null) #8
  br label %cfg80211_get_chandef_type.exit

cfg80211_get_chandef_type.exit:                   ; preds = %do.end.i, %entry.cfg80211_get_chandef_type.exit_crit_edge
  %8 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chandef.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp ne i32 %15, 0
  %16 = add i32 %new_channel, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %16)
  %17 = icmp ult i32 %16, -14
  %or.cond = or i1 %17, %cmp
  br i1 %or.cond, label %cfg80211_get_chandef_type.exit.cleanup_crit_edge, label %if.end10

cfg80211_get_chandef_type.exit.cleanup_crit_edge: ; preds = %cfg80211_get_chandef_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %cfg80211_get_chandef_type.exit
  %radio_ver.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %18 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %radio_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8281, i16 %19)
  %cmp.i = icmp eq i16 %19, 8281
  br i1 %cmp.i, label %if.then.i, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %center_freq.i, align 4
  %conv3.i = trunc i32 %21 to i16
  %call.i = tail call ptr @b43_phy_ht_get_channeltab_e_r2059(ptr noundef %dev, i16 noundef zeroext %conv3.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.end5.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.then.i
  %22 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %radio_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8281, i16 %23)
  %cmp8.i = icmp eq i16 %23, 8281
  br i1 %cmp8.i, label %if.then10.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i:                                      ; preds = %if.end5.i
  %radio_syn16.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %radio_syn16.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %radio_syn16.i.i, align 2
  %conv.i.i = zext i8 %25 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 22, i16 noundef zeroext %conv.i.i) #8
  %radio_syn17.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %radio_syn17.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %radio_syn17.i.i, align 1
  %conv1.i.i = zext i8 %27 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 23, i16 noundef zeroext %conv1.i.i) #8
  %radio_syn22.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %radio_syn22.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %radio_syn22.i.i, align 2
  %conv2.i.i = zext i8 %29 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 34, i16 noundef zeroext %conv2.i.i) #8
  %radio_syn25.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %radio_syn25.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %radio_syn25.i.i, align 1
  %conv3.i.i = zext i8 %31 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 37, i16 noundef zeroext %conv3.i.i) #8
  %radio_syn27.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %radio_syn27.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %radio_syn27.i.i, align 2
  %conv4.i.i = zext i8 %33 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 39, i16 noundef zeroext %conv4.i.i) #8
  %radio_syn28.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %radio_syn28.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %radio_syn28.i.i, align 1
  %conv5.i.i = zext i8 %35 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 40, i16 noundef zeroext %conv5.i.i) #8
  %radio_syn29.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %radio_syn29.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %radio_syn29.i.i, align 2
  %conv6.i.i = zext i8 %37 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 41, i16 noundef zeroext %conv6.i.i) #8
  %radio_syn2c.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 8
  %38 = ptrtoint ptr %radio_syn2c.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %radio_syn2c.i.i, align 1
  %conv7.i.i = zext i8 %39 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 44, i16 noundef zeroext %conv7.i.i) #8
  %radio_syn2d.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %radio_syn2d.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %radio_syn2d.i.i, align 2
  %conv8.i.i = zext i8 %41 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 45, i16 noundef zeroext %conv8.i.i) #8
  %radio_syn37.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 10
  %42 = ptrtoint ptr %radio_syn37.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %radio_syn37.i.i, align 1
  %conv9.i.i = zext i8 %43 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 55, i16 noundef zeroext %conv9.i.i) #8
  %radio_syn41.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 11
  %44 = ptrtoint ptr %radio_syn41.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %radio_syn41.i.i, align 2
  %conv10.i.i = zext i8 %45 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 65, i16 noundef zeroext %conv10.i.i) #8
  %radio_syn43.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 12
  %46 = ptrtoint ptr %radio_syn43.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %radio_syn43.i.i, align 1
  %conv11.i.i = zext i8 %47 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext %conv11.i.i) #8
  %radio_syn47.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 13
  %48 = ptrtoint ptr %radio_syn47.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %radio_syn47.i.i, align 2
  %conv12.i.i = zext i8 %49 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 71, i16 noundef zeroext %conv12.i.i) #8
  %radio_rxtx4a.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 14
  %radio_rxtx58.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 15
  %radio_rxtx5a.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 16
  %radio_rxtx6a.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 17
  %radio_rxtx6d.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 18
  %radio_rxtx6e.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 19
  %radio_rxtx92.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 20
  %radio_rxtx98.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 21
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then10.i
  %core.098.i.i = phi i32 [ 0, %if.then10.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [3 x i16], ptr @b43_radio_2059_channel_setup.routing, i32 0, i32 %core.098.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i.i, align 2
  %or.i.i = or i16 %51, 74
  %52 = ptrtoint ptr %radio_rxtx4a.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %radio_rxtx4a.i.i, align 1
  %conv16.i.i = zext i8 %53 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %or.i.i, i16 noundef zeroext %conv16.i.i) #8
  %or18.i.i = or i16 %51, 88
  %54 = ptrtoint ptr %radio_rxtx58.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %radio_rxtx58.i.i, align 2
  %conv20.i.i = zext i8 %55 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %or18.i.i, i16 noundef zeroext %conv20.i.i) #8
  %or22.i.i = or i16 %51, 90
  %56 = ptrtoint ptr %radio_rxtx5a.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %radio_rxtx5a.i.i, align 1
  %conv24.i.i = zext i8 %57 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %or22.i.i, i16 noundef zeroext %conv24.i.i) #8
  %or26.i.i = or i16 %51, 106
  %58 = ptrtoint ptr %radio_rxtx6a.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %radio_rxtx6a.i.i, align 2
  %conv28.i.i = zext i8 %59 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %or26.i.i, i16 noundef zeroext %conv28.i.i) #8
  %or30.i.i = or i16 %51, 109
  %60 = ptrtoint ptr %radio_rxtx6d.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %radio_rxtx6d.i.i, align 1
  %conv32.i.i = zext i8 %61 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %or30.i.i, i16 noundef zeroext %conv32.i.i) #8
  %or34.i.i = or i16 %51, 110
  %62 = ptrtoint ptr %radio_rxtx6e.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %radio_rxtx6e.i.i, align 2
  %conv36.i.i = zext i8 %63 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %or34.i.i, i16 noundef zeroext %conv36.i.i) #8
  %or38.i.i = or i16 %51, 146
  %64 = ptrtoint ptr %radio_rxtx92.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %radio_rxtx92.i.i, align 1
  %conv40.i.i = zext i8 %65 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %or38.i.i, i16 noundef zeroext %conv40.i.i) #8
  %66 = or i16 %51, 152
  %67 = ptrtoint ptr %radio_rxtx98.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %radio_rxtx98.i.i, align 2
  %conv44.i.i = zext i8 %68 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %66, i16 noundef zeroext %conv44.i.i) #8
  %inc.i.i = add nuw nsw i32 %core.098.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 3
  br i1 %exitcond.not.i.i, label %b43_radio_2059_channel_setup.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

b43_radio_2059_channel_setup.exit.i:              ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 10737400) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 43, i16 noundef zeroext -2) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 46, i16 noundef zeroext -5) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 46, i16 noundef zeroext 4) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 43, i16 noundef zeroext 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 64424400) #8
  %phy_regs.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 22
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp.i.i = icmp eq i32 %72, 1
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 9, i16 noundef zeroext -2) #8
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %read16.i.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i16 %76(ptr noundef %74, i16 noundef zeroext 1170) #8
  %77 = or i16 %call.i.i.i.i, 4
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %81(ptr noundef %79, i16 noundef zeroext 1170, i16 noundef zeroext %77) #8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %b43_radio_2059_channel_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 3073, i16 noundef zeroext -16384) #8
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %write16.i7.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %83, i32 0, i32 9
  %84 = ptrtoint ptr %write16.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write16.i7.i.i.i, align 4
  tail call void %85(ptr noundef %83, i16 noundef zeroext 1170, i16 noundef zeroext %call.i.i.i.i) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 9, i16 noundef zeroext 1) #8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %b43_radio_2059_channel_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 3073, i16 noundef zeroext 16383) #8
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %write16.i7.i40.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %write16.i7.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write16.i7.i40.i.i, align 4
  tail call void %89(ptr noundef %87, i16 noundef zeroext 1170, i16 noundef zeroext %call.i.i.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %90 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %phy_regs.i, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 462, i16 noundef zeroext %91) #8
  %bw2.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 22, i32 1
  %92 = ptrtoint ptr %bw2.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %bw2.i.i, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 463, i16 noundef zeroext %93) #8
  %bw3.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 22, i32 2
  %94 = ptrtoint ptr %bw3.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %bw3.i.i, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 464, i16 noundef zeroext %95) #8
  %bw4.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 22, i32 3
  %96 = ptrtoint ptr %bw4.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %bw4.i.i, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 465, i16 noundef zeroext %97) #8
  %bw5.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 22, i32 4
  %98 = ptrtoint ptr %bw5.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %bw5.i.i, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 466, i16 noundef zeroext %99) #8
  %bw6.i.i = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, ptr %call.i, i32 0, i32 22, i32 5
  %100 = ptrtoint ptr %bw6.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %bw6.i.i, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 467, i16 noundef zeroext %101) #8
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 3
  %102 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %hw_value.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %103)
  %cmp1.i.i = icmp eq i16 %103, 14
  %call.i.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 176) #8
  %and5.i.i.i = and i16 %call.i.i.i, 5
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.else4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 176, i16 noundef zeroext -8, i16 noundef zeroext %and5.i.i.i) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 3082, i16 noundef zeroext 2048) #8
  br label %if.end11.i.i

if.else4.i.i:                                     ; preds = %if.end.i.i
  %or2.i.i.i = or i16 %and5.i.i.i, 2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 176, i16 noundef zeroext -8, i16 noundef zeroext %or2.i.i.i) #8
  %104 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp7.i.i = icmp eq i32 %105, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else4.i.i.if.end11.i.i_crit_edge

if.else4.i.i.if.end11.i.i_crit_edge:              ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

if.then9.i.i:                                     ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 3082, i16 noundef zeroext -2113) #8
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then9.i.i, %if.else4.i.i.if.end11.i.i_crit_edge, %if.then3.i.i
  tail call fastcc void @b43_phy_ht_tx_power_fix(ptr noundef %dev) #8
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 4
  %108 = getelementptr inbounds %struct.b43_bus_dev, ptr %107, i32 0, i32 1
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %111 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %hw_value.i.i, align 2
  %.off.i.i.i = add i16 %112, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i.i.i)
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 2
  tail call void @bcma_core_pll_ctl(ptr noundef %110, i32 noundef 512, i32 noundef 0, i1 noundef zeroext false) #8
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %110, align 8
  %drv_cc.c.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %114, i32 0, i32 12
  br i1 %switch.i.i.i, label %if.then8.critedge.i.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @bcma_pmu_spuravoid_pllupdate(ptr noundef %drv_cc.c.i.i.i, i32 noundef 0) #8
  tail call void @bcma_core_pll_ctl(ptr noundef %110, i32 noundef 768, i32 noundef 50331648, i1 noundef zeroext false) #8
  tail call void @b43_mac_switch_freq(ptr noundef %dev, i8 noundef zeroext 0) #8
  tail call void @b43_wireless_core_phy_pll_reset(ptr noundef %dev) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 32767) #8
  br label %b43_phy_ht_channel_setup.exit.i

if.then8.critedge.i.i.i:                          ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @bcma_pmu_spuravoid_pllupdate(ptr noundef %drv_cc.c.i.i.i, i32 noundef 1) #8
  tail call void @bcma_core_pll_ctl(ptr noundef %110, i32 noundef 768, i32 noundef 50331648, i1 noundef zeroext false) #8
  tail call void @b43_mac_switch_freq(ptr noundef %dev, i8 noundef zeroext 1) #8
  tail call void @b43_wireless_core_phy_pll_reset(ptr noundef %dev) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext -32768) #8
  br label %b43_phy_ht_channel_setup.exit.i

b43_phy_ht_channel_setup.exit.i:                  ; preds = %if.then8.critedge.i.i.i, %if.end.i.i.i
  tail call void @b43_phy_force_clock(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i.i43.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1) #8
  %or.i.i.i.i = or i16 %call.i.i43.i.i, 16384
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext %or.i.i.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748) #8
  %116 = and i16 %call.i.i43.i.i, -16385
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext %116) #8
  tail call void @b43_phy_force_clock(ptr noundef %dev, i1 noundef zeroext false) #8
  tail call fastcc void @b43_phy_ht_force_rf_sequence(ptr noundef %dev, i16 noundef zeroext 32) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 382, i16 noundef zeroext 14384) #8
  br label %cleanup

cleanup:                                          ; preds = %b43_phy_ht_channel_setup.exit.i, %if.end5.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %cfg80211_get_chandef_type.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %cfg80211_get_chandef_type.exit.cleanup_crit_edge ], [ 0, %b43_phy_ht_channel_setup.exit.i ], [ -3, %if.then.i.cleanup_crit_edge ], [ -3, %if.end10.cleanup_crit_edge ], [ -3, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b43_phy_ht_op_get_default_chan(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %. = select i1 %cmp, i32 11, i32 36
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b43_phy_ht_op_recalc_txpower(ptr nocapture noundef readnone %dev, i1 noundef zeroext %ignore_tssi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @b43_phy_ht_op_adjust_txpower(ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_ht_tables_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_mask(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_httab_write_few(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_httab_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_maskset(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43_httab_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_force_clock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_phy_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_mac_phy_clock_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_phy_ht_force_rf_sequence(ptr noundef %dev, i16 noundef zeroext %rf_seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2048) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2048, i16 noundef zeroext 3) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 2051, i16 noundef zeroext %rf_seq) #8
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.019 = phi i8 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call2 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2052) #8
  %and16 = and i16 %call2, %rf_seq
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and16)
  %tobool.not = icmp eq i16 %and16, 0
  br i1 %tobool.not, label %for.body.if.end7_crit_edge, label %if.end

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #8
  %inc = add nuw i8 %i.019, 1
  %cmp = icmp ult i8 %i.019, -57
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.then6

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.body.if.end7_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2048, i16 noundef zeroext %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_httab_write_bulk(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_phy_ht_tx_power_fix(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @b43_httab_read(ptr noundef %dev, i32 noundef 805333224) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2312, i16 noundef zeroext 0) #8
  %shr = lshr i32 %call, 16
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536878352, i32 noundef %shr) #8
  %and = and i32 %call, 255
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 268448867, i32 noundef %and) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 268448883, i32 noundef %and) #8
  %call.1 = tail call i32 @b43_httab_read(ptr noundef %dev, i32 noundef 805333224) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2312, i16 noundef zeroext 0) #8
  %shr.1 = lshr i32 %call.1, 16
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536878353, i32 noundef %shr.1) #8
  %and.1 = and i32 %call.1, 255
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 268448871, i32 noundef %and.1) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 268448887, i32 noundef %and.1) #8
  %call.2 = tail call i32 @b43_httab_read(ptr noundef %dev, i32 noundef 805333224) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2312, i16 noundef zeroext 0) #8
  %shr.2 = lshr i32 %call.2, 16
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 536878354, i32 noundef %shr.2) #8
  %and.2 = and i32 %call.2, 255
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 268448875, i32 noundef %and.2) #8
  tail call void @b43_httab_write(ptr noundef %dev, i32 noundef 268448891, i32 noundef %and.2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43_switch_channel(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @r2059_upload_inittabs(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_mask(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_maskset(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @b43_radio_wait_value(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @b43_phy_ht_get_channeltab_e_r2059(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pll_ctl(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_pmu_spuravoid_pllupdate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_mac_switch_freq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_wireless_core_phy_pll_reset(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @b43_phyops_ht, !1, !"b43_phyops_ht", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 1123, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 877, i32 19}
!4 = distinct !{null, !5, !"base", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 253, i32 19}
!6 = distinct !{null, !7, !"ctl_regs", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 269, i32 19}
!8 = distinct !{null, !9, !"regs", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 199, i32 19}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 191, i32 19}
!12 = distinct !{null, !13, !"cmd_regs", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 539, i32 19}
!14 = distinct !{null, !15, !"status_regs", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 542, i32 19}
!16 = distinct !{null, !17, !"base", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 576, i32 19}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 410, i32 19}
!20 = distinct !{null, !21, !"phy_regs_to_save", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 471, i32 19}
!22 = distinct !{null, !23, !"ctl_regs", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 430, i32 19}
!24 = distinct !{null, !25, !"radio_r", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 435, i32 19}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 439, i32 19}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 460, i32 21}
!30 = distinct !{null, !31, !"routing", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 611, i32 19}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 1023, i32 19}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 1032, i32 4}
!36 = distinct !{null, !37, !"routing", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 144, i32 19}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 98, i32 19}
!40 = distinct !{null, !41, !"radio_values", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 109, i32 19}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 125, i32 20}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!46 = !{ptr @b43_radio_2059_channel_setup.routing, !47, !"routing", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/b43/phy_ht.c", i32 38, i32 19}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i8 0, i8 2}
