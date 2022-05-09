; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtl8187_priv = type { ptr, ptr, ptr, %struct.mutex, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, ptr, i32, %struct.usb_anchor, %struct.delayed_work, ptr, %struct.rtl8187_led, %struct.rtl8187_led, %struct.rtl8187_led, %struct.delayed_work, %struct.delayed_work, i16, i8, i8, i32, %struct.sk_buff_head, i8, i8, i8, [4 x i8], i8, [40 x i8], %struct.anon.149, %struct.mutex, [36 x i8], ptr, i8, i16, [120 x i8] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.rtl8187_led = type { ptr, %struct.led_classdev, i8, [22 x i8], i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.anon.149 = type { %union.anon.150, %struct.sk_buff_head, [72 x i8] }
%union.anon.150 = type { i64, [120 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.rtl8187_tx_hdr = type { i32, i16, i16, i32 }
%struct.rtl8187b_tx_hdr = type { i32, i16, i16, i32, i16, i16, i32, i32, [2 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.rtl818x_rf_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.146, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.146 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.147] }
%struct.anon.147 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rtl8187_vif = type { ptr, %struct.delayed_work, i8 }
%struct.anon.138 = type { i8, i8 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.rtl8187_async_write_data = type { [4 x i8], %struct.usb_ctrlrequest }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.168 }
%union.anon.168 = type { %struct.anon.174, [16 x i8] }
%struct.anon.174 = type { i16, i16, [6 x i8], [0 x i8] }

@__UNIQUE_ID_author353 = internal constant [52 x i8] c"rtl8187.author=Michael Wu <flamingice@sourmilk.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author354 = internal constant [57 x i8] c"rtl8187.author=Andrea Merello <andrea.merello@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author355 = internal constant [66 x i8] c"rtl8187.author=Herton Ronaldo Krzesinski <herton@mandriva.com.br>\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [59 x i8] c"rtl8187.author=Hin-Tak Leung <htl10@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [56 x i8] c"rtl8187.author=Larry Finger <Larry.Finger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description358 = internal constant [57 x i8] c"rtl8187.description=RTL8187/RTL8187B USB wireless driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [66 x i8] c"rtl8187.file=drivers/net/wireless/realtek/rtl818x/rtl8187/rtl8187\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [20 x i8] c"rtl8187.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rtl8187__364_1683_rtl8187_driver_init6 = internal global ptr @rtl8187_driver_init, section ".initcall6.init", align 4
@rtl8187_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @rtl8187_probe, ptr @rtl8187_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8187_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rtl8187_driver_exit = internal global ptr @rtl8187_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtl8187\00", [24 x i8] zeroinitializer }, align 32
@rtl8187_table = internal constant { [22 x %struct.usb_device_id], [144 x i8] } { [22 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2821, i16 5917, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 28766, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32375, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32361, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1897, i16 4594, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 24832, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 27136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 16992, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1008, i16 -13822, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 40, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3574, i16 41, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4427, i16 336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4977, i16 -27647, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5073, i16 -21530, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6376, i16 25138, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7029, i16 -32377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5943, i16 115, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [144 x i8] zeroinitializer }, align 32
@rtl8187_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rtl8187_tx, ptr @rtl8187_start, ptr @rtl8187_stop, ptr null, ptr null, ptr null, ptr @rtl8187_add_interface, ptr null, ptr @rtl8187_remove_interface, ptr @rtl8187_config, ptr @rtl8187_bss_info_changed, ptr null, ptr null, ptr @rtl8187_prepare_multicast, ptr @rtl8187_configure_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8187_conf_tx, ptr @rtl8187_get_tsf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8187_rfkill_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@rtl8187_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013rtl8187: ieee80211 alloc failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl8187_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c\00", [45 x i8] zeroinitializer }, align 32
@rtl8187_probe._entry_ptr = internal global ptr @rtl8187_probe._entry, section ".printk_index", align 4
@rtl8187_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->io_mutex\00", [16 x i8] zeroinitializer }, align 32
@rtl8187_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->conf_mutex\00", [46 x i8] zeroinitializer }, align 32
@rtl818x_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@rtl818x_rates = internal constant { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 3, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 5, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 11, i16 0 }], [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl8187_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014rtl8187: Invalid hwaddr! Using randomly generated MAC address\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8187_probe._entry_ptr.9 = internal global ptr @rtl8187_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RTL8187BvB(early)\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTL8187vD\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RTL8187vB (default)\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RTL8187BvB\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RTL8187BvD\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RTL8187BvE\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RTL8187BvB (default)\00", [43 x i8] zeroinitializer }, align 32
@rtl8187_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016rtl8187: inconsistency between id with OEM info!\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl8187_probe._entry_ptr.19 = internal global ptr @rtl8187_probe._entry.17, section ".printk_index", align 4
@rtl8187_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013rtl8187: Cannot register device\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl8187_probe._entry_ptr.22 = internal global ptr @rtl8187_probe._entry.20, section ".printk_index", align 4
@rtl8187_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1634, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hwaddr %pM, %s V%d + %s, rfkill mask %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8187_probe._entry_ptr.27 = internal global ptr @rtl8187_probe._entry.23, section ".printk_index", align 4
@__const.rtl8187_tx.epmap = private unnamed_addr constant [4 x i32] [i32 6, i32 7, i32 5, i32 4], align 4
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@rtl8187_tx_cb.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl8187_tx_cb\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"transmit status queue full\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl8187_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&priv->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@rtl8187_start.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&priv->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@rtl8187_cmd_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 630, ptr @.str.36, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Reset timeout!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl8187_cmd_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtl8187_cmd_reset._entry_ptr = internal global ptr @rtl8187_cmd_reset._entry, section ".printk_index", align 4
@rtl8187_cmd_reset._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.3, i32 646, ptr @.str.36, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"eeprom reset timeout!\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl8187_cmd_reset._entry_ptr.39 = internal global ptr @rtl8187_cmd_reset._entry.37, section ".printk_index", align 4
@rtl8187b_reg_table = internal constant { [85 x [3 x i8]], [33 x i8] } { [85 x [3 x i8]] [[3 x i8] c"\F02\00", [3 x i8] c"\F12\00", [3 x i8] c"\F2\00\00", [3 x i8] c"\F3\00\00", [3 x i8] c"\F42\00", [3 x i8] c"\F5C\00", [3 x i8] c"\F6\00\00", [3 x i8] c"\F7\00\00", [3 x i8] c"\F8F\00", [3 x i8] c"\F9\A4\00", [3 x i8] c"\FA\00\00", [3 x i8] c"\FB\00\00", [3 x i8] c"\FC\96\00", [3 x i8] c"\FD\A4\00", [3 x i8] c"\FE\00\00", [3 x i8] c"\FF\00\00", [3 x i8] c"XK\01", [3 x i8] c"Y\00\01", [3 x i8] c"ZK\01", [3 x i8] c"[\00\01", [3 x i8] c"`K\01", [3 x i8] c"a\09\01", [3 x i8] c"bK\01", [3 x i8] c"c\09\01", [3 x i8] c"\CE\0F\01", [3 x i8] c"\CF\00\01", [3 x i8] c"\F0N\01", [3 x i8] c"\F1\01\01", [3 x i8] c"\F2\02\01", [3 x i8] c"\F3\03\01", [3 x i8] c"\F4\04\01", [3 x i8] c"\F5\05\01", [3 x i8] c"\F6\06\01", [3 x i8] c"\F7\07\01", [3 x i8] c"\F8\08\01", [3 x i8] c"N\00\02", [3 x i8] c"\0C\04\02", [3 x i8] c"!a\02", [3 x i8] c"\22h\02", [3 x i8] c"#o\02", [3 x i8] c"$v\02", [3 x i8] c"%}\02", [3 x i8] c"&\84\02", [3 x i8] c"'\8D\02", [3 x i8] c"M\08\02", [3 x i8] c"P\05\02", [3 x i8] c"Q\F5\02", [3 x i8] c"R\04\02", [3 x i8] c"S\A0\02", [3 x i8] c"T\1F\02", [3 x i8] c"U#\02", [3 x i8] c"VE\02", [3 x i8] c"Wg\02", [3 x i8] c"X\08\02", [3 x i8] c"Y\08\02", [3 x i8] c"Z\08\02", [3 x i8] c"[\08\02", [3 x i8] c"`\08\02", [3 x i8] c"a\08\02", [3 x i8] c"b\08\02", [3 x i8] c"c\08\02", [3 x i8] c"d\CF\02", [3 x i8] c"[@\00", [3 x i8] c"\84\88\00", [3 x i8] c"\85$\00", [3 x i8] c"\88T\00", [3 x i8] c"\8B\B8\00", [3 x i8] c"\8C\07\00", [3 x i8] c"\8D\00\00", [3 x i8] c"\94\1B\00", [3 x i8] c"\95\12\00", [3 x i8] c"\96\00\00", [3 x i8] c"\97\06\00", [3 x i8] c"\9D\1A\00", [3 x i8] c"\9F\10\00", [3 x i8] c"\B4\22\00", [3 x i8] c"\BE\80\00", [3 x i8] c"\DB\00\00", [3 x i8] c"\EE\00\00", [3 x i8] c"L\00\02", [3 x i8] c"\9F\00\03", [3 x i8] c"\8C\01\00", [3 x i8] c"\8D\10\00", [3 x i8] c"\8E\08\00", [3 x i8] c"\8F\00\00"], [33 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@rtl8187_work.retry = internal global { i16, [30 x i8] } zeroinitializer, align 32
@rtl8187_add_interface.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&vif_priv->beacon_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@rtl8187_add_interface.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&vif_priv->beacon_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rtl8187b_ac_addr = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr inttoptr (i32 65520 to ptr), ptr inttoptr (i32 65524 to ptr), ptr inttoptr (i32 65532 to ptr), ptr inttoptr (i32 65528 to ptr)], [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 167772160, i64 201326592]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 38785, i64 39041]
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"rtl8187_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1675, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1683, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"rtl8187_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 43, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"rtl8187_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1378, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1440, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1453, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1454, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"rtl818x_channels\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 99, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"rtl818x_rates\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 84, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1500, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1540, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1545, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1548, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1562, i32 16 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1566, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1570, i32 16 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1574, i32 16 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1613, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1627, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1632, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 2737, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 205, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1015, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 630, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 646, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [19 x i8] c"rtl8187b_reg_table\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 739, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1367, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1368, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 896, i32 13 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1130, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"rtl8187b_ac_addr\00", align 1
@___asan_gen_.212 = private constant [54 x i8] c"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1184, i32 16 }
@___asan_gen_.214 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1984, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author353, ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_license360, ptr @__exitcall_rtl8187_driver_exit, ptr @__initcall__kmod_rtl8187__364_1683_rtl8187_driver_init6, ptr @rtl8187_cmd_reset._entry, ptr @rtl8187_cmd_reset._entry.37, ptr @rtl8187_cmd_reset._entry_ptr, ptr @rtl8187_cmd_reset._entry_ptr.39, ptr @rtl8187_driver_exit, ptr @rtl8187_probe._entry, ptr @rtl8187_probe._entry.17, ptr @rtl8187_probe._entry.20, ptr @rtl8187_probe._entry.23, ptr @rtl8187_probe._entry.7, ptr @rtl8187_probe._entry_ptr, ptr @rtl8187_probe._entry_ptr.19, ptr @rtl8187_probe._entry_ptr.22, ptr @rtl8187_probe._entry_ptr.27, ptr @rtl8187_probe._entry_ptr.9, ptr @rtl8187_driver, ptr @.str, ptr @rtl8187_table, ptr @rtl8187_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtl8187_probe.__key, ptr @.str.4, ptr @rtl8187_probe.__key.5, ptr @.str.6, ptr @rtl818x_channels, ptr @rtl818x_rates, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @rtl8187_start.__key, ptr @.str.31, ptr @rtl8187_start.__key.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @rtl8187b_reg_table, ptr @init_usb_anchor.__key, ptr @.str.40, ptr @init_usb_anchor.__key.41, ptr @.str.42, ptr @rtl8187_work.retry, ptr @rtl8187_add_interface.__key, ptr @.str.43, ptr @rtl8187_add_interface.__key.44, ptr @.str.45, ptr @rtl8187b_ac_addr, ptr @skb_queue_head_init.__key, ptr @.str.46], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_table to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl818x_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl818x_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_start.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_cmd_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_cmd_reset._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187b_reg_table to i32), i32 255, i32 288, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_work.retry to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_add_interface.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187_add_interface.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187b_ac_addr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8187_write_phy(ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %shl = shl i32 %data, 8
  %2 = or i8 %addr, -128
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %arrayidx = getelementptr %struct.rtl818x_csr, ptr %4, i32 0, i32 42, i32 3
  %shr = lshr i32 %shl, 24
  %conv3 = trunc i32 %shr to i8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx, i8 noundef zeroext %conv3, i8 noundef zeroext 0) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %arrayidx6 = getelementptr %struct.rtl818x_csr, ptr %6, i32 0, i32 42, i32 2
  %shr7 = lshr i32 %shl, 16
  %conv9 = trunc i32 %shr7 to i8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx6, i8 noundef zeroext %conv9, i8 noundef zeroext 0) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %arrayidx12 = getelementptr %struct.rtl818x_csr, ptr %8, i32 0, i32 42, i32 1
  %conv15 = trunc i32 %data to i8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx12, i8 noundef zeroext %conv15, i8 noundef zeroext 0) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %PHY17 = getelementptr inbounds %struct.rtl818x_csr, ptr %10, i32 0, i32 42
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %PHY17, i8 noundef zeroext %2, i8 noundef zeroext 0) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8187_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @rtl8187_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @rtl8187_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl818x_iowrite8_idx(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8187_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %eeprom = alloca %struct.eeprom_93cx6, align 4
  %txpwr = alloca i16, align 2
  %reg = alloca i16, align 2
  %mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %eeprom) #8
  %2 = call ptr @memset(ptr %eeprom, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr) #8
  %3 = ptrtoint ptr %txpwr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %txpwr, align 2, !annotation !124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #8
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %reg, align 2, !annotation !124
  %idProduct = getelementptr i8, ptr %1, i32 938
  %5 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idProduct, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #8
  %7 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %8 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 3456, ptr noundef nonnull @rtl8187_ops, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv3 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv3, align 8
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %11 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  %conv4 = zext i1 %cmp to i8
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 19
  %13 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %is_rtl8187b, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 128) #12
  %io_dmabuf = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 31
  %15 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %io_dmabuf, align 128
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.end.err_free_dev_crit_edge, label %do.body10

if.end.err_free_dev_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dev

do.body10:                                        ; preds = %if.end
  %io_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 29
  tail call void @__mutex_init(ptr noundef %io_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtl8187_probe.__key) #8
  %conf_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %conf_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtl8187_probe.__key.5) #8
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56, i32 1
  %18 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev16, ptr %parent.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %udev17 = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 7
  %20 = ptrtoint ptr %udev17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %udev17, align 4
  %call18 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #8
  %rx_queue = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 21
  %lock.i = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 21, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %21 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rx_queue, ptr %rx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 21, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 21, i32 1
  %23 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %qlen.i.i, align 4
  %channels = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 4
  %24 = call ptr @memcpy(ptr %channels, ptr @rtl818x_channels, i32 784)
  %rates = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 5
  %25 = call ptr @memcpy(ptr %rates, ptr @rtl818x_rates, i32 144)
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 65280 to ptr), ptr %10, align 128
  %band = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 6
  %band26 = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 6, i32 2
  %27 = ptrtoint ptr %band26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %band26, align 8
  %28 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %channels, ptr %band, align 8
  %n_channels = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 6, i32 3
  %29 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 14, ptr %n_channels, align 4
  %bitrates = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rates, ptr %bitrates, align 4
  %n_bitrates = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 6, i32 4
  %31 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 12, ptr %n_bitrates, align 8
  %32 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy.i, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 53
  %34 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %band, ptr %bands, align 16
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %or.i.i351 = or i32 %36, 22
  store i32 %or.i.i351, ptr %flags.i, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 14
  %37 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %max_rates, align 1
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 16
  %38 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 7, ptr %max_rate_tries, align 1
  %39 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %eeprom, align 4
  %register_read = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 1
  %40 = ptrtoint ptr %register_read to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rtl8187_eeprom_register_read, ptr %register_read, align 4
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 2
  %41 = ptrtoint ptr %register_write to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @rtl8187_eeprom_register_write, ptr %register_write, align 4
  %42 = load ptr, ptr %10, align 128
  %RX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %42, i32 0, i32 17
  %call.i352 = tail call i32 @rtl818x_ioread32_idx(ptr noundef %10, ptr noundef %RX_CONF, i8 noundef zeroext 0) #8
  %and = and i32 %call.i352, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool39.not, i32 6, i32 8
  %43 = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 3
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select, ptr %43, align 4
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %10, align 128
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %46, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %10, ptr noundef %EEPROM_CMD, i8 noundef zeroext -64, i8 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #8
  call void @eeprom_93cx6_multiread(ptr noundef nonnull %eeprom, i8 noundef zeroext 7, ptr noundef nonnull %mac_addr, i16 noundef zeroext 3) #8
  %48 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mac_addr, align 4
  %50 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not.i = icmp eq i32 %50, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %do.body10.do.end50_crit_edge

do.body10.do.end50_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

is_valid_ether_addr.exit:                         ; preds = %do.body10
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %7, align 4
  %conv.i.i = zext i16 %52 to i32
  %or.i.i353 = or i32 %49, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i353)
  %cmp.i.i.not = icmp eq i32 %or.i.i353, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end50_crit_edge, label %is_valid_ether_addr.exit.if.end54_crit_edge

is_valid_ether_addr.exit.if.end54_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

is_valid_ether_addr.exit.do.end50_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

do.end50:                                         ; preds = %is_valid_ether_addr.exit.do.end50_crit_edge, %do.body10.do.end50_crit_edge
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @get_random_bytes(ptr noundef nonnull %mac_addr, i32 noundef 6) #8
  %53 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mac_addr, align 4
  %55 = and i8 %54, -4
  %56 = or i8 %55, 2
  store i8 %56, ptr %mac_addr, align 4
  br label %if.end54

if.end54:                                         ; preds = %do.end50, %is_valid_ether_addr.exit.if.end54_crit_edge
  %57 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 1
  %59 = call ptr @memcpy(ptr %perm_addr.i, ptr %mac_addr, i32 6)
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 22, ptr noundef nonnull %txpwr) #8
  %60 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %txpwr, align 2
  %62 = and i16 %61, 255
  %hw_value = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 0, i32 3
  %63 = ptrtoint ptr %hw_value to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %hw_value, align 2
  %64 = lshr i16 %61, 8
  %hw_value67 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 1, i32 3
  %65 = ptrtoint ptr %hw_value67 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %hw_value67, align 2
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 23, ptr noundef nonnull %txpwr) #8
  %66 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %txpwr, align 2
  %68 = and i16 %67, 255
  %hw_value.1 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 2, i32 3
  %69 = ptrtoint ptr %hw_value.1 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %hw_value.1, align 2
  %70 = lshr i16 %67, 8
  %hw_value67.1 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 3, i32 3
  %71 = ptrtoint ptr %hw_value67.1 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %hw_value67.1, align 2
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 24, ptr noundef nonnull %txpwr) #8
  %72 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %txpwr, align 2
  %74 = and i16 %73, 255
  %hw_value.2 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 4, i32 3
  %75 = ptrtoint ptr %hw_value.2 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %hw_value.2, align 2
  %76 = lshr i16 %73, 8
  %hw_value67.2 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 5, i32 3
  %77 = ptrtoint ptr %hw_value67.2 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %hw_value67.2, align 2
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 61, ptr noundef nonnull %txpwr) #8
  %78 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %txpwr, align 2
  %80 = and i16 %79, 255
  %hw_value78 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 6, i32 3
  %81 = ptrtoint ptr %hw_value78 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %hw_value78, align 2
  %82 = lshr i16 %79, 8
  %hw_value83 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 7, i32 3
  %83 = ptrtoint ptr %hw_value83 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %hw_value83, align 2
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 62, ptr noundef nonnull %txpwr) #8
  %84 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %txpwr, align 2
  %86 = and i16 %85, 255
  %hw_value78.1 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 8, i32 3
  %87 = ptrtoint ptr %hw_value78.1 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %hw_value78.1, align 2
  %88 = lshr i16 %85, 8
  %hw_value83.1 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 9, i32 3
  %89 = ptrtoint ptr %hw_value83.1 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %hw_value83.1, align 2
  %txpwr_base = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 17
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 5, ptr noundef %txpwr_base) #8
  %90 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %10, align 128
  %PGSELECT = getelementptr inbounds %struct.rtl818x_csr, ptr %91, i32 0, i32 30
  %call.i355 = call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %10, ptr noundef %PGSELECT, i8 noundef zeroext 0) #8
  %92 = and i8 %call.i355, -2
  %conv91 = zext i8 %92 to i16
  %93 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv91, ptr %reg, align 2
  %94 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %10, align 128
  %PGSELECT93 = getelementptr inbounds %struct.rtl818x_csr, ptr %95, i32 0, i32 30
  %96 = or i8 %call.i355, 1
  call void @rtl818x_iowrite8_idx(ptr noundef %10, ptr noundef %PGSELECT93, i8 noundef zeroext %96, i8 noundef zeroext 0) #8
  %call.i356 = call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %10, ptr noundef nonnull inttoptr (i32 65534 to ptr), i8 noundef zeroext 0) #8
  %97 = and i8 %call.i356, 3
  %asic_rev = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 18
  %98 = ptrtoint ptr %asic_rev to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %asic_rev, align 2
  %99 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %10, align 128
  %PGSELECT101 = getelementptr inbounds %struct.rtl818x_csr, ptr %100, i32 0, i32 30
  call void @rtl818x_iowrite8_idx(ptr noundef %10, ptr noundef %PGSELECT101, i8 noundef zeroext %92, i8 noundef zeroext 0) #8
  %101 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %10, align 128
  %EEPROM_CMD104 = getelementptr inbounds %struct.rtl818x_csr, ptr %102, i32 0, i32 20
  call void @rtl818x_iowrite8_idx(ptr noundef %10, ptr noundef %EEPROM_CMD104, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %103 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool106.not = icmp eq i8 %104, 0
  br i1 %tobool106.not, label %if.then107, label %if.else113

if.then107:                                       ; preds = %if.end54
  %105 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %10, align 128
  %TX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %106, i32 0, i32 16
  %call.i357 = call i32 @rtl818x_ioread32_idx(ptr noundef %10, ptr noundef %TX_CONF, i8 noundef zeroext 0) #8
  %and110 = and i32 %call.i357, 234881024
  %107 = zext i32 %and110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and110, label %sw.default [
    i32 201326592, label %if.end125.thread
    i32 167772160, label %if.then107.if.end125_crit_edge
  ]

if.then107.if.end125_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.end125.thread:                                 ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %is_rtl8187b, align 1
  %hw_rev = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 20
  %109 = ptrtoint ptr %hw_rev to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %hw_rev, align 4
  br label %if.else148

sw.default:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.else113:                                       ; preds = %if.end54
  %call.i358 = call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %10, ptr noundef nonnull inttoptr (i32 65505 to ptr), i8 noundef zeroext 0) #8
  %110 = zext i8 %call.i358 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %call.i358, label %sw.default122 [
    i8 0, label %sw.bb116
    i8 1, label %sw.bb118
    i8 2, label %sw.bb120
  ]

sw.bb116:                                         ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #10
  %hw_rev117 = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 20
  %111 = ptrtoint ptr %hw_rev117 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %hw_rev117, align 4
  br label %if.end125

sw.bb118:                                         ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #10
  %hw_rev119 = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 20
  %112 = ptrtoint ptr %hw_rev119 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %hw_rev119, align 4
  br label %if.end125

sw.bb120:                                         ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #10
  %hw_rev121 = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 20
  %113 = ptrtoint ptr %hw_rev121 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 2, ptr %hw_rev121, align 4
  br label %if.end125

sw.default122:                                    ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #10
  %hw_rev123 = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 20
  %114 = ptrtoint ptr %hw_rev123 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %hw_rev123, align 4
  br label %if.end125

if.end125:                                        ; preds = %sw.default122, %sw.bb120, %sw.bb118, %sw.bb116, %sw.default, %if.then107.if.end125_crit_edge
  %chip_name.1.ph = phi ptr [ @.str.11, %if.then107.if.end125_crit_edge ], [ @.str.12, %sw.default ], [ @.str.13, %sw.bb116 ], [ @.str.14, %sw.bb118 ], [ @.str.15, %sw.bb120 ], [ @.str.16, %sw.default122 ]
  %115 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %115)
  %.pr = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool127.not = icmp eq i8 %.pr, 0
  br i1 %tobool127.not, label %for.body132.preheader, label %if.end125.if.else148_crit_edge

if.end125.if.else148_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else148

for.body132.preheader:                            ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 27, ptr noundef nonnull %txpwr) #8
  %116 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %txpwr, align 2
  %118 = and i16 %117, 255
  %hw_value139 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 10, i32 3
  %119 = ptrtoint ptr %hw_value139 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %hw_value139, align 2
  %120 = lshr i16 %117, 8
  %hw_value144 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 11, i32 3
  %121 = ptrtoint ptr %hw_value144 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %hw_value144, align 2
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 28, ptr noundef nonnull %txpwr) #8
  %122 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %txpwr, align 2
  %124 = and i16 %123, 255
  %hw_value139.1 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 12, i32 3
  %125 = ptrtoint ptr %hw_value139.1 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %hw_value139.1, align 2
  br label %if.end169

if.else148:                                       ; preds = %if.end125.if.else148_crit_edge, %if.end125.thread
  %chip_name.1366 = phi ptr [ @.str.10, %if.end125.thread ], [ %chip_name.1.ph, %if.end125.if.else148_crit_edge ]
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 27, ptr noundef nonnull %txpwr) #8
  %126 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %txpwr, align 2
  %128 = and i16 %127, 255
  %hw_value153 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 10, i32 3
  %129 = ptrtoint ptr %hw_value153 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %hw_value153, align 2
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 10, ptr noundef nonnull %txpwr) #8
  %130 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %txpwr, align 2
  %132 = and i16 %131, 255
  %hw_value158 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 11, i32 3
  %133 = ptrtoint ptr %hw_value158 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %hw_value158, align 2
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 28, ptr noundef nonnull %txpwr) #8
  %134 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %txpwr, align 2
  %136 = and i16 %135, 255
  %hw_value163 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 12, i32 3
  %137 = ptrtoint ptr %hw_value163 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %hw_value163, align 2
  %138 = load i16, ptr %txpwr, align 2
  br label %if.end169

if.end169:                                        ; preds = %if.else148, %for.body132.preheader
  %.sink374 = phi i16 [ %123, %for.body132.preheader ], [ %138, %if.else148 ]
  %chip_name.1365 = phi ptr [ %chip_name.1.ph, %for.body132.preheader ], [ %chip_name.1366, %if.else148 ]
  %139 = lshr i16 %.sink374, 8
  %hw_value144.1 = getelementptr %struct.rtl8187_priv, ptr %10, i32 0, i32 4, i32 13, i32 3
  %140 = ptrtoint ptr %hw_value144.1 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %hw_value144.1, align 2
  %rfkill_mask = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 26
  %141 = ptrtoint ptr %rfkill_mask to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 2, ptr %rfkill_mask, align 1
  %142 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %6, label %if.end169.if.end183_crit_edge [
    i16 -26751, label %if.end169.if.then176_crit_edge
    i16 -26495, label %if.end169.if.then176_crit_edge376
  ]

if.end169.if.then176_crit_edge376:                ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then176

if.end169.if.then176_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then176

if.end169.if.end183_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end183

if.then176:                                       ; preds = %if.end169.if.then176_crit_edge, %if.end169.if.then176_crit_edge376
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 59, ptr noundef nonnull %reg) #8
  %143 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %144)
  %tobool179.not = icmp ult i16 %144, 256
  br i1 %tobool179.not, label %if.then176.if.end183_crit_edge, label %if.then180

if.then176.if.end183_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end183

if.then180:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %rfkill_mask to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 4, ptr %rfkill_mask, align 1
  br label %if.end183

if.end183:                                        ; preds = %if.then180, %if.then176.if.end183_crit_edge, %if.end169.if.end183_crit_edge
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 7
  %146 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 108, ptr %vif_data_size, align 4
  %147 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %wiphy.i, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %148, i32 0, i32 9
  %149 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 6, ptr %interface_modes, align 4
  %150 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %150, i32 0, i32 14, i32 1
  %151 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i, align 1
  %153 = or i8 %152, 32
  store i8 %153, ptr %arrayidx.i, align 1
  %154 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp187 = icmp eq i32 %155, 0
  br i1 %cmp187, label %land.lhs.true, label %if.end183.if.end198_crit_edge

if.end183.if.end198_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

land.lhs.true:                                    ; preds = %if.end183
  %156 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool191.not = icmp eq i8 %157, 0
  br i1 %tobool191.not, label %land.lhs.true.if.end198_crit_edge, label %do.end195

land.lhs.true.if.end198_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

do.end195:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %if.end198

if.end198:                                        ; preds = %do.end195, %land.lhs.true.if.end198_crit_edge, %if.end183.if.end198_crit_edge
  %call199 = call ptr @rtl8187_detect_rf(ptr noundef nonnull %call.i) #8
  %rf = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 1
  %158 = ptrtoint ptr %rf to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call199, ptr %rf, align 4
  %159 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool201.not = icmp eq i8 %160, 0
  %cond = select i1 %tobool201.not, i32 12, i32 32
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 5
  %161 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %cond, ptr %extra_tx_headroom, align 4
  %162 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool203.not = icmp eq i8 %163, 0
  %spec.select375 = select i1 %tobool203.not, i16 1, i16 4
  %164 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 11
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %spec.select375, ptr %164, align 4
  %call208 = call i32 @ieee80211_register_hw(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end216, label %do.end213

do.end213:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  %call215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  %166 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %io_dmabuf, align 128
  call void @kfree(ptr noundef %167) #8
  %168 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %driver_data.i.i, align 4
  call void @usb_put_dev(ptr noundef %add.ptr.i) #8
  br label %err_free_dev

if.end216:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  %queue = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 28, i32 1
  %lock.i360 = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 28, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i360, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %169 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %queue, ptr %queue, align 4
  %prev.i.i361 = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 28, i32 1, i32 0, i32 0, i32 1
  %170 = ptrtoint ptr %prev.i.i361 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %queue, ptr %prev.i.i361, align 4
  %qlen.i.i362 = getelementptr inbounds %struct.rtl8187_priv, ptr %10, i32 0, i32 28, i32 1, i32 1
  %171 = ptrtoint ptr %qlen.i.i362 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %qlen.i.i362, align 4
  %172 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %wiphy.i, align 8
  %dev221 = getelementptr inbounds %struct.wiphy, ptr %173, i32 0, i32 56
  %174 = ptrtoint ptr %asic_rev to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %asic_rev, align 2
  %conv224 = zext i8 %175 to i32
  %176 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rf, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  %180 = ptrtoint ptr %rfkill_mask to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %rfkill_mask, align 1
  %conv227 = zext i8 %181 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev221, ptr noundef nonnull @.str.24, ptr noundef nonnull %mac_addr, ptr noundef nonnull %chip_name.1365, i32 noundef %conv224, ptr noundef %179, i32 noundef %conv227) #11
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 63, ptr noundef nonnull %reg) #8
  %182 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %reg, align 2
  %184 = and i16 %183, 255
  store i16 %184, ptr %reg, align 2
  call void @rtl8187_leds_init(ptr noundef nonnull %call.i, i16 noundef zeroext %184) #8
  call void @rtl8187_rfkill_init(ptr noundef nonnull %call.i) #8
  br label %cleanup

err_free_dev:                                     ; preds = %do.end213, %if.end.err_free_dev_crit_edge
  %err.0 = phi i32 [ %call208, %do.end213 ], [ -12, %if.end.err_free_dev_crit_edge ]
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_dev, %if.end216, %do.end
  %retval.0 = phi i32 [ %err.0, %err_free_dev ], [ 0, %if.end216 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eeprom) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_disconnect(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8187_leds_exit(ptr noundef nonnull %1) #8
  tail call void @rtl8187_rfkill_exit(ptr noundef nonnull %1) #8
  tail call void @ieee80211_unregister_hw(ptr noundef nonnull %1) #8
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %udev = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %call2 = tail call i32 @usb_reset_device(ptr noundef %5) #8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #8
  %io_dmabuf = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %io_dmabuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_dmabuf, align 128
  tail call void @kfree(ptr noundef %9) #8
  tail call void @ieee80211_free_hw(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_eeprom_register_read(ptr nocapture noundef %eeprom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %5, i32 0, i32 20
  %call.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %3, ptr noundef %EEPROM_CMD, i8 noundef zeroext 0) #8
  %and = and i8 %call.i, 2
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %6 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %and, ptr %reg_data_in, align 1
  %and4 = and i8 %call.i, 1
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %7 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %and4, ptr %reg_data_out, align 2
  %and7 = and i8 %call.i, 4
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %8 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and7, ptr %reg_data_clock, align 1
  %9 = and i8 %call.i, 8
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %10 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %reg_chip_select, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_eeprom_register_write(ptr nocapture noundef readonly %eeprom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %4 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_data_in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i8 -128, i8 -126
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %6 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_data_out, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp ne i8 %7, 0
  %8 = zext i1 %tobool3.not to i8
  %reg.1 = or i8 %spec.select, %8
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %9 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg_data_clock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  %11 = or i8 %reg.1, 4
  %reg.2 = select i1 %tobool9.not, i8 %reg.1, i8 %11
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %12 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  %14 = or i8 %reg.2, 8
  %reg.3 = select i1 %tobool15.not, i8 %reg.2, i8 %14
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 128
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %16, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %3, ptr noundef %EEPROM_CMD, i8 noundef zeroext %reg.3, i8 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_multiread(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtl8187_detect_rf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8187_leds_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8187_rfkill_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_tx(ptr noundef %dev, ptr nocapture noundef readnone %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp slt i8 %8, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge, label %if.then.i, !prof !125

land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_tx_rate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 2737, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_get_tx_rate.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %10, i32 0, i32 53, i32 %bf.lshr.i
  %12 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %8 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %15, i32 %idxprom51.i
  br label %ieee80211_get_tx_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %if.end39.i, %if.then.i, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx44.i, %if.end39.i ], [ null, %if.then.i ], [ null, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge ]
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %17 to i32
  %shl = shl i32 %conv, 24
  %or = or i32 %shl, %5
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %3, align 2
  %20 = and i16 %19, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i194.not = icmp eq i16 %20, 0
  %spec.select.v = select i1 %cmp.i194.not, i32 32768, i32 163840
  %spec.select = or i32 %or, %spec.select.v
  %flags9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %21 = ptrtoint ptr %flags9 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %bf.load = load i16, ptr %flags9, align 1
  %bf.clear = and i16 %bf.load, 2047
  %conv10 = zext i16 %bf.clear to i32
  %and = and i32 %conv10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %ieee80211_get_tx_rate.exit
  %rts_cts_rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %22 = ptrtoint ptr %rts_cts_rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rts_cts_rate_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i195 = icmp slt i8 %23, 0
  br i1 %cmp.i195, label %if.then12.ieee80211_get_rts_cts_rate.exit_crit_edge, label %if.end.i

if.then12.ieee80211_get_rts_cts_rate.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_rts_cts_rate.exit

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i = zext i8 %23 to i32
  %wiphy.i196 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %24 = ptrtoint ptr %wiphy.i196 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wiphy.i196, align 8
  %band.i197 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %band.i197 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i198 = load i32, ptr %band.i197, align 4
  %bf.lshr.i199 = lshr i32 %bf.load.i198, 29
  %arrayidx.i = getelementptr %struct.wiphy, ptr %25, i32 0, i32 53, i32 %bf.lshr.i199
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %bitrates.i200 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bitrates.i200 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bitrates.i200, align 4
  %arrayidx3.i = getelementptr %struct.ieee80211_rate, ptr %30, i32 %conv6.i
  br label %ieee80211_get_rts_cts_rate.exit

ieee80211_get_rts_cts_rate.exit:                  ; preds = %if.end.i, %if.then12.ieee80211_get_rts_cts_rate.exit_crit_edge
  %retval.0.i201 = phi ptr [ %arrayidx3.i, %if.end.i ], [ null, %if.then12.ieee80211_get_rts_cts_rate.exit_crit_edge ]
  %hw_value15 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i201, i32 0, i32 2
  %31 = ptrtoint ptr %hw_value15 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hw_value15, align 2
  %conv16 = zext i16 %32 to i32
  %shl17 = shl i32 %conv16, 19
  %or13 = or i32 %spec.select, %shl17
  %or18 = or i32 %or13, 8388608
  %vif = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vif, align 8
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %call20 = tail call zeroext i16 @ieee80211_rts_duration(ptr noundef %dev, ptr noundef %34, i32 noundef %36, ptr noundef %cb.i) #8
  br label %if.end40

if.else:                                          ; preds = %ieee80211_get_tx_rate.exit
  %and27 = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else.if.end40_crit_edge, label %if.then29

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then29:                                        ; preds = %if.else
  %rts_cts_rate_idx.i202 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %37 = ptrtoint ptr %rts_cts_rate_idx.i202 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rts_cts_rate_idx.i202, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.i203 = icmp slt i8 %38, 0
  br i1 %cmp.i203, label %if.then29.ieee80211_get_rts_cts_rate.exit214_crit_edge, label %if.end.i212

if.then29.ieee80211_get_rts_cts_rate.exit214_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_rts_cts_rate.exit214

if.end.i212:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i204 = zext i8 %38 to i32
  %wiphy.i205 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %39 = ptrtoint ptr %wiphy.i205 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wiphy.i205, align 8
  %band.i206 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %band.i206 to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load.i207 = load i32, ptr %band.i206, align 4
  %bf.lshr.i208 = lshr i32 %bf.load.i207, 29
  %arrayidx.i209 = getelementptr %struct.wiphy, ptr %40, i32 0, i32 53, i32 %bf.lshr.i208
  %42 = ptrtoint ptr %arrayidx.i209 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i209, align 4
  %bitrates.i210 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %bitrates.i210 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bitrates.i210, align 4
  %arrayidx3.i211 = getelementptr %struct.ieee80211_rate, ptr %45, i32 %conv6.i204
  br label %ieee80211_get_rts_cts_rate.exit214

ieee80211_get_rts_cts_rate.exit214:               ; preds = %if.end.i212, %if.then29.ieee80211_get_rts_cts_rate.exit214_crit_edge
  %retval.0.i213 = phi ptr [ %arrayidx3.i211, %if.end.i212 ], [ null, %if.then29.ieee80211_get_rts_cts_rate.exit214_crit_edge ]
  %hw_value32 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i213, i32 0, i32 2
  %46 = ptrtoint ptr %hw_value32 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hw_value32, align 2
  %conv33 = zext i16 %47 to i32
  %shl34 = shl i32 %conv33, 19
  %or30 = or i32 %spec.select, %shl34
  %or35 = or i32 %or30, 8650752
  %vif36 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %vif36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vif36, align 8
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %call38 = tail call zeroext i16 @ieee80211_ctstoself_duration(ptr noundef %dev, ptr noundef %49, i32 noundef %51, ptr noundef %cb.i) #8
  br label %if.end40

if.end40:                                         ; preds = %ieee80211_get_rts_cts_rate.exit214, %if.else.if.end40_crit_edge, %ieee80211_get_rts_cts_rate.exit
  %rts_dur.0 = phi i16 [ %call20, %ieee80211_get_rts_cts_rate.exit ], [ %call38, %ieee80211_get_rts_cts_rate.exit214 ], [ 0, %if.else.if.end40_crit_edge ]
  %flags.1 = phi i32 [ %or18, %ieee80211_get_rts_cts_rate.exit ], [ %or35, %ieee80211_get_rts_cts_rate.exit214 ], [ %spec.select, %if.else.if.end40_crit_edge ]
  %52 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cb.i, align 8
  %and42 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end61_crit_edge, label %if.then44

if.end40.if.end61_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then44:                                        ; preds = %if.end40
  %and46 = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then44.if.end51_crit_edge, label %if.then48

if.then44.if.end51_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %seqno = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 33
  %54 = ptrtoint ptr %seqno to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %seqno, align 2
  %add = add i16 %55, 16
  store i16 %add, ptr %seqno, align 2
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then44.if.end51_crit_edge
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 5
  %56 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %seq_ctrl, align 2
  %58 = and i16 %57, 3840
  store i16 %58, ptr %seq_ctrl, align 2
  %seqno55 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 33
  %59 = ptrtoint ptr %seqno55 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %seqno55, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %or59193 = or i16 %61, %58
  %62 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %or59193, ptr %seq_ctrl, align 2
  br label %if.end61

if.end61:                                         ; preds = %if.end51, %if.end40.if.end61_crit_edge
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 19
  %63 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool62.not = icmp eq i8 %64, 0
  br i1 %tobool62.not, label %if.then63, label %if.else72

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #8
  %65 = tail call i32 @llvm.bswap.i32(i32 %flags.1)
  %66 = ptrtoint ptr %call64 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %call64, align 1
  %len66 = getelementptr inbounds %struct.rtl8187_tx_hdr, ptr %call64, i32 0, i32 2
  %67 = ptrtoint ptr %len66 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 0, ptr %len66, align 1
  %rts_duration = getelementptr inbounds %struct.rtl8187_tx_hdr, ptr %call64, i32 0, i32 1
  %68 = ptrtoint ptr %rts_duration to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %rts_dur.0, ptr %rts_duration, align 1
  %69 = ptrtoint ptr %flags9 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %bf.load69 = load i16, ptr %flags9, align 1
  %70 = lshr i16 %bf.load69, 3
  %71 = and i16 %70, 7936
  %sub = zext i16 %71 to i32
  %shl71 = add nsw i32 %sub, -256
  %72 = tail call i32 @llvm.bswap.i32(i32 %shl71)
  %retry = getelementptr inbounds %struct.rtl8187_tx_hdr, ptr %call64, i32 0, i32 3
  %73 = ptrtoint ptr %retry to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %retry, align 1
  br label %if.end101

if.else72:                                        ; preds = %if.end61
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %3, align 2
  %call75 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 32) #8
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp.i215 = icmp slt i8 %77, 0
  br i1 %cmp.i215, label %land.rhs.i217, label %if.end39.i227

land.rhs.i217:                                    ; preds = %if.else72
  %.b49.i216 = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i216, label %land.rhs.i217.ieee80211_get_tx_rate.exit229_crit_edge, label %if.then.i218, !prof !125

land.rhs.i217.ieee80211_get_tx_rate.exit229_crit_edge: ; preds = %land.rhs.i217
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_tx_rate.exit229

if.then.i218:                                     ; preds = %land.rhs.i217
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 2737, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_get_tx_rate.exit229

if.end39.i227:                                    ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i219 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %78 = ptrtoint ptr %wiphy.i219 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wiphy.i219, align 8
  %band.i220 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %80 = ptrtoint ptr %band.i220 to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load.i221 = load i32, ptr %band.i220, align 4
  %bf.lshr.i222 = lshr i32 %bf.load.i221, 29
  %arrayidx40.i223 = getelementptr %struct.wiphy, ptr %79, i32 0, i32 53, i32 %bf.lshr.i222
  %81 = ptrtoint ptr %arrayidx40.i223 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx40.i223, align 4
  %bitrates.i224 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %bitrates.i224 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bitrates.i224, align 4
  %idxprom51.i225 = zext i8 %77 to i32
  %arrayidx44.i226 = getelementptr %struct.ieee80211_rate, ptr %84, i32 %idxprom51.i225
  br label %ieee80211_get_tx_rate.exit229

ieee80211_get_tx_rate.exit229:                    ; preds = %if.end39.i227, %if.then.i218, %land.rhs.i217.ieee80211_get_tx_rate.exit229_crit_edge
  %retval.0.i228 = phi ptr [ %arrayidx44.i226, %if.end39.i227 ], [ null, %if.then.i218 ], [ null, %land.rhs.i217.ieee80211_get_tx_rate.exit229_crit_edge ]
  %85 = getelementptr inbounds i8, ptr %call75, i32 6
  %86 = call ptr @memset(ptr %85, i32 0, i32 26)
  %87 = tail call i32 @llvm.bswap.i32(i32 %flags.1)
  %88 = ptrtoint ptr %call75 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %call75, align 1
  %rts_duration78 = getelementptr inbounds %struct.rtl8187b_tx_hdr, ptr %call75, i32 0, i32 1
  %89 = ptrtoint ptr %rts_duration78 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %rts_dur.0, ptr %rts_duration78, align 1
  %90 = ptrtoint ptr %flags9 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %bf.load82 = load i16, ptr %flags9, align 1
  %91 = lshr i16 %bf.load82, 3
  %92 = and i16 %91, 7936
  %sub85 = zext i16 %92 to i32
  %shl86 = add nsw i32 %sub85, -256
  %93 = tail call i32 @llvm.bswap.i32(i32 %shl86)
  %retry87 = getelementptr inbounds %struct.rtl8187b_tx_hdr, ptr %call75, i32 0, i32 7
  %94 = ptrtoint ptr %retry87 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %93, ptr %retry87, align 1
  %vif88 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 2
  %95 = ptrtoint ptr %vif88 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vif88, align 8
  %band = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %97 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %97)
  %bf.load89 = load i32, ptr %band, align 4
  %bf.lshr90 = lshr i32 %bf.load89, 29
  %98 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len, align 4
  %call92 = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %dev, ptr noundef %96, i32 noundef %bf.lshr90, i32 noundef %99, ptr noundef %retval.0.i228) #8
  %tx_duration = getelementptr inbounds %struct.rtl8187b_tx_hdr, ptr %call75, i32 0, i32 5
  %100 = ptrtoint ptr %tx_duration to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %call92, ptr %tx_duration, align 1
  %101 = and i16 %75, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %cmp = icmp eq i16 %101, 0
  br i1 %cmp, label %ieee80211_get_tx_rate.exit229.if.end101_crit_edge, label %if.else97

ieee80211_get_tx_rate.exit229.if.end101_crit_edge: ; preds = %ieee80211_get_tx_rate.exit229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.else97:                                        ; preds = %ieee80211_get_tx_rate.exit229
  call void @__sanitizer_cov_trace_pc() #10
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %102 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %queue_mapping.i, align 8
  %idxprom = zext i16 %103 to i32
  %arrayidx99 = getelementptr [4 x i32], ptr @__const.rtl8187_tx.epmap, i32 0, i32 %idxprom
  %104 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx99, align 4
  %phi.bo = shl i32 %105, 15
  %phi.bo230 = or i32 %phi.bo, -1073741824
  br label %if.end101

if.end101:                                        ; preds = %if.else97, %ieee80211_get_tx_rate.exit229.if.end101_crit_edge, %if.then63
  %buf.0 = phi ptr [ %call64, %if.then63 ], [ %call75, %ieee80211_get_tx_rate.exit229.if.end101_crit_edge ], [ %call75, %if.else97 ]
  %ep.1 = phi i32 [ -1073676288, %if.then63 ], [ -1073348608, %ieee80211_get_tx_rate.exit229.if.end101_crit_edge ], [ %phi.bo230, %if.else97 ]
  %rate_driver_data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %106 = ptrtoint ptr %rate_driver_data to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %dev, ptr %rate_driver_data, align 8
  %arrayidx104 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %107 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call2, ptr %arrayidx104, align 4
  %udev = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %108 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %udev, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 8
  %shl.i = shl i32 %111, 8
  %or107 = or i32 %ep.1, %shl.i
  %112 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 8
  %114 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %109, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 10
  %115 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or107, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 14
  %116 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %buf.0, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 19
  %117 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %113, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 28
  %118 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @rtl8187_tx_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 27
  %119 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %skb, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 13
  %120 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %transfer_flags, align 4
  %or109 = or i32 %121, 64
  store i32 %or109, ptr %transfer_flags, align 4
  %anchored = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 9
  tail call void @usb_anchor_urb(ptr noundef nonnull %call2, ptr noundef %anchored) #8
  %call110 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call2, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.end101.if.end114_crit_edge

if.end101.if.end114_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then113:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call2) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end101.if.end114_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8187_start(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  tail call fastcc void @rtl8187_set_anaparam(ptr noundef %5, i1 noundef zeroext true) #8
  br i1 %tobool.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %8 = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 15
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %8, i16 noundef zeroext 0, i8 noundef zeroext 0) #8
  tail call void @msleep(i32 noundef 200) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65048 to ptr), i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65048 to ptr), i8 noundef zeroext 17, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65048 to ptr), i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  tail call void @msleep(i32 noundef 200) #8
  %call.i = tail call fastcc i32 @rtl8187_cmd_reset(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.true.rtl8187_start_exit_crit_edge

cond.true.rtl8187_start_exit_crit_edge:           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8187_start_exit

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8187_set_anaparam(ptr noundef %5, i1 noundef zeroext true) #8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 128
  %RFPinsSelect.i = getelementptr inbounds %struct.rtl818x_csr, ptr %10, i32 0, i32 45
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsSelect.i, i16 noundef zeroext 0, i8 noundef zeroext 0) #8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 128
  %GPIO0.i = getelementptr inbounds %struct.rtl818x_csr, ptr %12, i32 0, i32 50
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %GPIO0.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 128
  %RFPinsSelect5.i = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 45
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsSelect5.i, i16 noundef zeroext 1024, i8 noundef zeroext 0) #8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 128
  %GPIO07.i = getelementptr inbounds %struct.rtl818x_csr, ptr %16, i32 0, i32 50
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %GPIO07.i, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 128
  %GP_ENABLE.i = getelementptr inbounds %struct.rtl818x_csr, ptr %18, i32 0, i32 49
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %GP_ENABLE.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 128
  %EEPROM_CMD.i = getelementptr inbounds %struct.rtl818x_csr, ptr %20, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %EEPROM_CMD.i, i8 noundef zeroext -64, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65524 to ptr), i16 noundef zeroext -1, i8 noundef zeroext 0) #8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 128
  %CONFIG1.i = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 22
  %call.i.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %5, ptr noundef %CONFIG1.i, i8 noundef zeroext 0) #8
  %23 = and i8 %call.i.i, 63
  %24 = or i8 %23, -128
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 128
  %CONFIG116.i = getelementptr inbounds %struct.rtl818x_csr, ptr %26, i32 0, i32 22
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %CONFIG116.i, i8 noundef zeroext %24, i8 noundef zeroext 0) #8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 128
  %EEPROM_CMD18.i = getelementptr inbounds %struct.rtl818x_csr, ptr %28, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %EEPROM_CMD18.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 128
  %INT_TIMEOUT.i = getelementptr inbounds %struct.rtl818x_csr, ptr %30, i32 0, i32 18
  tail call void @rtl818x_iowrite32_idx(ptr noundef %5, ptr noundef %INT_TIMEOUT.i, i32 noundef 0, i8 noundef zeroext 0) #8
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 128
  %WPA_CONF.i = getelementptr inbounds %struct.rtl818x_csr, ptr %32, i32 0, i32 60
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %WPA_CONF.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 128
  %RATE_FALLBACK.i = getelementptr inbounds %struct.rtl818x_csr, ptr %34, i32 0, i32 68
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %RATE_FALLBACK.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 128
  %37 = getelementptr inbounds %struct.rtl818x_csr, ptr %36, i32 0, i32 11
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %37, i8 noundef zeroext -128, i8 noundef zeroext 0) #8
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 128
  %40 = getelementptr inbounds %struct.rtl818x_csr, ptr %39, i32 0, i32 9
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %40, i16 noundef zeroext 499, i8 noundef zeroext 0) #8
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 128
  %RFPinsSelect25.i = getelementptr inbounds %struct.rtl818x_csr, ptr %42, i32 0, i32 45
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsSelect25.i, i16 noundef zeroext 0, i8 noundef zeroext 0) #8
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 128
  %GPIO027.i = getelementptr inbounds %struct.rtl818x_csr, ptr %44, i32 0, i32 50
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %GPIO027.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %call.i156.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65107 to ptr), i8 noundef zeroext 0) #8
  %45 = or i8 %call.i156.i, -128
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65107 to ptr), i8 noundef zeroext %45, i8 noundef zeroext 0) #8
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %5, align 128
  %RFPinsSelect33.i = getelementptr inbounds %struct.rtl818x_csr, ptr %47, i32 0, i32 45
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsSelect33.i, i16 noundef zeroext 1024, i8 noundef zeroext 0) #8
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 128
  %GPIO035.i = getelementptr inbounds %struct.rtl818x_csr, ptr %49, i32 0, i32 50
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %GPIO035.i, i8 noundef zeroext 32, i8 noundef zeroext 0) #8
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 128
  %GP_ENABLE37.i = getelementptr inbounds %struct.rtl818x_csr, ptr %51, i32 0, i32 49
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %GP_ENABLE37.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %5, align 128
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %53, i32 0, i32 43
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsOutput.i, i16 noundef zeroext 128, i8 noundef zeroext 0) #8
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 128
  %RFPinsSelect40.i = getelementptr inbounds %struct.rtl818x_csr, ptr %55, i32 0, i32 45
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsSelect40.i, i16 noundef zeroext 128, i8 noundef zeroext 0) #8
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 128
  %RFPinsEnable.i = getelementptr inbounds %struct.rtl818x_csr, ptr %57, i32 0, i32 44
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsEnable.i, i16 noundef zeroext 128, i8 noundef zeroext 0) #8
  tail call void @msleep(i32 noundef 100) #8
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 128
  %RF_TIMING.i = getelementptr inbounds %struct.rtl818x_csr, ptr %59, i32 0, i32 48
  tail call void @rtl818x_iowrite32_idx(ptr noundef %5, ptr noundef %RF_TIMING.i, i32 noundef 688136, i8 noundef zeroext 0) #8
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %5, align 128
  %62 = getelementptr inbounds %struct.rtl818x_csr, ptr %61, i32 0, i32 9
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %62, i16 noundef zeroext -1, i8 noundef zeroext 0) #8
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 128
  %RF_PARA.i = getelementptr inbounds %struct.rtl818x_csr, ptr %64, i32 0, i32 47
  tail call void @rtl818x_iowrite32_idx(ptr noundef %5, ptr noundef %RF_PARA.i, i32 noundef 1048644, i8 noundef zeroext 0) #8
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %5, align 128
  %EEPROM_CMD46.i = getelementptr inbounds %struct.rtl818x_csr, ptr %66, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %EEPROM_CMD46.i, i8 noundef zeroext -64, i8 noundef zeroext 0) #8
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 128
  %CONFIG3.i = getelementptr inbounds %struct.rtl818x_csr, ptr %68, i32 0, i32 26
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %CONFIG3.i, i8 noundef zeroext 68, i8 noundef zeroext 0) #8
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %5, align 128
  %EEPROM_CMD49.i = getelementptr inbounds %struct.rtl818x_csr, ptr %70, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %EEPROM_CMD49.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %5, align 128
  %RFPinsEnable51.i = getelementptr inbounds %struct.rtl818x_csr, ptr %72, i32 0, i32 44
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsEnable51.i, i16 noundef zeroext 8183, i8 noundef zeroext 0) #8
  tail call void @msleep(i32 noundef 100) #8
  %rf.i = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 1
  %73 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rf.i, align 4
  %init.i = getelementptr inbounds %struct.rtl818x_rf_ops, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init.i, align 4
  tail call void %76(ptr noundef %dev) #8
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %5, align 128
  %79 = getelementptr inbounds %struct.rtl818x_csr, ptr %78, i32 0, i32 9
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %79, i16 noundef zeroext 499, i8 noundef zeroext 0) #8
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %5, align 128
  %PGSELECT.i = getelementptr inbounds %struct.rtl818x_csr, ptr %81, i32 0, i32 30
  %call.i157.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %5, ptr noundef %PGSELECT.i, i8 noundef zeroext 0) #8
  %82 = and i8 %call.i157.i, -2
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %5, align 128
  %PGSELECT59.i = getelementptr inbounds %struct.rtl818x_csr, ptr %84, i32 0, i32 30
  %85 = or i8 %call.i157.i, 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %PGSELECT59.i, i8 noundef zeroext %85, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65534 to ptr), i16 noundef zeroext 16, i8 noundef zeroext 0) #8
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %5, align 128
  %88 = getelementptr inbounds %struct.rtl818x_csr, ptr %87, i32 0, i32 86
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %88, i8 noundef zeroext -128, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65535 to ptr), i8 noundef zeroext 96, i8 noundef zeroext 0) #8
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %5, align 128
  %PGSELECT65.i = getelementptr inbounds %struct.rtl818x_csr, ptr %90, i32 0, i32 30
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %PGSELECT65.i, i8 noundef zeroext %82, i8 noundef zeroext 0) #8
  br label %if.end

cond.false:                                       ; preds = %entry
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65377 to ptr), i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  %call.i.i155 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65378 to ptr), i8 noundef zeroext 0) #8
  %and.i = and i8 %call.i.i155, -33
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65378 to ptr), i8 noundef zeroext %and.i, i8 noundef zeroext 0) #8
  %91 = or i8 %call.i.i155, 32
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65378 to ptr), i8 noundef zeroext %91, i8 noundef zeroext 0) #8
  %call5.i = tail call fastcc i32 @rtl8187_cmd_reset(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i156 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i156, label %if.end.i161, label %cond.false.rtl8187_start_exit_crit_edge

cond.false.rtl8187_start_exit_crit_edge:          ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8187_start_exit

if.end.i161:                                      ; preds = %cond.false
  tail call fastcc void @rtl8187_set_anaparam(ptr noundef %5, i1 noundef zeroext true) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65332 to ptr), i16 noundef zeroext 4095, i8 noundef zeroext 0) #8
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %5, align 128
  %CW_CONF.i = getelementptr inbounds %struct.rtl818x_csr, ptr %93, i32 0, i32 66
  %call.i147.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %5, ptr noundef %CW_CONF.i, i8 noundef zeroext 0) #8
  %94 = or i8 %call.i147.i, 2
  %95 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %5, align 128
  %CW_CONF11.i = getelementptr inbounds %struct.rtl818x_csr, ptr %96, i32 0, i32 66
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %CW_CONF11.i, i8 noundef zeroext %94, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65504 to ptr), i16 noundef zeroext 4095, i8 noundef zeroext 1) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65506 to ptr), i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65492 to ptr), i16 noundef zeroext -1, i8 noundef zeroext 1) #8
  %97 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %5, align 128
  %EEPROM_CMD.i157 = getelementptr inbounds %struct.rtl818x_csr, ptr %98, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %EEPROM_CMD.i157, i8 noundef zeroext -64, i8 noundef zeroext 0) #8
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %5, align 128
  %CONFIG1.i158 = getelementptr inbounds %struct.rtl818x_csr, ptr %100, i32 0, i32 22
  %call.i148.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %5, ptr noundef %CONFIG1.i158, i8 noundef zeroext 0) #8
  %101 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %5, align 128
  %CONFIG116.i159 = getelementptr inbounds %struct.rtl818x_csr, ptr %102, i32 0, i32 22
  %103 = and i8 %call.i148.i, 63
  %104 = or i8 %103, -128
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %CONFIG116.i159, i8 noundef zeroext %104, i8 noundef zeroext 0) #8
  %105 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %5, align 128
  %EEPROM_CMD22.i = getelementptr inbounds %struct.rtl818x_csr, ptr %106, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %EEPROM_CMD22.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %5, align 128
  %WPA_CONF.i160 = getelementptr inbounds %struct.rtl818x_csr, ptr %108, i32 0, i32 60
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %WPA_CONF.i160, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i161
  %i.0150.i = phi i32 [ 0, %if.end.i161 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [85 x [3 x i8]], ptr @rtl8187b_reg_table, i32 0, i32 %i.0150.i
  %109 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i, align 1
  %conv26.i = zext i8 %110 to i32
  %or27.i = or i32 %conv26.i, 65280
  %111 = inttoptr i32 %or27.i to ptr
  %arrayidx29.i = getelementptr [85 x [3 x i8]], ptr @rtl8187b_reg_table, i32 0, i32 %i.0150.i, i32 1
  %112 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx31.i = getelementptr [85 x [3 x i8]], ptr @rtl8187b_reg_table, i32 0, i32 %i.0150.i, i32 2
  %114 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx31.i, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull %111, i8 noundef zeroext %113, i8 noundef zeroext %115) #8
  %inc.i = add nuw nsw i32 %i.0150.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 85
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %5, align 128
  %TID_AC_MAP.i = getelementptr inbounds %struct.rtl818x_csr, ptr %117, i32 0, i32 80
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %TID_AC_MAP.i, i16 noundef zeroext -1456, i8 noundef zeroext 0) #8
  %118 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %5, align 128
  %INT_MIG.i = getelementptr inbounds %struct.rtl818x_csr, ptr %119, i32 0, i32 78
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %INT_MIG.i, i16 noundef zeroext 0, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite32_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65520 to ptr), i32 noundef 0, i8 noundef zeroext 1) #8
  tail call void @rtl818x_iowrite32_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65524 to ptr), i32 noundef 0, i8 noundef zeroext 1) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65528 to ptr), i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %120 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %5, align 128
  %RF_TIMING.i162 = getelementptr inbounds %struct.rtl818x_csr, ptr %121, i32 0, i32 48
  tail call void @rtl818x_iowrite32_idx(ptr noundef %5, ptr noundef %RF_TIMING.i162, i32 noundef 16385, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65394 to ptr), i16 noundef zeroext 22170, i8 noundef zeroext 2) #8
  %122 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %5, align 128
  %RFPinsOutput.i163 = getelementptr inbounds %struct.rtl818x_csr, ptr %123, i32 0, i32 43
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsOutput.i163, i16 noundef zeroext 1152, i8 noundef zeroext 0) #8
  %124 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %5, align 128
  %RFPinsSelect.i164 = getelementptr inbounds %struct.rtl818x_csr, ptr %125, i32 0, i32 45
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsSelect.i164, i16 noundef zeroext 9352, i8 noundef zeroext 0) #8
  %126 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %5, align 128
  %RFPinsEnable.i165 = getelementptr inbounds %struct.rtl818x_csr, ptr %127, i32 0, i32 44
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %RFPinsEnable.i165, i16 noundef zeroext 8191, i8 noundef zeroext 0) #8
  tail call void @msleep(i32 noundef 100) #8
  %rf.i166 = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 1
  %128 = ptrtoint ptr %rf.i166 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rf.i166, align 4
  %init.i167 = getelementptr inbounds %struct.rtl818x_rf_ops, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %init.i167 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %init.i167, align 4
  tail call void %131(ptr noundef %dev) #8
  %132 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %5, align 128
  %CMD.i = getelementptr inbounds %struct.rtl818x_csr, ptr %133, i32 0, i32 13
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %CMD.i, i8 noundef zeroext 12, i8 noundef zeroext 0) #8
  %134 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %5, align 128
  %136 = getelementptr inbounds %struct.rtl818x_csr, ptr %135, i32 0, i32 15
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef %136, i16 noundef zeroext -1, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65089 to ptr), i8 noundef zeroext -12, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65088 to ptr), i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65090 to ptr), i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65090 to ptr), i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65088 to ptr), i8 noundef zeroext 15, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65090 to ptr), i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65090 to ptr), i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %call.i149.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65499 to ptr), i8 noundef zeroext 0) #8
  %137 = or i8 %call.i149.i, 4
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65499 to ptr), i8 noundef zeroext %137, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65394 to ptr), i16 noundef zeroext 23034, i8 noundef zeroext 3) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65396 to ptr), i16 noundef zeroext 22994, i8 noundef zeroext 3) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65398 to ptr), i16 noundef zeroext 22994, i8 noundef zeroext 3) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65400 to ptr), i16 noundef zeroext 6650, i8 noundef zeroext 3) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65402 to ptr), i16 noundef zeroext 6650, i8 noundef zeroext 3) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65404 to ptr), i16 noundef zeroext 208, i8 noundef zeroext 3) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65377 to ptr), i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65408 to ptr), i8 noundef zeroext 15, i8 noundef zeroext 1) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65411 to ptr), i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65498 to ptr), i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65357 to ptr), i8 noundef zeroext 8, i8 noundef zeroext 2) #8
  %138 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %5, align 128
  %HSSI_PARA.i = getelementptr inbounds %struct.rtl818x_csr, ptr %139, i32 0, i32 53
  tail call void @rtl818x_iowrite32_idx(ptr noundef %5, ptr noundef %HSSI_PARA.i, i32 noundef 100676123, i8 noundef zeroext 0) #8
  tail call void @rtl818x_iowrite16_idx(ptr noundef %5, ptr noundef nonnull inttoptr (i32 65516 to ptr), i16 noundef zeroext 2048, i8 noundef zeroext 1) #8
  %slot_time.i = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 24
  %140 = ptrtoint ptr %slot_time.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 9, ptr %slot_time.i, align 2
  %aifsn.i = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 25
  %141 = ptrtoint ptr %aifsn.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 2, ptr %aifsn.i, align 1
  %arrayidx47.i = getelementptr %struct.rtl8187_priv, ptr %5, i32 0, i32 25, i32 1
  %142 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 2, ptr %arrayidx47.i, align 1
  %arrayidx49.i = getelementptr %struct.rtl8187_priv, ptr %5, i32 0, i32 25, i32 2
  %143 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 7, ptr %arrayidx49.i, align 1
  %arrayidx51.i = getelementptr %struct.rtl8187_priv, ptr %5, i32 0, i32 25, i32 3
  %144 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 3, ptr %arrayidx51.i, align 1
  %145 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %5, align 128
  %ACM_CONTROL.i = getelementptr inbounds %struct.rtl818x_csr, ptr %146, i32 0, i32 69
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %ACM_CONTROL.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %147 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %5, align 128
  %MSR.i = getelementptr inbounds %struct.rtl818x_csr, ptr %148, i32 0, i32 25
  tail call void @rtl818x_iowrite8_idx(ptr noundef %5, ptr noundef %MSR.i, i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  br label %if.end

if.end:                                           ; preds = %for.end.i, %if.end.i
  %anchored = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 9
  %149 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 9, i32 1
  %150 = call ptr @memset(ptr %149, i32 0, i32 104)
  %151 = ptrtoint ptr %anchored to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %anchored, ptr %anchored, align 4
  %prev.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %anchored, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %149, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_usb_anchor.__key) #8
  %lock.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_usb_anchor.__key.41, i16 noundef signext 3) #8
  %dev4 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 11
  %153 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %dev, ptr %dev4, align 64
  %154 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool6.not = icmp eq i8 %155, 0
  br i1 %tobool6.not, label %if.end25, label %if.then7

if.then7:                                         ; preds = %if.end
  %rx_conf = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 8
  %156 = ptrtoint ptr %rx_conf to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -1869284342, ptr %rx_conf, align 8
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 128
  %RX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %158, i32 0, i32 17
  tail call void @rtl818x_iowrite32_idx(ptr noundef %1, ptr noundef %RX_CONF, i32 noundef -1869284342, i8 noundef zeroext 0) #8
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 128
  %TX_AGC_CTL = getelementptr inbounds %struct.rtl818x_csr, ptr %160, i32 0, i32 55
  %call.i168 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %TX_AGC_CTL, i8 noundef zeroext 0) #8
  %161 = and i8 %call.i168, -8
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 128
  %TX_AGC_CTL13 = getelementptr inbounds %struct.rtl818x_csr, ptr %163, i32 0, i32 55
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %TX_AGC_CTL13, i8 noundef zeroext %161, i8 noundef zeroext 0) #8
  %164 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %1, align 128
  %TX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %165, i32 0, i32 16
  tail call void @rtl818x_iowrite32_idx(ptr noundef %1, ptr noundef %TX_CONF, i32 noundef 1356859143, i8 noundef zeroext 0) #8
  %call16 = tail call fastcc i32 @rtl8187_init_urbs(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then7.rtl8187_start_exit_crit_edge

if.then7.rtl8187_start_exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8187_start_exit

if.end19:                                         ; preds = %if.then7
  %166 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %priv1, align 8
  %call.i170 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %tobool.not.i171 = icmp eq ptr %call.i170, null
  br i1 %tobool.not.i171, label %if.end19.if.then22_crit_edge, label %if.end.i172

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.end.i172:                                      ; preds = %if.end19
  %udev.i = getelementptr inbounds %struct.rtl8187_priv, ptr %167, i32 0, i32 7
  %168 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %udev.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 8
  %shl.i.i = shl i32 %171, 8
  %or5.i = or i32 %shl.i.i, -1073446784
  %b_tx_status.i = getelementptr inbounds %struct.rtl8187_priv, ptr %167, i32 0, i32 28
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i170, i32 0, i32 8
  %172 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i170, i32 0, i32 10
  %173 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %or5.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i170, i32 0, i32 14
  %174 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %b_tx_status.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i170, i32 0, i32 19
  %175 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 8, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i170, i32 0, i32 28
  %176 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @rtl8187b_status_cb, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i170, i32 0, i32 27
  %177 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %dev, ptr %context4.i.i, align 4
  %anchored.i = getelementptr inbounds %struct.rtl8187_priv, ptr %167, i32 0, i32 9
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i170, ptr noundef %anchored.i) #8
  %call6.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i170, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %rtl8187b_init_status_urb.exit.thread182, label %rtl8187b_init_status_urb.exit

rtl8187b_init_status_urb.exit.thread182:          ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_free_urb(ptr noundef nonnull %call.i170) #8
  br label %rtl8187_start_exit

rtl8187b_init_status_urb.exit:                    ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i170) #8
  tail call void @usb_free_urb(ptr noundef nonnull %call.i170) #8
  br label %if.then22

if.then22:                                        ; preds = %rtl8187b_init_status_urb.exit, %if.end19.if.then22_crit_edge
  %retval.0.i173181 = phi i32 [ %call6.i, %rtl8187b_init_status_urb.exit ], [ -12, %if.end19.if.then22_crit_edge ]
  tail call void @usb_kill_anchored_urbs(ptr noundef %anchored) #8
  br label %rtl8187_start_exit

if.end25:                                         ; preds = %if.end
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 128
  %180 = getelementptr inbounds %struct.rtl818x_csr, ptr %179, i32 0, i32 15
  tail call void @rtl818x_iowrite16_idx(ptr noundef %1, ptr noundef %180, i16 noundef zeroext -1, i8 noundef zeroext 0) #8
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 128
  %183 = getelementptr inbounds %struct.rtl818x_csr, ptr %182, i32 0, i32 2
  tail call void @rtl818x_iowrite32_idx(ptr noundef %1, ptr noundef %183, i32 noundef -1, i8 noundef zeroext 0) #8
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 128
  %arrayidx29 = getelementptr %struct.rtl818x_csr, ptr %185, i32 0, i32 2, i32 0, i32 1
  tail call void @rtl818x_iowrite32_idx(ptr noundef %1, ptr noundef %arrayidx29, i32 noundef -1, i8 noundef zeroext 0) #8
  %call30 = tail call fastcc i32 @rtl8187_init_urbs(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end25.rtl8187_start_exit_crit_edge

if.end25.rtl8187_start_exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8187_start_exit

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %rx_conf34 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 8
  %186 = ptrtoint ptr %rx_conf34 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 -1869284342, ptr %rx_conf34, align 8
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %1, align 128
  %RX_CONF36 = getelementptr inbounds %struct.rtl818x_csr, ptr %188, i32 0, i32 17
  tail call void @rtl818x_iowrite32_idx(ptr noundef %1, ptr noundef %RX_CONF36, i32 noundef -1869284342, i8 noundef zeroext 0) #8
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %1, align 128
  %CW_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %190, i32 0, i32 66
  %call.i174 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CW_CONF, i8 noundef zeroext 0) #8
  %191 = and i8 %call.i174, -4
  %192 = or i8 %191, 2
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 128
  %CW_CONF42 = getelementptr inbounds %struct.rtl818x_csr, ptr %194, i32 0, i32 66
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %CW_CONF42, i8 noundef zeroext %192, i8 noundef zeroext 0) #8
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %1, align 128
  %TX_AGC_CTL45 = getelementptr inbounds %struct.rtl818x_csr, ptr %196, i32 0, i32 55
  %call.i175 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %TX_AGC_CTL45, i8 noundef zeroext 0) #8
  %197 = and i8 %call.i175, -8
  %198 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %1, align 128
  %TX_AGC_CTL52 = getelementptr inbounds %struct.rtl818x_csr, ptr %199, i32 0, i32 55
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %TX_AGC_CTL52, i8 noundef zeroext %197, i8 noundef zeroext 0) #8
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 128
  %TX_CONF55 = getelementptr inbounds %struct.rtl818x_csr, ptr %201, i32 0, i32 16
  tail call void @rtl818x_iowrite32_idx(ptr noundef %1, ptr noundef %TX_CONF55, i32 noundef -2132279296, i8 noundef zeroext 0) #8
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %1, align 128
  %CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %203, i32 0, i32 13
  %call.i176 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD, i8 noundef zeroext 0) #8
  %204 = or i8 %call.i176, 12
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %1, align 128
  %CMD62 = getelementptr inbounds %struct.rtl818x_csr, ptr %206, i32 0, i32 13
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %CMD62, i8 noundef zeroext %204, i8 noundef zeroext 0) #8
  %work = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 10
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %207 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.31, ptr noundef nonnull @rtl8187_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry72 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 10, i32 0, i32 1
  %208 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 1
  %209 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %entry72, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 10, i32 0, i32 2
  %210 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @rtl8187_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.33, ptr noundef nonnull @rtl8187_start.__key.32) #8
  br label %rtl8187_start_exit

rtl8187_start_exit:                               ; preds = %if.end33, %if.end25.rtl8187_start_exit_crit_edge, %if.then22, %rtl8187b_init_status_urb.exit.thread182, %if.then7.rtl8187_start_exit_crit_edge, %cond.false.rtl8187_start_exit_crit_edge, %cond.true.rtl8187_start_exit_crit_edge
  %ret.0 = phi i32 [ %call16, %if.then7.rtl8187_start_exit_crit_edge ], [ %retval.0.i173181, %if.then22 ], [ %call30, %if.end25.rtl8187_start_exit_crit_edge ], [ 0, %if.end33 ], [ %call.i, %cond.true.rtl8187_start_exit_crit_edge ], [ %call5.i, %cond.false.rtl8187_start_exit_crit_edge ], [ 0, %rtl8187b_init_status_urb.exit.thread182 ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 15
  tail call void @rtl818x_iowrite16_idx(ptr noundef %1, ptr noundef %4, i16 noundef zeroext 0, i8 noundef zeroext 0) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %6, i32 0, i32 13
  %call.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD, i8 noundef zeroext 0) #8
  %7 = and i8 %call.i, -13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %CMD5 = getelementptr inbounds %struct.rtl818x_csr, ptr %9, i32 0, i32 13
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %CMD5, i8 noundef zeroext %7, i8 noundef zeroext 0) #8
  %rf = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rf, align 4
  %stop = getelementptr inbounds %struct.rtl818x_rf_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stop, align 4
  tail call void %13(ptr noundef %dev) #8
  tail call fastcc void @rtl8187_set_anaparam(ptr noundef %1, i1 noundef zeroext false)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %15, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD, i8 noundef zeroext -64, i8 noundef zeroext 0) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 128
  %CONFIG4 = getelementptr inbounds %struct.rtl818x_csr, ptr %17, i32 0, i32 27
  %call.i45 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CONFIG4, i8 noundef zeroext 0) #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %CONFIG412 = getelementptr inbounds %struct.rtl818x_csr, ptr %19, i32 0, i32 27
  %20 = or i8 %call.i45, -128
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %CONFIG412, i8 noundef zeroext %20, i8 noundef zeroext 0) #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  %EEPROM_CMD15 = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD15, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %queue = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 28, i32 1
  %call1646 = tail call ptr @skb_dequeue(ptr noundef %queue) #8
  %tobool.not47 = icmp eq ptr %call1646, null
  br i1 %tobool.not47, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call1648 = phi ptr [ %call16, %while.body.while.body_crit_edge ], [ %call1646, %entry.while.body_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call1648, i32 noundef 1) #8
  %call16 = tail call ptr @skb_dequeue(ptr noundef %queue) #8
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %anchored = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 9
  tail call void @usb_kill_anchored_urbs(ptr noundef %anchored) #8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool18.not = icmp eq i8 %24, 0
  br i1 %tobool18.not, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %work = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 10
  %call19 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8187_add_interface(ptr noundef %dev, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %vif2 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vif, ptr %vif2, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %7 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %drv_priv, align 4
  %beacon_work = getelementptr inbounds %struct.rtl8187_vif, ptr %drv_priv, i32 0, i32 1
  tail call void @__init_work(ptr noundef %beacon_work, i32 noundef 0) #8
  %8 = ptrtoint ptr %beacon_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %beacon_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.43, ptr noundef nonnull @rtl8187_add_interface.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry12 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %9 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rtl8187_beacon_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 22
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.45, ptr noundef nonnull @rtl8187_add_interface.__key.44) #8
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 31
  %12 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enable_beacon, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD, i8 noundef zeroext -64, i8 noundef zeroext 0) #8
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %16, i8 noundef zeroext %18, i8 noundef zeroext 0) #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %arrayidx.1 = getelementptr [6 x i8], ptr %20, i32 0, i32 1
  %arrayidx22.1 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22.1, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx.1, i8 noundef zeroext %22, i8 noundef zeroext 0) #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 128
  %arrayidx.2 = getelementptr [6 x i8], ptr %24, i32 0, i32 2
  %arrayidx22.2 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx22.2, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx.2, i8 noundef zeroext %26, i8 noundef zeroext 0) #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  %arrayidx.3 = getelementptr [6 x i8], ptr %28, i32 0, i32 3
  %arrayidx22.3 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx22.3, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx.3, i8 noundef zeroext %30, i8 noundef zeroext 0) #8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  %arrayidx.4 = getelementptr [6 x i8], ptr %32, i32 0, i32 4
  %arrayidx22.4 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx22.4, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx.4, i8 noundef zeroext %34, i8 noundef zeroext 0) #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 128
  %arrayidx.5 = getelementptr [6 x i8], ptr %36, i32 0, i32 5
  %arrayidx22.5 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx22.5, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx.5, i8 noundef zeroext %38, i8 noundef zeroext 0) #8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 128
  %EEPROM_CMD24 = getelementptr inbounds %struct.rtl818x_csr, ptr %40, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD24, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  br label %exit

exit:                                             ; preds = %sw.epilog, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ -95, %entry.exit_crit_edge ], [ -95, %if.end.exit_crit_edge ], [ 0, %sw.epilog ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_remove_interface(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %vif2 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vif2, align 8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8187_config(ptr noundef %dev, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %TX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 16
  %call.i = tail call i32 @rtl818x_ioread32_idx(ptr noundef %1, ptr noundef %TX_CONF, i8 noundef zeroext 0) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %TX_CONF4 = getelementptr inbounds %struct.rtl818x_csr, ptr %5, i32 0, i32 16
  %or = or i32 %call.i, 131072
  tail call void @rtl818x_iowrite32_idx(ptr noundef %1, ptr noundef %TX_CONF4, i32 noundef %or, i8 noundef zeroext 0) #8
  %rf = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rf, align 4
  %set_chan = getelementptr inbounds %struct.rtl818x_rf_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %set_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_chan, align 4
  tail call void %9(ptr noundef %dev, ptr noundef %dev) #8
  tail call void @msleep(i32 noundef 10) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %TX_CONF6 = getelementptr inbounds %struct.rtl818x_csr, ptr %11, i32 0, i32 16
  tail call void @rtl818x_iowrite32_idx(ptr noundef %1, ptr noundef %TX_CONF6, i32 noundef %call.i, i8 noundef zeroext 0) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %ATIM_WND = getelementptr inbounds %struct.rtl818x_csr, ptr %13, i32 0, i32 36
  tail call void @rtl818x_iowrite16_idx(ptr noundef %1, ptr noundef %ATIM_WND, i16 noundef zeroext 2, i8 noundef zeroext 0) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %ATIMTR_INTERVAL = getelementptr inbounds %struct.rtl818x_csr, ptr %15, i32 0, i32 38
  tail call void @rtl818x_iowrite16_idx(ptr noundef %1, ptr noundef %ATIMTR_INTERVAL, i16 noundef zeroext 100, i8 noundef zeroext 0) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 128
  %BEACON_INTERVAL = getelementptr inbounds %struct.rtl818x_csr, ptr %17, i32 0, i32 35
  tail call void @rtl818x_iowrite16_idx(ptr noundef %1, ptr noundef %BEACON_INTERVAL, i16 noundef zeroext 100, i8 noundef zeroext 0) #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %BEACON_INTERVAL_TIME = getelementptr inbounds %struct.rtl818x_csr, ptr %19, i32 0, i32 37
  tail call void @rtl818x_iowrite16_idx(ptr noundef %1, ptr noundef %BEACON_INTERVAL_TIME, i16 noundef zeroext 100, i8 noundef zeroext 0) #8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_bss_info_changed(ptr nocapture noundef readonly %dev, ptr noundef %vif, ptr nocapture noundef readonly %info, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %and = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then:                                          ; preds = %entry
  %conf_mutex = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %arrayidx = getelementptr %struct.rtl818x_csr, ptr %3, i32 0, i32 10, i32 0
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx, i8 noundef zeroext %7, i8 noundef zeroext 0) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %arrayidx.1 = getelementptr %struct.rtl818x_csr, ptr %9, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 8
  %arrayidx2.1 = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.1, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx.1, i8 noundef zeroext %13, i8 noundef zeroext 0) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %arrayidx.2 = getelementptr %struct.rtl818x_csr, ptr %15, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info, align 8
  %arrayidx2.2 = getelementptr i8, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.2, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx.2, i8 noundef zeroext %19, i8 noundef zeroext 0) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %arrayidx.3 = getelementptr %struct.rtl818x_csr, ptr %21, i32 0, i32 10, i32 3
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info, align 8
  %arrayidx2.3 = getelementptr i8, ptr %23, i32 3
  %24 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2.3, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx.3, i8 noundef zeroext %25, i8 noundef zeroext 0) #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 128
  %arrayidx.4 = getelementptr %struct.rtl818x_csr, ptr %27, i32 0, i32 10, i32 4
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info, align 8
  %arrayidx2.4 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx2.4, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx.4, i8 noundef zeroext %31, i8 noundef zeroext 0) #8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 128
  %arrayidx.5 = getelementptr %struct.rtl818x_csr, ptr %33, i32 0, i32 10, i32 5
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 8
  %arrayidx2.5 = getelementptr i8, ptr %35, i32 5
  %36 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx2.5, align 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %arrayidx.5, i8 noundef zeroext %37, i8 noundef zeroext 0) #8
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 19
  %38 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool3.not = icmp eq i8 %39, 0
  %. = select i1 %tobool3.not, i8 0, i8 16
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

is_valid_ether_addr.exit:                         ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %46 to i32
  %or.i.i = or i32 %43, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end19_crit_edge, label %if.then6

is_valid_ether_addr.exit.if.end19_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then6:                                         ; preds = %is_valid_ether_addr.exit
  %47 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp7 = icmp eq i32 %48, 1
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %49 = or i8 %., 4
  br label %if.end19

if.else10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %50 = or i8 %., 8
  br label %if.end19

if.end19:                                         ; preds = %if.else10, %if.then8, %is_valid_ether_addr.exit.if.end19_crit_edge, %if.then.if.end19_crit_edge
  %reg.1 = phi i8 [ %49, %if.then8 ], [ %50, %if.else10 ], [ %., %is_valid_ether_addr.exit.if.end19_crit_edge ], [ %., %if.then.if.end19_crit_edge ]
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 128
  %MSR = getelementptr inbounds %struct.rtl818x_csr, ptr %52, i32 0, i32 25
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %MSR, i8 noundef zeroext %reg.1, i8 noundef zeroext 0) #8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %entry.if.end22_crit_edge
  %and23 = and i32 %changed, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %53 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %use_short_slot, align 2, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool26.not = icmp eq i8 %54, 0
  %is_rtl8187b.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 19
  %55 = ptrtoint ptr %is_rtl8187b.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %is_rtl8187b.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %if.else31.i, label %if.then.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 15
  %57 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %use_short_preamble, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool27.not = icmp eq i8 %58, 0
  %.sink.i = select i1 %tobool26.not, i8 20, i8 9
  %difs.0.i = select i1 %tobool26.not, i8 50, i8 28
  %eifs.0.i = select i1 %tobool26.not, i8 91, i8 83
  %59 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 24
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %.sink.i, ptr %59, align 2
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 128
  %SIFS.i = getelementptr inbounds %struct.rtl818x_csr, ptr %62, i32 0, i32 62
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %SIFS.i, i8 noundef zeroext 34, i8 noundef zeroext 0) #8
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 128
  %SLOT.i = getelementptr inbounds %struct.rtl818x_csr, ptr %64, i32 0, i32 64
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %59, align 2
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %SLOT.i, i8 noundef zeroext %66, i8 noundef zeroext 0) #8
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 128
  %DIFS.i = getelementptr inbounds %struct.rtl818x_csr, ptr %68, i32 0, i32 63
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %DIFS.i, i8 noundef zeroext %difs.0.i, i8 noundef zeroext 0) #8
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 128
  %71 = getelementptr inbounds %struct.rtl818x_csr, ptr %70, i32 0, i32 9
  %add.ptr.i = getelementptr i8, ptr %71, i32 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %add.ptr.i, i8 noundef zeroext %eifs.0.i, i8 noundef zeroext 0) #8
  %72 = zext i8 %difs.0.i to i16
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 128
  %CARRIER_SENSE_COUNTER.i = getelementptr inbounds %struct.rtl818x_csr, ptr %74, i32 0, i32 40
  %ack_timeout.0.i = select i1 %tobool27.not, i16 307, i16 235
  %sub.i = add nuw nsw i16 %ack_timeout.0.i, %72
  %div87.i = lshr i16 %sub.i, 2
  %conv23.i = trunc i16 %div87.i to i8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %CARRIER_SENSE_COUNTER.i, i8 noundef zeroext %conv23.i, i8 noundef zeroext 0) #8
  %arrayidx25.i = getelementptr %struct.rtl8187_priv, ptr %1, i32 0, i32 25, i32 0
  %75 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx25.i, align 1
  %77 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %59, align 2
  %mul.i = mul i8 %78, %76
  %add29.i = add i8 %mul.i, 10
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef nonnull inttoptr (i32 65520 to ptr), i8 noundef zeroext %add29.i, i8 noundef zeroext 0) #8
  %arrayidx25.1.i = getelementptr %struct.rtl8187_priv, ptr %1, i32 0, i32 25, i32 1
  %79 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx25.1.i, align 1
  %81 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %59, align 2
  %mul.1.i = mul i8 %82, %80
  %add29.1.i = add i8 %mul.1.i, 10
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef nonnull inttoptr (i32 65524 to ptr), i8 noundef zeroext %add29.1.i, i8 noundef zeroext 0) #8
  %arrayidx25.2.i = getelementptr %struct.rtl8187_priv, ptr %1, i32 0, i32 25, i32 2
  %83 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx25.2.i, align 1
  %85 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %59, align 2
  %mul.2.i = mul i8 %86, %84
  %add29.2.i = add i8 %mul.2.i, 10
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef nonnull inttoptr (i32 65532 to ptr), i8 noundef zeroext %add29.2.i, i8 noundef zeroext 0) #8
  %arrayidx25.3.i = getelementptr %struct.rtl8187_priv, ptr %1, i32 0, i32 25, i32 3
  %87 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx25.3.i, align 1
  %89 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %59, align 2
  %mul.3.i = mul i8 %90, %88
  %add29.3.i = add i8 %mul.3.i, 10
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef nonnull inttoptr (i32 65528 to ptr), i8 noundef zeroext %add29.3.i, i8 noundef zeroext 0) #8
  br label %if.end28

if.else31.i:                                      ; preds = %if.then25
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 128
  %SIFS33.i = getelementptr inbounds %struct.rtl818x_csr, ptr %92, i32 0, i32 62
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %SIFS33.i, i8 noundef zeroext 34, i8 noundef zeroext 0) #8
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 128
  %SLOT37.i = getelementptr inbounds %struct.rtl818x_csr, ptr %94, i32 0, i32 64
  br i1 %tobool26.not, label %if.else41.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %SLOT37.i, i8 noundef zeroext 9, i8 noundef zeroext 0) #8
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 128
  %DIFS39.i = getelementptr inbounds %struct.rtl818x_csr, ptr %96, i32 0, i32 63
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %DIFS39.i, i8 noundef zeroext 20, i8 noundef zeroext 0) #8
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 128
  %99 = getelementptr inbounds %struct.rtl818x_csr, ptr %98, i32 0, i32 11
  %EIFS.i = getelementptr inbounds %struct.anon.138, ptr %99, i32 0, i32 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %EIFS.i, i8 noundef zeroext 71, i8 noundef zeroext 0) #8
  br label %if.end28

if.else41.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %SLOT37.i, i8 noundef zeroext 20, i8 noundef zeroext 0) #8
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 128
  %DIFS45.i = getelementptr inbounds %struct.rtl818x_csr, ptr %101, i32 0, i32 63
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %DIFS45.i, i8 noundef zeroext 36, i8 noundef zeroext 0) #8
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 128
  %104 = getelementptr inbounds %struct.rtl818x_csr, ptr %103, i32 0, i32 11
  %EIFS47.i = getelementptr inbounds %struct.anon.138, ptr %104, i32 0, i32 1
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %EIFS47.i, i8 noundef zeroext 55, i8 noundef zeroext 0) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else41.i, %if.then35.i, %if.then.i, %if.end22.if.end28_crit_edge
  %and29 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %105 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %enable_beacon, align 1, !range !126
  %enable_beacon33 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 31
  %107 = ptrtoint ptr %enable_beacon33 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %enable_beacon33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  %and35 = and i32 %changed, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end45_crit_edge, label %if.then37

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then37:                                        ; preds = %if.end34
  %beacon_work = getelementptr inbounds %struct.rtl8187_vif, ptr %drv_priv, i32 0, i32 1
  %call38 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %beacon_work) #8
  %enable_beacon39 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 31
  %108 = ptrtoint ptr %enable_beacon39 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %enable_beacon39, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool40.not = icmp eq i8 %109, 0
  br i1 %tobool40.not, label %if.then37.if.end45_crit_edge, label %if.then41

if.then37.if.end45_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %110 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %110, ptr noundef %beacon_work) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.then37.if.end45_crit_edge, %if.end34.if.end45_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @rtl8187_prepare_multicast(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %mc_list) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.netdev_hw_addr_list, ptr %mc_list, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_configure_filter(ptr nocapture noundef readonly %dev, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %and = and i32 %changed_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rx_conf = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rx_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_conf, align 8
  %xor = xor i32 %3, 32
  store i32 %xor, ptr %rx_conf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %changed_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rx_conf5 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %rx_conf5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_conf5, align 8
  %xor6 = xor i32 %5, 524288
  store i32 %xor6, ptr %rx_conf5, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %6 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_flags, align 4
  %8 = and i32 %7, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %multicast)
  %cmp.not = icmp ne i64 %multicast, 0
  %rx_conf15 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %rx_conf15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_conf15, align 8
  %and16 = and i32 %11, -2
  %not.or.cond54 = or i1 %cmp.not, %9
  %masksel = zext i1 %not.or.cond54 to i32
  %and16.sink = or i32 %and16, %masksel
  store i32 %and16.sink, ptr %rx_conf15, align 8
  %12 = ptrtoint ptr %total_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %total_flags, align 4
  %rx_conf18 = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %rx_conf18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_conf18, align 8
  %and19 = lshr i32 %14, 3
  %15 = and i32 %and19, 4
  store i32 %15, ptr %total_flags, align 4
  %16 = load i32, ptr %rx_conf18, align 8
  %and25 = and i32 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end7.if.end29_crit_edge, label %if.then27

if.end7.if.end29_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %or28 = or i32 %15, 32
  %17 = ptrtoint ptr %total_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or28, ptr %total_flags, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end7.if.end29_crit_edge
  %18 = ptrtoint ptr %rx_conf18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_conf18, align 8
  %and31 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end36_crit_edge, label %if.then33

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_flags, align 4
  %or35 = or i32 %21, 66
  store i32 %or35, ptr %total_flags, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end29.if.end36_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 128
  %RX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %rx_conf18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_conf18, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %27 = ptrtoint ptr %RX_CONF to i32
  %conv.i = trunc i32 %27 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 2592, i32 noundef 12) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end36.rtl818x_iowrite32_async.exit_crit_edge, label %if.end.i.i

if.end36.rtl818x_iowrite32_async.exit_crit_edge:  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl818x_iowrite32_async.exit

if.end.i.i:                                       ; preds = %if.end36
  %call1.i.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #8
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %rtl818x_iowrite32_async.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %dr5.i.i = getelementptr inbounds %struct.rtl8187_async_write_data, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %dr5.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 64, ptr %dr5.i.i, align 4
  %bRequest.i.i = getelementptr inbounds %struct.rtl8187_async_write_data, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %bRequest.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 5, ptr %bRequest.i.i, align 1
  %wValue.i.i = getelementptr inbounds %struct.rtl8187_async_write_data, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %wValue.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %28, ptr %wValue.i.i, align 2
  %wIndex.i.i = getelementptr inbounds %struct.rtl8187_async_write_data, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %wIndex.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %wIndex.i.i, align 8
  %wLength.i.i = getelementptr inbounds %struct.rtl8187_async_write_data, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %wLength.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1024, ptr %wLength.i.i, align 2
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %26, ptr %call7.i.i.i, align 8
  %udev.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i.i = shl i32 %39, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 10
  %41 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i.i, ptr %pipe2.i.i.i, align 4
  %setup_packet3.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 21
  %42 = ptrtoint ptr %setup_packet3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dr5.i.i, ptr %setup_packet3.i.i.i, align 4
  %transfer_buffer4.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 14
  %43 = ptrtoint ptr %transfer_buffer4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i, ptr %transfer_buffer4.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 19
  %44 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 28
  %45 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @rtl8187_iowrite_async_cb, ptr %complete.i.i.i, align 4
  %context5.i.i.i = getelementptr inbounds %struct.urb, ptr %call1.i.i, i32 0, i32 27
  %46 = ptrtoint ptr %context5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i.i, ptr %context5.i.i.i, align 4
  %anchored.i.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 9
  tail call void @usb_anchor_urb(ptr noundef nonnull %call1.i.i, ptr noundef %anchored.i.i) #8
  %call9.i.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call1.i.i, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.end4.i.i.if.end12.i.i_crit_edge

if.end4.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call1.i.i) #8
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i, %if.end4.i.i.if.end12.i.i_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i.i) #8
  br label %rtl818x_iowrite32_async.exit

rtl818x_iowrite32_async.exit:                     ; preds = %if.end12.i.i, %if.then3.i.i, %if.end36.rtl818x_iowrite32_async.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8187_conf_tx(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conv = zext i16 %queue to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %queue)
  %cmp = icmp ugt i16 %queue, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cw_min3 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %cw_min3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cw_min3, align 2
  %conv4 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %conv4, i1 true) #8, !range !127
  %sub.i = sub nuw nsw i32 32, %4
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %cw_max6 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %5 = ptrtoint ptr %cw_max6 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cw_max6, align 2
  %conv7 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i50 = icmp eq i16 %6, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv7, i1 true) #8, !range !127
  %sub.i51 = sub nuw nsw i32 32, %7
  %cond.i52 = select i1 %tobool.not.i50, i32 0, i32 %sub.i51
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %aifs, align 2
  %arrayidx = getelementptr %struct.rtl8187_priv, ptr %1, i32 0, i32 25, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx, align 1
  %arrayidx12 = getelementptr [4 x ptr], ptr @rtl8187b_ac_addr, i32 0, i32 %conv
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx12, align 4
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %params, align 2
  %conv13 = zext i16 %16 to i32
  %shl = shl nuw i32 %conv13, 16
  %conv14 = shl nuw nsw i32 %cond.i52, 12
  %conv16 = shl nuw nsw i32 %cond.i, 8
  %17 = load i8, ptr %aifs, align 2
  %conv20 = zext i8 %17 to i32
  %slot_time = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 24
  %18 = ptrtoint ptr %slot_time to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %slot_time, align 2
  %conv21 = zext i8 %19 to i32
  %mul = mul nuw nsw i32 %conv21, %conv20
  %add = add nuw nsw i32 %mul, 10
  %or = or i32 %conv14, %conv16
  %or18 = or i32 %or, %shl
  %or22 = or i32 %or18, %add
  tail call void @rtl818x_iowrite32_idx(ptr noundef %1, ptr noundef %14, i32 noundef %or22, i8 noundef zeroext 0) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %queue)
  %cmp24.not = icmp eq i16 %queue, 0
  br i1 %cmp24.not, label %if.end27, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %CW_VAL = getelementptr inbounds %struct.rtl818x_csr, ptr %21, i32 0, i32 67
  %conv29 = shl nuw nsw i32 %cond.i52, 4
  %or31 = or i32 %conv29, %cond.i
  %conv32 = trunc i32 %or31 to i8
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %CW_VAL, i8 noundef zeroext %conv32, i8 noundef zeroext 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.else.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end27 ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @rtl8187_get_tsf(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %TSFT = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 5
  %call.i = tail call i32 @rtl818x_ioread32_idx(ptr noundef %1, ptr noundef %TSFT, i8 noundef zeroext 0) #8
  %conv = zext i32 %call.i to i64
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %arrayidx4 = getelementptr %struct.rtl818x_csr, ptr %5, i32 0, i32 5, i32 1
  %call.i10 = tail call i32 @rtl818x_ioread32_idx(ptr noundef %1, ptr noundef %arrayidx4, i8 noundef zeroext 0) #8
  %conv6 = zext i32 %call.i10 to i64
  %shl = shl nuw i64 %conv6, 32
  %or = or i64 %shl, %conv
  ret i64 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8187_rfkill_poll(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_rts_duration(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_ctstoself_duration(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_generic_frame_duration(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_tx_cb(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %rate_driver_data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %rate_driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_driver_data, align 8
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, i32 12, i32 32
  %call2 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %cond) #8
  %count.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %9 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 15
  %10 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  %11 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %12 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %land.lhs.true, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %15 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb.i, align 8
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %17 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6.not = icmp eq i8 %18, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  %queue = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 28, i32 1
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef %1) #8
  %qlen.i = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 28, i32 1, i32 1
  %19 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp53 = icmp ugt i32 %20, 5
  br i1 %cmp53, label %while.body.lr.ph, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.then7
  %udev = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8187_tx_cb.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8187_tx_cb, %if.then16)) #8
          to label %do.end [label %if.then16], !srcloc !128

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8187_tx_cb.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.30) #8
  br label %do.end

do.end:                                           ; preds = %if.then16, %while.body
  %call19 = tail call ptr @skb_dequeue(ptr noundef %queue) #8
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %3, ptr noundef %call19) #8
  %23 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i, align 4
  %cmp = icmp ugt i32 %24, 5
  br i1 %cmp, label %do.end.while.body_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %16, 512
  %25 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or, ptr %cb.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %26 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool24.not = icmp eq i8 %27, 0
  br i1 %tobool24.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %3, ptr noundef %1) #8
  br label %cleanup

if.else26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %queue28 = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 28, i32 1
  tail call void @skb_queue_tail(ptr noundef %queue28, ptr noundef %1) #8
  %work = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 10
  tail call void @ieee80211_queue_delayed_work(ptr noundef %3, ptr noundef %work, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %if.then25, %do.end.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8187_init_urbs(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %rx_queue = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 21
  %qlen.i = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 21, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp53 = icmp ult i32 %3, 32
  br i1 %cmp53, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %udev = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 7
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 19
  %anchored = getelementptr inbounds %struct.rtl8187_priv, ptr %1, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.lr.ph
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2500, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %while.body.err_crit_edge, label %if.end

while.body.err_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %while.body
  %call4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %6 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i = shl i32 %9, 8
  %or.i = select i1 %tobool9.not, i32 -1073708928, i32 -1073643392
  %or11 = or i32 %or.i, %shl.i
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or11, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2500, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rtl8187_rx_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %context4.i, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call4, ptr %cb, align 4
  %dev13 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev13, align 4
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef nonnull %call.i) #8
  tail call void @usb_anchor_urb(ptr noundef nonnull %call4, ptr noundef %anchored) #8
  %call15 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call4, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_unlink(ptr noundef nonnull %call.i, ptr noundef %rx_queue) #8
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call4) #8
  tail call void @usb_free_urb(ptr noundef nonnull %call4) #8
  br label %err

if.end19:                                         ; preds = %if.end7
  tail call void @usb_free_urb(ptr noundef nonnull %call4) #8
  %20 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i, align 4
  %cmp = icmp ult i32 %21, 32
  br i1 %cmp, label %if.end19.while.body_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

err:                                              ; preds = %if.then17, %if.end.err_crit_edge, %while.body.err_crit_edge
  %ret.1 = phi i32 [ %call15, %if.then17 ], [ -12, %while.body.err_crit_edge ], [ -12, %if.end.err_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %call.i, i32 noundef 0) #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %anchored) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1244
  %dev1 = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 64
  %conf_mutex = getelementptr i8, ptr %work, i32 -1232
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %call.i = tail call zeroext i16 @rtl818x_ioread16_idx(ptr noundef %add.ptr, ptr noundef nonnull inttoptr (i32 65530 to ptr), i8 noundef zeroext 0) #8
  %queue = getelementptr i8, ptr %work, i32 1828
  %qlen.i = getelementptr i8, ptr %work, i32 1836
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !129

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %length.0 = phi i32 [ 1, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %4 = load i16, ptr @rtl8187_work.retry, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i, i16 %4)
  %cmp = icmp ult i16 %call.i, %4
  br i1 %cmp, label %if.then15, label %if.end.if.end16_crit_edge, !prof !129

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  %tmp2.0 = phi i16 [ %4, %if.then15 ], [ %call.i, %if.end.if.end16_crit_edge ]
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp23.not54 = icmp eq i32 %6, 0
  br i1 %cmp23.not54, label %if.end16.while.end_crit_edge, label %while.body.lr.ph

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end16
  %conv17 = zext i16 %tmp2.0 to i32
  %conv18 = zext i16 %4 to i32
  %sub = sub nsw i32 %conv17, %conv18
  %div = sdiv i32 %sub, %length.0
  %7 = trunc i32 %div to i16
  %conv30 = shl i16 %7, 11
  %bf.shl = add i16 %conv30, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 14336, i16 %bf.shl)
  %cmp36 = icmp ugt i16 %bf.shl, 14336
  br label %while.body

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %while.body.lr.ph
  %call27 = tail call ptr @skb_dequeue(ptr noundef %queue) #8
  %count = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 3, i32 9
  %8 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %count, align 1
  br i1 %cmp36, label %if.then38, label %while.body.if.end39_crit_edge

while.body.if.end39_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then38:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 3
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i, align 8
  %and = and i32 %10, -513
  store i32 %and, ptr %cb.i, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %while.body.if.end39_crit_edge
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %1, ptr noundef %call27) #8
  %11 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i, align 4
  %cmp23.not = icmp eq i32 %12, 0
  br i1 %cmp23.not, label %if.end39.while.end_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end39.while.end_crit_edge, %if.end16.while.end_crit_edge
  store i16 %tmp2.0, ptr @rtl8187_work.retry, align 2
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8187_set_anaparam(ptr noundef %priv, i1 noundef zeroext %rfon) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %rfon, i32 -1610610087, i32 -1609831591
  %.47 = select i1 %rfon, i32 -2046004462, i32 -2079462383
  %.48 = select i1 %rfon, i32 1158219352, i32 1430783576
  %.49 = select i1 %rfon, i32 1920941906, i32 1912618832
  %anaparam.0 = select i1 %tobool.not, i32 %., i32 %.48
  %anaparam2.0 = select i1 %tobool.not, i32 %.47, i32 %.49
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 128
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %priv, ptr noundef %EEPROM_CMD, i8 noundef zeroext -64, i8 noundef zeroext 0) #8
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 128
  %CONFIG3 = getelementptr inbounds %struct.rtl818x_csr, ptr %5, i32 0, i32 26
  %call.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %priv, ptr noundef %CONFIG3, i8 noundef zeroext 0) #8
  %6 = or i8 %call.i, 64
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 128
  %CONFIG312 = getelementptr inbounds %struct.rtl818x_csr, ptr %8, i32 0, i32 26
  tail call void @rtl818x_iowrite8_idx(ptr noundef %priv, ptr noundef %CONFIG312, i8 noundef zeroext %6, i8 noundef zeroext 0) #8
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 128
  %ANAPARAM = getelementptr inbounds %struct.rtl818x_csr, ptr %10, i32 0, i32 24
  tail call void @rtl818x_iowrite32_idx(ptr noundef %priv, ptr noundef %ANAPARAM, i32 noundef %anaparam.0, i8 noundef zeroext 0) #8
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 128
  %ANAPARAM2 = getelementptr inbounds %struct.rtl818x_csr, ptr %12, i32 0, i32 32
  tail call void @rtl818x_iowrite32_idx(ptr noundef %priv, ptr noundef %ANAPARAM2, i32 noundef %anaparam2.0, i8 noundef zeroext 0) #8
  %13 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %entry.if.end19_crit_edge, label %if.then17

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %anaparam3.0 = sext i1 %tobool.not to i8
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 128
  %17 = getelementptr inbounds %struct.rtl818x_csr, ptr %16, i32 0, i32 82
  tail call void @rtl818x_iowrite8_idx(ptr noundef %priv, ptr noundef %17, i8 noundef zeroext %anaparam3.0, i8 noundef zeroext 0) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %entry.if.end19_crit_edge
  %18 = and i8 %call.i, -65
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 128
  %CONFIG323 = getelementptr inbounds %struct.rtl818x_csr, ptr %20, i32 0, i32 26
  tail call void @rtl818x_iowrite8_idx(ptr noundef %priv, ptr noundef %CONFIG323, i8 noundef zeroext %18, i8 noundef zeroext 0) #8
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 128
  %EEPROM_CMD25 = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %priv, ptr noundef %EEPROM_CMD25, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8187_cmd_reset(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 13
  %call.i = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD, i8 noundef zeroext 0) #8
  %4 = and i8 %call.i, 2
  %5 = or i8 %4, 16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %CMD6 = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 13
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %CMD6, i8 noundef zeroext %5, i8 noundef zeroext 0) #8
  tail call void @msleep(i32 noundef 2) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %CMD8 = getelementptr inbounds %struct.rtl818x_csr, ptr %9, i32 0, i32 13
  %call.i60 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD8, i8 noundef zeroext 0) #8
  %10 = and i8 %call.i60, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %do.cond

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.cond:                                          ; preds = %entry
  tail call void @msleep(i32 noundef 2) #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %CMD8.1 = getelementptr inbounds %struct.rtl818x_csr, ptr %12, i32 0, i32 13
  %call.i60.1 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD8.1, i8 noundef zeroext 0) #8
  %13 = and i8 %call.i60.1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.1 = icmp eq i8 %13, 0
  br i1 %tobool.not.1, label %do.cond.if.end19_crit_edge, label %do.cond.1

do.cond.if.end19_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.cond.1:                                        ; preds = %do.cond
  tail call void @msleep(i32 noundef 2) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %CMD8.2 = getelementptr inbounds %struct.rtl818x_csr, ptr %15, i32 0, i32 13
  %call.i60.2 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD8.2, i8 noundef zeroext 0) #8
  %16 = and i8 %call.i60.2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.2 = icmp eq i8 %16, 0
  br i1 %tobool.not.2, label %do.cond.1.if.end19_crit_edge, label %do.cond.2

do.cond.1.if.end19_crit_edge:                     ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.cond.2:                                        ; preds = %do.cond.1
  tail call void @msleep(i32 noundef 2) #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 128
  %CMD8.3 = getelementptr inbounds %struct.rtl818x_csr, ptr %18, i32 0, i32 13
  %call.i60.3 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD8.3, i8 noundef zeroext 0) #8
  %19 = and i8 %call.i60.3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.3 = icmp eq i8 %19, 0
  br i1 %tobool.not.3, label %do.cond.2.if.end19_crit_edge, label %do.cond.3

do.cond.2.if.end19_crit_edge:                     ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.cond.3:                                        ; preds = %do.cond.2
  tail call void @msleep(i32 noundef 2) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %CMD8.4 = getelementptr inbounds %struct.rtl818x_csr, ptr %21, i32 0, i32 13
  %call.i60.4 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD8.4, i8 noundef zeroext 0) #8
  %22 = and i8 %call.i60.4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.4 = icmp eq i8 %22, 0
  br i1 %tobool.not.4, label %do.cond.3.if.end19_crit_edge, label %do.cond.4

do.cond.3.if.end19_crit_edge:                     ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.cond.4:                                        ; preds = %do.cond.3
  tail call void @msleep(i32 noundef 2) #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 128
  %CMD8.5 = getelementptr inbounds %struct.rtl818x_csr, ptr %24, i32 0, i32 13
  %call.i60.5 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD8.5, i8 noundef zeroext 0) #8
  %25 = and i8 %call.i60.5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.5 = icmp eq i8 %25, 0
  br i1 %tobool.not.5, label %do.cond.4.if.end19_crit_edge, label %do.cond.5

do.cond.4.if.end19_crit_edge:                     ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.cond.5:                                        ; preds = %do.cond.4
  tail call void @msleep(i32 noundef 2) #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 128
  %CMD8.6 = getelementptr inbounds %struct.rtl818x_csr, ptr %27, i32 0, i32 13
  %call.i60.6 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD8.6, i8 noundef zeroext 0) #8
  %28 = and i8 %call.i60.6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.6 = icmp eq i8 %28, 0
  br i1 %tobool.not.6, label %do.cond.5.if.end19_crit_edge, label %do.cond.6

do.cond.5.if.end19_crit_edge:                     ; preds = %do.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.cond.6:                                        ; preds = %do.cond.5
  tail call void @msleep(i32 noundef 2) #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 128
  %CMD8.7 = getelementptr inbounds %struct.rtl818x_csr, ptr %30, i32 0, i32 13
  %call.i60.7 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD8.7, i8 noundef zeroext 0) #8
  %31 = and i8 %call.i60.7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.7 = icmp eq i8 %31, 0
  br i1 %tobool.not.7, label %do.cond.6.if.end19_crit_edge, label %do.cond.7

do.cond.6.if.end19_crit_edge:                     ; preds = %do.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.cond.7:                                        ; preds = %do.cond.6
  tail call void @msleep(i32 noundef 2) #8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 128
  %CMD8.8 = getelementptr inbounds %struct.rtl818x_csr, ptr %33, i32 0, i32 13
  %call.i60.8 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD8.8, i8 noundef zeroext 0) #8
  %34 = and i8 %call.i60.8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.8 = icmp eq i8 %34, 0
  br i1 %tobool.not.8, label %do.cond.7.if.end19_crit_edge, label %do.cond.8

do.cond.7.if.end19_crit_edge:                     ; preds = %do.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.cond.8:                                        ; preds = %do.cond.7
  tail call void @msleep(i32 noundef 2) #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 128
  %CMD8.9 = getelementptr inbounds %struct.rtl818x_csr, ptr %36, i32 0, i32 13
  %call.i60.9 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %CMD8.9, i8 noundef zeroext 0) #8
  %37 = and i8 %call.i60.9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.9 = icmp eq i8 %37, 0
  br i1 %tobool.not.9, label %do.cond.8.if.end19_crit_edge, label %do.cond.8.cleanup.sink.split_crit_edge

do.cond.8.cleanup.sink.split_crit_edge:           ; preds = %do.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.cond.8.if.end19_crit_edge:                     ; preds = %do.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %do.cond.8.if.end19_crit_edge, %do.cond.7.if.end19_crit_edge, %do.cond.6.if.end19_crit_edge, %do.cond.5.if.end19_crit_edge, %do.cond.4.if.end19_crit_edge, %do.cond.3.if.end19_crit_edge, %do.cond.2.if.end19_crit_edge, %do.cond.1.if.end19_crit_edge, %do.cond.if.end19_crit_edge, %entry.if.end19_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 128
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %39, i32 0, i32 20
  tail call void @rtl818x_iowrite8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD, i8 noundef zeroext 64, i8 noundef zeroext 0) #8
  tail call void @msleep(i32 noundef 4) #8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  %EEPROM_CMD23 = getelementptr inbounds %struct.rtl818x_csr, ptr %41, i32 0, i32 20
  %call.i61 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD23, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i61)
  %tobool27.not = icmp ult i8 %call.i61, 64
  br i1 %tobool27.not, label %if.end19.cleanup_crit_edge, label %do.cond30

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond30:                                        ; preds = %if.end19
  tail call void @msleep(i32 noundef 4) #8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 128
  %EEPROM_CMD23.1 = getelementptr inbounds %struct.rtl818x_csr, ptr %43, i32 0, i32 20
  %call.i61.1 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD23.1, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i61.1)
  %tobool27.not.1 = icmp ult i8 %call.i61.1, 64
  br i1 %tobool27.not.1, label %do.cond30.cleanup_crit_edge, label %do.cond30.1

do.cond30.cleanup_crit_edge:                      ; preds = %do.cond30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond30.1:                                      ; preds = %do.cond30
  tail call void @msleep(i32 noundef 4) #8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 128
  %EEPROM_CMD23.2 = getelementptr inbounds %struct.rtl818x_csr, ptr %45, i32 0, i32 20
  %call.i61.2 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD23.2, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i61.2)
  %tobool27.not.2 = icmp ult i8 %call.i61.2, 64
  br i1 %tobool27.not.2, label %do.cond30.1.cleanup_crit_edge, label %do.cond30.2

do.cond30.1.cleanup_crit_edge:                    ; preds = %do.cond30.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond30.2:                                      ; preds = %do.cond30.1
  tail call void @msleep(i32 noundef 4) #8
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 128
  %EEPROM_CMD23.3 = getelementptr inbounds %struct.rtl818x_csr, ptr %47, i32 0, i32 20
  %call.i61.3 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD23.3, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i61.3)
  %tobool27.not.3 = icmp ult i8 %call.i61.3, 64
  br i1 %tobool27.not.3, label %do.cond30.2.cleanup_crit_edge, label %do.cond30.3

do.cond30.2.cleanup_crit_edge:                    ; preds = %do.cond30.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond30.3:                                      ; preds = %do.cond30.2
  tail call void @msleep(i32 noundef 4) #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 128
  %EEPROM_CMD23.4 = getelementptr inbounds %struct.rtl818x_csr, ptr %49, i32 0, i32 20
  %call.i61.4 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD23.4, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i61.4)
  %tobool27.not.4 = icmp ult i8 %call.i61.4, 64
  br i1 %tobool27.not.4, label %do.cond30.3.cleanup_crit_edge, label %do.cond30.4

do.cond30.3.cleanup_crit_edge:                    ; preds = %do.cond30.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond30.4:                                      ; preds = %do.cond30.3
  tail call void @msleep(i32 noundef 4) #8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 128
  %EEPROM_CMD23.5 = getelementptr inbounds %struct.rtl818x_csr, ptr %51, i32 0, i32 20
  %call.i61.5 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD23.5, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i61.5)
  %tobool27.not.5 = icmp ult i8 %call.i61.5, 64
  br i1 %tobool27.not.5, label %do.cond30.4.cleanup_crit_edge, label %do.cond30.5

do.cond30.4.cleanup_crit_edge:                    ; preds = %do.cond30.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond30.5:                                      ; preds = %do.cond30.4
  tail call void @msleep(i32 noundef 4) #8
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 128
  %EEPROM_CMD23.6 = getelementptr inbounds %struct.rtl818x_csr, ptr %53, i32 0, i32 20
  %call.i61.6 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD23.6, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i61.6)
  %tobool27.not.6 = icmp ult i8 %call.i61.6, 64
  br i1 %tobool27.not.6, label %do.cond30.5.cleanup_crit_edge, label %do.cond30.6

do.cond30.5.cleanup_crit_edge:                    ; preds = %do.cond30.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond30.6:                                      ; preds = %do.cond30.5
  tail call void @msleep(i32 noundef 4) #8
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 128
  %EEPROM_CMD23.7 = getelementptr inbounds %struct.rtl818x_csr, ptr %55, i32 0, i32 20
  %call.i61.7 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD23.7, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i61.7)
  %tobool27.not.7 = icmp ult i8 %call.i61.7, 64
  br i1 %tobool27.not.7, label %do.cond30.6.cleanup_crit_edge, label %do.cond30.7

do.cond30.6.cleanup_crit_edge:                    ; preds = %do.cond30.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond30.7:                                      ; preds = %do.cond30.6
  tail call void @msleep(i32 noundef 4) #8
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 128
  %EEPROM_CMD23.8 = getelementptr inbounds %struct.rtl818x_csr, ptr %57, i32 0, i32 20
  %call.i61.8 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD23.8, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i61.8)
  %tobool27.not.8 = icmp ult i8 %call.i61.8, 64
  br i1 %tobool27.not.8, label %do.cond30.7.cleanup_crit_edge, label %do.cond30.8

do.cond30.7.cleanup_crit_edge:                    ; preds = %do.cond30.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond30.8:                                      ; preds = %do.cond30.7
  tail call void @msleep(i32 noundef 4) #8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 128
  %EEPROM_CMD23.9 = getelementptr inbounds %struct.rtl818x_csr, ptr %59, i32 0, i32 20
  %call.i61.9 = tail call zeroext i8 @rtl818x_ioread8_idx(ptr noundef %1, ptr noundef %EEPROM_CMD23.9, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call.i61.9)
  %tobool27.not.9 = icmp ult i8 %call.i61.9, 64
  br i1 %tobool27.not.9, label %do.cond30.8.cleanup_crit_edge, label %do.cond30.8.cleanup.sink.split_crit_edge

do.cond30.8.cleanup.sink.split_crit_edge:         ; preds = %do.cond30.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.cond30.8.cleanup_crit_edge:                    ; preds = %do.cond30.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.cond30.8.cleanup.sink.split_crit_edge, %do.cond.8.cleanup.sink.split_crit_edge
  %.str.38.sink = phi ptr [ @.str.34, %do.cond.8.cleanup.sink.split_crit_edge ], [ @.str.38, %do.cond30.8.cleanup.sink.split_crit_edge ]
  %wiphy39 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %60 = ptrtoint ptr %wiphy39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wiphy39, align 8
  %dev40 = getelementptr inbounds %struct.wiphy, ptr %61, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull %.str.38.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.cond30.8.cleanup_crit_edge, %do.cond30.7.cleanup_crit_edge, %do.cond30.6.cleanup_crit_edge, %do.cond30.5.cleanup_crit_edge, %do.cond30.4.cleanup_crit_edge, %do.cond30.3.cleanup_crit_edge, %do.cond30.2.cleanup_crit_edge, %do.cond30.1.cleanup_crit_edge, %do.cond30.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.cond30.8.cleanup_crit_edge ], [ 0, %do.cond30.7.cleanup_crit_edge ], [ 0, %do.cond30.6.cleanup_crit_edge ], [ 0, %do.cond30.5.cleanup_crit_edge ], [ 0, %do.cond30.4.cleanup_crit_edge ], [ 0, %do.cond30.3.cleanup_crit_edge ], [ 0, %do.cond30.2.cleanup_crit_edge ], [ 0, %do.cond30.1.cleanup_crit_edge ], [ 0, %do.cond30.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ -110, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl818x_iowrite16_idx(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl818x_iowrite32_idx(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_rx_cb(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev1 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %priv2 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 8
  %rx_queue = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 21
  %lock = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 21, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %qlen.i = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %7, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %prev9.i = getelementptr inbounds %struct.anon.41, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %1, align 8
  %prev17.i = getelementptr inbounds %struct.anon.41, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %prev17.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %11, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %14 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length, align 4
  %call10 = tail call ptr @skb_put(ptr noundef %1, i32 noundef %15) #8
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_irq(ptr noundef %1, i32 noundef 1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_rtl8187b = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 19
  %18 = ptrtoint ptr %is_rtl8187b to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_rtl8187b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp eq i8 %19, 0
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %21, i32 -16
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %agc = getelementptr i8, ptr %21, i32 -10
  %25 = ptrtoint ptr %agc to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %agc, align 1
  %conv17 = zext i8 %26 to i16
  %mul = mul nuw nsw i16 %conv17, 27
  %27 = lshr i16 %mul, 6
  %signal18 = getelementptr i8, ptr %21, i32 -11
  %mac_time = getelementptr i8, ptr %21, i32 -8
  %28 = ptrtoint ptr %mac_time to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %mac_time, align 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %31 = trunc i16 %27 to i8
  %extract.t151 = sub nuw nsw i8 -4, %31
  br label %if.end36

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24 = getelementptr i8, ptr %21, i32 -20
  %32 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %add.ptr24, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %agc26 = getelementptr i8, ptr %21, i32 -6
  %35 = ptrtoint ptr %agc26 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %agc26, align 1
  %37 = lshr i8 %36, 1
  %sub28 = sub nsw i8 14, %37
  %rssi = getelementptr i8, ptr %21, i32 -7
  %mac_time34 = getelementptr i8, ptr %21, i32 -16
  %38 = ptrtoint ptr %mac_time34 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %mac_time34, align 1
  %40 = tail call i64 @llvm.bswap.i64(i64 %39)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then14
  %rx_status.sroa.0.0 = phi i64 [ %40, %if.else ], [ %30, %if.then14 ]
  %rx_status.sroa.16.0.in.in = phi ptr [ %rssi, %if.else ], [ %signal18, %if.then14 ]
  %signal.0.off0 = phi i8 [ %sub28, %if.else ], [ %extract.t151, %if.then14 ]
  %flags.0 = phi i32 [ %34, %if.else ], [ %24, %if.then14 ]
  %41 = ptrtoint ptr %rx_status.sroa.16.0.in.in to i32
  call void @__asan_load1_noabort(i32 %41)
  %rx_status.sroa.16.0.in = load i8, ptr %rx_status.sroa.16.0.in.in, align 1
  %rx_status.sroa.16.0 = lshr i8 %rx_status.sroa.16.0.in, 7
  %signal40 = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 22
  %42 = ptrtoint ptr %signal40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %signal.0.off0, ptr %signal40, align 16
  %shr41 = lshr i32 %flags.0, 20
  %and43 = and i32 %flags.0, 4095
  tail call void @skb_trim(ptr noundef %1, i32 noundef %and43) #8
  %43 = trunc i32 %shr41 to i8
  %conv44 = and i8 %43, 15
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %44 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %center_freq, align 4
  %conv45 = trunc i32 %47 to i16
  %bf.shl = shl i16 %conv45, 3
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %45, align 4
  %conv49 = trunc i32 %49 to i8
  %and51 = lshr i32 %flags.0, 25
  %50 = trunc i32 %and51 to i8
  %51 = and i8 %50, 1
  %and58 = and i32 %flags.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %rx_status.sroa.6107.0 = select i1 %tobool59.not, i32 128, i32 160
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %rx_status.sroa.0.0, ptr %cb.i, align 8
  %rx_status.sroa.6.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %53 = call ptr @memset(ptr %rx_status.sroa.6.0.call64.sroa_idx, i32 0, i32 16)
  %rx_status.sroa.6107.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %54 = ptrtoint ptr %rx_status.sroa.6107.0.call64.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %rx_status.sroa.6107.0, ptr %rx_status.sroa.6107.0.call64.sroa_idx, align 8
  %rx_status.sroa.10.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %55 = ptrtoint ptr %rx_status.sroa.10.0.call64.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %bf.shl, ptr %rx_status.sroa.10.0.call64.sroa_idx, align 4
  %rx_status.sroa.12.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 30
  %56 = ptrtoint ptr %rx_status.sroa.12.0.call64.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %51, ptr %rx_status.sroa.12.0.call64.sroa_idx, align 2
  %rx_status.sroa.14.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 31
  %57 = ptrtoint ptr %rx_status.sroa.14.0.call64.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 0, ptr %rx_status.sroa.14.0.call64.sroa_idx, align 1
  %rx_status.sroa.14109.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 33
  %58 = ptrtoint ptr %rx_status.sroa.14109.0.call64.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv44, ptr %rx_status.sroa.14109.0.call64.sroa_idx, align 1
  %rx_status.sroa.15.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 34
  %59 = ptrtoint ptr %rx_status.sroa.15.0.call64.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %rx_status.sroa.15.0.call64.sroa_idx, align 2
  %rx_status.sroa.15110.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %60 = ptrtoint ptr %rx_status.sroa.15110.0.call64.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv49, ptr %rx_status.sroa.15110.0.call64.sroa_idx, align 4
  %rx_status.sroa.16.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 37
  %61 = ptrtoint ptr %rx_status.sroa.16.0.call64.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %rx_status.sroa.16.0, ptr %rx_status.sroa.16.0.call64.sroa_idx, align 1
  %rx_status.sroa.18.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 38
  %62 = ptrtoint ptr %rx_status.sroa.18.0.call64.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %signal.0.off0, ptr %rx_status.sroa.18.0.call64.sroa_idx, align 2
  %rx_status.sroa.19.0.call64.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 39
  %63 = call ptr @memset(ptr %rx_status.sroa.19.0.call64.sroa_idx, i32 0, i32 9)
  tail call void @ieee80211_rx_irqsafe(ptr noundef %3, ptr noundef %1) #8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2500, i32 noundef 2592) #8
  %tobool66.not = icmp eq ptr %call.i.i, null
  br i1 %tobool66.not, label %if.end36.cleanup_crit_edge, label %if.end76, !prof !129

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end76:                                         ; preds = %if.end36
  %cb77 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %cb77 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %urb, ptr %cb77, align 4
  %dev80 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %65 = ptrtoint ptr %dev80 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %3, ptr %dev80, align 4
  %tail.i153 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %66 = ptrtoint ptr %tail.i153 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i153, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %68 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %transfer_buffer, align 4
  %69 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i.i, ptr %context, align 4
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef nonnull %call.i.i) #8
  %anchored = getelementptr inbounds %struct.rtl8187_priv, ptr %5, i32 0, i32 9
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %anchored) #8
  %call84 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end76.cleanup_crit_edge, label %if.then86

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then86:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef %urb) #8
  tail call void @skb_unlink(ptr noundef nonnull %call.i.i, ptr noundef %rx_queue) #8
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %if.end76.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187b_status_cb(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !125

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_tx_status = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 28
  %6 = ptrtoint ptr %b_tx_status to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %b_tx_status, align 128
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %.mask76 = and i64 %8, 3221225472
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %.mask76)
  %cmp = icmp eq i64 %.mask76, 1073741824
  br i1 %cmp, label %if.then5, label %if.end.if.end47_crit_edge

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then5:                                         ; preds = %if.end
  %9 = trunc i64 %8 to i16
  %and8 = and i64 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  %10 = trunc i64 %8 to i32
  %11 = lshr i32 %10, 16
  %conv12 = and i32 %11, 4095
  %queue = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 28, i32 1
  %lock = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 28, i32 1, i32 2
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %prev = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 28, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %12)
  %iter.080 = load ptr, ptr %prev, align 4
  %cmp24.not81 = icmp eq ptr %iter.080, %queue
  br i1 %cmp24.not81, label %if.then5.if.end43_crit_edge, label %if.then5.for.body_crit_edge

if.then5.for.body_crit_edge:                      ; preds = %if.then5
  br label %for.body

if.then5.if.end43_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then5.for.body_crit_edge
  %iter.082 = phi ptr [ %iter.0, %for.inc.for.body_crit_edge ], [ %iter.080, %if.then5.for.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %iter.082, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %seq_ctrl, align 2
  %17 = and i16 %16, -241
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %and27 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %and27)
  %cmp28 = icmp eq i32 %conv12, %and27
  br i1 %cmp28, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %prev32 = getelementptr inbounds %struct.anon.41, ptr %iter.082, i32 0, i32 1
  %19 = ptrtoint ptr %prev32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %iter.0 = load ptr, ptr %prev32, align 4
  %cmp24.not = icmp eq ptr %iter.0, %queue
  br i1 %cmp24.not, label %for.inc.if.end43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end43_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

for.end:                                          ; preds = %for.body
  %tobool33.not = icmp eq ptr %iter.082, null
  br i1 %tobool33.not, label %for.end.if.end43_crit_edge, label %if.then34

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then34:                                        ; preds = %for.end
  %qlen.i = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 28, i32 1, i32 1
  %20 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %21, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %22 = ptrtoint ptr %iter.082 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iter.082, align 8
  %prev9.i = getelementptr inbounds %struct.anon.41, ptr %iter.082, i32 0, i32 1
  %24 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %iter.082, align 8
  %prev17.i = getelementptr inbounds %struct.anon.41, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %prev17.i, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %25, align 8
  br i1 %tobool9.not, label %if.then34.if.end41_crit_edge, label %if.then39

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %iter.082, i32 0, i32 3
  %28 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cb.i, align 8
  %or = or i32 %29, 512
  store i32 %or, ptr %cb.i, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then34.if.end41_crit_edge
  %count = getelementptr inbounds %struct.sk_buff, ptr %iter.082, i32 0, i32 3, i32 9
  %30 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %add = shl i16 %9, 11
  %bf.shl = add i16 %add, 2048
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %count, align 1
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %1, ptr noundef nonnull %iter.082) #8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %for.end.if.end43_crit_edge, %for.inc.if.end43_crit_edge, %if.then5.if.end43_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #8
  br label %if.end47

if.end47:                                         ; preds = %if.end43, %if.end.if.end47_crit_edge
  %anchored = getelementptr inbounds %struct.rtl8187_priv, ptr %3, i32 0, i32 9
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %anchored) #8
  %call48 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.then50

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef %urb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end47.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl818x_ioread16_idx(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_beacon_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @ieee80211_queue_stopped(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %work, i32 -852
  %call.i22 = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %1, ptr noundef %add.ptr3, ptr noundef null, ptr noundef null) #8
  %tobool6.not = icmp eq ptr %call.i22, null
  br i1 %tobool6.not, label %if.end.if.else.i_crit_edge, label %if.end8

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i22, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %TSFT.i = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 5
  %call.i.i = tail call i32 @rtl818x_ioread32_idx(ptr noundef %5, ptr noundef %TSFT.i, i8 noundef zeroext 0) #8
  %conv.i = zext i32 %call.i.i to i64
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 128
  %arrayidx4.i = getelementptr %struct.rtl818x_csr, ptr %9, i32 0, i32 5, i32 1
  %call.i10.i = tail call i32 @rtl818x_ioread32_idx(ptr noundef %5, ptr noundef %arrayidx4.i, i8 noundef zeroext 0) #8
  %conv6.i = zext i32 %call.i10.i to i64
  %shl.i = shl nuw i64 %conv6.i, 32
  %or.i = or i64 %shl.i, %conv.i
  %10 = tail call i64 @llvm.bswap.i64(i64 %or.i)
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %u, align 2
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i22, i32 0, i32 10
  %12 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %queue_mapping1.i, align 8
  tail call void @rtl8187_tx(ptr noundef %1, ptr noundef null, ptr noundef nonnull %call.i22)
  br label %if.else.i

if.else.i:                                        ; preds = %if.end8, %if.end.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %beacon_int = getelementptr i8, ptr %work, i32 -818
  %13 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %beacon_int, align 2
  %conv = zext i16 %14 to i32
  %mul = shl nuw nsw i32 %conv, 10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i23 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work, i32 noundef %call3.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_queue_stopped(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8187_iowrite_async_cb(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl818x_ioread32_idx(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl818x_ioread8_idx(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8187_leds_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8187_rfkill_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !65, !67, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !93, !94, !96, !97, !99, !101, !102, !103, !104, !106, !108, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__UNIQUE_ID_author353, !1, !"__UNIQUE_ID_author353", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_author354, !3, !"__UNIQUE_ID_author354", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 36, i32 1}
!4 = !{ptr @__UNIQUE_ID_author355, !5, !"__UNIQUE_ID_author355", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 37, i32 1}
!6 = !{ptr @__UNIQUE_ID_author356, !7, !"__UNIQUE_ID_author356", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 38, i32 1}
!8 = !{ptr @__UNIQUE_ID_author357, !9, !"__UNIQUE_ID_author357", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 39, i32 1}
!10 = !{ptr @__UNIQUE_ID_description358, !11, !"__UNIQUE_ID_description358", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 40, i32 1}
!12 = !{ptr @__UNIQUE_ID_file359, !13, !"__UNIQUE_ID_file359", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 41, i32 1}
!14 = !{ptr @__UNIQUE_ID_license360, !13, !"__UNIQUE_ID_license360", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_rtl8187__364_1683_rtl8187_driver_init6, !16, !"__initcall__kmod_rtl8187__364_1683_rtl8187_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1683, i32 1}
!17 = !{ptr @__exitcall_rtl8187_driver_exit, !16, !"__exitcall_rtl8187_driver_exit", i1 false, i1 false}
!18 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rtl8187_driver, !20, !"rtl8187_driver", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1675, i32 26}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1440, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtl8187_probe._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtl8187_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @rtl8187_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1453, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rtl8187_probe.__key.5, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1454, i32 2}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1500, i32 3}
!35 = !{ptr @rtl8187_probe._entry.7, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rtl8187_probe._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1540, i32 16}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1545, i32 16}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1548, i32 16}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1562, i32 16}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1566, i32 16}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1570, i32 16}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1574, i32 16}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1613, i32 3}
!53 = !{ptr @rtl8187_probe._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rtl8187_probe._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1627, i32 3}
!57 = !{ptr @rtl8187_probe._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rtl8187_probe._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1632, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rtl8187_probe._entry.23, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @rtl8187_probe._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @rtl8187_ops, !66, !"rtl8187_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1378, i32 35}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 205, i32 5}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rtl8187_tx_cb.__UNIQUE_ID_ddebug361, !71, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!74 = !{ptr @rtl8187_start.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1015, i32 2}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rtl8187_start.__key.32, !75, !"__key", i1 false, i1 false}
!78 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 630, i32 3}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rtl8187_cmd_reset._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @rtl8187_cmd_reset._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 646, i32 3}
!87 = !{ptr @rtl8187_cmd_reset._entry.37, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rtl8187_cmd_reset._entry_ptr.39, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @rtl8187b_reg_table, !90, !"rtl8187b_reg_table", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 739, i32 17}
!91 = !{ptr @init_usb_anchor.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!93 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @init_usb_anchor.__key.41, !95, !"__key", i1 false, i1 false}
!95 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rtl8187_work.retry, !98, !"retry", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 896, i32 13}
!99 = !{ptr @rtl8187_add_interface.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1130, i32 2}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rtl8187_add_interface.__key.44, !100, !"__key", i1 false, i1 false}
!103 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rtl8187b_ac_addr, !105, !"rtl8187b_ac_addr", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 1184, i32 16}
!106 = !{ptr @skb_queue_head_init.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rtl818x_channels, !110, !"rtl818x_channels", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 99, i32 39}
!111 = !{ptr @rtl818x_rates, !112, !"rtl818x_rates", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 84, i32 36}
!113 = !{ptr @rtl8187_table, !114, !"rtl8187_table", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8187/dev.c", i32 43, i32 35}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i8 0, i8 2}
!127 = !{i32 0, i32 33}
!128 = !{i64 2148981258, i64 2148981263, i64 2148981276, i64 2148981320, i64 2148981354, i64 2148981375}
!129 = !{!"branch_weights", i32 1, i32 2000}
