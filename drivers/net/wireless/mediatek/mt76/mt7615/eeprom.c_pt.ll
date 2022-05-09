; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt7615_eeprom_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mt7615_eeprom_init\09\09\09\09"
module asm "\09.long\09__crc_mt7615_eeprom_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt7615_eeprom_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mt7615_eeprom_init\22\09\09\09\09\09"
module asm "__kstrtabns_mt7615_eeprom_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.134 }
%struct.anon.134 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt7615_dev = type { %union.anon, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.155, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.146 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.146 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.anon.155 = type { i8, i32, i16, i16 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.156], %struct.work_struct, %struct.wait_queue_head, %struct.anon.157, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.158 }
%struct.anon.156 = type { ptr, ptr }
%struct.anon.157 = type { %struct.spinlock, i32 }
%struct.anon.158 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }

@__kstrtab_mt7615_eeprom_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt7615_eeprom_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mt7615_eeprom_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt7615_eeprom_init to i32), ptr @__kstrtab_mt7615_eeprom_init, ptr @__kstrtabns_mt7615_eeprom_init }, section "___ksymtab_gpl+mt7615_eeprom_init", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt7615_efuse_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mediatek,eeprom-merge-otp\00", [38 x i8] zeroinitializer }, align 32
@mt7615_apply_cal_free_data.ical = internal constant { [70 x i16], [52 x i8] } { [70 x i16] [i16 83, i16 84, i16 85, i16 86, i16 87, i16 92, i16 93, i16 98, i16 99, i16 104, i16 105, i16 110, i16 111, i16 115, i16 116, i16 120, i16 121, i16 130, i16 131, i16 135, i16 136, i16 140, i16 141, i16 145, i16 146, i16 150, i16 151, i16 155, i16 156, i16 160, i16 161, i16 170, i16 171, i16 175, i16 176, i16 180, i16 181, i16 185, i16 186, i16 244, i16 247, i16 255, i16 320, i16 321, i16 325, i16 326, i16 330, i16 331, i16 340, i16 341, i16 345, i16 346, i16 350, i16 351, i16 355, i16 356, i16 360, i16 361, i16 365, i16 366, i16 370, i16 371, i16 380, i16 381, i16 385, i16 386, i16 390, i16 391, i16 395, i16 396], [52 x i8] zeroinitializer }, align 32
@switch.table.mt7615_eeprom_get_target_power_index = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 152, i32 322, i32 362], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 30229, i64 30242, i64 30307]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 16, i64 30225, i64 30229, i64 30242]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 1980825600, i64 1981939712, i64 1986199552]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 31, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 314, i32 40 }
@___asan_gen_.11 = private unnamed_addr constant [5 x i8] c"ical\00", align 1
@___asan_gen_.12 = private constant [54 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 256, i32 19 }
@___asan_gen_.14 = private unnamed_addr constant [50 x i8] c"switch.table.mt7615_eeprom_get_target_power_index\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_mt7615_eeprom_init, ptr @.str, ptr @.str.1, ptr @mt7615_apply_cal_free_data.ical, ptr @switch.table.mt7615_eeprom_get_target_power_index], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_apply_cal_free_data.ical to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7615_eeprom_get_target_power_index to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt7615_eeprom_get_target_power_index(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %chan, i8 noundef zeroext %chain_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %0 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  %conv.i = zext i8 %chain_idx to i32
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chain_idx)
  %cmp.i37 = icmp ugt i8 %chain_idx, 1
  br i1 %cmp.i37, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i = icmp eq i32 %3, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %add.i = add nuw nsw i32 %shl.i, 227
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value.i, align 2
  %conv7.i = zext i16 %5 to i32
  %6 = add nsw i32 %conv7.i, -184
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %6)
  %7 = icmp ult i32 %6, 13
  br i1 %7, label %if.end6.i.mt7615_get_channel_group.exit.i_crit_edge, label %if.end.i.i

if.end6.i.mt7615_get_channel_group.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_get_channel_group.exit.i

if.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 49, i16 %5)
  %cmp2.i.i = icmp ult i16 %5, 49
  br i1 %cmp2.i.i, label %if.end.i.i.mt7615_get_channel_group.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.mt7615_get_channel_group.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_get_channel_group.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %5)
  %cmp5.i.i = icmp ult i16 %5, 65
  br i1 %cmp5.i.i, label %if.end4.i.i.mt7615_get_channel_group.exit.i_crit_edge, label %if.end7.i.i

if.end4.i.i.mt7615_get_channel_group.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_get_channel_group.exit.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 115, i16 %5)
  %cmp8.i.i = icmp ult i16 %5, 115
  br i1 %cmp8.i.i, label %if.end7.i.i.mt7615_get_channel_group.exit.i_crit_edge, label %if.end10.i.i

if.end7.i.i.mt7615_get_channel_group.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_get_channel_group.exit.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 145, i16 %5)
  %cmp11.i.i = icmp ult i16 %5, 145
  br i1 %cmp11.i.i, label %if.end10.i.i.mt7615_get_channel_group.exit.i_crit_edge, label %if.end13.i.i

if.end10.i.i.mt7615_get_channel_group.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_get_channel_group.exit.i

if.end13.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 162, i16 %5)
  %cmp14.i.i = icmp ult i16 %5, 162
  %phi.bo.i = select i1 %cmp14.i.i, i32 18, i32 21
  br label %mt7615_get_channel_group.exit.i

mt7615_get_channel_group.exit.i:                  ; preds = %if.end13.i.i, %if.end10.i.i.mt7615_get_channel_group.exit.i_crit_edge, %if.end7.i.i.mt7615_get_channel_group.exit.i_crit_edge, %if.end4.i.i.mt7615_get_channel_group.exit.i_crit_edge, %if.end.i.i.mt7615_get_channel_group.exit.i_crit_edge, %if.end6.i.mt7615_get_channel_group.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end6.i.mt7615_get_channel_group.exit.i_crit_edge ], [ 3, %if.end.i.i.mt7615_get_channel_group.exit.i_crit_edge ], [ 6, %if.end4.i.i.mt7615_get_channel_group.exit.i_crit_edge ], [ 12, %if.end7.i.i.mt7615_get_channel_group.exit.i_crit_edge ], [ 15, %if.end10.i.i.mt7615_get_channel_group.exit.i_crit_edge ], [ %phi.bo.i, %if.end13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chain_idx)
  %cmp9.i = icmp eq i8 %chain_idx, 1
  %..i = select i1 %cmp9.i, i32 693, i32 581
  %add13.i = add nuw nsw i32 %retval.0.i.i, %..i
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %chain_idx)
  %cmp = icmp ugt i8 %chain_idx, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eeprom.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i38 = icmp eq i32 %9, 1
  %arrayidx.i = getelementptr i8, ptr %11, i32 55
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %..i39 = select i1 %cmp.i38, i8 64, i8 32
  %14 = and i8 %13, %..i39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %retval.0.i40 = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %retval.0.i40, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %. = select i1 %cmp8, i32 242, i32 243
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  br i1 %cmp8, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul nuw nsw i32 %conv.i, 6
  %add = add nuw nsw i32 %mul, 88
  br label %cleanup

if.else17:                                        ; preds = %if.end11
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 3
  %15 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hw_value, align 2
  %conv18 = zext i16 %16 to i32
  %17 = add nsw i32 %conv18, -184
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %17)
  %18 = icmp ult i32 %17, 13
  br i1 %18, label %if.else17.mt7615_get_channel_group.exit_crit_edge, label %if.end.i42

if.else17.mt7615_get_channel_group.exit_crit_edge: ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_get_channel_group.exit

if.end.i42:                                       ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp2(i16 49, i16 %16)
  %cmp2.i41 = icmp ult i16 %16, 49
  br i1 %cmp2.i41, label %if.end.i42.mt7615_get_channel_group.exit_crit_edge, label %if.end4.i

if.end.i42.mt7615_get_channel_group.exit_crit_edge: ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_get_channel_group.exit

if.end4.i:                                        ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %16)
  %cmp5.i = icmp ult i16 %16, 65
  br i1 %cmp5.i, label %if.end4.i.mt7615_get_channel_group.exit_crit_edge, label %if.end7.i

if.end4.i.mt7615_get_channel_group.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_get_channel_group.exit

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 115, i16 %16)
  %cmp8.i = icmp ult i16 %16, 115
  br i1 %cmp8.i, label %if.end7.i.mt7615_get_channel_group.exit_crit_edge, label %if.end10.i

if.end7.i.mt7615_get_channel_group.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_get_channel_group.exit

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 145, i16 %16)
  %cmp11.i = icmp ult i16 %16, 145
  br i1 %cmp11.i, label %if.end10.i.mt7615_get_channel_group.exit_crit_edge, label %if.end13.i

if.end10.i.mt7615_get_channel_group.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7615_get_channel_group.exit

if.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 162, i16 %16)
  %cmp14.i = icmp ult i16 %16, 162
  %phi.bo = select i1 %cmp14.i, i32 30, i32 35
  br label %mt7615_get_channel_group.exit

mt7615_get_channel_group.exit:                    ; preds = %if.end13.i, %if.end10.i.mt7615_get_channel_group.exit_crit_edge, %if.end7.i.mt7615_get_channel_group.exit_crit_edge, %if.end4.i.mt7615_get_channel_group.exit_crit_edge, %if.end.i42.mt7615_get_channel_group.exit_crit_edge, %if.else17.mt7615_get_channel_group.exit_crit_edge
  %retval.0.i44 = phi i32 [ 0, %if.else17.mt7615_get_channel_group.exit_crit_edge ], [ 5, %if.end.i42.mt7615_get_channel_group.exit_crit_edge ], [ 10, %if.end4.i.mt7615_get_channel_group.exit_crit_edge ], [ 20, %if.end7.i.mt7615_get_channel_group.exit_crit_edge ], [ 25, %if.end10.i.mt7615_get_channel_group.exit_crit_edge ], [ %phi.bo, %if.end13.i ]
  %switch.tableidx = add i8 %chain_idx, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %19 = icmp ult i8 %switch.tableidx, 3
  br i1 %19, label %switch.lookup, label %mt7615_get_channel_group.exit.sw.epilog_crit_edge

mt7615_get_channel_group.exit.sw.epilog_crit_edge: ; preds = %mt7615_get_channel_group.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %mt7615_get_channel_group.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mt7615_eeprom_get_target_power_index, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %mt7615_get_channel_group.exit.sw.epilog_crit_edge
  %index.0 = phi i32 [ %switch.load, %switch.lookup ], [ 112, %mt7615_get_channel_group.exit.sw.epilog_crit_edge ]
  %add25 = add nuw nsw i32 %index.0, %retval.0.i44
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then15, %if.then6, %if.end.cleanup_crit_edge, %mt7615_get_channel_group.exit.i, %if.then4.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %., %if.then6 ], [ %add, %if.then15 ], [ %add25, %sw.epilog ], [ %add.i, %if.then4.i ], [ %add13.i, %mt7615_get_channel_group.exit.i ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt7615_eeprom_get_power_delta_index(ptr nocapture noundef readonly %dev, i32 noundef %band) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %0 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i)
  %cmp.i = icmp eq i32 %shr.i.mask.i, 1986199552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp = icmp eq i32 %band, 0
  %. = select i1 %cmp, i32 112, i32 137
  %.6 = select i1 %cmp, i32 190, i32 213
  %retval.0 = select i1 %cmp.i, i32 %., i32 %.6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7615_eeprom_init(ptr noundef %dev, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mt76_eeprom_init(ptr noundef %dev, i32 noundef 19880) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 %3(ptr noundef %dev, i32 noundef %addr) #5
  %and.i.i = and i32 %call.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  %dev1.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %4 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i.i, align 8
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 1024, i32 noundef 3520) #5
  %otp.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 45
  %6 = ptrtoint ptr %otp.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i.i, ptr %otp.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 45, i32 1
  %7 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1024, ptr %size.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %add.i.i.i = add i32 %addr, 8
  %add85.i.i.i = add i32 %addr, 48
  %add86.1.i.i.i = add i32 %addr, 52
  %add86.2.i.i.i = add i32 %addr, 56
  %add86.3.i.i.i = add i32 %addr, 60
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %mt7615_efuse_read.exit.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %add1140.i.i = phi i32 [ 16, %for.cond.preheader.i.i ], [ %add11.i.i, %mt7615_efuse_read.exit.i.i.for.body.i.i_crit_edge ]
  %i.039.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %add1140.i.i, %mt7615_efuse_read.exit.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %i.039.i.i
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i35.i.i = tail call i32 %11(ptr noundef %dev, i32 noundef %add.i.i.i) #5
  %and.i.i.i = and i32 %call.i35.i.i, -1140785345
  %shl.i.i.i = shl nuw nsw i32 %i.039.i.i, 16
  %or.i.i.i = or i32 %shl.i.i.i, %and.i.i.i
  %or20.i.i.i = or i32 %or.i.i.i, 1073741824
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 4
  %wr.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr.i.i.i, align 4
  tail call void %15(ptr noundef %dev, i32 noundef %add.i.i.i, i32 noundef %or20.i.i.i) #5
  %call24.i.i.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef %add.i.i.i, i32 noundef 1073741824, i32 noundef 0, i32 noundef 1000) #5
  br i1 %call24.i.i.i, label %if.end26.i.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26.i.i.i:                                   ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #5
  %17 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call30.i.i.i = tail call i32 %20(ptr noundef %dev, i32 noundef %add.i.i.i) #5
  %and31.i.i.i = and i32 %call30.i.i.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and31.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and31.i.i.i, 63
  br i1 %cmp.i.i.i, label %if.end26.i.i.i.if.then79.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end26.i.i.i.if.then79.i.i.i_crit_edge:         ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then79.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end26.i.i.i
  %and33.i.i.i = and i32 %call30.i.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i.i)
  %tobool34.not.i.i.i = icmp eq i32 %and33.i.i.i, 0
  br i1 %tobool34.not.i.i.i, label %land.rhs.i.i.i, label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call87.i.i.i = tail call i32 %24(ptr noundef %dev, i32 noundef %add85.i.i.i) #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %call87.i.i.i) #5
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %add.ptr.i.i, align 1
  %27 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call87.1.i.i.i = tail call i32 %30(ptr noundef %dev, i32 noundef %add86.1.i.i.i) #5
  %add.ptr.1.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %call87.1.i.i.i) #5
  %32 = ptrtoint ptr %add.ptr.1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %add.ptr.1.i.i.i, align 1
  %33 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call87.2.i.i.i = tail call i32 %36(ptr noundef %dev, i32 noundef %add86.2.i.i.i) #5
  %add.ptr.2.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %call87.2.i.i.i) #5
  %38 = ptrtoint ptr %add.ptr.2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %add.ptr.2.i.i.i, align 1
  %39 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call87.3.i.i.i = tail call i32 %42(ptr noundef %dev, i32 noundef %add86.3.i.i.i) #5
  %add.ptr.3.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 12
  %43 = tail call i32 @llvm.bswap.i32(i32 %call87.3.i.i.i) #5
  %44 = ptrtoint ptr %add.ptr.3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %add.ptr.3.i.i.i, align 1
  br label %mt7615_efuse_read.exit.i.i

land.rhs.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %.b116.i.i.i = load i1, ptr @mt7615_efuse_read.__already_done, align 1
  br i1 %.b116.i.i.i, label %land.rhs.i.i.i.if.then79.i.i.i_crit_edge, label %if.then44.i.i.i, !prof !22

land.rhs.i.i.i.if.then79.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then79.i.i.i

if.then44.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mt7615_efuse_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef null) #5
  br label %if.then79.i.i.i

if.then79.i.i.i:                                  ; preds = %if.then44.i.i.i, %land.rhs.i.i.i.if.then79.i.i.i_crit_edge, %if.end26.i.i.i.if.then79.i.i.i_crit_edge
  %45 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 16)
  br label %mt7615_efuse_read.exit.i.i

mt7615_efuse_read.exit.i.i:                       ; preds = %if.then79.i.i.i, %for.cond.preheader.i.i.i
  %add11.i.i = add nuw nsw i32 %add1140.i.i, 16
  %cmp.i.i = icmp ult i32 %add1140.i.i, 1009
  br i1 %cmp.i.i, label %mt7615_efuse_read.exit.i.i.for.body.i.i_crit_edge, label %mt7615_efuse_read.exit.i.i.if.end_crit_edge

mt7615_efuse_read.exit.i.i.if.end_crit_edge:      ; preds = %mt7615_efuse_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

mt7615_efuse_read.exit.i.i.for.body.i.i_crit_edge: ; preds = %mt7615_efuse_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end:                                           ; preds = %mt7615_efuse_read.exit.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %46 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %eeprom.i, align 16
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %47, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #5
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i16 %50, label %land.lhs.true [
    i16 30229, label %if.end.if.else_crit_edge
    i16 30242, label %if.end.if.else_crit_edge36
    i16 30307, label %if.end.if.else_crit_edge37
  ]

if.end.if.else_crit_edge37:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.if.else_crit_edge36:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %otp = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 45
  %52 = ptrtoint ptr %otp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %otp, align 8
  %tobool2.not = icmp eq ptr %53, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %54 = call ptr @memcpy(ptr %47, ptr %53, i32 1024)
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge, %if.end.if.else_crit_edge36, %if.end.if.else_crit_edge37
  %flash_eeprom = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 19
  %55 = ptrtoint ptr %flash_eeprom to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %flash_eeprom, align 1
  %dev1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %56 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.else.if.end7_crit_edge, label %lor.lhs.false.i

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

lor.lhs.false.i:                                  ; preds = %if.else
  %call.i.i23 = tail call ptr @of_find_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %tobool.i.not.i = icmp eq ptr %call.i.i23, null
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.if.end7_crit_edge, label %if.end.i24

lor.lhs.false.i.if.end7_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.i24:                                       ; preds = %lor.lhs.false.i
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %60 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rev.i.i, align 4
  %shr.i.i = lshr i32 %61, 16
  %conv.i.i = trunc i32 %shr.i.i to i16
  %62 = zext i16 %conv.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %conv.i.i, label %if.end.i24.if.end7_crit_edge [
    i16 30242, label %sw.bb.i
    i16 30229, label %if.end.i24.sw.bb3.i_crit_edge
    i16 30225, label %if.end.i24.sw.bb3.i_crit_edge38
  ]

if.end.i24.sw.bb3.i_crit_edge38:                  ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end.i24.sw.bb3.i_crit_edge:                    ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end.i24.if.end7_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

sw.bb.i:                                          ; preds = %if.end.i24
  %63 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %eeprom.i, align 16
  %otp2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 45
  %65 = ptrtoint ptr %otp2.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %otp2.i.i, align 8
  %tobool.not.i.i25 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i25, label %sw.bb.i.if.end7_crit_edge, label %for.body.preheader.i.i

sw.bb.i.if.end7_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.body.preheader.i.i:                           ; preds = %sw.bb.i
  %arrayidx4.i.i = getelementptr i8, ptr %66, i32 83
  %67 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool5.not.i.i = icmp eq i8 %68, 0
  br i1 %tobool5.not.i.i, label %for.body.preheader.i.i.for.inc.i.i_crit_edge, label %if.end7.i.i

for.body.preheader.i.i.for.inc.i.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end7.i.i:                                      ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.i.i = getelementptr i8, ptr %64, i32 83
  %69 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx13.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end7.i.i, %for.body.preheader.i.i.for.inc.i.i_crit_edge
  %arrayidx4.1.i.i = getelementptr i8, ptr %66, i32 84
  %70 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx4.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool5.not.1.i.i = icmp eq i8 %71, 0
  br i1 %tobool5.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end7.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i.i

if.end7.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.1.i.i = getelementptr i8, ptr %64, i32 84
  %72 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx13.1.i.i, align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end7.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %arrayidx4.2.i.i = getelementptr i8, ptr %66, i32 85
  %73 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx4.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool5.not.2.i.i = icmp eq i8 %74, 0
  br i1 %tobool5.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end7.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i.i

if.end7.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.2.i.i = getelementptr i8, ptr %64, i32 85
  %75 = ptrtoint ptr %arrayidx13.2.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx13.2.i.i, align 1
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.end7.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %arrayidx4.3.i.i = getelementptr i8, ptr %66, i32 86
  %76 = ptrtoint ptr %arrayidx4.3.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx4.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool5.not.3.i.i = icmp eq i8 %77, 0
  br i1 %tobool5.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.end7.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i.i

if.end7.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.3.i.i = getelementptr i8, ptr %64, i32 86
  %78 = ptrtoint ptr %arrayidx13.3.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx13.3.i.i, align 1
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.end7.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %arrayidx4.4.i.i = getelementptr i8, ptr %66, i32 244
  %79 = ptrtoint ptr %arrayidx4.4.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx4.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool5.not.4.i.i = icmp eq i8 %80, 0
  br i1 %tobool5.not.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.end7.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i.i

if.end7.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.4.i.i = getelementptr i8, ptr %64, i32 244
  %81 = ptrtoint ptr %arrayidx13.4.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx13.4.i.i, align 1
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.end7.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %arrayidx4.5.i.i = getelementptr i8, ptr %66, i32 247
  %82 = ptrtoint ptr %arrayidx4.5.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx4.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool5.not.5.i.i = icmp eq i8 %83, 0
  br i1 %tobool5.not.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge, label %if.end7.5.i.i

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5.i.i

if.end7.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.5.i.i = getelementptr i8, ptr %64, i32 247
  %84 = ptrtoint ptr %arrayidx13.5.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx13.5.i.i, align 1
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.end7.5.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %arrayidx4.6.i.i = getelementptr i8, ptr %66, i32 324
  %85 = ptrtoint ptr %arrayidx4.6.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx4.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool5.not.6.i.i = icmp eq i8 %86, 0
  br i1 %tobool5.not.6.i.i, label %for.inc.5.i.i.for.inc.6.i.i_crit_edge, label %if.end7.6.i.i

for.inc.5.i.i.for.inc.6.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6.i.i

if.end7.6.i.i:                                    ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.6.i.i = getelementptr i8, ptr %64, i32 324
  %87 = ptrtoint ptr %arrayidx13.6.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx13.6.i.i, align 1
  br label %for.inc.6.i.i

for.inc.6.i.i:                                    ; preds = %if.end7.6.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge
  %arrayidx4.7.i.i = getelementptr i8, ptr %66, i32 342
  %88 = ptrtoint ptr %arrayidx4.7.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx4.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool5.not.7.i.i = icmp eq i8 %89, 0
  br i1 %tobool5.not.7.i.i, label %for.inc.6.i.i.for.inc.7.i.i_crit_edge, label %if.end7.7.i.i

for.inc.6.i.i.for.inc.7.i.i_crit_edge:            ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7.i.i

if.end7.7.i.i:                                    ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.7.i.i = getelementptr i8, ptr %64, i32 342
  %90 = ptrtoint ptr %arrayidx13.7.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx13.7.i.i, align 1
  br label %for.inc.7.i.i

for.inc.7.i.i:                                    ; preds = %if.end7.7.i.i, %for.inc.6.i.i.for.inc.7.i.i_crit_edge
  %arrayidx4.8.i.i = getelementptr i8, ptr %66, i32 347
  %91 = ptrtoint ptr %arrayidx4.8.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx4.8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool5.not.8.i.i = icmp eq i8 %92, 0
  br i1 %tobool5.not.8.i.i, label %for.inc.7.i.i.if.end7_crit_edge, label %if.end7.8.i.i

for.inc.7.i.i.if.end7_crit_edge:                  ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7.8.i.i:                                    ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.8.i.i = getelementptr i8, ptr %64, i32 347
  %93 = ptrtoint ptr %arrayidx13.8.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx13.8.i.i, align 1
  br label %if.end7

sw.bb3.i:                                         ; preds = %if.end.i24.sw.bb3.i_crit_edge, %if.end.i24.sw.bb3.i_crit_edge38
  %94 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %eeprom.i, align 16
  %otp2.i9.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 45
  %96 = ptrtoint ptr %otp2.i9.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %otp2.i9.i, align 8
  %tobool.not.i10.i = icmp eq ptr %97, null
  br i1 %tobool.not.i10.i, label %sw.bb3.i.if.end7_crit_edge, label %sw.bb3.i.for.body.i.i26_crit_edge

sw.bb3.i.for.body.i.i26_crit_edge:                ; preds = %sw.bb3.i
  br label %for.body.i.i26

sw.bb3.i.if.end7_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.cond.i.i:                                     ; preds = %for.body.i.i26
  %inc.i.i = add nuw nsw i32 %i.050.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 70
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.body10.i.i_crit_edge, label %for.cond.i.i.for.body.i.i26_crit_edge

for.cond.i.i.for.body.i.i26_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i26

for.cond.i.i.for.body10.i.i_crit_edge:            ; preds = %for.cond.i.i
  br label %for.body10.i.i

for.body.i.i26:                                   ; preds = %for.cond.i.i.for.body.i.i26_crit_edge, %sw.bb3.i.for.body.i.i26_crit_edge
  %i.050.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i26_crit_edge ], [ 0, %sw.bb3.i.for.body.i.i26_crit_edge ]
  %arrayidx.i.i = getelementptr [70 x i16], ptr @mt7615_apply_cal_free_data.ical, i32 0, i32 %i.050.i.i
  %98 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx.i.i, align 2
  %idxprom.i.i = zext i16 %99 to i32
  %arrayidx4.i11.i = getelementptr i8, ptr %97, i32 %idxprom.i.i
  %100 = ptrtoint ptr %arrayidx4.i11.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx4.i11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool5.not.i12.i = icmp eq i8 %101, 0
  br i1 %tobool5.not.i12.i, label %for.body.i.i26.if.end7_crit_edge, label %for.cond.i.i

for.body.i.i26.if.end7_crit_edge:                 ; preds = %for.body.i.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.body10.i.i:                                   ; preds = %for.body10.i.i.for.body10.i.i_crit_edge, %for.cond.i.i.for.body10.i.i_crit_edge
  %i.151.i.i = phi i32 [ %inc18.i.i, %for.body10.i.i.for.body10.i.i_crit_edge ], [ 0, %for.cond.i.i.for.body10.i.i_crit_edge ]
  %arrayidx11.i.i = getelementptr [70 x i16], ptr @mt7615_apply_cal_free_data.ical, i32 0, i32 %i.151.i.i
  %102 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx11.i.i, align 2
  %idxprom12.i.i = zext i16 %103 to i32
  %arrayidx13.i13.i = getelementptr i8, ptr %97, i32 %idxprom12.i.i
  %104 = ptrtoint ptr %arrayidx13.i13.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx13.i13.i, align 1
  %arrayidx16.i.i = getelementptr i8, ptr %95, i32 %idxprom12.i.i
  %106 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx16.i.i, align 1
  %inc18.i.i = add nuw nsw i32 %i.151.i.i, 1
  %exitcond54.not.i.i = icmp eq i32 %inc18.i.i, 70
  br i1 %exitcond54.not.i.i, label %for.body22.preheader.i.i, label %for.body10.i.i.for.body10.i.i_crit_edge

for.body10.i.i.for.body10.i.i_crit_edge:          ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.i.i

for.body22.preheader.i.i:                         ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx25.i.i = getelementptr i8, ptr %97, i32 272
  %107 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx28.i.i = getelementptr i8, ptr %95, i32 272
  %109 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %arrayidx28.i.i, align 1
  %arrayidx25.1.i.i = getelementptr i8, ptr %97, i32 273
  %110 = ptrtoint ptr %arrayidx25.1.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx25.1.i.i, align 1
  %arrayidx28.1.i.i = getelementptr i8, ptr %95, i32 273
  %112 = ptrtoint ptr %arrayidx28.1.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx28.1.i.i, align 1
  %arrayidx25.2.i.i = getelementptr i8, ptr %97, i32 274
  %113 = ptrtoint ptr %arrayidx25.2.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx25.2.i.i, align 1
  %arrayidx28.2.i.i = getelementptr i8, ptr %95, i32 274
  %115 = ptrtoint ptr %arrayidx28.2.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx28.2.i.i, align 1
  %arrayidx25.3.i.i = getelementptr i8, ptr %97, i32 275
  %116 = ptrtoint ptr %arrayidx25.3.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx25.3.i.i, align 1
  %arrayidx28.3.i.i = getelementptr i8, ptr %95, i32 275
  %118 = ptrtoint ptr %arrayidx28.3.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %arrayidx28.3.i.i, align 1
  %arrayidx25.4.i.i = getelementptr i8, ptr %97, i32 276
  %119 = ptrtoint ptr %arrayidx25.4.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx25.4.i.i, align 1
  %arrayidx28.4.i.i = getelementptr i8, ptr %95, i32 276
  %121 = ptrtoint ptr %arrayidx28.4.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %arrayidx28.4.i.i, align 1
  %arrayidx25.5.i.i = getelementptr i8, ptr %97, i32 277
  %122 = ptrtoint ptr %arrayidx25.5.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx25.5.i.i, align 1
  %arrayidx28.5.i.i = getelementptr i8, ptr %95, i32 277
  %124 = ptrtoint ptr %arrayidx28.5.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %arrayidx28.5.i.i, align 1
  %arrayidx25.6.i.i = getelementptr i8, ptr %97, i32 278
  %125 = ptrtoint ptr %arrayidx25.6.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx25.6.i.i, align 1
  %arrayidx28.6.i.i = getelementptr i8, ptr %95, i32 278
  %127 = ptrtoint ptr %arrayidx28.6.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %arrayidx28.6.i.i, align 1
  %arrayidx25.7.i.i = getelementptr i8, ptr %97, i32 279
  %128 = ptrtoint ptr %arrayidx25.7.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx25.7.i.i, align 1
  %arrayidx28.7.i.i = getelementptr i8, ptr %95, i32 279
  %130 = ptrtoint ptr %arrayidx28.7.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %arrayidx28.7.i.i, align 1
  %arrayidx25.8.i.i = getelementptr i8, ptr %97, i32 280
  %131 = ptrtoint ptr %arrayidx25.8.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx25.8.i.i, align 1
  %arrayidx28.8.i.i = getelementptr i8, ptr %95, i32 280
  %133 = ptrtoint ptr %arrayidx28.8.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx28.8.i.i, align 1
  %arrayidx25.9.i.i = getelementptr i8, ptr %97, i32 437
  %134 = ptrtoint ptr %arrayidx25.9.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx25.9.i.i, align 1
  %arrayidx28.9.i.i = getelementptr i8, ptr %95, i32 437
  %136 = ptrtoint ptr %arrayidx28.9.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx28.9.i.i, align 1
  %arrayidx25.10.i.i = getelementptr i8, ptr %97, i32 438
  %137 = ptrtoint ptr %arrayidx25.10.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx25.10.i.i, align 1
  %arrayidx28.10.i.i = getelementptr i8, ptr %95, i32 438
  %139 = ptrtoint ptr %arrayidx28.10.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx28.10.i.i, align 1
  %arrayidx25.11.i.i = getelementptr i8, ptr %97, i32 439
  %140 = ptrtoint ptr %arrayidx25.11.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx25.11.i.i, align 1
  %arrayidx28.11.i.i = getelementptr i8, ptr %95, i32 439
  %142 = ptrtoint ptr %arrayidx28.11.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx28.11.i.i, align 1
  %arrayidx25.12.i.i = getelementptr i8, ptr %97, i32 940
  %143 = ptrtoint ptr %arrayidx25.12.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx25.12.i.i, align 1
  %arrayidx28.12.i.i = getelementptr i8, ptr %95, i32 940
  %145 = ptrtoint ptr %arrayidx28.12.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx28.12.i.i, align 1
  %arrayidx25.13.i.i = getelementptr i8, ptr %97, i32 941
  %146 = ptrtoint ptr %arrayidx25.13.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx25.13.i.i, align 1
  %arrayidx28.13.i.i = getelementptr i8, ptr %95, i32 941
  %148 = ptrtoint ptr %arrayidx28.13.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx28.13.i.i, align 1
  %arrayidx25.14.i.i = getelementptr i8, ptr %97, i32 942
  %149 = ptrtoint ptr %arrayidx25.14.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx25.14.i.i, align 1
  %arrayidx28.14.i.i = getelementptr i8, ptr %95, i32 942
  %151 = ptrtoint ptr %arrayidx28.14.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx28.14.i.i, align 1
  %arrayidx25.15.i.i = getelementptr i8, ptr %97, i32 943
  %152 = ptrtoint ptr %arrayidx25.15.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx25.15.i.i, align 1
  %arrayidx28.15.i.i = getelementptr i8, ptr %95, i32 943
  %154 = ptrtoint ptr %arrayidx28.15.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %arrayidx28.15.i.i, align 1
  %arrayidx25.16.i.i = getelementptr i8, ptr %97, i32 944
  %155 = ptrtoint ptr %arrayidx25.16.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx25.16.i.i, align 1
  %arrayidx28.16.i.i = getelementptr i8, ptr %95, i32 944
  %157 = ptrtoint ptr %arrayidx28.16.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %arrayidx28.16.i.i, align 1
  %arrayidx25.17.i.i = getelementptr i8, ptr %97, i32 945
  %158 = ptrtoint ptr %arrayidx25.17.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx25.17.i.i, align 1
  %arrayidx28.17.i.i = getelementptr i8, ptr %95, i32 945
  %160 = ptrtoint ptr %arrayidx28.17.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %arrayidx28.17.i.i, align 1
  %arrayidx25.18.i.i = getelementptr i8, ptr %97, i32 946
  %161 = ptrtoint ptr %arrayidx25.18.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx25.18.i.i, align 1
  %arrayidx28.18.i.i = getelementptr i8, ptr %95, i32 946
  %163 = ptrtoint ptr %arrayidx28.18.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %arrayidx28.18.i.i, align 1
  br label %if.end7

if.end7:                                          ; preds = %for.body22.preheader.i.i, %for.body.i.i26.if.end7_crit_edge, %sw.bb3.i.if.end7_crit_edge, %if.end7.8.i.i, %for.inc.7.i.i.if.end7_crit_edge, %sw.bb.i.if.end7_crit_edge, %if.end.i24.if.end7_crit_edge, %lor.lhs.false.i.if.end7_crit_edge, %if.else.if.end7_crit_edge, %if.then3
  %164 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %eeprom.i, align 16
  %rev.i.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %166 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rev.i.i.i.i, align 4
  %shr.i.mask.i.i.i = and i32 %167, -65536
  %168 = zext i32 %shr.i.mask.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %shr.i.mask.i.i.i, label %do.end24.i.i [
    i32 1986199552, label %mt7615_eeprom_parse_hw_band_cap.exit.thread67.i
    i32 1981939712, label %if.then4.i.i
    i32 1980825600, label %if.then9.i.i
  ]

mt7615_eeprom_parse_hw_band_cap.exit.thread67.i:  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %cap.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9
  %169 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %cap.i.i, align 8
  %has_5ghz.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9, i32 1
  %170 = ptrtoint ptr %has_5ghz.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %has_5ghz.i.i, align 1
  br label %if.then.i

if.then4.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %cap5.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9
  %171 = ptrtoint ptr %cap5.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %cap5.i.i, align 8
  br label %if.else.i

if.then9.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %has_5ghz11.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9, i32 1
  %172 = ptrtoint ptr %has_5ghz11.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %has_5ghz11.i.i, align 1
  br label %if.else.i

do.end24.i.i:                                     ; preds = %if.end7
  %arrayidx.i.i27 = getelementptr i8, ptr %165, i32 62
  %173 = ptrtoint ptr %arrayidx.i.i27 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx.i.i27, align 1
  %175 = lshr i8 %174, 4
  %176 = and i8 %175, 3
  %conv26.i.i = zext i8 %176 to i32
  %177 = zext i32 %conv26.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %conv26.i.i, label %do.end24.i.i.sw.default.i.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb29.i.i
    i32 3, label %sw.bb32.i.i
  ]

do.end24.i.i.sw.default.i.i_crit_edge:            ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %has_5ghz28.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9, i32 1
  %178 = ptrtoint ptr %has_5ghz28.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %has_5ghz28.i.i, align 1
  br label %mt7615_eeprom_parse_hw_band_cap.exit.i

sw.bb29.i.i:                                      ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %cap30.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9
  %179 = ptrtoint ptr %cap30.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %cap30.i.i, align 8
  br label %mt7615_eeprom_parse_hw_band_cap.exit.i

sw.bb32.i.i:                                      ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dbdc_support.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 20
  %180 = ptrtoint ptr %dbdc_support.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %dbdc_support.i.i, align 2
  br label %sw.default.i.i

sw.default.i.i:                                   ; preds = %sw.bb32.i.i, %do.end24.i.i.sw.default.i.i_crit_edge
  %cap33.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9
  %181 = ptrtoint ptr %cap33.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 1, ptr %cap33.i.i, align 8
  %has_5ghz36.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 9, i32 1
  %182 = ptrtoint ptr %has_5ghz36.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %has_5ghz36.i.i, align 1
  br label %mt7615_eeprom_parse_hw_band_cap.exit.i

mt7615_eeprom_parse_hw_band_cap.exit.i:           ; preds = %sw.default.i.i, %sw.bb29.i.i, %sw.bb.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i.i)
  %cmp.i.i28 = icmp eq i32 %shr.i.mask.i.i.i, 1986199552
  br i1 %cmp.i.i28, label %mt7615_eeprom_parse_hw_band_cap.exit.i.if.then.i_crit_edge, label %mt7615_eeprom_parse_hw_band_cap.exit.i.if.else.i_crit_edge

mt7615_eeprom_parse_hw_band_cap.exit.i.if.else.i_crit_edge: ; preds = %mt7615_eeprom_parse_hw_band_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

mt7615_eeprom_parse_hw_band_cap.exit.i.if.then.i_crit_edge: ; preds = %mt7615_eeprom_parse_hw_band_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %mt7615_eeprom_parse_hw_band_cap.exit.i.if.then.i_crit_edge, %mt7615_eeprom_parse_hw_band_cap.exit.thread67.i
  %arrayidx.i = getelementptr i8, ptr %165, i32 432
  %183 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.i, align 1
  %185 = and i8 %184, 7
  br label %mt7615_eeprom_parse_hw_cap.exit

if.else.i:                                        ; preds = %mt7615_eeprom_parse_hw_band_cap.exit.i.if.else.i_crit_edge, %if.then9.i.i, %if.then4.i.i
  %186 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bus.i.i, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %reg_map.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 9
  %190 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %reg_map.i, align 8
  %arrayidx15.i = getelementptr i32, ptr %191, i32 1
  %192 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx15.i, align 4
  %add.i = add i32 %193, 16
  %call16.i = tail call i32 %189(ptr noundef %dev, i32 noundef %add.i) #5
  %and17.i = and i32 %call16.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not.i29 = icmp eq i32 %and17.i, 0
  %conv18.i = select i1 %tobool.not.i29, i8 4, i8 3
  %arrayidx35.i = getelementptr i8, ptr %165, i32 52
  %194 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx35.i, align 1
  %196 = lshr i8 %195, 4
  br label %mt7615_eeprom_parse_hw_cap.exit

mt7615_eeprom_parse_hw_cap.exit:                  ; preds = %if.else.i, %if.then.i
  %max_nss.0.i = phi i8 [ 2, %if.then.i ], [ %conv18.i, %if.else.i ]
  %tx_mask.0.i = phi i8 [ %185, %if.then.i ], [ %196, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_mask.0.i)
  %tobool40.not.i = icmp eq i8 %tx_mask.0.i, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %tx_mask.0.i, i8 %max_nss.0.i)
  %cmp.i30 = icmp ugt i8 %tx_mask.0.i, %max_nss.0.i
  %or.cond.i = select i1 %tobool40.not.i, i1 true, i1 %cmp.i30
  %tx_mask.1.i = select i1 %or.cond.i, i8 %max_nss.0.i, i8 %tx_mask.0.i
  %conv46.i = zext i8 %tx_mask.1.i to i16
  %notmask.i = shl nsw i16 -1, %conv46.i
  %conv47.i = xor i16 %notmask.i, -1
  %chainmask.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 5
  %197 = ptrtoint ptr %chainmask.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv47.i, ptr %chainmask.i, align 8
  %conv49.i = trunc i16 %conv47.i to i8
  %antenna_mask.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 15
  %198 = ptrtoint ptr %antenna_mask.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv49.i, ptr %antenna_mask.i, align 8
  %chainmask51.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 16
  %199 = ptrtoint ptr %chainmask51.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv47.i, ptr %chainmask51.i, align 2
  %macaddr = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 13
  %200 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %eeprom.i, align 16
  %add.ptr = getelementptr i8, ptr %201, i32 4
  %202 = call ptr @memcpy(ptr %macaddr, ptr %add.ptr, i32 6)
  tail call void @mt76_eeprom_override(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %mt7615_eeprom_parse_hw_cap.exit, %for.body.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt7615_eeprom_parse_hw_cap.exit ], [ -12, %if.end.i.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ -110, %for.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_eeprom_override(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_eeprom_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_mt7615_eeprom_init, !1, !"__ksymtab_mt7615_eeprom_init", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c", i32 353, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c", i32 31, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c", i32 314, i32 40}
!7 = distinct !{null, !8, !"ical", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c", i32 292, i32 19}
!9 = !{ptr @mt7615_apply_cal_free_data.ical, !10, !"ical", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c", i32 256, i32 19}
!11 = distinct !{null, !12, !"ical_nocheck", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c", i32 267, i32 19}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
