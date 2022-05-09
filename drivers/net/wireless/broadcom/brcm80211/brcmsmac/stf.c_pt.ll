; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/stf.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/stf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcms_c_info = type { ptr, ptr, ptr, i16, i32, i32, i32, i8, ptr, ptr, ptr, [2 x ptr], i32, ptr, ptr, ptr, i16, i16, i32, [6 x i8], i8, i8, i8, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i32, [4 x i16], [4 x i16], ptr, ptr, i8, i8, i8, i8, ptr, i16, [4 x i8], [4 x i8], i16, i16, i16, i16, [6 x i16], i16, i16, i16, i16, i16, i8, i8, i8, ptr, i8, ptr, i32, i32, i16, i16, ptr, %struct.scb, ptr, ptr, i16, i16, ptr }
%struct.scb = type { i32, i32, i32, i8, [6 x i8], [8 x i32], [8 x i16], i16, [8 x i16], %struct.scb_ampdu }
%struct.scb_ampdu = type { ptr, i8, i8, i8, i16, i32, [8 x %struct.scb_ampdu_tid_ini] }
%struct.scb_ampdu_tid_ini = type { i8, [64 x i8], ptr, i8 }
%struct.brcms_band = type { i32, i32, i16, i16, i16, i16, ptr, i8, i8, ptr, %struct.brcms_c_rateset, i8, i8, %struct.brcms_c_rateset, [109 x i8], i8, i8, i16, i16, %struct.ieee80211_supported_band }
%struct.brcms_c_rateset = type { i32, [16 x i8], i8, [16 x i8] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.brcms_stf = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, [5 x i8], i8 }
%struct.tx_power = type { i32, i16, i16, i8, i8, [2 x i8], i8, [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [101 x i8], [101 x i8], [101 x i8], [101 x i8] }
%struct.brcms_pub = type { ptr, ptr, ptr, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, [6 x i8], i32, i16, i8, [4 x i8], i32, i32, i8, ptr, ptr }
%struct.brcms_hardware = type { i8, ptr, [6 x ptr], i32, i16, i16, i32, i8, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i16, i8, i16, i16, i16, i16, i8, i32, i32, i16, [6 x ptr], ptr, i32, i8, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.131, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.131 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.132, %struct.anon.133, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.132 = type { i8, i8, i8, i8 }
%struct.anon.133 = type { %struct.anon.134, %struct.anon.135 }
%struct.anon.134 = type { i8, i8, i8, i8, i8 }
%struct.anon.135 = type { i8, i8, i8, i8, i8 }

@txcore_default = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\03\07\0F", [27 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmsmac/stf.c\00", [41 x i8] zeroinitializer }, align 32
@__func__.brcms_c_stf_txcore_set = private unnamed_addr constant [23 x i8] c"brcms_c_stf_txcore_set\00", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl%d: Nsts %d core_mask %x\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.brcms_c_stf_spatial_policy_set = private unnamed_addr constant [31 x i8] c"brcms_c_stf_spatial_policy_set\00", align 1
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wl%d: val %x\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 16, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 8]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 15]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 15]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"txcore_default\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 39, i32 17 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 247, i32 5 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 164, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [58 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/stf.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 198, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @txcore_default, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txcore_default to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_tempsense_upd(ptr noundef %wlc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %band = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %band, align 4
  %pi1 = getelementptr inbounds %struct.brcms_band, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pi1, align 4
  %call = tail call zeroext i8 @wlc_phy_stf_chain_active_get(ptr noundef %3) #5
  %4 = and i8 %call, 15
  %and = zext i8 %4 to i32
  %stf = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %5 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stf, align 4
  %txchain2 = getelementptr inbounds %struct.brcms_stf, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %txchain2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %txchain2, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp = icmp eq i8 %8, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %8)
  %cmp10 = icmp ult i8 %4, %8
  %or.cond = select i1 %tobool.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then.if.end32.sink.split_crit_edge, label %if.then.if.end32_crit_edge

if.then.if.end32_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then.if.end32.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp20 = icmp ult i8 %8, %10
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %10)
  %cmp26 = icmp eq i8 %4, %10
  %or.cond45 = select i1 %cmp20, i1 %cmp26, i1 false
  br i1 %or.cond45, label %if.else.if.end32.sink.split_crit_edge, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.else.if.end32.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %if.else.if.end32.sink.split_crit_edge, %if.then.if.end32.sink.split_crit_edge
  %call29 = tail call i32 @brcms_c_stf_txchain_set(ptr noundef %wlc, i32 noundef %and, i1 zeroext undef)
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %if.else.if.end32_crit_edge, %if.then.if.end32_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @wlc_phy_stf_chain_active_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_c_stf_txchain_set(ptr noundef %wlc, i32 noundef %int_val, i1 zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %int_val to i8
  %stf = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %0 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stf, align 4
  %txchain1 = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %txchain1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txchain1, align 1
  %conv3 = and i32 %int_val, 255
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv)
  %cmp = icmp eq i8 %3, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 2
  %conv7 = zext i8 %5 to i32
  %neg = xor i32 %conv7, -1
  %and = and i32 %conv3, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and12 = and i32 %conv7, %int_val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %cond.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false:                                       ; preds = %if.end
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv3) #5
  %conv77 = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv77)
  %cmp78 = icmp ugt i32 %conv77, 4
  br i1 %cmp78, label %cond.false.cleanup_crit_edge, label %if.end81

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end81:                                         ; preds = %cond.false
  %conv76 = trunc i32 %call.i to i8
  %6 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stf, align 4
  %txchain83 = getelementptr inbounds %struct.brcms_stf, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %txchain83 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %txchain83, align 1
  %9 = load ptr, ptr %stf, align 4
  %txstreams85 = getelementptr inbounds %struct.brcms_stf, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %txstreams85 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv76, ptr %txstreams85, align 2
  %band = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %11 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %band, align 4
  %band_stf_stbc_tx = getelementptr inbounds %struct.brcms_band, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %band_stf_stbc_tx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %band_stf_stbc_tx, align 1
  %conv86 = sext i8 %14 to i32
  %15 = zext i32 %conv86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv86, label %if.end81.brcms_c_stf_stbc_tx_set.exit_crit_edge [
    i32 1, label %land.lhs.true5.i
    i32 0, label %if.end81.if.end9.i_crit_edge
    i32 -1, label %if.end81.if.end9.i_crit_edge180
  ]

if.end81.if.end9.i_crit_edge180:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end81.if.end9.i_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end81.brcms_c_stf_stbc_tx_set.exit_crit_edge:  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_stbc_tx_set.exit

land.lhs.true5.i:                                 ; preds = %if.end81
  %16 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stf, align 4
  %txstreams.i = getelementptr inbounds %struct.brcms_stf, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %txstreams.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %txstreams.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp6.i = icmp eq i8 %19, 1
  br i1 %cmp6.i, label %land.lhs.true5.i.brcms_c_stf_stbc_tx_set.exit_crit_edge, label %land.lhs.true5.i.if.end9.i_crit_edge

land.lhs.true5.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true5.i.brcms_c_stf_stbc_tx_set.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_stbc_tx_set.exit

if.end9.i:                                        ; preds = %land.lhs.true5.i.if.end9.i_crit_edge, %if.end81.if.end9.i_crit_edge, %if.end81.if.end9.i_crit_edge180
  %bandstate.i = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 11
  %20 = ptrtoint ptr %bandstate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bandstate.i, align 4
  %band_stf_stbc_tx.i = getelementptr inbounds %struct.brcms_band, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %band_stf_stbc_tx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %14, ptr %band_stf_stbc_tx.i, align 1
  %arrayidx13.i = getelementptr %struct.brcms_c_info, ptr %wlc, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx13.i, align 4
  %band_stf_stbc_tx14.i = getelementptr inbounds %struct.brcms_band, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %band_stf_stbc_tx14.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %14, ptr %band_stf_stbc_tx14.i, align 1
  br label %brcms_c_stf_stbc_tx_set.exit

brcms_c_stf_stbc_tx_set.exit:                     ; preds = %if.end9.i, %land.lhs.true5.i.brcms_c_stf_stbc_tx_set.exit_crit_edge, %if.end81.brcms_c_stf_stbc_tx_set.exit_crit_edge
  %bandstate = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 11
  %26 = ptrtoint ptr %bandstate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bandstate, align 4
  %28 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stf, align 4
  %ss_opmode.i = getelementptr inbounds %struct.brcms_stf, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %ss_opmode.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ss_opmode.i, align 2
  %32 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %band, align 4
  %phytype.i = getelementptr inbounds %struct.brcms_band, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %phytype.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %phytype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %35)
  %cmp.i = icmp eq i16 %35, 4
  br i1 %cmp.i, label %land.lhs.true.i, label %brcms_c_stf_stbc_tx_set.exit.if.else.i_crit_edge

brcms_c_stf_stbc_tx_set.exit.if.else.i_crit_edge: ; preds = %brcms_c_stf_stbc_tx_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %brcms_c_stf_stbc_tx_set.exit
  %phyrev.i = getelementptr inbounds %struct.brcms_band, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %phyrev.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %phyrev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %37)
  %cmp5.i = icmp ugt i16 %37, 2
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %ss_algosel_auto.i = getelementptr inbounds %struct.brcms_stf, ptr %29, i32 0, i32 10
  %38 = ptrtoint ptr %ss_algosel_auto.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ss_algosel_auto.i, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %land.lhs.true7.i.if.else.i_crit_edge, label %land.lhs.true10.i

land.lhs.true7.i.if.else.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true10.i:                                ; preds = %land.lhs.true7.i
  %ss_algo_channel.i = getelementptr inbounds %struct.brcms_stf, ptr %29, i32 0, i32 11
  %40 = ptrtoint ptr %ss_algo_channel.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ss_algo_channel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %41)
  %cmp13.not.i = icmp eq i16 %41, -1
  br i1 %cmp13.not.i, label %land.lhs.true10.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true10.i.if.else.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true10.i
  %txstreams.i144 = getelementptr inbounds %struct.brcms_stf, ptr %29, i32 0, i32 2
  %42 = ptrtoint ptr %txstreams.i144 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %txstreams.i144, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp17.i = icmp eq i8 %43, 1
  br i1 %cmp17.i, label %if.then.i.lor.end.i_crit_edge, label %lor.rhs.i

if.then.i.lor.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %ss_algo_channel.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ss_algo_channel.i, align 2
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool22.i = icmp eq i8 %46, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.then.i.lor.end.i_crit_edge
  %47 = phi i1 [ false, %if.then.i.lor.end.i_crit_edge ], [ %tobool22.i, %lor.rhs.i ]
  %conv23.i = zext i1 %47 to i8
  br label %if.end36.i

if.else.i:                                        ; preds = %land.lhs.true10.i.if.else.i_crit_edge, %land.lhs.true7.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %brcms_c_stf_stbc_tx_set.exit.if.else.i_crit_edge
  %cmp25.not.i = icmp eq ptr %33, %27
  br i1 %cmp25.not.i, label %if.end.i, label %if.else.i.brcms_c_stf_ss_update.exit_crit_edge

if.else.i.brcms_c_stf_ss_update.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_ss_update.exit

if.end.i:                                         ; preds = %if.else.i
  %txstreams29.i = getelementptr inbounds %struct.brcms_stf, ptr %29, i32 0, i32 2
  %48 = ptrtoint ptr %txstreams29.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %txstreams29.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp31.i = icmp eq i8 %49, 1
  br i1 %cmp31.i, label %if.end.i.if.end36.i_crit_edge, label %cond.false.i

if.end.i.if.end36.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %band_stf_ss_mode.i = getelementptr inbounds %struct.brcms_band, ptr %27, i32 0, i32 11
  %50 = ptrtoint ptr %band_stf_ss_mode.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %band_stf_ss_mode.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %cond.false.i, %if.end.i.if.end36.i_crit_edge, %lor.end.i
  %upd_stf_ss.0.i = phi i8 [ %conv23.i, %lor.end.i ], [ %51, %cond.false.i ], [ 0, %if.end.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %upd_stf_ss.0.i)
  %cmp39.not.i = icmp eq i8 %31, %upd_stf_ss.0.i
  br i1 %cmp39.not.i, label %if.end36.i.brcms_c_stf_ss_update.exit_crit_edge, label %if.then41.i

if.end36.i.brcms_c_stf_ss_update.exit_crit_edge:  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_ss_update.exit

if.then41.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %ss_opmode.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %upd_stf_ss.0.i, ptr %ss_opmode.i, align 2
  %hw.i = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %53 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw.i, align 4
  tail call void @brcms_b_band_stf_ss_set(ptr noundef %54, i8 noundef zeroext %upd_stf_ss.0.i) #5
  br label %brcms_c_stf_ss_update.exit

brcms_c_stf_ss_update.exit:                       ; preds = %if.then41.i, %if.end36.i.brcms_c_stf_ss_update.exit_crit_edge, %if.else.i.brcms_c_stf_ss_update.exit_crit_edge
  %arrayidx89 = getelementptr %struct.brcms_c_info, ptr %wlc, i32 0, i32 11, i32 1
  %55 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx89, align 4
  %57 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stf, align 4
  %ss_opmode.i146 = getelementptr inbounds %struct.brcms_stf, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %ss_opmode.i146 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ss_opmode.i146, align 2
  %61 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %band, align 4
  %phytype.i148 = getelementptr inbounds %struct.brcms_band, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %phytype.i148 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %phytype.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %64)
  %cmp.i149 = icmp eq i16 %64, 4
  br i1 %cmp.i149, label %land.lhs.true.i152, label %brcms_c_stf_ss_update.exit.if.else.i167_crit_edge

brcms_c_stf_ss_update.exit.if.else.i167_crit_edge: ; preds = %brcms_c_stf_ss_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i167

land.lhs.true.i152:                               ; preds = %brcms_c_stf_ss_update.exit
  %phyrev.i150 = getelementptr inbounds %struct.brcms_band, ptr %62, i32 0, i32 3
  %65 = ptrtoint ptr %phyrev.i150 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %phyrev.i150, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %66)
  %cmp5.i151 = icmp ugt i16 %66, 2
  br i1 %cmp5.i151, label %land.lhs.true7.i155, label %land.lhs.true.i152.if.else.i167_crit_edge

land.lhs.true.i152.if.else.i167_crit_edge:        ; preds = %land.lhs.true.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i167

land.lhs.true7.i155:                              ; preds = %land.lhs.true.i152
  %ss_algosel_auto.i153 = getelementptr inbounds %struct.brcms_stf, ptr %58, i32 0, i32 10
  %67 = ptrtoint ptr %ss_algosel_auto.i153 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ss_algosel_auto.i153, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i154 = icmp eq i8 %68, 0
  br i1 %tobool.not.i154, label %land.lhs.true7.i155.if.else.i167_crit_edge, label %land.lhs.true10.i158

land.lhs.true7.i155.if.else.i167_crit_edge:       ; preds = %land.lhs.true7.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i167

land.lhs.true10.i158:                             ; preds = %land.lhs.true7.i155
  %ss_algo_channel.i156 = getelementptr inbounds %struct.brcms_stf, ptr %58, i32 0, i32 11
  %69 = ptrtoint ptr %ss_algo_channel.i156 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ss_algo_channel.i156, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %70)
  %cmp13.not.i157 = icmp eq i16 %70, -1
  br i1 %cmp13.not.i157, label %land.lhs.true10.i158.if.else.i167_crit_edge, label %if.then.i161

land.lhs.true10.i158.if.else.i167_crit_edge:      ; preds = %land.lhs.true10.i158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i167

if.then.i161:                                     ; preds = %land.lhs.true10.i158
  %txstreams.i159 = getelementptr inbounds %struct.brcms_stf, ptr %58, i32 0, i32 2
  %71 = ptrtoint ptr %txstreams.i159 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %txstreams.i159, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp17.i160 = icmp eq i8 %72, 1
  br i1 %cmp17.i160, label %if.then.i161.lor.end.i165_crit_edge, label %lor.rhs.i163

if.then.i161.lor.end.i165_crit_edge:              ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.i165

lor.rhs.i163:                                     ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %ss_algo_channel.i156 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ss_algo_channel.i156, align 2
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool22.i162 = icmp eq i8 %75, 0
  br label %lor.end.i165

lor.end.i165:                                     ; preds = %lor.rhs.i163, %if.then.i161.lor.end.i165_crit_edge
  %76 = phi i1 [ false, %if.then.i161.lor.end.i165_crit_edge ], [ %tobool22.i162, %lor.rhs.i163 ]
  %conv23.i164 = zext i1 %76 to i8
  br label %if.end36.i175

if.else.i167:                                     ; preds = %land.lhs.true10.i158.if.else.i167_crit_edge, %land.lhs.true7.i155.if.else.i167_crit_edge, %land.lhs.true.i152.if.else.i167_crit_edge, %brcms_c_stf_ss_update.exit.if.else.i167_crit_edge
  %cmp25.not.i166 = icmp eq ptr %62, %56
  br i1 %cmp25.not.i166, label %if.end.i170, label %if.else.i167.brcms_c_stf_ss_update.exit178_crit_edge

if.else.i167.brcms_c_stf_ss_update.exit178_crit_edge: ; preds = %if.else.i167
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_ss_update.exit178

if.end.i170:                                      ; preds = %if.else.i167
  %txstreams29.i168 = getelementptr inbounds %struct.brcms_stf, ptr %58, i32 0, i32 2
  %77 = ptrtoint ptr %txstreams29.i168 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %txstreams29.i168, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp31.i169 = icmp eq i8 %78, 1
  br i1 %cmp31.i169, label %if.end.i170.if.end36.i175_crit_edge, label %cond.false.i172

if.end.i170.if.end36.i175_crit_edge:              ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i175

cond.false.i172:                                  ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #7
  %band_stf_ss_mode.i171 = getelementptr inbounds %struct.brcms_band, ptr %56, i32 0, i32 11
  %79 = ptrtoint ptr %band_stf_ss_mode.i171 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %band_stf_ss_mode.i171, align 4
  br label %if.end36.i175

if.end36.i175:                                    ; preds = %cond.false.i172, %if.end.i170.if.end36.i175_crit_edge, %lor.end.i165
  %upd_stf_ss.0.i173 = phi i8 [ %conv23.i164, %lor.end.i165 ], [ %80, %cond.false.i172 ], [ 0, %if.end.i170.if.end36.i175_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %upd_stf_ss.0.i173)
  %cmp39.not.i174 = icmp eq i8 %60, %upd_stf_ss.0.i173
  br i1 %cmp39.not.i174, label %if.end36.i175.brcms_c_stf_ss_update.exit178_crit_edge, label %if.then41.i177

if.end36.i175.brcms_c_stf_ss_update.exit178_crit_edge: ; preds = %if.end36.i175
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_ss_update.exit178

if.then41.i177:                                   ; preds = %if.end36.i175
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %ss_opmode.i146 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %upd_stf_ss.0.i173, ptr %ss_opmode.i146, align 2
  %hw.i176 = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %82 = ptrtoint ptr %hw.i176 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw.i176, align 4
  tail call void @brcms_b_band_stf_ss_set(ptr noundef %83, i8 noundef zeroext %upd_stf_ss.0.i173) #5
  br label %brcms_c_stf_ss_update.exit178

brcms_c_stf_ss_update.exit178:                    ; preds = %if.then41.i177, %if.end36.i175.brcms_c_stf_ss_update.exit178_crit_edge, %if.else.i167.brcms_c_stf_ss_update.exit178_crit_edge
  %84 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %stf, align 4
  %txstreams91 = getelementptr inbounds %struct.brcms_stf, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %txstreams91 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %txstreams91, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp93 = icmp eq i8 %87, 1
  %conv96 = select i1 %cmp93, i8 0, i8 3
  %txant = getelementptr inbounds %struct.brcms_stf, ptr %85, i32 0, i32 7
  %88 = ptrtoint ptr %txant to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv96, ptr %txant, align 1
  tail call fastcc void @_brcms_c_stf_phy_txant_upd(ptr noundef %wlc)
  %89 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %band, align 4
  %pi = getelementptr inbounds %struct.brcms_band, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pi, align 4
  %93 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stf, align 4
  %txchain100 = getelementptr inbounds %struct.brcms_stf, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %txchain100 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %txchain100, align 1
  %rxchain = getelementptr inbounds %struct.brcms_stf, ptr %94, i32 0, i32 4
  %97 = ptrtoint ptr %rxchain to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rxchain, align 2
  tail call void @wlc_phy_stf_chain_set(ptr noundef %92, i8 noundef zeroext %96, i8 noundef zeroext %98) #5
  tail call fastcc void @brcms_c_stf_txcore_set(ptr noundef %wlc, i8 noundef zeroext 1, i8 noundef zeroext 1)
  tail call fastcc void @brcms_c_stf_txcore_set(ptr noundef %wlc, i8 noundef zeroext 2, i8 noundef zeroext 3)
  tail call fastcc void @brcms_c_stf_txcore_set(ptr noundef %wlc, i8 noundef zeroext 3, i8 noundef zeroext 7)
  tail call fastcc void @brcms_c_stf_txcore_set(ptr noundef %wlc, i8 noundef zeroext 4, i8 noundef zeroext 15)
  br label %cleanup

cleanup:                                          ; preds = %brcms_c_stf_ss_update.exit178, %cond.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %cond.false.cleanup_crit_edge ], [ 0, %brcms_c_stf_ss_update.exit178 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_stf_ss_algo_channel_get(ptr nocapture noundef readonly %wlc, ptr nocapture noundef %ss_algo_channel, i16 noundef zeroext %chanspec) local_unnamed_addr #0 align 64 {
entry:
  %power = alloca %struct.tx_power, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %power) #5
  %0 = call ptr @memset(ptr %power, i32 0, i32 436)
  %1 = ptrtoint ptr %ss_algo_channel to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %ss_algo_channel, align 2
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  %up = getelementptr inbounds %struct.brcms_pub, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %up, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ss_algo_channel to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %ss_algo_channel, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %band = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %7 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %band, align 4
  %pi = getelementptr inbounds %struct.brcms_band, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pi, align 4
  %11 = and i16 %chanspec, 255
  %conv2 = zext i16 %11 to i32
  call void @wlc_phy_txpower_get_current(ptr noundef %10, ptr noundef nonnull %power, i32 noundef %conv2) #5
  %12 = and i16 %chanspec, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %12)
  %cmp = icmp eq i16 %12, 3072
  %idxprom = select i1 %cmp, i32 68, i32 20
  %arrayidx = getelementptr %struct.tx_power, ptr %power, i32 0, i32 15, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv19 = zext i8 %14 to i32
  %idxprom21 = select i1 %cmp, i32 76, i32 28
  %arrayidx22 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 15, i32 %idxprom21
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv23, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv19)
  %cmp24 = icmp ult i32 %add, %conv19
  %17 = ptrtoint ptr %ss_algo_channel to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ss_algo_channel, align 1
  %. = select i1 %cmp24, i8 1, i8 2
  %19 = or i8 %18, %.
  store i8 %19, ptr %ss_algo_channel, align 1
  %idxprom40 = select i1 %cmp, i32 84, i32 36
  %arrayidx41 = getelementptr %struct.tx_power, ptr %power, i32 0, i32 15, i32 %idxprom40
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %21 to i32
  %add43 = add nuw nsw i32 %conv42, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %conv19)
  %cmp44.not = icmp ult i32 %add43, %conv19
  br i1 %cmp44.not, label %if.end.cleanup_crit_edge, label %if.then46

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = or i8 %19, 4
  %23 = ptrtoint ptr %ss_algo_channel to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ss_algo_channel, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %power) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_txpower_get_current(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcms_c_stf_stbc_rx_set(ptr noundef %wlc, i32 noundef %int_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %int_val)
  %cmp.not = icmp eq i32 %int_val, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %int_val)
  %switch = icmp ult i32 %int_val, 2
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %band = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %band, align 4
  %phytype = getelementptr inbounds %struct.brcms_band, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phytype to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %phytype, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp2 = icmp eq i16 %3, 4
  br i1 %cmp2, label %land.lhs.true4, label %if.end.if.end19.i_crit_edge

if.end.if.end19.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

land.lhs.true4:                                   ; preds = %if.end
  %phyrev = getelementptr inbounds %struct.brcms_band, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %phyrev to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %phyrev, align 2
  %6 = add i16 %5, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %6)
  %7 = icmp ult i16 %6, -3
  %brmerge = or i1 %cmp.not, %7
  br i1 %brmerge, label %land.lhs.true4.land.lhs.true.i_crit_edge, label %land.lhs.true18

land.lhs.true4.land.lhs.true.i_crit_edge:         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

land.lhs.true18:                                  ; preds = %land.lhs.true4
  %stf = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %8 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stf, align 4
  %rxstreams = getelementptr inbounds %struct.brcms_stf, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %rxstreams to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rxstreams, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp20 = icmp eq i8 %11, 1
  br i1 %cmp20, label %land.lhs.true18.return_crit_edge, label %land.lhs.true18.land.lhs.true.i_crit_edge

land.lhs.true18.land.lhs.true.i_crit_edge:        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

land.lhs.true18.return_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true.i:                                  ; preds = %land.lhs.true18.land.lhs.true.i_crit_edge, %land.lhs.true4.land.lhs.true.i_crit_edge
  %12 = ptrtoint ptr %phyrev to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %phyrev, align 2
  %14 = add i16 %13, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %15 = icmp ult i16 %14, 3
  br i1 %15, label %if.then.i, label %land.lhs.true.i.if.end19.i_crit_edge

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %stf.i = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %16 = ptrtoint ptr %stf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stf.i, align 4
  %rxstreams.i = getelementptr inbounds %struct.brcms_stf, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %rxstreams.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rxstreams.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp13.i = icmp ne i8 %19, 1
  %or.cond28.i = or i1 %cmp.not, %cmp13.i
  br i1 %or.cond28.i, label %if.then.i.if.end19.i_crit_edge, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.i.if.end19.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then.i.if.end19.i_crit_edge, %land.lhs.true.i.if.end19.i_crit_edge, %if.end.if.end19.i_crit_edge
  %20 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wlc, align 4
  %up.i = getelementptr inbounds %struct.brcms_pub, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %up.i, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end19.i.return_crit_edge, label %if.then20.i

if.end19.i.return_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then20.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @brcms_c_update_beacon(ptr noundef %wlc) #5
  tail call void @brcms_c_update_probe_resp(ptr noundef %wlc, i1 noundef zeroext true) #5
  br label %return

return:                                           ; preds = %if.then20.i, %if.end19.i.return_crit_edge, %if.then.i.return_crit_edge, %land.lhs.true18.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %land.lhs.true18.return_crit_edge ], [ true, %if.then.i.return_crit_edge ], [ true, %if.end19.i.return_crit_edge ], [ true, %if.then20.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_stf_ss_update(ptr nocapture noundef readonly %wlc, ptr noundef readonly %band) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stf = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %0 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stf, align 4
  %ss_opmode = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ss_opmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ss_opmode, align 2
  %band1 = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %4 = ptrtoint ptr %band1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %band1, align 4
  %phytype = getelementptr inbounds %struct.brcms_band, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %phytype to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phytype, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp = icmp eq i16 %7, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %phyrev = getelementptr inbounds %struct.brcms_band, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %phyrev to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %phyrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp5 = icmp ugt i16 %9, 2
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %ss_algosel_auto = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %ss_algosel_auto to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ss_algosel_auto, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %land.lhs.true7.if.else_crit_edge, label %land.lhs.true10

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %ss_algo_channel = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %ss_algo_channel to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ss_algo_channel, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp13.not = icmp eq i16 %13, -1
  br i1 %cmp13.not, label %land.lhs.true10.if.else_crit_edge, label %if.then

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true10
  %txstreams = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %txstreams to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %txstreams, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp17 = icmp eq i8 %15, 1
  br i1 %cmp17, label %if.then.lor.end_crit_edge, label %lor.rhs

if.then.lor.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %ss_algo_channel to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ss_algo_channel, align 2
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22 = icmp eq i8 %18, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.lor.end_crit_edge
  %19 = phi i1 [ false, %if.then.lor.end_crit_edge ], [ %tobool22, %lor.rhs ]
  %conv23 = zext i1 %19 to i8
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %cmp25.not = icmp eq ptr %5, %band
  br i1 %cmp25.not, label %if.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.else
  %txstreams29 = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %txstreams29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %txstreams29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp31 = icmp eq i8 %21, 1
  br i1 %cmp31, label %if.end.if.end36_crit_edge, label %cond.false

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %band_stf_ss_mode = getelementptr inbounds %struct.brcms_band, ptr %band, i32 0, i32 11
  %22 = ptrtoint ptr %band_stf_ss_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %band_stf_ss_mode, align 4
  br label %if.end36

if.end36:                                         ; preds = %cond.false, %if.end.if.end36_crit_edge, %lor.end
  %upd_stf_ss.0 = phi i8 [ %conv23, %lor.end ], [ %23, %cond.false ], [ 0, %if.end.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %upd_stf_ss.0)
  %cmp39.not = icmp eq i8 %3, %upd_stf_ss.0
  br i1 %cmp39.not, label %if.end36.cleanup_crit_edge, label %if.then41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %ss_opmode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %upd_stf_ss.0, ptr %ss_opmode, align 2
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  tail call void @brcms_b_band_stf_ss_set(ptr noundef %26, i8 noundef zeroext %upd_stf_ss.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end36.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_brcms_c_stf_phy_txant_upd(ptr nocapture noundef readonly %wlc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stf = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %0 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stf, align 4
  %txant1 = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %txant1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txant1, align 1
  %band = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %4 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %band, align 4
  %phytype = getelementptr inbounds %struct.brcms_band, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %phytype to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phytype, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %7, label %if.else92 [
    i16 4, label %entry.if.then_crit_edge
    i16 8, label %entry.if.then_crit_edge139
    i16 6, label %entry.if.then_crit_edge140
  ]

entry.if.then_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge139, %entry.if.then_crit_edge140
  %9 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %3, label %if.else43 [
    i8 0, label %if.then.if.end111.sink.split_crit_edge
    i8 1, label %if.then22
  ]

if.then.if.end111.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111.sink.split

if.then22:                                        ; preds = %if.then
  %phytxant24 = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %phytxant24 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 128, ptr %phytxant24, align 2
  %11 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %band, align 4
  %phytype26 = getelementptr inbounds %struct.brcms_band, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %phytype26 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phytype26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %14)
  %cmp28 = icmp eq i16 %14, 4
  br i1 %cmp28, label %land.lhs.true, label %if.then22.if.end111_crit_edge

if.then22.if.end111_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

land.lhs.true:                                    ; preds = %if.then22
  %phyrev = getelementptr inbounds %struct.brcms_band, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %phyrev to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %phyrev, align 2
  %17 = add i16 %16, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %18 = icmp ult i16 %17, 4
  br i1 %18, label %if.then40, label %land.lhs.true.if.end111_crit_edge

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stf, align 4
  br label %if.end111.sink.split

if.else43:                                        ; preds = %if.then
  %21 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %7, label %if.else58 [
    i16 8, label %if.else43.if.end111.sink.split_crit_edge
    i16 6, label %if.else43.if.end111.sink.split_crit_edge141
  ]

if.else43.if.end111.sink.split_crit_edge141:      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111.sink.split

if.else43.if.end111.sink.split_crit_edge:         ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111.sink.split

if.else58:                                        ; preds = %if.else43
  %txchain = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %txchain to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %txchain, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp61 = icmp eq i8 %23, 0
  br i1 %cmp61, label %do.end, label %if.else58.if.end76_crit_edge, !prof !20

if.else58.if.end76_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

do.end:                                           ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef null) #5
  br label %if.end76

if.end76:                                         ; preds = %do.end, %if.else58.if.end76_crit_edge
  %24 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stf, align 4
  %txchain84 = getelementptr inbounds %struct.brcms_stf, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %txchain84 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %txchain84, align 1
  %conv85 = zext i8 %27 to i16
  %shl = shl nuw nsw i16 %conv85, 6
  br label %if.end111.sink.split

if.else92:                                        ; preds = %entry
  %28 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %3, label %if.else106 [
    i8 0, label %if.else92.if.end111.sink.split_crit_edge
    i8 1, label %if.then103
  ]

if.else92.if.end111.sink.split_crit_edge:         ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111.sink.split

if.then103:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111.sink.split

if.else106:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111.sink.split

if.end111.sink.split:                             ; preds = %if.else106, %if.then103, %if.else92.if.end111.sink.split_crit_edge, %if.end76, %if.else43.if.end111.sink.split_crit_edge, %if.else43.if.end111.sink.split_crit_edge141, %if.then40, %if.then.if.end111.sink.split_crit_edge
  %.sink138 = phi ptr [ %1, %if.else106 ], [ %1, %if.then103 ], [ %25, %if.end76 ], [ %20, %if.then40 ], [ %1, %if.then.if.end111.sink.split_crit_edge ], [ %1, %if.else43.if.end111.sink.split_crit_edge ], [ %1, %if.else43.if.end111.sink.split_crit_edge141 ], [ %1, %if.else92.if.end111.sink.split_crit_edge ]
  %.sink = phi i16 [ 768, %if.else106 ], [ 256, %if.then103 ], [ %shl, %if.end76 ], [ 256, %if.then40 ], [ 64, %if.then.if.end111.sink.split_crit_edge ], [ 0, %if.else43.if.end111.sink.split_crit_edge ], [ 0, %if.else43.if.end111.sink.split_crit_edge141 ], [ 0, %if.else92.if.end111.sink.split_crit_edge ]
  %phytxant98 = getelementptr inbounds %struct.brcms_stf, ptr %.sink138, i32 0, i32 8
  %29 = ptrtoint ptr %phytxant98 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %.sink, ptr %phytxant98, align 2
  br label %if.end111

if.end111:                                        ; preds = %if.end111.sink.split, %land.lhs.true.if.end111_crit_edge, %if.then22.if.end111_crit_edge
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %32 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stf, align 4
  %phytxant113 = getelementptr inbounds %struct.brcms_stf, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %phytxant113 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %phytxant113, align 2
  tail call void @brcms_b_txant_set(ptr noundef %31, i16 noundef zeroext %35) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_stf_chain_set(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcms_c_stf_txcore_set(ptr noundef %wlc, i8 noundef zeroext %Nsts, i8 noundef zeroext %core_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wlc, align 4
  %unit = getelementptr inbounds %struct.brcms_pub, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unit, align 4
  %conv = zext i8 %Nsts to i32
  %conv1 = zext i8 %core_mask to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_stf_txcore_set, ptr noundef nonnull @.str.1, i32 noundef %7, i32 noundef %conv, i32 noundef %conv1) #5
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv1) #5
  %stf = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %8 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stf, align 4
  %txstreams = getelementptr inbounds %struct.brcms_stf, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %txstreams to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %txstreams, align 2
  %conv60 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv60)
  %cmp = icmp ugt i32 %call.i, %conv60
  %spec.select = select i1 %cmp, i8 0, i8 %core_mask
  %conv127 = zext i8 %spec.select to i32
  %call.i13 = tail call i32 @__sw_hweight8(i32 noundef %conv127) #5
  %12 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stf, align 4
  %txstreams132 = getelementptr inbounds %struct.brcms_stf, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %txstreams132 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %txstreams132, align 2
  %conv133 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i13, i32 %conv133)
  %cmp134 = icmp eq i32 %call.i13, %conv133
  br i1 %cmp134, label %land.lhs.true, label %entry.if.end150_crit_edge

entry.if.end150_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv136 = zext i8 %spec.select to i32
  %txchain = getelementptr inbounds %struct.brcms_stf, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %txchain to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %txchain, align 1
  %conv138 = zext i8 %17 to i32
  %neg = xor i32 %conv138, -1
  %and139 = and i32 %neg, %conv136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp ne i32 %and139, 0
  %and1451 = and i8 %17, %spec.select
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1451)
  %tobool146.not = icmp eq i8 %and1451, 0
  %or.cond = select i1 %tobool140.not, i1 true, i1 %tobool146.not
  %spec.select14 = select i1 %or.cond, i8 %17, i8 %spec.select
  br label %if.end150

if.end150:                                        ; preds = %land.lhs.true, %entry.if.end150_crit_edge
  %core_mask.addr.1 = phi i8 [ %spec.select, %entry.if.end150_crit_edge ], [ %spec.select14, %land.lhs.true ]
  %arrayidx = getelementptr %struct.brcms_stf, ptr %13, i32 0, i32 14, i32 %conv
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %core_mask.addr.1, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %Nsts)
  %cmp153 = icmp eq i8 %Nsts, 1
  br i1 %cmp153, label %if.then155, label %if.end150.if.end165_crit_edge

if.end150.if.end165_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end165

if.then155:                                       ; preds = %if.end150
  %conv156 = zext i8 %core_mask.addr.1 to i16
  %shl = shl nuw nsw i16 %conv156, 6
  %19 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stf, align 4
  %phytxant = getelementptr inbounds %struct.brcms_stf, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %phytxant to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %shl, ptr %phytxant, align 2
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %24 = load ptr, ptr %stf, align 4
  %phytxant161 = getelementptr inbounds %struct.brcms_stf, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %phytxant161 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %phytxant161, align 2
  tail call void @brcms_b_txant_set(ptr noundef %23, i16 noundef zeroext %26) #5
  %clk = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 7
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %clk, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool162.not = icmp eq i8 %28, 0
  br i1 %tobool162.not, label %if.then155.if.end165_crit_edge, label %if.then163

if.then155.if.end165_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end165

if.then163:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @brcms_c_suspend_mac_and_wait(ptr noundef %wlc) #5
  %bcn_rspec = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 61
  %29 = ptrtoint ptr %bcn_rspec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bcn_rspec, align 4
  tail call void @brcms_c_beacon_phytxctl_txant_upd(ptr noundef %wlc, i32 noundef %30) #5
  tail call void @brcms_c_enable_mac(ptr noundef %wlc) #5
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.then155.if.end165_crit_edge, %if.end150.if.end165_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_band_stf_ss_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_c_stf_attach(ptr noundef %wlc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bandstate = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 11
  %0 = ptrtoint ptr %bandstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bandstate, align 4
  %band_stf_ss_mode = getelementptr inbounds %struct.brcms_band, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %band_stf_ss_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %band_stf_ss_mode, align 4
  %arrayidx2 = getelementptr %struct.brcms_c_info, ptr %wlc, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2, align 4
  %band_stf_ss_mode3 = getelementptr inbounds %struct.brcms_band, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %band_stf_ss_mode3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %band_stf_ss_mode3, align 4
  %band = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %6 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %band, align 4
  %phytype = getelementptr inbounds %struct.brcms_band, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %phytype to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %phytype, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp = icmp eq i16 %9, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pi = getelementptr inbounds %struct.brcms_band, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pi, align 4
  %call = tail call zeroext i1 @wlc_phy_txpower_hw_ctrl_get(ptr noundef %11) #5
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %bandstate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bandstate, align 4
  %band_stf_ss_mode11 = getelementptr inbounds %struct.brcms_band, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %band_stf_ss_mode11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %band_stf_ss_mode11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %bandstate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bandstate, align 4
  %stf.i = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %17 = ptrtoint ptr %stf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stf.i, align 4
  %ss_opmode.i = getelementptr inbounds %struct.brcms_stf, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %ss_opmode.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ss_opmode.i, align 2
  %21 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %band, align 4
  %phytype.i = getelementptr inbounds %struct.brcms_band, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %phytype.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %phytype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %24)
  %cmp.i = icmp eq i16 %24, 4
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %phyrev.i = getelementptr inbounds %struct.brcms_band, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %phyrev.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %phyrev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %26)
  %cmp5.i = icmp ugt i16 %26, 2
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %ss_algosel_auto.i = getelementptr inbounds %struct.brcms_stf, ptr %18, i32 0, i32 10
  %27 = ptrtoint ptr %ss_algosel_auto.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ss_algosel_auto.i, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %land.lhs.true7.i.if.else.i_crit_edge, label %land.lhs.true10.i

land.lhs.true7.i.if.else.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true10.i:                                ; preds = %land.lhs.true7.i
  %ss_algo_channel.i = getelementptr inbounds %struct.brcms_stf, ptr %18, i32 0, i32 11
  %29 = ptrtoint ptr %ss_algo_channel.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ss_algo_channel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %30)
  %cmp13.not.i = icmp eq i16 %30, -1
  br i1 %cmp13.not.i, label %land.lhs.true10.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true10.i.if.else.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true10.i
  %txstreams.i = getelementptr inbounds %struct.brcms_stf, ptr %18, i32 0, i32 2
  %31 = ptrtoint ptr %txstreams.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %txstreams.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp17.i = icmp eq i8 %32, 1
  br i1 %cmp17.i, label %if.then.i.lor.end.i_crit_edge, label %lor.rhs.i

if.then.i.lor.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %ss_algo_channel.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ss_algo_channel.i, align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool22.i = icmp eq i8 %35, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.then.i.lor.end.i_crit_edge
  %36 = phi i1 [ false, %if.then.i.lor.end.i_crit_edge ], [ %tobool22.i, %lor.rhs.i ]
  %conv23.i = zext i1 %36 to i8
  br label %if.end36.i

if.else.i:                                        ; preds = %land.lhs.true10.i.if.else.i_crit_edge, %land.lhs.true7.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %cmp25.not.i = icmp eq ptr %22, %16
  br i1 %cmp25.not.i, label %if.end.i, label %if.else.i.brcms_c_stf_ss_update.exit_crit_edge

if.else.i.brcms_c_stf_ss_update.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_ss_update.exit

if.end.i:                                         ; preds = %if.else.i
  %txstreams29.i = getelementptr inbounds %struct.brcms_stf, ptr %18, i32 0, i32 2
  %37 = ptrtoint ptr %txstreams29.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %txstreams29.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp31.i = icmp eq i8 %38, 1
  br i1 %cmp31.i, label %if.end.i.if.end36.i_crit_edge, label %cond.false.i

if.end.i.if.end36.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %band_stf_ss_mode.i = getelementptr inbounds %struct.brcms_band, ptr %16, i32 0, i32 11
  %39 = ptrtoint ptr %band_stf_ss_mode.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %band_stf_ss_mode.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %cond.false.i, %if.end.i.if.end36.i_crit_edge, %lor.end.i
  %upd_stf_ss.0.i = phi i8 [ %conv23.i, %lor.end.i ], [ %40, %cond.false.i ], [ 0, %if.end.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %upd_stf_ss.0.i)
  %cmp39.not.i = icmp eq i8 %20, %upd_stf_ss.0.i
  br i1 %cmp39.not.i, label %if.end36.i.brcms_c_stf_ss_update.exit_crit_edge, label %if.then41.i

if.end36.i.brcms_c_stf_ss_update.exit_crit_edge:  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_ss_update.exit

if.then41.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %ss_opmode.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %upd_stf_ss.0.i, ptr %ss_opmode.i, align 2
  %hw.i = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %42 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw.i, align 4
  tail call void @brcms_b_band_stf_ss_set(ptr noundef %43, i8 noundef zeroext %upd_stf_ss.0.i) #5
  br label %brcms_c_stf_ss_update.exit

brcms_c_stf_ss_update.exit:                       ; preds = %if.then41.i, %if.end36.i.brcms_c_stf_ss_update.exit_crit_edge, %if.else.i.brcms_c_stf_ss_update.exit_crit_edge
  %44 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx2, align 4
  %46 = ptrtoint ptr %stf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %stf.i, align 4
  %ss_opmode.i50 = getelementptr inbounds %struct.brcms_stf, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %ss_opmode.i50 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ss_opmode.i50, align 2
  %50 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %band, align 4
  %phytype.i52 = getelementptr inbounds %struct.brcms_band, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %phytype.i52 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %phytype.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %53)
  %cmp.i53 = icmp eq i16 %53, 4
  br i1 %cmp.i53, label %land.lhs.true.i56, label %brcms_c_stf_ss_update.exit.if.else.i71_crit_edge

brcms_c_stf_ss_update.exit.if.else.i71_crit_edge: ; preds = %brcms_c_stf_ss_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i71

land.lhs.true.i56:                                ; preds = %brcms_c_stf_ss_update.exit
  %phyrev.i54 = getelementptr inbounds %struct.brcms_band, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %phyrev.i54 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %phyrev.i54, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %55)
  %cmp5.i55 = icmp ugt i16 %55, 2
  br i1 %cmp5.i55, label %land.lhs.true7.i59, label %land.lhs.true.i56.if.else.i71_crit_edge

land.lhs.true.i56.if.else.i71_crit_edge:          ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i71

land.lhs.true7.i59:                               ; preds = %land.lhs.true.i56
  %ss_algosel_auto.i57 = getelementptr inbounds %struct.brcms_stf, ptr %47, i32 0, i32 10
  %56 = ptrtoint ptr %ss_algosel_auto.i57 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ss_algosel_auto.i57, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i58 = icmp eq i8 %57, 0
  br i1 %tobool.not.i58, label %land.lhs.true7.i59.if.else.i71_crit_edge, label %land.lhs.true10.i62

land.lhs.true7.i59.if.else.i71_crit_edge:         ; preds = %land.lhs.true7.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i71

land.lhs.true10.i62:                              ; preds = %land.lhs.true7.i59
  %ss_algo_channel.i60 = getelementptr inbounds %struct.brcms_stf, ptr %47, i32 0, i32 11
  %58 = ptrtoint ptr %ss_algo_channel.i60 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ss_algo_channel.i60, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %59)
  %cmp13.not.i61 = icmp eq i16 %59, -1
  br i1 %cmp13.not.i61, label %land.lhs.true10.i62.if.else.i71_crit_edge, label %if.then.i65

land.lhs.true10.i62.if.else.i71_crit_edge:        ; preds = %land.lhs.true10.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i71

if.then.i65:                                      ; preds = %land.lhs.true10.i62
  %txstreams.i63 = getelementptr inbounds %struct.brcms_stf, ptr %47, i32 0, i32 2
  %60 = ptrtoint ptr %txstreams.i63 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %txstreams.i63, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp17.i64 = icmp eq i8 %61, 1
  br i1 %cmp17.i64, label %if.then.i65.lor.end.i69_crit_edge, label %lor.rhs.i67

if.then.i65.lor.end.i69_crit_edge:                ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.i69

lor.rhs.i67:                                      ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %ss_algo_channel.i60 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ss_algo_channel.i60, align 2
  %64 = and i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool22.i66 = icmp eq i8 %64, 0
  br label %lor.end.i69

lor.end.i69:                                      ; preds = %lor.rhs.i67, %if.then.i65.lor.end.i69_crit_edge
  %65 = phi i1 [ false, %if.then.i65.lor.end.i69_crit_edge ], [ %tobool22.i66, %lor.rhs.i67 ]
  %conv23.i68 = zext i1 %65 to i8
  br label %if.end36.i79

if.else.i71:                                      ; preds = %land.lhs.true10.i62.if.else.i71_crit_edge, %land.lhs.true7.i59.if.else.i71_crit_edge, %land.lhs.true.i56.if.else.i71_crit_edge, %brcms_c_stf_ss_update.exit.if.else.i71_crit_edge
  %cmp25.not.i70 = icmp eq ptr %51, %45
  br i1 %cmp25.not.i70, label %if.end.i74, label %if.else.i71.brcms_c_stf_ss_update.exit82_crit_edge

if.else.i71.brcms_c_stf_ss_update.exit82_crit_edge: ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_ss_update.exit82

if.end.i74:                                       ; preds = %if.else.i71
  %txstreams29.i72 = getelementptr inbounds %struct.brcms_stf, ptr %47, i32 0, i32 2
  %66 = ptrtoint ptr %txstreams29.i72 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %txstreams29.i72, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp31.i73 = icmp eq i8 %67, 1
  br i1 %cmp31.i73, label %if.end.i74.if.end36.i79_crit_edge, label %cond.false.i76

if.end.i74.if.end36.i79_crit_edge:                ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i79

cond.false.i76:                                   ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #7
  %band_stf_ss_mode.i75 = getelementptr inbounds %struct.brcms_band, ptr %45, i32 0, i32 11
  %68 = ptrtoint ptr %band_stf_ss_mode.i75 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %band_stf_ss_mode.i75, align 4
  br label %if.end36.i79

if.end36.i79:                                     ; preds = %cond.false.i76, %if.end.i74.if.end36.i79_crit_edge, %lor.end.i69
  %upd_stf_ss.0.i77 = phi i8 [ %conv23.i68, %lor.end.i69 ], [ %69, %cond.false.i76 ], [ 0, %if.end.i74.if.end36.i79_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %upd_stf_ss.0.i77)
  %cmp39.not.i78 = icmp eq i8 %49, %upd_stf_ss.0.i77
  br i1 %cmp39.not.i78, label %if.end36.i79.brcms_c_stf_ss_update.exit82_crit_edge, label %if.then41.i81

if.end36.i79.brcms_c_stf_ss_update.exit82_crit_edge: ; preds = %if.end36.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_ss_update.exit82

if.then41.i81:                                    ; preds = %if.end36.i79
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %ss_opmode.i50 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %upd_stf_ss.0.i77, ptr %ss_opmode.i50, align 2
  %hw.i80 = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %71 = ptrtoint ptr %hw.i80 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw.i80, align 4
  tail call void @brcms_b_band_stf_ss_set(ptr noundef %72, i8 noundef zeroext %upd_stf_ss.0.i77) #5
  br label %brcms_c_stf_ss_update.exit82

brcms_c_stf_ss_update.exit82:                     ; preds = %if.then41.i81, %if.end36.i79.brcms_c_stf_ss_update.exit82_crit_edge, %if.else.i71.brcms_c_stf_ss_update.exit82_crit_edge
  %73 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wlc, align 4
  %up.i = getelementptr inbounds %struct.brcms_pub, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %up.i, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i89 = icmp eq i8 %76, 0
  br i1 %tobool.not.i89, label %brcms_c_stf_ss_update.exit82.brcms_c_stf_stbc_rx_ht_update.exit_crit_edge, label %if.then20.i

brcms_c_stf_ss_update.exit82.brcms_c_stf_stbc_rx_ht_update.exit_crit_edge: ; preds = %brcms_c_stf_ss_update.exit82
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_stbc_rx_ht_update.exit

if.then20.i:                                      ; preds = %brcms_c_stf_ss_update.exit82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @brcms_c_update_beacon(ptr noundef %wlc) #5
  tail call void @brcms_c_update_probe_resp(ptr noundef %wlc, i1 noundef zeroext true) #5
  br label %brcms_c_stf_stbc_rx_ht_update.exit

brcms_c_stf_stbc_rx_ht_update.exit:               ; preds = %if.then20.i, %brcms_c_stf_ss_update.exit82.brcms_c_stf_stbc_rx_ht_update.exit_crit_edge
  %77 = ptrtoint ptr %bandstate to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bandstate, align 4
  %band_stf_stbc_tx = getelementptr inbounds %struct.brcms_band, ptr %78, i32 0, i32 12
  %79 = ptrtoint ptr %band_stf_stbc_tx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %band_stf_stbc_tx, align 1
  %80 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx2, align 4
  %band_stf_stbc_tx20 = getelementptr inbounds %struct.brcms_band, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %band_stf_stbc_tx20 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %band_stf_stbc_tx20, align 1
  %83 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %band, align 4
  %phytype22 = getelementptr inbounds %struct.brcms_band, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %phytype22 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %phytype22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %86)
  %cmp24 = icmp eq i16 %86, 4
  br i1 %cmp24, label %land.lhs.true26, label %brcms_c_stf_stbc_rx_ht_update.exit.if.end33_crit_edge

brcms_c_stf_stbc_rx_ht_update.exit.if.end33_crit_edge: ; preds = %brcms_c_stf_stbc_rx_ht_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true26:                                  ; preds = %brcms_c_stf_stbc_rx_ht_update.exit
  %phyrev = getelementptr inbounds %struct.brcms_band, ptr %84, i32 0, i32 3
  %87 = ptrtoint ptr %phyrev to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %phyrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %88)
  %cmp29 = icmp ugt i16 %88, 2
  br i1 %cmp29, label %if.then31, label %land.lhs.true26.if.end33_crit_edge

land.lhs.true26.if.end33_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then31:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %stf.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %stf.i, align 4
  %ss_algosel_auto = getelementptr inbounds %struct.brcms_stf, ptr %90, i32 0, i32 10
  %91 = ptrtoint ptr %ss_algosel_auto to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %ss_algosel_auto, align 1
  %92 = load ptr, ptr %stf.i, align 4
  %ss_algo_channel = getelementptr inbounds %struct.brcms_stf, ptr %92, i32 0, i32 11
  %93 = ptrtoint ptr %ss_algo_channel to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -1, ptr %ss_algo_channel, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true26.if.end33_crit_edge, %brcms_c_stf_stbc_rx_ht_update.exit.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wlc_phy_txpower_hw_ctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @brcms_c_stf_detach(ptr nocapture noundef %wlc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_stf_phy_txant_upd(ptr nocapture noundef readonly %wlc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_brcms_c_stf_phy_txant_upd(ptr noundef %wlc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_stf_phy_chain_calc(ptr noundef %wlc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d11core, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %txchain = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 18, i32 93
  %6 = ptrtoint ptr %txchain to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %txchain, align 2
  %stf = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %8 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %9, align 2
  %rxchain = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 18, i32 94
  %11 = ptrtoint ptr %rxchain to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rxchain, align 1
  %13 = load ptr, ptr %stf, align 4
  %hw_rxchain = getelementptr inbounds %struct.brcms_stf, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %hw_rxchain to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %hw_rxchain, align 1
  %15 = load ptr, ptr %stf, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %17, label %entry.if.end19_crit_edge [
    i8 0, label %entry.if.then_crit_edge
    i8 15, label %entry.if.then_crit_edge358
  ]

entry.if.then_crit_edge358:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge358
  %band = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %19 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %band, align 4
  %phytype = getelementptr inbounds %struct.brcms_band, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %phytype to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %phytype, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %22)
  %cmp12 = icmp eq i16 %22, 4
  %. = select i1 %cmp12, i8 3, i8 1
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %., ptr %15, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then, %entry.if.end19_crit_edge
  %24 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stf, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 2
  %txchain23 = getelementptr inbounds %struct.brcms_stf, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %txchain23 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %txchain23, align 1
  %29 = load ptr, ptr %stf, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 2
  %conv101 = zext i8 %31 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv101) #5
  %conv102 = trunc i32 %call.i to i8
  %32 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stf, align 4
  %txstreams = getelementptr inbounds %struct.brcms_stf, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %txstreams to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv102, ptr %txstreams, align 2
  %35 = load ptr, ptr %stf, align 4
  %hw_rxchain105 = getelementptr inbounds %struct.brcms_stf, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %hw_rxchain105 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hw_rxchain105, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %37, label %if.end19.if.end128_crit_edge [
    i8 0, label %if.end19.if.then115_crit_edge
    i8 15, label %if.end19.if.then115_crit_edge359
  ]

if.end19.if.then115_crit_edge359:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then115

if.end19.if.then115_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then115

if.end19.if.end128_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

if.then115:                                       ; preds = %if.end19.if.then115_crit_edge, %if.end19.if.then115_crit_edge359
  %band116 = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %39 = ptrtoint ptr %band116 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %band116, align 4
  %phytype117 = getelementptr inbounds %struct.brcms_band, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %phytype117 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %phytype117, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %42)
  %cmp119 = icmp eq i16 %42, 4
  %.357 = select i1 %cmp119, i8 3, i8 1
  %43 = ptrtoint ptr %hw_rxchain105 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.357, ptr %hw_rxchain105, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.then115, %if.end19.if.end128_crit_edge
  %44 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stf, align 4
  %hw_rxchain130 = getelementptr inbounds %struct.brcms_stf, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %hw_rxchain130 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hw_rxchain130, align 1
  %rxchain132 = getelementptr inbounds %struct.brcms_stf, ptr %45, i32 0, i32 4
  %48 = ptrtoint ptr %rxchain132 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %rxchain132, align 2
  %49 = load ptr, ptr %stf, align 4
  %hw_rxchain134 = getelementptr inbounds %struct.brcms_stf, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %hw_rxchain134 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %hw_rxchain134, align 1
  %conv218 = zext i8 %51 to i32
  %call.i281 = tail call i32 @__sw_hweight8(i32 noundef %conv218) #5
  %conv222 = trunc i32 %call.i281 to i8
  %52 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stf, align 4
  %rxstreams = getelementptr inbounds %struct.brcms_stf, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %rxstreams to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv222, ptr %rxstreams, align 1
  %55 = load ptr, ptr %stf, align 4
  %txcore = getelementptr inbounds %struct.brcms_stf, ptr %55, i32 0, i32 14
  %56 = call ptr @memcpy(ptr %txcore, ptr @txcore_default, i32 5)
  %57 = load ptr, ptr %stf, align 4
  %spatial_policy = getelementptr inbounds %struct.brcms_stf, ptr %57, i32 0, i32 15
  %58 = ptrtoint ptr %spatial_policy to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %spatial_policy, align 1
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %d11core.i = getelementptr inbounds %struct.brcms_hardware, ptr %60, i32 0, i32 14
  %61 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d11core.i, align 4
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wlc, align 4
  %unit.i = getelementptr inbounds %struct.brcms_pub, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %unit.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_stf_spatial_policy_set, ptr noundef nonnull @.str.2, i32 noundef %66, i32 noundef 0) #5
  %67 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %stf, align 4
  %spatial_policy.i = getelementptr inbounds %struct.brcms_stf, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %spatial_policy.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %spatial_policy.i, align 1
  tail call fastcc void @brcms_c_stf_txcore_set(ptr noundef %wlc, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 4
  %d11core.i323 = getelementptr inbounds %struct.brcms_hardware, ptr %71, i32 0, i32 14
  %72 = ptrtoint ptr %d11core.i323 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %d11core.i323, align 4
  %dev.i324 = getelementptr inbounds %struct.bcma_device, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wlc, align 4
  %unit.i325 = getelementptr inbounds %struct.brcms_pub, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %unit.i325 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %unit.i325, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i324, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_stf_txcore_set, ptr noundef nonnull @.str.1, i32 noundef %77, i32 noundef 2, i32 noundef 3) #5
  %78 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %stf, align 4
  %txstreams.i327 = getelementptr inbounds %struct.brcms_stf, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %txstreams.i327 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %txstreams.i327, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp.i329 = icmp ult i8 %81, 2
  %spec.select.i330 = select i1 %cmp.i329, i8 0, i8 3
  %conv127.i334 = zext i8 %spec.select.i330 to i32
  %call.i13.i335 = tail call i32 @__sw_hweight8(i32 noundef %conv127.i334) #5
  %82 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stf, align 4
  %txstreams132.i338 = getelementptr inbounds %struct.brcms_stf, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %txstreams132.i338 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %txstreams132.i338, align 2
  %conv133.i339 = zext i8 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i13.i335, i32 %conv133.i339)
  %cmp134.i340 = icmp eq i32 %call.i13.i335, %conv133.i339
  br i1 %cmp134.i340, label %land.lhs.true.i352, label %if.end128.brcms_c_stf_txcore_set.exit355_crit_edge

if.end128.brcms_c_stf_txcore_set.exit355_crit_edge: ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_txcore_set.exit355

land.lhs.true.i352:                               ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  %conv136.i342 = zext i8 %spec.select.i330 to i32
  %txchain.i343 = getelementptr inbounds %struct.brcms_stf, ptr %83, i32 0, i32 1
  %86 = ptrtoint ptr %txchain.i343 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %txchain.i343, align 1
  %conv138.i344 = zext i8 %87 to i32
  %neg.i345 = xor i32 %conv138.i344, -1
  %and139.i346 = and i32 %neg.i345, %conv136.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i346)
  %tobool140.not.i347 = icmp ne i32 %and139.i346, 0
  %and1451.i348 = and i8 %87, %spec.select.i330
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1451.i348)
  %tobool146.not.i349 = icmp eq i8 %and1451.i348, 0
  %or.cond.i350 = select i1 %tobool140.not.i347, i1 true, i1 %tobool146.not.i349
  %spec.select14.i351 = select i1 %or.cond.i350, i8 %87, i8 %spec.select.i330
  br label %brcms_c_stf_txcore_set.exit355

brcms_c_stf_txcore_set.exit355:                   ; preds = %land.lhs.true.i352, %if.end128.brcms_c_stf_txcore_set.exit355_crit_edge
  %core_mask.addr.1.i353 = phi i8 [ %spec.select.i330, %if.end128.brcms_c_stf_txcore_set.exit355_crit_edge ], [ %spec.select14.i351, %land.lhs.true.i352 ]
  %arrayidx.i354 = getelementptr %struct.brcms_stf, ptr %83, i32 0, i32 14, i32 2
  %88 = ptrtoint ptr %arrayidx.i354 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %core_mask.addr.1.i353, ptr %arrayidx.i354, align 1
  %89 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw, align 4
  %d11core.i288 = getelementptr inbounds %struct.brcms_hardware, ptr %90, i32 0, i32 14
  %91 = ptrtoint ptr %d11core.i288 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %d11core.i288, align 4
  %dev.i289 = getelementptr inbounds %struct.bcma_device, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wlc, align 4
  %unit.i290 = getelementptr inbounds %struct.brcms_pub, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %unit.i290 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %unit.i290, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i289, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_stf_txcore_set, ptr noundef nonnull @.str.1, i32 noundef %96, i32 noundef 3, i32 noundef 7) #5
  %97 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %stf, align 4
  %txstreams.i292 = getelementptr inbounds %struct.brcms_stf, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %txstreams.i292 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %txstreams.i292, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %100)
  %cmp.i294 = icmp ult i8 %100, 3
  %spec.select.i295 = select i1 %cmp.i294, i8 0, i8 7
  %conv127.i300 = zext i8 %spec.select.i295 to i32
  %call.i13.i301 = tail call i32 @__sw_hweight8(i32 noundef %conv127.i300) #5
  %101 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %stf, align 4
  %txstreams132.i304 = getelementptr inbounds %struct.brcms_stf, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %txstreams132.i304 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %txstreams132.i304, align 2
  %conv133.i305 = zext i8 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i13.i301, i32 %conv133.i305)
  %cmp134.i306 = icmp eq i32 %call.i13.i301, %conv133.i305
  br i1 %cmp134.i306, label %land.lhs.true.i318, label %brcms_c_stf_txcore_set.exit355.brcms_c_stf_txcore_set.exit321_crit_edge

brcms_c_stf_txcore_set.exit355.brcms_c_stf_txcore_set.exit321_crit_edge: ; preds = %brcms_c_stf_txcore_set.exit355
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_txcore_set.exit321

land.lhs.true.i318:                               ; preds = %brcms_c_stf_txcore_set.exit355
  call void @__sanitizer_cov_trace_pc() #7
  %conv136.i308 = zext i8 %spec.select.i295 to i32
  %txchain.i309 = getelementptr inbounds %struct.brcms_stf, ptr %102, i32 0, i32 1
  %105 = ptrtoint ptr %txchain.i309 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %txchain.i309, align 1
  %conv138.i310 = zext i8 %106 to i32
  %neg.i311 = xor i32 %conv138.i310, -1
  %and139.i312 = and i32 %neg.i311, %conv136.i308
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i312)
  %tobool140.not.i313 = icmp ne i32 %and139.i312, 0
  %and1451.i314 = and i8 %106, %spec.select.i295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1451.i314)
  %tobool146.not.i315 = icmp eq i8 %and1451.i314, 0
  %or.cond.i316 = select i1 %tobool140.not.i313, i1 true, i1 %tobool146.not.i315
  %spec.select14.i317 = select i1 %or.cond.i316, i8 %106, i8 %spec.select.i295
  br label %brcms_c_stf_txcore_set.exit321

brcms_c_stf_txcore_set.exit321:                   ; preds = %land.lhs.true.i318, %brcms_c_stf_txcore_set.exit355.brcms_c_stf_txcore_set.exit321_crit_edge
  %core_mask.addr.1.i319 = phi i8 [ %spec.select.i295, %brcms_c_stf_txcore_set.exit355.brcms_c_stf_txcore_set.exit321_crit_edge ], [ %spec.select14.i317, %land.lhs.true.i318 ]
  %arrayidx.i320 = getelementptr %struct.brcms_stf, ptr %102, i32 0, i32 14, i32 3
  %107 = ptrtoint ptr %arrayidx.i320 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %core_mask.addr.1.i319, ptr %arrayidx.i320, align 1
  %108 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw, align 4
  %d11core.i283 = getelementptr inbounds %struct.brcms_hardware, ptr %109, i32 0, i32 14
  %110 = ptrtoint ptr %d11core.i283 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %d11core.i283, align 4
  %dev.i284 = getelementptr inbounds %struct.bcma_device, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wlc, align 4
  %unit.i285 = getelementptr inbounds %struct.brcms_pub, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %unit.i285 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %unit.i285, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i284, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_stf_txcore_set, ptr noundef nonnull @.str.1, i32 noundef %115, i32 noundef 4, i32 noundef 15) #5
  %116 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %stf, align 4
  %txstreams.i = getelementptr inbounds %struct.brcms_stf, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %txstreams.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %txstreams.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %119)
  %cmp.i = icmp ult i8 %119, 4
  %spec.select.i = select i1 %cmp.i, i8 0, i8 15
  %conv127.i = zext i8 %spec.select.i to i32
  %call.i13.i = tail call i32 @__sw_hweight8(i32 noundef %conv127.i) #5
  %120 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %stf, align 4
  %txstreams132.i = getelementptr inbounds %struct.brcms_stf, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %txstreams132.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %txstreams132.i, align 2
  %conv133.i = zext i8 %123 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i13.i, i32 %conv133.i)
  %cmp134.i = icmp eq i32 %call.i13.i, %conv133.i
  br i1 %cmp134.i, label %land.lhs.true.i, label %brcms_c_stf_txcore_set.exit321.brcms_c_stf_txcore_set.exit_crit_edge

brcms_c_stf_txcore_set.exit321.brcms_c_stf_txcore_set.exit_crit_edge: ; preds = %brcms_c_stf_txcore_set.exit321
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_stf_txcore_set.exit

land.lhs.true.i:                                  ; preds = %brcms_c_stf_txcore_set.exit321
  call void @__sanitizer_cov_trace_pc() #7
  %conv136.i = zext i8 %spec.select.i to i32
  %txchain.i = getelementptr inbounds %struct.brcms_stf, ptr %121, i32 0, i32 1
  %124 = ptrtoint ptr %txchain.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %txchain.i, align 1
  %conv138.i = zext i8 %125 to i32
  %neg.i = xor i32 %conv138.i, -1
  %and139.i = and i32 %neg.i, %conv136.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp ne i32 %and139.i, 0
  %and1451.i = and i8 %125, %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1451.i)
  %tobool146.not.i = icmp eq i8 %and1451.i, 0
  %or.cond.i = select i1 %tobool140.not.i, i1 true, i1 %tobool146.not.i
  %spec.select14.i = select i1 %or.cond.i, i8 %125, i8 %spec.select.i
  br label %brcms_c_stf_txcore_set.exit

brcms_c_stf_txcore_set.exit:                      ; preds = %land.lhs.true.i, %brcms_c_stf_txcore_set.exit321.brcms_c_stf_txcore_set.exit_crit_edge
  %core_mask.addr.1.i = phi i8 [ %spec.select.i, %brcms_c_stf_txcore_set.exit321.brcms_c_stf_txcore_set.exit_crit_edge ], [ %spec.select14.i, %land.lhs.true.i ]
  %arrayidx.i = getelementptr %struct.brcms_stf, ptr %121, i32 0, i32 14, i32 4
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %core_mask.addr.1.i, ptr %arrayidx.i, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @brcms_c_stf_phytxchain_sel(ptr nocapture noundef readonly %wlc, i32 noundef %rspec) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stf.i = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %0 = ptrtoint ptr %stf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stf.i, align 4
  %2 = and i32 %rspec, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i, label %if.else.i, label %entry.if.end14.sink.split.i_crit_edge

entry.if.end14.sink.split.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %entry
  %phytxant1.i = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %phytxant1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phytxant1.i, align 2
  %txant.i = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %txant.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %txant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp6.i = icmp eq i8 %6, 3
  br i1 %cmp6.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i._brcms_c_stf_phytxchain_sel.exit_crit_edge

if.else.i._brcms_c_stf_phytxchain_sel.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_brcms_c_stf_phytxchain_sel.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %entry.if.end14.sink.split.i_crit_edge
  %txchain10.i = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %txchain10.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %txchain10.i, align 1
  %conv11.i = zext i8 %8 to i16
  %shl12.i = shl nuw nsw i16 %conv11.i, 6
  br label %_brcms_c_stf_phytxchain_sel.exit

_brcms_c_stf_phytxchain_sel.exit:                 ; preds = %if.end14.sink.split.i, %if.else.i._brcms_c_stf_phytxchain_sel.exit_crit_edge
  %phytxant.0.i = phi i16 [ %4, %if.else.i._brcms_c_stf_phytxchain_sel.exit_crit_edge ], [ %shl12.i, %if.end14.sink.split.i ]
  %9 = and i16 %phytxant.0.i, 960
  ret i16 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @brcms_c_stf_d11hdrs_phyctl_txant(ptr nocapture noundef readonly %wlc, i32 noundef %rspec) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stf = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 60
  %0 = ptrtoint ptr %stf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stf, align 4
  %phytxant1 = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phytxant1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %phytxant1, align 2
  %band = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %4 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %band, align 4
  %phytype = getelementptr inbounds %struct.brcms_band, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %phytype to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phytype, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp = icmp eq i16 %7, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = and i32 %rspec, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.if.end14.sink.split.i_crit_edge

if.then.if.end14.sink.split.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.then
  %txant.i = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %txant.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %txant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp6.i = icmp eq i8 %10, 3
  br i1 %cmp6.i, label %if.else.i.if.end14.sink.split.i_crit_edge, label %if.else.i._brcms_c_stf_phytxchain_sel.exit_crit_edge

if.else.i._brcms_c_stf_phytxchain_sel.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_brcms_c_stf_phytxchain_sel.exit

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.then.if.end14.sink.split.i_crit_edge
  %txchain10.i = getelementptr inbounds %struct.brcms_stf, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %txchain10.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %txchain10.i, align 1
  %conv11.i = zext i8 %12 to i16
  %shl12.i = shl nuw nsw i16 %conv11.i, 6
  br label %_brcms_c_stf_phytxchain_sel.exit

_brcms_c_stf_phytxchain_sel.exit:                 ; preds = %if.end14.sink.split.i, %if.else.i._brcms_c_stf_phytxchain_sel.exit_crit_edge
  %phytxant.0.i = phi i16 [ %3, %if.else.i._brcms_c_stf_phytxchain_sel.exit_crit_edge ], [ %shl12.i, %if.end14.sink.split.i ]
  %13 = and i16 %phytxant.0.i, 960
  br label %if.end

if.end:                                           ; preds = %_brcms_c_stf_phytxchain_sel.exit, %entry.if.end_crit_edge
  %phytxant.0 = phi i16 [ %13, %_brcms_c_stf_phytxchain_sel.exit ], [ %3, %entry.if.end_crit_edge ]
  ret i16 %phytxant.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_update_beacon(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_update_probe_resp(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_txant_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcms_dbg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_suspend_mac_and_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_beacon_phytxctl_txant_upd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_enable_mac(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/stf.c", i32 247, i32 5}
!2 = !{ptr @__func__.brcms_c_stf_txcore_set, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/stf.c", i32 164, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @txcore_default, !6, !"txcore_default", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/stf.c", i32 39, i32 17}
!7 = !{ptr @__func__.brcms_c_stf_spatial_policy_set, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/stf.c", i32 198, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{!"branch_weights", i32 1, i32 2000}
