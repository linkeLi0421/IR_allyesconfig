; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43legacy/sysfs.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43legacy/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.b43legacy_wldev = type { ptr, ptr, %struct.atomic_t, i32, i8, i8, i8, i8, i8, %struct.b43legacy_phy, %union.anon.131, %struct.b43legacy_stats, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, i32, [6 x i32], i32, %struct.b43legacy_noise_calculation, i32, %struct.tasklet_struct, %struct.delayed_work, i32, %struct.work_struct, i16, i8, [58 x %struct.b43legacy_key], %struct.b43legacy_firmware, ptr, %struct.completion, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.b43legacy_phy = type { i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, %struct.anon.128, [2 x i16], [2 x i16], ptr, ptr, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i8, [2 x i16], %struct.anon.129, %struct.anon.130, i32, [26 x i32], [2 x i16], i32, [64 x i8], i8, i16, i16, %struct.atomic_t, i8, i8 }
%struct.anon.128 = type { i8, i16, i16 }
%struct.anon.129 = type { i16, i16, i16, i16 }
%struct.anon.130 = type { i16 }
%union.anon.131 = type { %struct.b43legacy_dma }
%struct.b43legacy_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.b43legacy_stats = type { i8, i32, i32 }
%struct.b43legacy_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_noise_calculation = type { i8, i8, i8, [8 x [4 x i8]] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_key = type { ptr, i8, i8 }
%struct.b43legacy_firmware = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.__ssb_dev_wrapper = type { %struct.device, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.b43legacy_wl = type { ptr, ptr, %struct.spinlock, %struct.mutex, %struct.spinlock, %struct.work_struct, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], %struct.list_head, i8, i8, i8, ptr, i8, i8, i8, %struct.work_struct, [4 x %struct.b43legacy_qos_params], %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8] }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.b43legacy_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/broadcom/b43legacy/sysfs.c\00", [48 x i8] zeroinitializer }, align 32
@dev_attr_interference = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @b43legacy_attr_interfmode_show, ptr @b43legacy_attr_interfmode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_shortpreamble = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @b43legacy_attr_preamble_show, ptr @b43legacy_attr_preamble_store }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"interference\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"0 (No Interference Mitigation)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"1 (Non-WLAN Interference Mitigation)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"2 (WLAN Interference Mitigation)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Interference Mitigation not supported by device\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"shortpreamble\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"1 (Short Preamble enabled)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0 (Short Preamble disabled)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 203, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"dev_attr_interference\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"dev_attr_shortpreamble\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 141, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 78, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 82, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 86, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 133, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 194, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 158, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 161, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 48, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 50, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 52, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 54, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 56, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [51 x i8] c"../drivers/net/wireless/broadcom/b43legacy/sysfs.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 58, i32 33 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @dev_attr_interference, ptr @dev_attr_shortpreamble, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interference to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_shortpreamble to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43legacy_sysfs_register(ptr noundef %wldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wldev, align 4
  %dev2 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %wldev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #5
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call21 = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_interference) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end24:                                         ; preds = %if.end
  %call25 = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_shortpreamble) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.out_crit_edge, label %err_remove_interfmode

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %err_remove_interfmode, %if.end24.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call21, %if.end.out_crit_edge ], [ %call25, %err_remove_interfmode ], [ 0, %if.end24.out_crit_edge ]
  ret i32 %err.0

err_remove_interfmode:                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @dev_attr_interference) #5
  br label %out
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_sysfs_unregister(ptr nocapture noundef readonly %wldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wldev, align 4
  %dev2 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  tail call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @dev_attr_shortpreamble) #5
  tail call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @dev_attr_interference) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_attr_interfmode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i.i = getelementptr inbounds %struct.__ssb_dev_wrapper, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i.i, align 8
  %drvdata.i.i = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i.i, align 4
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #5
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl, align 4
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %interfmode = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 9, i32 34
  %6 = ptrtoint ptr %interfmode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interfmode, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.2, i32 32)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = call ptr @memcpy(ptr %buf, ptr @.str.3, i32 38)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = call ptr @memcpy(ptr %buf, ptr @.str.4, i32 34)
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb5, %sw.bb3, %sw.bb
  %count.0 = phi i32 [ 0, %do.end ], [ 33, %sw.bb5 ], [ 37, %sw.bb3 ], [ 31, %sw.bb ]
  %12 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wl, align 4
  %mutex24 = getelementptr inbounds %struct.b43legacy_wl, ptr %13, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex24) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.0, %sw.epilog ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_attr_interfmode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca [11 x i8], align 1
  %res.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i.i = getelementptr inbounds %struct.__ssb_dev_wrapper, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i.i, align 8
  %drvdata.i.i = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i.i, align 4
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #5
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %tmp.i) #5
  %4 = call ptr @memset(ptr %tmp.i, i32 0, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #5
  %5 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %res.i, align 4, !annotation !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp eq i32 %count, 0
  br i1 %cmp.i, label %get_integer.exit.thread, label %if.end.i

get_integer.exit.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #5
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tmp.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 10) #5
  %7 = call ptr @memcpy(ptr %tmp.i, ptr %buf, i32 %6)
  %call.i = call i32 @kstrtoint(ptr noundef nonnull %tmp.i, i32 noundef 10, ptr noundef nonnull %res.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.end.i.get_integer.exit_crit_edge

if.end.i.get_integer.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_integer.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res.i, align 4
  br label %get_integer.exit

get_integer.exit:                                 ; preds = %if.then4.i, %if.end.i.get_integer.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then4.i ], [ %call.i, %if.end.i.get_integer.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #5
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %switch = icmp ult i32 %retval.0.i, 4
  br i1 %switch, label %sw.epilog, label %get_integer.exit.cleanup_crit_edge

get_integer.exit.cleanup_crit_edge:               ; preds = %get_integer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog:                                        ; preds = %get_integer.exit
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wl, align 4
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %11, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %12 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wl, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %13, i32 0, i32 2
  %call9 = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #5
  %call12 = call i32 @b43legacy_radio_set_interference_mitigation(ptr noundef %3, i32 noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %sw.epilog.if.end15_crit_edge, label %if.then13

sw.epilog.if.end15_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wl, align 4
  call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %15, ptr noundef nonnull @.str.5) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %sw.epilog.if.end15_crit_edge
  %count.call12 = phi i32 [ %call12, %if.then13 ], [ %count, %sw.epilog.if.end15_crit_edge ]
  %16 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wl, align 4
  %irq_lock17 = getelementptr inbounds %struct.b43legacy_wl, ptr %17, i32 0, i32 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock17, i32 noundef %call9) #5
  %18 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wl, align 4
  %mutex19 = getelementptr inbounds %struct.b43legacy_wl, ptr %19, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %mutex19) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %get_integer.exit.cleanup_crit_edge, %get_integer.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call12, %if.end15 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %get_integer.exit.cleanup_crit_edge ], [ -22, %get_integer.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_radio_set_interference_mitigation(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacyerr(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_attr_preamble_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i.i = getelementptr inbounds %struct.__ssb_dev_wrapper, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i.i, align 8
  %drvdata.i.i = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i.i, align 4
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #5
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl, align 4
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %short_preamble = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %short_preamble to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %short_preamble, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.7, i32 28)
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 29)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %count.0 = phi i32 [ 27, %if.then2 ], [ 28, %if.else ]
  %10 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wl, align 4
  %mutex7 = getelementptr inbounds %struct.b43legacy_wl, ptr %11, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.0, %if.end5 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_attr_preamble_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i.i = getelementptr inbounds %struct.__ssb_dev_wrapper, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i.i, align 8
  %drvdata.i.i = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i.i, align 4
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #5
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not.i = icmp eq i32 %count, 0
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %5, label %if.end9.i [
    i8 49, label %if.then.i.if.end4_crit_edge
    i8 48, label %if.then8.i
  ]

if.then.i.if.end4_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end9.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp10.i = icmp ugt i32 %count, 3
  br i1 %cmp10.i, label %land.lhs.true.i, label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %bcmp74.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @.str.9, i32 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74.i)
  %cmp12.i = icmp eq i32 %bcmp74.i, 0
  br i1 %cmp12.i, label %land.lhs.true.i.if.end4_crit_edge, label %if.end15.i

land.lhs.true.i.if.end4_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end15.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp16.i = icmp ugt i32 %count, 4
  br i1 %cmp16.i, label %land.lhs.true18.i, label %if.end15.i.land.lhs.true26.i_crit_edge

if.end15.i.land.lhs.true26.i_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26.i

land.lhs.true18.i:                                ; preds = %if.end15.i
  %bcmp73.i = tail call i32 @bcmp(ptr noundef dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.10, i32 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp73.i)
  %cmp20.i = icmp eq i32 %bcmp73.i, 0
  br i1 %cmp20.i, label %land.lhs.true18.i.if.end4_crit_edge, label %land.lhs.true18.i.land.lhs.true26.i_crit_edge

land.lhs.true18.i.land.lhs.true26.i_crit_edge:    ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26.i

land.lhs.true18.i.if.end4_crit_edge:              ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end23.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp24.i = icmp eq i32 %count, 3
  br i1 %cmp24.i, label %if.end23.i.land.lhs.true26.i_crit_edge, label %if.end31.i

if.end23.i.land.lhs.true26.i_crit_edge:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26.i

land.lhs.true26.i:                                ; preds = %if.end23.i.land.lhs.true26.i_crit_edge, %land.lhs.true18.i.land.lhs.true26.i_crit_edge, %if.end15.i.land.lhs.true26.i_crit_edge
  %bcmp72.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.11, i32 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp72.i)
  %cmp28.i = icmp eq i32 %bcmp72.i, 0
  br i1 %cmp28.i, label %land.lhs.true26.i.if.end4_crit_edge, label %land.lhs.true26.i.land.lhs.true34.i_crit_edge

land.lhs.true26.i.land.lhs.true34.i_crit_edge:    ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true34.i

land.lhs.true26.i.if.end4_crit_edge:              ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp32.i = icmp ugt i32 %count, 1
  br i1 %cmp32.i, label %if.end31.i.land.lhs.true34.i_crit_edge, label %if.end31.i.cleanup_crit_edge

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31.i.land.lhs.true34.i_crit_edge:           ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true34.i

land.lhs.true34.i:                                ; preds = %if.end31.i.land.lhs.true34.i_crit_edge, %land.lhs.true26.i.land.lhs.true34.i_crit_edge
  %cmp247782.i = phi i1 [ false, %if.end31.i.land.lhs.true34.i_crit_edge ], [ true, %land.lhs.true26.i.land.lhs.true34.i_crit_edge ]
  %bcmp71.i = tail call i32 @bcmp(ptr noundef dereferenceable(2) %buf, ptr noundef nonnull dereferenceable(2) @.str.12, i32 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp71.i)
  %cmp36.i = icmp eq i32 %bcmp71.i, 0
  br i1 %cmp36.i, label %land.lhs.true34.i.if.end4_crit_edge, label %land.lhs.true42.critedge.i

land.lhs.true34.i.if.end4_crit_edge:              ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true42.critedge.i:                       ; preds = %land.lhs.true34.i
  %bcmp70.i = tail call i32 @bcmp(ptr noundef dereferenceable(2) %buf, ptr noundef nonnull dereferenceable(2) @.str.13, i32 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp70.i)
  %cmp44.i = icmp eq i32 %bcmp70.i, 0
  br i1 %cmp44.i, label %land.lhs.true42.critedge.i.if.end4_crit_edge, label %if.end47.i

land.lhs.true42.critedge.i.if.end4_crit_edge:     ; preds = %land.lhs.true42.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end47.i:                                       ; preds = %land.lhs.true42.critedge.i
  br i1 %cmp247782.i, label %land.lhs.true50.i, label %if.end47.i.cleanup_crit_edge

if.end47.i.cleanup_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true50.i:                                ; preds = %if.end47.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.14, i32 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp52.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp52.i, label %land.lhs.true50.i.if.end4_crit_edge, label %land.lhs.true50.i.cleanup_crit_edge

land.lhs.true50.i.cleanup_crit_edge:              ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true50.i.if.end4_crit_edge:              ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true50.i.if.end4_crit_edge, %land.lhs.true42.critedge.i.if.end4_crit_edge, %land.lhs.true34.i.if.end4_crit_edge, %land.lhs.true26.i.if.end4_crit_edge, %land.lhs.true18.i.if.end4_crit_edge, %land.lhs.true.i.if.end4_crit_edge, %if.then8.i, %if.then.i.if.end4_crit_edge
  %tobool = phi i1 [ false, %if.then8.i ], [ true, %if.then.i.if.end4_crit_edge ], [ true, %land.lhs.true.i.if.end4_crit_edge ], [ false, %land.lhs.true18.i.if.end4_crit_edge ], [ true, %land.lhs.true26.i.if.end4_crit_edge ], [ false, %land.lhs.true34.i.if.end4_crit_edge ], [ true, %land.lhs.true42.critedge.i.if.end4_crit_edge ], [ false, %land.lhs.true50.i.if.end4_crit_edge ]
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wl, align 4
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %8, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %9 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wl, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %10, i32 0, i32 2
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #5
  %short_preamble = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 7
  %frombool = zext i1 %tobool to i8
  %11 = ptrtoint ptr %short_preamble to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %short_preamble, align 1
  %12 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wl, align 4
  %irq_lock14 = getelementptr inbounds %struct.b43legacy_wl, ptr %13, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock14, i32 noundef %call9) #5
  %14 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wl, align 4
  %mutex16 = getelementptr inbounds %struct.b43legacy_wl, ptr %15, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %land.lhs.true50.i.cleanup_crit_edge, %if.end47.i.cleanup_crit_edge, %if.end31.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end31.i.cleanup_crit_edge ], [ -22, %if.end47.i.cleanup_crit_edge ], [ -22, %land.lhs.true50.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 203, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 141, i32 8}
!4 = !{ptr @dev_attr_interference, !3, !"dev_attr_interference", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 78, i32 36}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 82, i32 36}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 86, i32 36}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 133, i32 27}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 194, i32 8}
!15 = !{ptr @dev_attr_shortpreamble, !14, !"dev_attr_shortpreamble", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 158, i32 36}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 161, i32 36}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 48, i32 33}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 50, i32 33}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 52, i32 33}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 54, i32 33}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 56, i32 33}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43legacy/sysfs.c", i32 58, i32 33}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{!"auto-init"}
!43 = !{i8 0, i8 2}
