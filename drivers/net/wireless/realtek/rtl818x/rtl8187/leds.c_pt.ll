; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl8187_priv = type { ptr, ptr, ptr, %struct.mutex, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, ptr, i32, %struct.usb_anchor, %struct.delayed_work, ptr, %struct.rtl8187_led, %struct.rtl8187_led, %struct.rtl8187_led, %struct.delayed_work, %struct.delayed_work, i16, i8, i8, i32, %struct.sk_buff_head, i8, i8, i8, [4 x i8], i8, [40 x i8], %struct.anon.149, %struct.mutex, [36 x i8], ptr, i8, i16, [120 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.rtl8187_led = type { ptr, %struct.led_classdev, i8, [22 x i8], i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.anon.149 = type { %union.anon.150, %struct.sk_buff_head, [72 x i8] }
%union.anon.150 = type { i64, [120 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.rtl818x_csr = type { [6 x i8], [2 x i8], %union.anon.129, %union.anon.131, i32, [2 x i32], %union.anon.133, %union.anon.134, i32, %union.anon.135, [6 x i8], %union.anon.137, [1 x i8], i8, [4 x i8], %union.anon.139, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, [2 x i8], i8, i8, i32, [8 x i8], i32, i16, i16, i16, i16, i8, i8, [2 x i8], [4 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i32, [4 x i8], i8, i8, i8, i8, [16 x i8], i8, [3 x i8], i8, i8, i8, [5 x i8], i8, i8, i8, i8, [24 x i8], i8, i8, i8, i8, i16, i8, [3 x i8], i16, i32, i16, [4 x i8], %union.anon.141, i32, %union.anon.142, %union.anon.143, %union.anon.145 }
%union.anon.129 = type { [2 x i32] }
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%union.anon.137 = type { i16 }
%union.anon.139 = type { i32 }
%union.anon.141 = type { i16 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }

@rtl8187_leds_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016rtl8187: Customer ID is 0x%02X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl8187_leds_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c\00", [44 x i8] zeroinitializer }, align 32
@rtl8187_leds_init._entry_ptr = internal global ptr @rtl8187_leds_init._entry, section ".printk_index", align 4
@rtl8187_leds_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&priv->led_on)->work)\00", [54 x i8] zeroinitializer }, align 32
@rtl8187_leds_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&priv->led_on)->timer\00", [40 x i8] zeroinitializer }, align 32
@rtl8187_leds_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&priv->led_off)->work)\00", [53 x i8] zeroinitializer }, align 32
@rtl8187_leds_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&priv->led_off)->timer\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl8187-%s::radio\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl8187-%s::tx\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl8187-%s::rx\00", [17 x i8] zeroinitializer }, align 32
@rtl8187_register_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016LEDs: Failed to register %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl8187_register_led\00", [43 x i8] zeroinitializer }, align 32
@rtl8187_register_led._entry_ptr = internal global ptr @rtl8187_register_led._entry, section ".printk_index", align 4
@rtl8187_led_brightness_set.radio_on = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 181, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 201, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 202, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 205, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 212, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 219, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 154, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [36 x i8] c"rtl8187_led_brightness_set.radio_on\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @rtl8187_leds_init._entry, ptr @rtl8187_leds_init._entry_ptr, ptr @rtl8187_register_led._entry, ptr @rtl8187_register_led._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rtl8187_leds_init.__key, ptr @.str.3, ptr @rtl8187_leds_init.__key.4, ptr @.str.5, ptr @rtl8187_leds_init.__key.6, ptr @.str.7, ptr @rtl8187_leds_init.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @rtl8187_led_brightness_set.radio_on], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_leds_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_leds_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_leds_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_leds_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_leds_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_register_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_led_brightness_set.radio_on to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8187_leds_init(ptr noundef %dev, i16 noundef zeroext %custid) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %name) #6
  %conv = zext i16 %custid to i32
  %2 = call ptr @memset(ptr %name, i32 255, i32 22)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %custid)
  %switch.selectcmp = icmp eq i16 %custid, 1
  %switch.select = select i1 %switch.selectcmp, i8 0, i8 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %custid)
  %switch.selectcmp110 = icmp eq i16 %custid, 3
  %switch.select111 = select i1 %switch.selectcmp110, i8 3, i8 %switch.select
  %led_on = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 15
  tail call void @__init_work(ptr noundef %led_on, i32 noundef 0) #6
  %3 = ptrtoint ptr %led_on to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %led_on, align 8
  %lockdep_map = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 15, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @rtl8187_leds_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry13 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 15, i32 0, i32 1
  %4 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 15, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 15, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @led_turn_on, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @rtl8187_leds_init.__key.4) #6
  %led_off = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 16
  tail call void @__init_work(ptr noundef %led_off, i32 noundef 0) #6
  %7 = ptrtoint ptr %led_off to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %led_off, align 4
  %lockdep_map34 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 16, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map34, ptr noundef nonnull @.str.7, ptr noundef nonnull @rtl8187_leds_init.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry37 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 16, i32 0, i32 1
  %8 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i112 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 16, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry37, ptr %prev.i112, align 4
  %func40 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 16, i32 0, i32 2
  %10 = ptrtoint ptr %func40 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @led_turn_off, ptr %func40, align 4
  %timer45 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 16, i32 1
  tail call void @init_timer_key(ptr noundef %timer45, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @rtl8187_leds_init.__key.8) #6
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.wiphy_name.exit_crit_edge

entry.wiphy_name.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %entry.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %entry.wiphy_name.exit_crit_edge ]
  %call51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 22, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i.i)
  %led_radio = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 12
  %call.i = tail call ptr @__ieee80211_get_radio_led_name(ptr noundef %dev) #6
  %17 = ptrtoint ptr %led_radio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %led_radio, align 4
  %tobool.not.i = icmp ne ptr %18, null
  %tobool3.not.i = icmp eq ptr %call.i, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond, label %wiphy_name.exit.cleanup_crit_edge, label %if.end5.i

wiphy_name.exit.cleanup_crit_edge:                ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %wiphy_name.exit
  %19 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv1, align 8
  %21 = ptrtoint ptr %led_radio to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %led_radio, align 4
  %ledpin7.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %ledpin7.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %switch.select111, ptr %ledpin7.i, align 4
  %is_radio9.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 12, i32 4
  %23 = ptrtoint ptr %is_radio9.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_radio9.i, align 1
  %name11.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 12, i32 3
  %call.i113 = call i32 @strlcpy(ptr noundef %name11.i, ptr noundef nonnull %name, i32 noundef 22) #6
  %led_dev.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 12, i32 1
  %24 = ptrtoint ptr %led_dev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %name11.i, ptr %led_dev.i, align 4
  %default_trigger16.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 12, i32 1, i32 14
  %25 = ptrtoint ptr %default_trigger16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %default_trigger16.i, align 4
  %brightness_set.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 12, i32 1, i32 5
  %26 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rtl8187_led_brightness_set, ptr %brightness_set.i, align 4
  %udev.i = getelementptr inbounds %struct.rtl8187_priv, ptr %20, i32 0, i32 7
  %27 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev.i, align 4
  %dev18.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  %call.i.i = call i32 @led_classdev_register_ext(ptr noundef %dev18.i, ptr noundef %led_dev.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool21.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool21.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %name) #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end5.i
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i114 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i114 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i114, align 8
  %tobool.not.i.i115 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i115, label %if.end.i.i117, label %if.end.wiphy_name.exit119_crit_edge

if.end.wiphy_name.exit119_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit119

if.end.i.i117:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i116 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i116 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i116, align 4
  br label %wiphy_name.exit119

wiphy_name.exit119:                               ; preds = %if.end.i.i117, %if.end.wiphy_name.exit119_crit_edge
  %retval.0.i.i118 = phi ptr [ %34, %if.end.i.i117 ], [ %32, %if.end.wiphy_name.exit119_crit_edge ]
  %call58 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 22, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i118)
  %led_tx = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 13
  %call.i120 = call ptr @__ieee80211_get_tx_led_name(ptr noundef %dev) #6
  %35 = ptrtoint ptr %led_tx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %led_tx, align 4
  %tobool.not.i122 = icmp ne ptr %36, null
  %tobool3.not.i123 = icmp eq ptr %call.i120, null
  %or.cond181 = select i1 %tobool.not.i122, i1 true, i1 %tobool3.not.i123
  br i1 %or.cond181, label %wiphy_name.exit119.err_tx_crit_edge, label %if.end5.i136

wiphy_name.exit119.err_tx_crit_edge:              ; preds = %wiphy_name.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_tx

if.end5.i136:                                     ; preds = %wiphy_name.exit119
  %37 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv1, align 8
  %39 = ptrtoint ptr %led_tx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev, ptr %led_tx, align 4
  %ledpin7.i125 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 13, i32 2
  %40 = ptrtoint ptr %ledpin7.i125 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %switch.select111, ptr %ledpin7.i125, align 4
  %is_radio9.i126 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 13, i32 4
  %41 = ptrtoint ptr %is_radio9.i126 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %is_radio9.i126, align 1
  %name11.i127 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 13, i32 3
  %call.i128 = call i32 @strlcpy(ptr noundef %name11.i127, ptr noundef nonnull %name, i32 noundef 22) #6
  %led_dev.i129 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 13, i32 1
  %42 = ptrtoint ptr %led_dev.i129 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %name11.i127, ptr %led_dev.i129, align 4
  %default_trigger16.i130 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 13, i32 1, i32 14
  %43 = ptrtoint ptr %default_trigger16.i130 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i120, ptr %default_trigger16.i130, align 4
  %brightness_set.i131 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 13, i32 1, i32 5
  %44 = ptrtoint ptr %brightness_set.i131 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @rtl8187_led_brightness_set, ptr %brightness_set.i131, align 4
  %udev.i132 = getelementptr inbounds %struct.rtl8187_priv, ptr %38, i32 0, i32 7
  %45 = ptrtoint ptr %udev.i132 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udev.i132, align 4
  %dev18.i133 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 15
  %call.i.i134 = call i32 @led_classdev_register_ext(ptr noundef %dev18.i133, ptr noundef %led_dev.i129, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %tobool21.not.i135 = icmp eq i32 %call.i.i134, 0
  br i1 %tobool21.not.i135, label %if.end64, label %do.end.i138

do.end.i138:                                      ; preds = %if.end5.i136
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %name) #9
  br label %err_tx.sink.split

if.end64:                                         ; preds = %if.end5.i136
  %47 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wiphy, align 8
  %init_name.i.i141 = getelementptr inbounds %struct.wiphy, ptr %48, i32 0, i32 56, i32 3
  %49 = ptrtoint ptr %init_name.i.i141 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i.i141, align 8
  %tobool.not.i.i142 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i142, label %if.end.i.i144, label %if.end64.wiphy_name.exit146_crit_edge

if.end64.wiphy_name.exit146_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit146

if.end.i.i144:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i143 = getelementptr inbounds %struct.wiphy, ptr %48, i32 0, i32 56
  %51 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i143, align 4
  br label %wiphy_name.exit146

wiphy_name.exit146:                               ; preds = %if.end.i.i144, %if.end64.wiphy_name.exit146_crit_edge
  %retval.0.i.i145 = phi ptr [ %52, %if.end.i.i144 ], [ %50, %if.end64.wiphy_name.exit146_crit_edge ]
  %call68 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 22, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i145)
  %led_rx = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 14
  %call.i147 = call ptr @__ieee80211_get_rx_led_name(ptr noundef %dev) #6
  %53 = ptrtoint ptr %led_rx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %led_rx, align 4
  %tobool.not.i149 = icmp ne ptr %54, null
  %tobool3.not.i150 = icmp eq ptr %call.i147, null
  %or.cond182 = select i1 %tobool.not.i149, i1 true, i1 %tobool3.not.i150
  br i1 %or.cond182, label %wiphy_name.exit146.if.end74_crit_edge, label %if.end5.i163

wiphy_name.exit146.if.end74_crit_edge:            ; preds = %wiphy_name.exit146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.end5.i163:                                     ; preds = %wiphy_name.exit146
  %55 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv1, align 8
  %57 = ptrtoint ptr %led_rx to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev, ptr %led_rx, align 4
  %ledpin7.i152 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 14, i32 2
  %58 = ptrtoint ptr %ledpin7.i152 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %switch.select111, ptr %ledpin7.i152, align 4
  %is_radio9.i153 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 14, i32 4
  %59 = ptrtoint ptr %is_radio9.i153 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %is_radio9.i153, align 1
  %name11.i154 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 14, i32 3
  %call.i155 = call i32 @strlcpy(ptr noundef %name11.i154, ptr noundef nonnull %name, i32 noundef 22) #6
  %led_dev.i156 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 14, i32 1
  %60 = ptrtoint ptr %led_dev.i156 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %name11.i154, ptr %led_dev.i156, align 4
  %default_trigger16.i157 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 14, i32 1, i32 14
  %61 = ptrtoint ptr %default_trigger16.i157 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i147, ptr %default_trigger16.i157, align 4
  %brightness_set.i158 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 14, i32 1, i32 5
  %62 = ptrtoint ptr %brightness_set.i158 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @rtl8187_led_brightness_set, ptr %brightness_set.i158, align 4
  %udev.i159 = getelementptr inbounds %struct.rtl8187_priv, ptr %56, i32 0, i32 7
  %63 = ptrtoint ptr %udev.i159 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udev.i159, align 4
  %dev18.i160 = getelementptr inbounds %struct.usb_device, ptr %64, i32 0, i32 15
  %call.i.i161 = call i32 @led_classdev_register_ext(ptr noundef %dev18.i160, ptr noundef %led_dev.i156, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i161)
  %tobool21.not.i162 = icmp eq i32 %call.i.i161, 0
  br i1 %tobool21.not.i162, label %if.end5.i163.cleanup_crit_edge, label %do.end.i165

if.end5.i163.cleanup_crit_edge:                   ; preds = %if.end5.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i165:                                      ; preds = %if.end5.i163
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %name) #9
  %65 = ptrtoint ptr %led_rx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %led_rx, align 4
  br label %if.end74

if.end74:                                         ; preds = %do.end.i165, %wiphy_name.exit146.if.end74_crit_edge
  %66 = ptrtoint ptr %led_tx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %led_tx, align 4
  %priv1.i168 = getelementptr inbounds %struct.ieee80211_hw, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %priv1.i168 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv1.i168, align 8
  call void @led_classdev_unregister(ptr noundef %led_dev.i129) #6
  %led_off.i = getelementptr inbounds %struct.rtl8187_priv, ptr %69, i32 0, i32 16
  %call.i170 = call zeroext i1 @flush_delayed_work(ptr noundef %led_off.i) #6
  br label %err_tx.sink.split

err_tx.sink.split:                                ; preds = %if.end74, %do.end.i138
  %70 = ptrtoint ptr %led_tx to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %led_tx, align 4
  br label %err_tx

err_tx:                                           ; preds = %err_tx.sink.split, %wiphy_name.exit119.err_tx_crit_edge
  %71 = ptrtoint ptr %led_radio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %led_radio, align 4
  %priv1.i171 = getelementptr inbounds %struct.ieee80211_hw, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %priv1.i171 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv1.i171, align 8
  call void @led_classdev_unregister(ptr noundef %led_dev.i) #6
  %led_off.i173 = getelementptr inbounds %struct.rtl8187_priv, ptr %74, i32 0, i32 16
  %call.i174 = call zeroext i1 @flush_delayed_work(ptr noundef %led_off.i173) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_tx, %do.end.i
  %75 = ptrtoint ptr %led_radio to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %led_radio, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.i163.cleanup_crit_edge, %wiphy_name.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %name) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @led_turn_on(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2632
  %led_tx = getelementptr i8, ptr %work, i32 -856
  %vif = getelementptr i8, ptr %work, i32 -2624
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %led_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led_tx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conf_mutex = getelementptr i8, ptr %work, i32 -2620
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #6
  %ledpin = getelementptr i8, ptr %work, i32 -452
  %6 = ptrtoint ptr %ledpin to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ledpin, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end4.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 0, label %sw.bb6
    i8 1, label %sw.bb12
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 128
  %GPIO0 = getelementptr inbounds %struct.rtl818x_csr, ptr %10, i32 0, i32 50
  tail call void @rtl818x_iowrite8_idx(ptr noundef %add.ptr, ptr noundef %GPIO0, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 128
  %GP_ENABLE = getelementptr inbounds %struct.rtl818x_csr, ptr %12, i32 0, i32 49
  tail call void @rtl818x_iowrite8_idx(ptr noundef %add.ptr, ptr noundef %GP_ENABLE, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 128
  %PGSELECT = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 30
  %call.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %add.ptr, ptr noundef %PGSELECT, i8 noundef zeroext 0) #6
  %15 = and i8 %call.i, -17
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 128
  %PGSELECT11 = getelementptr inbounds %struct.rtl818x_csr, ptr %17, i32 0, i32 30
  tail call void @rtl818x_iowrite8_idx(ptr noundef %add.ptr, ptr noundef %PGSELECT11, i8 noundef zeroext %15, i8 noundef zeroext 0) #6
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 128
  %PGSELECT14 = getelementptr inbounds %struct.rtl818x_csr, ptr %19, i32 0, i32 30
  %call.i43 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %add.ptr, ptr noundef %PGSELECT14, i8 noundef zeroext 0) #6
  %20 = and i8 %call.i43, -33
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 128
  %PGSELECT20 = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 30
  tail call void @rtl818x_iowrite8_idx(ptr noundef %add.ptr, ptr noundef %PGSELECT20, i8 noundef zeroext %20, i8 noundef zeroext 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb6, %sw.bb, %if.end4.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @led_turn_off(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2732
  %led_tx = getelementptr i8, ptr %work, i32 -956
  %vif = getelementptr i8, ptr %work, i32 -2724
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %led_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led_tx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conf_mutex = getelementptr i8, ptr %work, i32 -2720
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #6
  %ledpin = getelementptr i8, ptr %work, i32 -552
  %6 = ptrtoint ptr %ledpin to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ledpin, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %7, label %if.end4.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 0, label %sw.bb6
    i8 1, label %sw.bb12
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 128
  %GPIO0 = getelementptr inbounds %struct.rtl818x_csr, ptr %10, i32 0, i32 50
  tail call void @rtl818x_iowrite8_idx(ptr noundef %add.ptr, ptr noundef %GPIO0, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 128
  %GP_ENABLE = getelementptr inbounds %struct.rtl818x_csr, ptr %12, i32 0, i32 49
  tail call void @rtl818x_iowrite8_idx(ptr noundef %add.ptr, ptr noundef %GP_ENABLE, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 128
  %PGSELECT = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 30
  %call.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %add.ptr, ptr noundef %PGSELECT, i8 noundef zeroext 0) #6
  %15 = or i8 %call.i, 16
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 128
  %PGSELECT11 = getelementptr inbounds %struct.rtl818x_csr, ptr %17, i32 0, i32 30
  tail call void @rtl818x_iowrite8_idx(ptr noundef %add.ptr, ptr noundef %PGSELECT11, i8 noundef zeroext %15, i8 noundef zeroext 0) #6
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 128
  %PGSELECT14 = getelementptr inbounds %struct.rtl818x_csr, ptr %19, i32 0, i32 30
  %call.i43 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %add.ptr, ptr noundef %PGSELECT14, i8 noundef zeroext 0) #6
  %20 = or i8 %call.i43, 32
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 128
  %PGSELECT20 = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 30
  tail call void @rtl818x_iowrite8_idx(ptr noundef %add.ptr, ptr noundef %PGSELECT20, i8 noundef zeroext %20, i8 noundef zeroext 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb6, %sw.bb, %if.end4.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8187_leds_exit(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %led_radio = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %led_radio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led_radio, align 4
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1.i, align 8
  %led_dev.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 12, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i) #6
  %led_off.i = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 16
  %call.i = tail call zeroext i1 @flush_delayed_work(ptr noundef %led_off.i) #6
  %6 = ptrtoint ptr %led_radio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %led_radio, align 4
  %led_rx = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %led_rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %led_rx, align 4
  %priv1.i7 = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %priv1.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1.i7, align 8
  %led_dev.i8 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 14, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i8) #6
  %led_off.i9 = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 16
  %call.i10 = tail call zeroext i1 @flush_delayed_work(ptr noundef %led_off.i9) #6
  %11 = ptrtoint ptr %led_rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %led_rx, align 4
  %led_tx = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %led_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %led_tx, align 4
  %priv1.i11 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %priv1.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv1.i11, align 8
  %led_dev.i12 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 13, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i12) #6
  %led_off.i13 = getelementptr inbounds %struct.rtl8187_priv, ptr %15, i32 0, i32 16
  %call.i14 = tail call zeroext i1 @flush_delayed_work(ptr noundef %led_off.i13) #6
  %16 = ptrtoint ptr %led_tx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %led_tx, align 4
  %led_off = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 16
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %led_off) #6
  %led_on = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 15
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %led_on) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl818x_iowrite8_idx(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl818x_ioread8_idx(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_led_brightness_set(ptr nocapture noundef readonly %led_dev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_dev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %is_radio = getelementptr i8, ptr %led_dev, i32 423
  %4 = ptrtoint ptr %is_radio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_radio, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.else10, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 255
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %led_on = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 15
  tail call void @ieee80211_queue_delayed_work(ptr noundef nonnull %1, ptr noundef %led_on, i32 noundef 0) #6
  store i1 true, ptr @rtl8187_led_brightness_set.radio_on, align 1
  br label %cleanup

if.else:                                          ; preds = %if.then3
  %.b3739 = load i1, ptr @rtl8187_led_brightness_set.radio_on, align 1
  br i1 %.b3739, label %if.then6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  store i1 false, ptr @rtl8187_led_brightness_set.radio_on, align 1
  %led_on7 = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 15
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %led_on7) #6
  %led_off = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 16
  tail call void @ieee80211_queue_delayed_work(ptr noundef nonnull %1, ptr noundef %led_off, i32 noundef 0) #6
  br label %cleanup

if.else10:                                        ; preds = %if.end
  %.b38 = load i1, ptr @rtl8187_led_brightness_set.radio_on, align 1
  br i1 %.b38, label %if.then12, label %if.else10.cleanup_crit_edge

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp13 = icmp eq i32 %brightness, 0
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %led_off15 = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 16
  tail call void @ieee80211_queue_delayed_work(ptr noundef nonnull %1, ptr noundef %led_off15, i32 noundef 0) #6
  %led_on16 = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 15
  tail call void @ieee80211_queue_delayed_work(ptr noundef nonnull %1, ptr noundef %led_on16, i32 noundef 5) #6
  br label %cleanup

if.else17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %led_on18 = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 15
  tail call void @ieee80211_queue_delayed_work(ptr noundef nonnull %1, ptr noundef %led_on18, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else17, %if.then14, %if.else10.cleanup_crit_edge, %if.then6, %if.else.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_radio_led_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_tx_led_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_rx_led_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c", i32 181, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl8187_leds_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl8187_leds_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @rtl8187_leds_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c", i32 201, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtl8187_leds_init.__key.4, !7, !"__key", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rtl8187_leds_init.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c", i32 202, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rtl8187_leds_init.__key.8, !12, !"__key", i1 false, i1 false}
!15 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c", i32 205, i32 4}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c", i32 212, i32 4}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c", i32 219, i32 4}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c", i32 154, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtl8187_register_led._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtl8187_register_led._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"radio_on", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/leds.c", i32 106, i32 14}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
